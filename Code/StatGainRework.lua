-- JAZZ-UNITS-009: per-stat skill XP instead of RollForStatGaining RNG.

g_JAZZ_U009_WrapsInstalled = rawget(_G, "g_JAZZ_U009_WrapsInstalled") or false
g_JAZZ_U009_ApplyingGainStat = rawget(_G, "g_JAZZ_U009_ApplyingGainStat") or false
g_JAZZ_U009_SetPrerequisiteStateBase = rawget(_G, "g_JAZZ_U009_SetPrerequisiteStateBase") or false
g_JAZZ_U009_RecalcWillPointsBase = rawget(_G, "g_JAZZ_U009_RecalcWillPointsBase") or false
g_JAZZ_U009_ApplySuppressionStatusBase = rawget(_G, "g_JAZZ_U009_ApplySuppressionStatusBase") or false
g_JAZZ_U009_GainStatBase = rawget(_G, "g_JAZZ_U009_GainStatBase") or false
g_JAZZ_U009_MercStatsItemsBase = rawget(_G, "g_JAZZ_U009_MercStatsItemsBase") or false
g_JAZZ_U009_UnjamBase = rawget(_G, "g_JAZZ_U009_UnjamBase") or false
g_JAZZ_U009_OnHealBase = rawget(_G, "g_JAZZ_U009_OnHealBase") or false
g_JAZZ_U009_BandageBase = rawget(_G, "g_JAZZ_U009_BandageBase") or false
g_JAZZ_U009_MorphineBase = rawget(_G, "g_JAZZ_U009_MorphineBase") or false
g_JAZZ_U009_MarkHealingBase = rawget(_G, "g_JAZZ_U009_MarkHealingBase") or false
g_JAZZ_U009_StabilizeBase = rawget(_G, "g_JAZZ_U009_StabilizeBase") or false
g_JAZZ_U009_DowngradeTraumaBase = rawget(_G, "g_JAZZ_U009_DowngradeTraumaBase") or false

Jazz_LeadershipActivePerks = Jazz_LeadershipActivePerks or { OnMyTarget = 20 }
Jazz_LeadershipAuraPerks = Jazz_LeadershipAuraPerks or {}

local kSkillXpFlag = "JazzSkillXP"
local kHealthHpCreditFlag = "JazzHealthHpCredit"
local kMedicalHpCreditFlag = "JazzMedicalHpCredit"
local kLeadXpTurnFlag = "JazzLeadXpTurn"
local kLeadXpAmtFlag = "JazzLeadXpAmt"

-- Frozen T(s) for s=80..99. AC-001: T(80)=1600, T(90)=92267, T(99)=3547083.
local kTFrom80 = {
	[80] = 1600, [81] = 2400, [82] = 3600, [83] = 5400, [84] = 8100,
	[85] = 12150, [86] = 18225, [87] = 27338, [88] = 41007, [89] = 61511,
	[90] = 92267, [91] = 138401, [92] = 207602, [93] = 311403, [94] = 467105,
	[95] = 700658, [96] = 1050987, [97] = 1576481, [98] = 2364722, [99] = 3547083,
}

local kTeamStats = { Marksmanship = true, Dexterity = true, Strength = true }
local kSilentPresetStats = {
	Marksmanship = true, Dexterity = true, Agility = true,
	Strength = true, Health = true, Will = true,
}
local kSilentPresetIds = {
	MovementAPSpent = true,
	SupressionWillPowerGain = true,
	SuppressionWillPowerGain = true,
}
local kFeedPresetIds = {
	ResourceDiscovery = true, TrapDiscovery = true,
	TrainMercs = true, TrainMilitia = true,
	TrapDisarmMechanical = true, TrapDisarmExplosives = true,
	ExplosiveMultiHit = true,
}
local kWillTierOrder = {
	suppressionLight = 1, suppressionMedium = 2, suppressionHeavy = 3,
	suppressionHeavy2 = 4, suppressionPinned = 5,
}
local kWillTierXp = {
	suppressionLight = 4, suppressionMedium = 8, suppressionHeavy = 12,
	suppressionHeavy2 = 16, suppressionPinned = 20,
}

local function lMulDiv(a, b, c)
	if type(MulDivRound) == "function" then
		return MulDivRound(a, b, c)
	end
	return (a * b + c / 2) / c
end

local function lClamp(v, lo, hi)
	if v < lo then return lo end
	if v > hi then return hi end
	return v
end

local function lSessionId(unit)
	return unit and (unit.session_id or unit.SessionId)
end

local function lGetFlag(unit, name)
	local sid = lSessionId(unit)
	if not sid then return end
	if type(GetMercStateFlag) == "function" then
		return GetMercStateFlag(sid, name)
	end
	return unit[name]
end

local function lSetFlag(unit, name, value)
	local sid = lSessionId(unit)
	if not sid then return end
	if type(SetMercStateFlag) == "function" then
		SetMercStateFlag(sid, name, value)
		return
	end
	unit[name] = value
end

local function lHasPerk(unit, perk)
	if not unit or not perk then return false end
	local fn = rawget(_G, "HasPerk") or rawget(_G, "HasPerk")
	if type(fn) == "function" then return not not fn(unit, perk) end
	if type(unit.HasStatusEffect) == "function" then
		return not not unit:HasStatusEffect(perk)
	end
	return false
end

local function lIsKindOf(obj, class)
	return type(IsKindOf) == "function" and IsKindOf(obj, class)
end

local function lEmpty()
	return rawget(_G, "empty_table") or {}
end

local function lIsLivingMerc(unit)
	if not unit then return false end
	if type(IsMerc) == "function" and not IsMerc(unit) then return false end
	if type(unit.IsDead) == "function" and unit:IsDead() then return false end
	if unit.HireStatus == "Dead" then return false end
	return true
end

local function lIsHiredMerc(unit)
	if not lIsLivingMerc(unit) then return false end
	local status = unit.HireStatus
	if status and status ~= "Hired" then return false end
	return true
end

function Jazz_SkillXPThreshold(stat_value)
	stat_value = tonumber(stat_value) or 0
	if stat_value >= 100 then return false end
	if stat_value <= 29 then return 150 end
	if stat_value <= 49 then return 250 end
	if stat_value <= 64 then return 400 end
	if stat_value <= 79 then return 800 end
	return kTFrom80[stat_value] or false
end

function Jazz_SkillXPCumulative(from_stat, to_stat)
	local total = 0
	for s = from_stat, to_stat - 1 do
		local t = Jazz_SkillXPThreshold(s)
		if not t then break end
		total = total + t
	end
	return total
end

function Jazz_GetSkillXP(unit, stat)
	local bag = lGetFlag(unit, kSkillXpFlag)
	if type(bag) ~= "table" then return 0 end
	return tonumber(bag[stat]) or 0
end

function Jazz_SetSkillXP(unit, stat, xp)
	local bag = lGetFlag(unit, kSkillXpFlag)
	if type(bag) ~= "table" then bag = {} end
	bag[stat] = Max(0, tonumber(xp) or 0)
	lSetFlag(unit, kSkillXpFlag, bag)
end

local function lTeamSize(unit)
	local units = unit and unit.team and unit.team.units
	if type(units) ~= "table" then return 1 end
	local n = 0
	for _, u in ipairs(units) do
		if u and (type(u.IsDead) ~= "function" or not u:IsDead()) then
			n = n + 1
		end
	end
	return Max(1, n)
end

function Jazz_ScaleSkillPractice(unit, stat, base, fail_chance)
	local awarded = tonumber(base) or 0
	if awarded <= 0 then return 0 end
	if stat ~= "Wisdom" then
		awarded = lMulDiv(awarded, lClamp(unit.Wisdom or 0, 0, 100), 60)
	end
	fail_chance = tonumber(fail_chance)
	if fail_chance and fail_chance > 0 then
		awarded = lMulDiv(awarded, 100 - fail_chance, 100)
	end
	if kTeamStats[stat] then
		awarded = lMulDiv(awarded, 8, 7 + lTeamSize(unit))
	end
	if lHasPerk(unit, "OldDog") then
		awarded = lMulDiv(awarded, 50, 100)
	end
	return Max(0, awarded)
end

function Jazz_AwardSkillPractice(unit, stat, base, fail_chance)
	if not lIsLivingMerc(unit) or not stat then return 0 end
	local current = unit[stat]
	if type(current) ~= "number" or current < 0 or current >= 100 then return 0 end
	local awarded = Jazz_ScaleSkillPractice(unit, stat, base, fail_chance)
	if awarded <= 0 then return 0 end
	local xp = Jazz_GetSkillXP(unit, stat) + awarded
	local gained = 0
	local depth = tonumber(rawget(_G, "g_JAZZ_U009_ApplyingGainStat")) or 0
	rawset(_G, "g_JAZZ_U009_ApplyingGainStat", depth + 1)
	while current < 100 do
		local need = Jazz_SkillXPThreshold(current)
		if not need or xp < need then break end
		xp = xp - need
		if type(GainStat) == "function" then
			GainStat(unit, stat, 1)
		else
			unit[stat] = current + 1
		end
		gained = gained + 1
		current = unit[stat] or (current + 1)
	end
	rawset(_G, "g_JAZZ_U009_ApplyingGainStat", depth)
	Jazz_SetSkillXP(unit, stat, xp)
	return awarded, gained
end

function Jazz_MeleePracticeStat(weapon)
	if not weapon then return false end
	local stat = weapon.UnitStat
	if stat == "Dexterity" or stat == "Strength" then return stat end
	if lIsKindOf(weapon, "UnarmedWeapon") or lIsKindOf(weapon, "MacheteWeapon") then
		return "Strength"
	end
	if lIsKindOf(weapon, "MeleeWeapon") then
		if weapon.CanThrow or lIsKindOf(weapon, "StackableMeleeWeapon") then
			return "Dexterity"
		end
		return "Strength"
	end
	return false
end

function Jazz_SkillPracticeRollover(unit, stat)
	if not lIsHiredMerc(unit) or not stat then return "" end
	local current = unit[stat]
	if type(current) ~= "number" or current < 0 or current >= 100 then return "" end
	local need = Jazz_SkillXPThreshold(current)
	if not need then return "" end
	return T{890000000010900, "Практика: <xp> / <need>", xp = Jazz_GetSkillXP(unit, stat), need = need}
end

function Jazz_AwardMarksmanshipAim(unit, rate, aim)
	aim = tonumber(aim) or 0
	if aim <= 0 then return 0 end
	return Jazz_AwardSkillPractice(unit, "Marksmanship", (tonumber(rate) or 0) * aim)
end

function Jazz_AwardDexterityPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Dexterity", amount)
end
function Jazz_AwardAgilityPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Agility", amount)
end
function Jazz_AwardStrengthPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Strength", amount)
end
function Jazz_AwardHealthPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Health", amount)
end
function Jazz_AwardWisdomPractice(unit, amount, fail_chance)
	return Jazz_AwardSkillPractice(unit, "Wisdom", amount, fail_chance)
end
function Jazz_AwardLeadershipPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Leadership", amount)
end
function Jazz_AwardMechanicalPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Mechanical", amount)
end
function Jazz_AwardExplosivesPractice(unit, amount, fail_chance)
	return Jazz_AwardSkillPractice(unit, "Explosives", amount, fail_chance)
end
function Jazz_AwardMedicalPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Medical", amount)
end
function Jazz_AwardWillPractice(unit, amount)
	return Jazz_AwardSkillPractice(unit, "Will", amount)
end

function Jazz_FindWillRegenLeader(patient)
	if not patient or lHasPerk(patient, "Psycho") then return end
	local units = rawget(_G, "g_Units") or rawget(_G, "g_Units")
	if type(units) ~= "table" then return end
	local slab = const and const.SlabSizeX or 1
	local best, best_term
	for _, u in ipairs(units) do
		if u and u ~= patient and patient.side == u.side and u.HireStatus ~= "Dead" then
			local dist = 99
			if patient.GetPos and u.GetPos then
				dist = DivRound(patient:GetPos():Dist(u:GetPos()), slab)
			end
			if lHasPerk(u, "Negotiator") then
				dist = Max(1, dist - 3)
			end
			if dist < 11 then
				local morale = 0
				local morale_fn = u.GetPersonalMorale or u.GetPersonalMorale
				if type(morale_fn) == "function" then
					morale = morale_fn(u) or 0
				end
				local term = ((u.Leadership or 0) + 5 * lClamp(morale, 0, 5)) * (11 - dist)
				if not best_term or term > best_term then
					best_term = term
					best = u
				end
			end
		end
	end
	if best and best_term and best_term > 0 and DivRound(best_term, 50) >= 1 then
		return best, best_term
	end
end

function Jazz_AwardLeadershipAuraTick(leader)
	if not leader or not next(Jazz_LeadershipAuraPerks) then return 0 end
	for perk_id in pairs(Jazz_LeadershipAuraPerks) do
		if lHasPerk(leader, perk_id) then
			return Jazz_AwardLeadershipPractice(leader, 8)
		end
	end
	return 0
end

local function lCredit(unit, flag, add, step, award_fn)
	local credit = (tonumber(lGetFlag(unit, flag)) or 0) + (tonumber(add) or 0)
	local times = 0
	while credit >= step do
		credit = credit - step
		times = times + 1
	end
	lSetFlag(unit, flag, credit)
	if times > 0 then award_fn(unit, times) end
	return times, credit
end

function Jazz_AwardHealthFromHp(unit, healed)
	return lCredit(unit, kHealthHpCreditFlag, healed, 5, Jazz_AwardHealthPractice)
end

function Jazz_AwardMedicalFromHp(healer, healed)
	return lCredit(healer, kMedicalHpCreditFlag, healed, 5, Jazz_AwardMedicalPractice)
end

local function lPresetTable()
	local defs = rawget(_G, "StatGainingPrerequisites")
	if type(defs) == "table" then return defs end
	local Presets = rawget(_G, "Presets")
	local group = Presets and Presets.StatGainingPrerequisite
	if type(group) == "table" then return group.Default or group end
end

local function lPresetSilent(id, preset)
	if not id then return true end
	if kSilentPresetIds[id] then return true end
	if kFeedPresetIds[id] then return false end
	local stat = preset and (preset.relatedStat or preset.RelatedStat)
	if kSilentPresetStats[stat] then return true end
	local comment = string.lower(tostring(preset and (preset.Comment or preset.comment or id) or id))
	if (stat == "Mechanical" or stat == "Medical") and (string.find(comment, "24") or string.find(comment, "25")) then
		return true
	end
	local idl = string.lower(tostring(id))
	if string.find(idl, "mechanic") and not string.find(idl, "trap") and not string.find(idl, "disarm") then
		return true
	end
	if string.find(idl, "doctor") or string.find(idl, "bandage") then
		return true
	end
	return false
end

function Jazz_StatGainPresetSilent(id)
	local defs = lPresetTable()
	return lPresetSilent(id, defs and defs[id])
end

function RollForStatGaining(unit, stat, fail_chance)
	if kSilentPresetStats[stat] then return end
	Jazz_AwardSkillPractice(unit, stat, 100, fail_chance)
end
RollForStatGaining = RollForStatGaining

function ReceiveStatGainingPoints(unit, xp_gain)
	-- Combat/quest XP no longer fills the shared stat-gain bank.
end
ReceiveStatGainingPoints = ReceiveStatGainingPoints

local function lBestAttackOutcome(results)
	if type(results) ~= "table" then return "miss", false end
	local hit, crit, stealth
	local function consider(atk)
		if type(atk) ~= "table" then return end
		if atk.hit or atk.stealth_kill or atk.killed or (atk.damage or 0) > 0 then hit = true end
		if atk.crit or atk.critical then crit, hit = true, true end
		if atk.stealth_kill then stealth = true end
	end
	consider(results)
	for _, atk in ipairs(results.attacks or lEmpty()) do consider(atk) end
	for _, shot in ipairs(results.shots or lEmpty()) do consider(shot) end
	if results.stealth_kill or results.stealth_attack then stealth, hit = true, true end
	if crit then return "crit", stealth end
	if hit then return "hit", stealth end
	return "miss", stealth
end

local function lHasSpotterMod(results)
	local mods = results and (results.chance_to_hit_modifiers or results.modifiers)
	if type(mods) ~= "table" then return false end
	for _, mod in ipairs(mods) do
		local id = type(mod) == "table" and (mod.id or mod.Id) or mod
		if id == "SeenBySpotter" then return true end
	end
	return false
end

local function lEffectiveRecoil(weapon, attacker, action, attack_args)
	local fn = rawget(_G, "JAZZ_CTHGetRecoilProfile")
	if type(fn) ~= "function" then return 0 end
	local stance = (attack_args and attack_args.stance) or attacker.stance
	local ok, profile = pcall(fn, weapon, attacker, stance, action, attack_args)
	if ok and type(profile) == "table" then
		return tonumber(profile.effective_recoil) or 0
	end
	return 0
end

local function lIsBattleRifleOrMg(weapon)
	if not weapon then return false end
	if lIsKindOf(weapon, "MachineGun") then return true end
	local wt = weapon.WeaponType
	return wt == "MachineGun" or wt == "LMG" or wt == "BattleRifle" or wt == "HeavyRifle"
end

local function lAttackWeapon(attacker, attack_args, results)
	if attack_args and attack_args.weapon then return attack_args.weapon end
	if results and results.weapon then return results.weapon end
	if attacker and type(attacker.GetActiveWeapons) == "function" then
		return attacker:GetActiveWeapons()
	end
end

function Jazz_OnAttackPractice(attacker, action, target, results, attack_args)
	if not lIsLivingMerc(attacker) then return end
	attack_args = attack_args or lEmpty()
	results = results or lEmpty()
	if results.fired == false then return end
	local action_id = action and (action.id or action.ActionId) or attack_args.action_id
	local stamp = tostring(lSessionId(attacker) or attacker.handle) .. ":" .. tostring(GameTime and GameTime() or 0) .. ":" .. tostring(action_id)
	if attacker.jazz_u009_stamp == stamp then return end
	attacker.jazz_u009_stamp = stamp

	local weapon = lAttackWeapon(attacker, attack_args, results)
	local outcome, stealth = lBestAttackOutcome(results)
	local aim = tonumber(attack_args.aim or results.aim or 0) or 0
	local melee_stat = Jazz_MeleePracticeStat(weapon)

	if weapon and lIsKindOf(weapon, "Firearm") then
		local rate = 3
		if outcome == "hit" then rate = 8
		elseif outcome == "crit" then rate = 16 end
		Jazz_AwardMarksmanshipAim(attacker, rate, aim)
		local dex = 1
		if aim <= 0 then
			if outcome == "miss" then dex = dex + 4
			elseif outcome == "hit" then dex = dex + 10
			else dex = dex + 20 end
		end
		if stealth then dex = dex + 25 end
		Jazz_AwardDexterityPractice(attacker, dex)
		if lIsBattleRifleOrMg(weapon) then Jazz_AwardStrengthPractice(attacker, 2) end
		if lEffectiveRecoil(weapon, attacker, action, attack_args) >= 25 then
			Jazz_AwardStrengthPractice(attacker, 4)
		end
		if outcome ~= "miss" and lHasSpotterMod(results) then
			Jazz_AwardWisdomPractice(attacker, 6)
		end
	elseif melee_stat == "Dexterity" then
		local amt = 5
		if outcome == "hit" then amt = 12
		elseif outcome == "crit" then amt = 24 end
		if stealth then amt = amt + 25 end
		Jazz_AwardDexterityPractice(attacker, amt)
	elseif melee_stat == "Strength" then
		local amt = 4
		if outcome == "hit" then amt = 10
		elseif outcome == "crit" then amt = 20 end
		Jazz_AwardStrengthPractice(attacker, amt)
		if stealth then Jazz_AwardDexterityPractice(attacker, 25) end
	end

	local thrown = lIsKindOf(weapon, "Grenade")
		or (weapon and weapon.CanThrow)
		or action_id == "ThrowKnife" or action_id == "ThrowGrenade"
		or action_id == "KnifeThrow" or action_id == "Throw"
	if thrown and weapon and type(weapon.GetMaxRange) == "function" and target and attacker.GetDist then
		local max_range = weapon:GetMaxRange(attacker, action)
		if type(max_range) == "number" and max_range > 0 then
			local dist = DivRound(attacker:GetDist(target), const.SlabSizeX)
			if dist >= max_range - 1 then Jazz_AwardStrengthPractice(attacker, 3) end
		end
	end
end

local function lMaxArmorWeight(unit)
	local max_w = 0
	if unit and type(unit.ForEachItem) == "function" then
		unit:ForEachItem("Armor", function(item, slot)
			if slot ~= "Inventory" and item.Weight and item.Weight > max_w then
				max_w = item.Weight
			end
		end)
	end
	return max_w
end

function Jazz_OnMovePractice(unit, tiles, vaults, dumped_free_move, attacked_last_turn)
	if not g_Combat or not lIsLivingMerc(unit) then return end
	tiles = Max(0, tonumber(tiles) or 0)
	vaults = Max(0, tonumber(vaults) or 0)
	local amt = tiles + 8 * vaults
	if dumped_free_move then amt = amt + 4 end
	if attacked_last_turn and tiles >= 7 then amt = amt + 12 end
	if amt > 0 then Jazz_AwardAgilityPractice(unit, amt) end
	if tiles > 0 and lMaxArmorWeight(unit) >= 4 then
		Jazz_AwardStrengthPractice(unit, tiles)
	end
end

function Jazz_OnHealPractice(patient, hp, healer)
	hp = tonumber(hp) or 0
	if hp <= 0 then return end
	if lIsLivingMerc(patient) then Jazz_AwardHealthFromHp(patient, hp) end
	if healer and lIsLivingMerc(healer) then Jazz_AwardMedicalFromHp(healer, hp) end
end

local function lCapLeadershipXp(leader, base)
	if not leader then return 0 end
	if not g_Combat then return Jazz_AwardLeadershipPractice(leader, base) end
	local turn = g_Combat.current_turn or 0
	local last = tonumber(lGetFlag(leader, kLeadXpTurnFlag)) or -1
	local used = tonumber(lGetFlag(leader, kLeadXpAmtFlag)) or 0
	if last ~= turn then
		used = 0
		lSetFlag(leader, kLeadXpTurnFlag, turn)
	end
	local give = Min(base, Max(0, 12 - used))
	if give <= 0 then return 0 end
	lSetFlag(leader, kLeadXpAmtFlag, used + give)
	return Jazz_AwardLeadershipPractice(leader, give)
end

function Jazz_OnWillPointsGrew(patient, before, after)
	if not patient or (after or 0) <= (before or 0) then return end
	local leader = Jazz_FindWillRegenLeader(patient)
	if leader then lCapLeadershipXp(leader, 4) end
end

local function lCurrentWillTier(unit)
	local best, best_n = false, 0
	for id, n in pairs(kWillTierOrder) do
		if unit.HasStatusEffect and unit:HasStatusEffect(id) and n > best_n then
			best, best_n = id, n
		end
	end
	return best, best_n
end

function Jazz_OnSuppressionPractice(unit, before_id, after_id, entered_berserk)
	if entered_berserk then
		Jazz_AwardWillPractice(unit, 18)
		return
	end
	if lHasPerk(unit, "Psycho") then return end
	local before_n = kWillTierOrder[before_id or false] or 0
	local after_n = kWillTierOrder[after_id or false] or 0
	if after_n > before_n and kWillTierXp[after_id] then
		Jazz_AwardWillPractice(unit, kWillTierXp[after_id])
	end
end

function Jazz_OnGainStatPractice(unit, stat, amount, reason)
	amount = tonumber(amount) or 0
	if amount <= 0 or not lIsLivingMerc(unit) then return end
	if reason == "Training" or reason == "Studying" then
		Jazz_SetSkillXP(unit, stat, 0)
	end
	if stat == "Wisdom" then
		if reason == "Studying" then Jazz_AwardWisdomPractice(unit, 12) end
		return
	end
	if reason == "Training" then
		Jazz_AwardWisdomPractice(unit, 20)
	else
		Jazz_AwardWisdomPractice(unit, 8)
	end
	if reason == "Studying" then Jazz_AwardWisdomPractice(unit, 12) end
end

local function lClearOncePerMapVisit()
	local defs = lPresetTable()
	if type(defs) ~= "table" then return end
	for _, preset in pairs(defs) do
		if type(preset) == "table" then preset.oncePerMapVisit = false end
	end
end

local function lWrapCombatAction(action_id, after_fn)
	local actions = rawget(_G, "CombatActions") or rawget(_G, "CombatActions")
	local ca = actions and actions[action_id]
	if not ca or type(ca.Execute) ~= "function" or ca.jazz_u009_wrapped then return end
	local base = ca.Execute
	ca.Execute = function(self, units, args)
		local unit = units and units[1]
		local before_fm = unit and (unit.free_move_ap or unit.free_move or 0) or 0
		local start_pos = unit and unit.GetPos and unit:GetPos()
		local result = base(self, units, args)
		after_fn(unit, args, before_fm, start_pos)
		return result
	end
	ca.jazz_u009_wrapped = true
end

local function lInstallSetPrerequisiteWrap(global_name)
	local set_state = rawget(_G, global_name)
	if type(set_state) ~= "function" then return end
	local flag = "g_JAZZ_U009_" .. global_name .. "Base"
	if rawget(_G, flag) then return end
	rawset(_G, flag, set_state)
	rawset(_G, global_name, function(unit, id, state, reason)
		local base = rawget(_G, flag)
		if reason == "gain" and Jazz_StatGainPresetSilent(id) then
			return base(unit, id, state)
		end
		if reason == "gain" and (id == "TrapDiscovery" or id == "TrapDiscovery") then
			local trap = state
			local explosive = type(trap) == "table" and (
				trap.TrapType == "explosive" or trap.explosive
				or (IsKindOf and IsKindOf(trap, "Landmine"))
			)
			if explosive then Jazz_AwardExplosivesPractice(unit, 8) end
		end
		return base(unit, id, state, reason)
	end)
end

local function lInstallCoreWraps()
	lInstallSetPrerequisiteWrap("SetPrerequisiteState")
	lInstallSetPrerequisiteWrap("SetPrerequisiteState")

	local unit_cls = rawget(_G, "Unit")
	if type(unit_cls) == "table" then
		if type(unit_cls.RecalcWillPoints) == "function" and not rawget(_G, "g_JAZZ_U009_RecalcWillPointsBase") then
			rawset(_G, "g_JAZZ_U009_RecalcWillPointsBase", unit_cls.RecalcWillPoints)
			function Unit:RecalcWillPoints(...)
				local before = self.WillPoints
				g_JAZZ_U009_RecalcWillPointsBase(self, ...)
				Jazz_OnWillPointsGrew(self, before, self.WillPoints)
			end
		end
		if type(unit_cls.ApplySuppressionStatus) == "function" and not rawget(_G, "g_JAZZ_U009_ApplySuppressionStatusBase") then
			rawset(_G, "g_JAZZ_U009_ApplySuppressionStatusBase", unit_cls.ApplySuppressionStatus)
			function Unit:ApplySuppressionStatus(...)
				local before_id = lCurrentWillTier(self)
				local had_berserk = self.HasStatusEffect and self:HasStatusEffect("Berserk")
				g_JAZZ_U009_ApplySuppressionStatusBase(self, ...)
				local after_id = lCurrentWillTier(self)
				local now_berserk = self.HasStatusEffect and self:HasStatusEffect("Berserk")
				Jazz_OnSuppressionPractice(self, before_id, after_id, now_berserk and not had_berserk)
			end
		end
	end

	local gain = rawget(_G, "GainStat")
	if type(gain) == "function" and not rawget(_G, "g_JAZZ_U009_GainStatBase") then
		rawset(_G, "g_JAZZ_U009_GainStatBase", gain)
		rawset(_G, "GainStat", function(unit, stat, amount, mod_id, reason)
			local result = g_JAZZ_U009_GainStatBase(unit, stat, amount, mod_id, reason)
			Jazz_OnGainStatPractice(unit, stat, amount, reason)
			return result
		end)
	end

	local function lInstallMercStatsWrap(global_name)
		local merc_stats = rawget(_G, global_name)
		if type(merc_stats) ~= "function" then return end
		local flag = "g_JAZZ_U009_" .. global_name .. "Base"
		if rawget(_G, flag) then return end
		rawset(_G, flag, merc_stats)
		rawset(_G, global_name, function(context)
			local items = rawget(_G, flag)(context)
			for _, item in ipairs(items or lEmpty()) do
				local extra = Jazz_SkillPracticeRollover(context, item.id or item.stat)
				if extra ~= "" and item.help then
					item.help = T{890000000010901, "<help>\n\n<practice>", help = item.help, practice = extra}
				end
			end
			return items
		end)
	end
	lInstallMercStatsWrap("MercStatsItems")
	lInstallMercStatsWrap("MercStatsItems")

	lWrapCombatAction("Move", function(unit, args, before_fm, start_pos)
		if not unit or not g_Combat then return end
		local tiles = 0
		if args and args.path and #args.path > 1 then
			tiles = #args.path - 1
		elseif start_pos and unit.GetPos then
			tiles = Max(0, DivRound(start_pos:Dist(unit:GetPos()), const.SlabSizeX))
		end
		local dumped = before_fm > 0 and (unit.free_move_ap or unit.free_move or 0) == 0
		local turn = g_Combat.current_turn or 0
		local attacked_last = unit.jazz_attacked_turn and unit.jazz_attacked_turn == turn - 1
		Jazz_OnMovePractice(unit, tiles, 0, dumped, attacked_last)
	end)
	local function vault_after(unit)
		if unit and g_Combat then Jazz_OnMovePractice(unit, 0, 1, false, false) end
	end
	lWrapCombatAction("JumpOver", vault_after)
	lWrapCombatAction("JumpOver", vault_after)
	lWrapCombatAction("DropDown", vault_after)
	lWrapCombatAction("DropDown", vault_after)
	lWrapCombatAction("Climb", vault_after)
	lWrapCombatAction("Climb", vault_after)
	lWrapCombatAction("VaultOver", vault_after)
	lWrapCombatAction("VaultOver", vault_after)
	local function lOnMyTarget(unit)
		if unit then
			Jazz_AwardLeadershipPractice(unit, Jazz_LeadershipActivePerks.OnMyTarget or Jazz_LeadershipActivePerks.OnMyTarget or 20)
		end
	end
	lWrapCombatAction("OnMyTarget", lOnMyTarget)
	lWrapCombatAction("OnMyTarget", lOnMyTarget)

	local inv = rawget(_G, "UnitInventory")
	if type(inv) == "table" and type(inv.OnHeal) == "function" and not rawget(_G, "g_JAZZ_U009_OnHealBase") then
		rawset(_G, "g_JAZZ_U009_OnHealBase", inv.OnHeal)
		function UnitInventory:OnHeal(hp, medkit, healer)
			g_JAZZ_U009_OnHealBase(self, hp, medkit, healer)
			Jazz_OnHealPractice(self, hp, healer)
		end
	end
end

local function lInstallLateWraps()
	local firearm = rawget(_G, "FirearmBase")
	if type(firearm) == "table" and type(firearm.Unjam) == "function" and not rawget(_G, "g_JAZZ_U009_UnjamBase") then
		rawset(_G, "g_JAZZ_U009_UnjamBase", firearm.Unjam)
		function FirearmBase:Unjam(unit)
			local jammed = self.jammed
			local max_before = self.WeaponResourceMax
			g_JAZZ_U009_UnjamBase(self, unit)
			if jammed and lIsLivingMerc(unit) then
				if not self.jammed and self.WeaponResourceMax == max_before then
					Jazz_AwardMechanicalPractice(unit, 12)
				else
					Jazz_AwardMechanicalPractice(unit, 5)
				end
			end
		end
	end

	local bandage = rawget(_G, "JazzApplyBandageAction")
	if type(bandage) == "function" and not rawget(_G, "g_JAZZ_U009_BandageBase") then
		rawset(_G, "g_JAZZ_U009_BandageBase", bandage)
		rawset(_G, "JazzApplyBandageAction", function(healer, patient)
			local ok = g_JAZZ_U009_BandageBase(healer, patient)
			if ok then Jazz_AwardMedicalPractice(healer, 5) end
			return ok
		end)
	end

	local morphine = rawget(_G, "JazzApplyMorphineAction")
	if type(morphine) == "function" and not rawget(_G, "g_JAZZ_U009_MorphineBase") then
		rawset(_G, "g_JAZZ_U009_MorphineBase", morphine)
		rawset(_G, "JazzApplyMorphineAction", function(healer, patient)
			local ok = g_JAZZ_U009_MorphineBase(healer, patient)
			if ok then Jazz_AwardMedicalPractice(healer, 5) end
			return ok
		end)
	end

	local mark_heal = rawget(_G, "JazzMarkUnitTraumasHealing")
	if type(mark_heal) == "function" and not rawget(_G, "g_JAZZ_U009_MarkHealingBase") then
		rawset(_G, "g_JAZZ_U009_MarkHealingBase", mark_heal)
		rawset(_G, "JazzMarkUnitTraumasHealing", function(unit)
			local count = 0
			local zones = rawget(_G, "JazzTraumaZones")
			local get_tier = rawget(_G, "JazzGetTraumaTier")
			local is_heal = rawget(_G, "JazzTraumaIsHealing")
			if unit and type(zones) == "table" and type(get_tier) == "function" then
				for _, zone in ipairs(zones) do
					local tier = get_tier(unit, zone)
					if tier then
						local effect = unit.GetStatusEffect and unit:GetStatusEffect("Trauma" .. zone .. tier)
						if effect and type(is_heal) == "function" and not is_heal(effect) then
							count = count + 1
						end
					end
				end
			end
			local result = g_JAZZ_U009_MarkHealingBase(unit)
			if result and count > 0 then
				Jazz_AwardHealthPractice(unit, 10 * count)
				local sid = unit.SectorId or rawget(_G, "gv_CurrentSectorId")
				local get = rawget(_G, "GetOperationProfessionals")
				if type(get) == "function" and sid then
					local docs = get(sid, unit.Operation or "TreatWounds") or get(sid) or lEmpty()
					for _, doc in ipairs(docs) do
						if doc and (doc.OperationProfession == "Doctor" or doc == unit) then
							Jazz_AwardMedicalPractice(doc, 15 * count)
						end
					end
				end
			end
			return result
		end)
	end

	local stabilize = rawget(_G, "JazzMarkKitTraumaStabilized")
	if type(stabilize) == "function" and not rawget(_G, "g_JAZZ_U009_StabilizeBase") then
		rawset(_G, "g_JAZZ_U009_StabilizeBase", stabilize)
		rawset(_G, "JazzMarkKitTraumaStabilized", function(unit, kit_class)
			local ok, zone, tier = g_JAZZ_U009_StabilizeBase(unit, kit_class)
			if ok then Jazz_AwardHealthPractice(unit, 10) end
			return ok, zone, tier
		end)
	end

	local down = rawget(_G, "JazzDowngradeTrauma")
	if type(down) == "function" and not rawget(_G, "g_JAZZ_U009_DowngradeTraumaBase") then
		rawset(_G, "g_JAZZ_U009_DowngradeTraumaBase", down)
		rawset(_G, "JazzDowngradeTrauma", function(unit, zone, from_time)
			local result = g_JAZZ_U009_DowngradeTraumaBase(unit, zone, from_time)
			if result == "cleared" then
				Jazz_AwardHealthPractice(unit, 24)
			elseif result then
				Jazz_AwardHealthPractice(unit, 18)
			end
			return result
		end)
	end
end

local function lInstallAllWraps()
	lInstallCoreWraps()
	lInstallLateWraps()
	rawset(_G, "g_JAZZ_U009_WrapsInstalled", true)
end

function OnMsg.DataLoaded()
	lClearOncePerMapVisit()
	lInstallAllWraps()
end

function OnMsg.ModsReloaded()
	lClearOncePerMapVisit()
	lInstallAllWraps()
end

function OnMsg.CombatStart()
	lInstallAllWraps()
end

function OnMsg.OnAttack(attacker, action, target, results, attack_args)
	Jazz_OnAttackPractice(attacker, action, target, results, attack_args)
end

function OnMsg.DamageTaken(attacker, target)
	if target and g_Combat then
		target.jazz_attacked_turn = g_Combat.current_turn
	end
end

function OnMsg.OnHeal(unit, hp, medkit, healer)
	if healer then return end
	Jazz_OnHealPractice(unit, hp)
end

function OnMsg.NewHour()
	local ud = rawget(_G, "gv_UnitData")
	if type(ud) ~= "table" then return end
	for _, unit in pairs(ud) do
		if lIsHiredMerc(unit) then
			local op = unit.Operation
			if op == "RepairItems" or op == "Repair" then
				Jazz_AwardMechanicalPractice(unit, 6)
			elseif op == "TreatWounds" or op == "HospitalTreatment" then
				Jazz_AwardMedicalPractice(unit, 8)
			end
		end
	end
end

-- Spec aliases (REQ-002 / companion naming).
Jazz_SkillXPThreshold = Jazz_SkillXPThreshold
Jazz_SkillXpThreshold = Jazz_SkillXPThreshold
Jazz_AwardSkillPractice = Jazz_AwardSkillPractice
Jazz_AwardSkillPractice = Jazz_AwardSkillPractice
Jazz_MeleePracticeStat = Jazz_MeleePracticeStat
Jazz_SkillPracticeRollover = Jazz_SkillPracticeRollover
Jazz_FindWillRegenLeader = Jazz_FindWillRegenLeader
Jazz_AwardMarksmanshipAim = Jazz_AwardMarksmanshipAim
Jazz_GetSkillXp = Jazz_GetSkillXP
Jazz_SetSkillXp = Jazz_SetSkillXP
Jazz_AwardWisdomPractice = Jazz_AwardWisdomPractice
Jazz_AwardLeadershipPractice = Jazz_AwardLeadershipPractice
Jazz_AwardMechanicalPractice = Jazz_AwardMechanicalPractice
Jazz_AwardExplosivesPractice = Jazz_AwardExplosivesPractice
Jazz_AwardMedicalPractice = Jazz_AwardMedicalPractice
Jazz_AwardWillPractice = Jazz_AwardWillPractice
