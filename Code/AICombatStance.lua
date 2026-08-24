-- JAZZ-AI-ROLE-002 / ROLE-003: shared combat stance for PickCustomArchetype.
-- Deterministic NeedPush/NeedFlank; panic tiers; melee secondary via AP-reach (F9).

local function JazzAI_UnitClassName(unit)
	-- Live combat units are class "Unit"; role tokens live on UnitData id.
	if not unit then
		return ""
	end
	local def = unit.unitdatadef_id
	if type(def) == "string" and def ~= "" then
		return def
	end
	local name = unit.className
	if type(name) == "string" and name ~= "" and name ~= "Unit" then
		return name
	end
	local cls = unit.class
	if type(cls) == "string" and cls ~= "" and cls ~= "Unit" then
		return cls
	end
	return def or name or cls or ""
end

function JazzAI_FactionArchetypePrefix(unit)
	local aff = unit and unit.Affiliation
	if aff == "Rebel" or aff == "Rebels" then
		return "Rebels_"
	end
	return "Legion_"
end

function JazzAI_InferRoleFamily(unit)
	local class = JazzAI_UnitClassName(unit)
	if class:find("Flanker", 1, true) or class == "RebelFlanker" then
		return "Scout"
	end
	if class:find("Assault", 1, true) then
		return "Pusher"
	end
	if class:find("Gunner", 1, true) or class:find("Machinegun", 1, true) then
		return "MG"
	end
	if class:find("Heavy", 1, true) or class:find("Mortar", 1, true) or class:find("Rocketeer", 1, true) then
		return "Heavy"
	end
	if class:find("Leader", 1, true) or class:find("Sergeant", 1, true) or class:find("Lieutenant", 1, true)
		or class:find("Captain", 1, true) then
		return "Leader"
	end
	if class:find("Bonemaker", 1, true) or class:find("Medic", 1, true) then
		return "Medic"
	end
	if class:find("Recruit", 1, true) then
		return "Recruit"
	end
	if class:find("Front", 1, true) or class:find("Sniper", 1, true) or class:find("Marksman", 1, true)
		or class:find("Rifleman", 1, true) or class:find("Soldier", 1, true) then
		return "Line"
	end
	return "Line"
end

function JazzAI_InferPanicTier(unit)
	local class = JazzAI_UnitClassName(unit)
	if class:find("T4", 1, true) or class:find("Mercenary", 1, true) or class:find("Elite", 1, true)
		or class:find("Immortal", 1, true) then
		return 4
	end
	if class:find("T3", 1, true) then
		return 3
	end
	if class:find("T2", 1, true) then
		return 2
	end
	if class:find("T1", 1, true) or class:find("Recruit", 1, true) then
		return 1
	end
	return 2
end

function JazzAI_HasKeyword(unit, keyword)
	local keys = unit and unit.AIKeywords
	if not keys then
		return false
	end
	for _, k in ipairs(keys) do
		if k == keyword then
			return true
		end
	end
	return false
end

function JazzAI_GetActiveFirearm(unit)
	if not IsValid(unit) or not unit.GetActiveWeapons then
		return false
	end
	local w = unit:GetActiveWeapons("Firearm")
	if IsKindOf(w, "Firearm") then
		return w
	end
	w = unit:GetActiveWeapons()
	if IsKindOf(w, "Firearm") then
		return w
	end
	return false
end

function JazzAI_UnitOpticMagnification(unit)
	local wep = JazzAI_GetActiveFirearm(unit)
	if not wep or type(JAZZ_CTHGetOpticProfile) ~= "function" then
		return 1
	end
	local optic = JAZZ_CTHGetOpticProfile(wep, 3)
	return (optic and optic.magnification) or 1
end

--- Dedicated sniper role (keyword / class), not dynamic fill-in.
function JazzAI_UnitIsDedicatedSniper(unit)
	if not IsValid(unit) or unit:IsDead() then
		return false
	end
	if JazzAI_HasKeyword(unit, "Sniper") or JazzAI_HasKeyword(unit, "Marksman") then
		return true
	end
	local class = JazzAI_UnitClassName(unit)
	return type(class) == "string" and (class:find("Sniper", 1, true) or class:find("Marksman", 1, true))
end

function JazzAI_UnitIsDedicatedMG(unit)
	if not IsValid(unit) or unit:IsDead() then
		return false
	end
	if JazzAI_InferRoleFamily(unit) == "MG" then
		return true
	end
	local wep = JazzAI_GetActiveFirearm(unit)
	return IsKindOf(wep, "MachineGun")
end

--- Optics / bolt / sniper rifle — can stand in when team has no dedicated sniper.
function JazzAI_UnitSemiSniperScore(unit)
	if not IsValid(unit) or unit:IsDead() then
		return 0
	end
	if JazzAI_UnitIsDedicatedSniper(unit) then
		return 0
	end
	local family = JazzAI_InferRoleFamily(unit)
	if family == "MG" or family == "Heavy" or family == "Leader" or family == "Medic" then
		return 0
	end
	local wep = JazzAI_GetActiveFirearm(unit)
	if not wep then
		return 0
	end
	local score = 0
	if IsKindOf(wep, "SniperRifle") then
		score = score + 100
	end
	if wep.IsPerRoundReload and wep:IsPerRoundReload() then
		score = score + 60
	end
	local mag = JazzAI_UnitOpticMagnification(unit)
	if mag >= 4 then
		score = score + 50 + MulDivRound(mag, 5, 1)
	elseif mag >= 2 then
		score = score + 25 + MulDivRound(mag, 5, 1)
	end
	return score
end

function JazzAI_UnitPseudoMGScore(unit)
	if not IsValid(unit) or unit:IsDead() then
		return 0
	end
	if JazzAI_UnitIsDedicatedMG(unit) then
		return 0
	end
	local family = JazzAI_InferRoleFamily(unit)
	if family == "Heavy" or family == "Leader" or family == "Medic" or family == "MG" then
		return 0
	end
	local wep = JazzAI_GetActiveFirearm(unit)
	if not wep then
		return 0
	end
	if IsKindOf(wep, "MachineGun") then
		return 0
	end
	local score = 0
	if IsKindOf(wep, "SubmachineGun") then
		score = 80
	elseif IsKindOf(wep, "AssaultRifle") then
		score = 70
	elseif family == "Pusher" or family == "Recruit" then
		score = 40
	else
		return 0
	end
	-- Prefer mid/long over pure CQB pistols.
	score = score + Min(20, wep.WeaponRange or 0)
	return score
end

function JazzAI_TeamHasDedicatedSniper(team)
	if not team or not team.units then
		return false
	end
	for _, ally in ipairs(team.units) do
		if JazzAI_UnitIsDedicatedSniper(ally) then
			return true
		end
	end
	return false
end

function JazzAI_TeamHasDedicatedMG(team)
	if not team or not team.units then
		return false
	end
	for _, ally in ipairs(team.units) do
		if JazzAI_UnitIsDedicatedMG(ally) then
			return true
		end
	end
	return false
end

--- Candidates for aura-assigned fill-in roles (in officer radius, not the officer).
function JazzAI_AuraRoleCandidates(team, source, radius)
	local list = {}
	if not team or not team.units or not IsValid(source) then
		return list
	end
	for _, ally in ipairs(team.units) do
		if ally ~= source and not ally:IsDead() then
			local in_aura = false
			if JazzAI_IsInOfficerAura then
				in_aura = JazzAI_IsInOfficerAura(ally, source, radius)
			elseif (radius or 0) >= 1000 then
				in_aura = true
			else
				in_aura = DivRound(ally:GetDist(source), const.SlabSizeX) <= (radius or 0)
			end
			if in_aura then
				list[#list + 1] = ally
			end
		end
	end
	return list
end

--- Best fill-in when no dedicated sniper — picked by officer aura among influenced allies.
function JazzAI_PickTeamSemiSniper(team, source, radius)
	if JazzAI_TeamHasDedicatedSniper(team) then
		return false
	end
	local candidates = (source and radius) and JazzAI_AuraRoleCandidates(team, source, radius)
		or ((team and team.units) or empty_table)
	local best, best_score = false, 0
	for _, ally in ipairs(candidates) do
		if ally ~= source then
			local s = JazzAI_UnitSemiSniperScore(ally)
			if s > best_score then
				best, best_score = ally, s
			end
		end
	end
	return best_score > 0 and best or false
end

--- Best fill-in when no dedicated MG — aura-assigned OW-heavy Machinegunner.
function JazzAI_PickTeamPseudoMG(team, source, radius)
	if JazzAI_TeamHasDedicatedMG(team) then
		return false
	end
	local candidates = (source and radius) and JazzAI_AuraRoleCandidates(team, source, radius)
		or ((team and team.units) or empty_table)
	local best, best_score = false, 0
	for _, ally in ipairs(candidates) do
		if ally ~= source then
			local s = JazzAI_UnitPseudoMGScore(ally)
			if s > best_score then
				best, best_score = ally, s
			end
		end
	end
	return best_score > 0 and best or false
end

--- Assault / Push candidate score (Scout/Pusher/Recruit with CQB-capable firearm).
function JazzAI_UnitPusherScore(unit)
	if not IsValid(unit) or unit:IsDead() then
		return 0
	end
	if JazzAI_UnitIsDedicatedSniper(unit) or JazzAI_UnitIsDedicatedMG(unit) then
		return 0
	end
	local family = JazzAI_InferRoleFamily(unit)
	if family == "Heavy" or family == "Leader" or family == "Medic" or family == "MG" then
		return 0
	end
	local wep = JazzAI_GetActiveFirearm(unit)
	if not wep then
		return 0
	end
	if IsKindOf(wep, "SniperRifle") or IsKindOf(wep, "MachineGun") then
		return 0
	end
	local score = 0
	if family == "Pusher" then
		score = 100
	elseif family == "Scout" then
		score = 80
	elseif family == "Recruit" then
		score = 60
	elseif family == "Line" then
		score = 35
	else
		return 0
	end
	if IsKindOf(wep, "SubmachineGun") or IsKindOf(wep, "Shotgun") then
		score = score + 25
	elseif IsKindOf(wep, "AssaultRifle") then
		score = score + 15
	end
	-- Closer-range weapons prefer push.
	local wr = wep.WeaponRange or 20
	if wr <= 14 then
		score = score + 10
	end
	return score
end

--- Aura-assigned pusher (who executes «Давить» / Assaulter).
function JazzAI_PickTeamPusher(team, source, radius, exclude)
	exclude = exclude or empty_table
	local candidates = (source and radius) and JazzAI_AuraRoleCandidates(team, source, radius)
		or ((team and team.units) or empty_table)
	local best, best_score = false, 0
	for _, ally in ipairs(candidates) do
		if ally ~= source and not exclude[ally] then
			local s = JazzAI_UnitPusherScore(ally)
			if s > best_score then
				best, best_score = ally, s
			end
		end
	end
	return best_score > 0 and best or false
end

function JazzAI_GetTeamAuraRoleEntry(unit)
	if not unit or not unit.team then
		return false
	end
	local team = unit.team
	local entry = (rawget(_G, "JazzAI_TeamDirectives") or empty_table)[team.side or team.handle or tostring(team)]
	if not entry or not entry.source or entry.source:IsDead() then
		return false
	end
	if JazzAI_IsInOfficerAura and not JazzAI_IsInOfficerAura(unit, entry.source, entry.radius) then
		return false
	end
	return entry
end

--- True if officer aura assigned this unit as semi-sniper fill-in.
function JazzAI_UnitIsDynamicSemiSniper(unit)
	if not IsValid(unit) then
		return false
	end
	local entry = JazzAI_GetTeamAuraRoleEntry(unit)
	return entry and entry.semi_sniper == unit
end

--- True if officer aura assigned this unit as pseudo-MG fill-in.
function JazzAI_UnitIsDynamicPseudoMG(unit)
	if not IsValid(unit) then
		return false
	end
	local entry = JazzAI_GetTeamAuraRoleEntry(unit)
	return entry and entry.pseudo_mg == unit
end

--- True if officer aura assigned this unit to push / assault.
function JazzAI_UnitIsDynamicPusher(unit)
	if not IsValid(unit) then
		return false
	end
	local entry = JazzAI_GetTeamAuraRoleEntry(unit)
	return entry and entry.pusher == unit
end

function JazzAI_NeverMelee(unit)
	local family = JazzAI_InferRoleFamily(unit)
	if family == "MG" or family == "Heavy" or family == "Leader" then
		return true
	end
	if JazzAI_HasKeyword(unit, "Sniper") or JazzAI_HasKeyword(unit, "Ordnance") then
		return not JazzAI_HasKeyword(unit, "Melee")
	end
	return false
end

function JazzAI_GetAltSlot(unit)
	return unit.current_weapon == "Handheld A" and "Handheld B" or "Handheld A"
end

function JazzAI_GetAltWeapons(unit)
	return unit:GetEquippedWeapons(JazzAI_GetAltSlot(unit)) or empty_table
end

function JazzAI_FindAltMeleeWeapon(unit)
	for _, w in ipairs(JazzAI_GetAltWeapons(unit)) do
		if IsKindOf(w, "MeleeWeapon") then
			return w
		end
	end
	return false
end

function JazzAI_FindAltCQBFirearm(unit)
	for _, w in ipairs(JazzAI_GetAltWeapons(unit)) do
		if IsKindOfClasses(w, "Revolver", "Pistol", "SubmachineGun") then
			return w
		end
	end
	return false
end

function JazzAI_EnsureWeaponClass(unit, class_or_kind)
	if unit:GetActiveWeapons(class_or_kind) then
		return true
	end
	-- Swap only if alt slot actually has that kind.
	local found = false
	for _, w in ipairs(JazzAI_GetAltWeapons(unit)) do
		if IsKindOf(w, class_or_kind) then
			found = true
			break
		end
	end
	if not found then
		return false
	end
	AIPlayCombatAction("ChangeWeapon", unit, 0)
	return not not unit:GetActiveWeapons(class_or_kind)
end

function JazzAI_MeleeAttackAPCost(unit)
	local action = CombatActions and (CombatActions.MeleeAttack or CombatActions.Melee)
	if action and action.GetAPCost then
		local cost = action:GetAPCost(unit)
		if type(cost) == "number" and cost >= 0 then
			return cost
		end
	end
	return 4 * const.Scale.AP
end

--- F9: enough AP to reach a melee tile and attack once.
function JazzAI_CanReachMeleeAndAttackOnce(unit, enemy)
	if not IsValid(enemy) or not IsKindOf(enemy, "Unit") then
		return false
	end
	local attack_cost = JazzAI_MeleeAttackAPCost(unit)
	local ap = unit.ActionPoints or 0

	if IsMeleeRangeTarget and IsMeleeRangeTarget(unit, nil, unit.stance, enemy) then
		return ap >= attack_cost
	end

	local dest = unit.GetClosestMeleeRangePos and unit:GetClosestMeleeRangePos(enemy)
	if not dest then
		return false
	end

	local combatPath = rawget(_G, "GetCombatPath") and GetCombatPath(unit)
	if combatPath and combatPath.GetAP then
		local move_ap = combatPath:GetAP(dest)
		if type(move_ap) == "number" then
			return ap >= move_ap + attack_cost
		end
	end

	-- Fallback estimate: 1 AP-scale per tile to dest.
	local dist = unit:GetDist(dest)
	local tiles = Max(0, DivRound(dist, const.SlabSizeX))
	local move_ap = tiles * const.Scale.AP
	return ap >= move_ap + attack_cost
end

function JazzAI_NeedPush(unit, enemy, dist)
	if not enemy or not dist then
		return false
	end
	local tiles = DivRound(dist, const.SlabSizeX)
	if tiles < 2 or tiles > 14 then
		return false
	end
	-- Prefer push when already close and visible / threatened.
	if unit.IsThreatened and unit:IsThreatened({ enemy }) then
		return true
	end
	return tiles <= 10
end

function JazzAI_NeedFlank(unit, enemy, dist)
	if not enemy or not dist then
		return false
	end
	local tiles = DivRound(dist, const.SlabSizeX)
	if tiles < 4 or tiles > 24 then
		return false
	end
	local team = unit.team
	if not team or not team.units then
		return tiles >= 8
	end
	-- Front busy: another living ally is closer to the same enemy.
	local my_dist = dist
	for _, ally in ipairs(team.units) do
		if ally ~= unit and not ally:IsDead() then
			local ad = ally:GetDist(enemy)
			if ad < my_dist then
				return true
			end
		end
	end
	return tiles >= 12
end

function JazzAI_CalcPanicChance(unit)
	local tier = JazzAI_InferPanicTier(unit)
	if tier >= 4 then
		return 0
	end

	local chance = 0
	local health_perc = MulDivRound(unit.HitPoints, 100, Max(1, unit.MaxHitPoints))
	local will_perc = MulDivRound(unit.WillPoints or 0, 100, Max(1, unit.MaxWillPoints or 100))

	local wounds = 0
	local wounded = unit:GetStatusEffect("Wounded")
	local bleeding = unit:GetStatusEffect("Bleeding")
	if wounded then
		wounds = wounds + (wounded.stacks or 0)
	end
	if bleeding then
		wounds = wounds + (bleeding.stacks or 0)
	end

	if wounds > 1 then
		chance = 100 - health_perc
	end
	if will_perc < 40 then
		chance = Max(chance, 100 - will_perc)
	end

	-- Wound pressure on the roll is applied by caller via panicroll offset historically;
	-- fold a milder form into chance for clarity.
	chance = chance + 5 * wounds

	if tier == 3 then
		chance = Min(chance, 10)
	end

	local prefix = JazzAI_FactionArchetypePrefix(unit)
	if prefix == "Rebels_" then
		chance = MulDivRound(chance, 60, 100) -- F11 calmer
	end

	return Max(0, chance)
end

function JazzAI_RollPanicDeserter(unit)
	local chance = JazzAI_CalcPanicChance(unit)
	if chance <= 0 then
		return false
	end
	local wounds = 0
	local wounded = unit:GetStatusEffect("Wounded")
	local bleeding = unit:GetStatusEffect("Bleeding")
	if wounded then
		wounds = wounds + (wounded.stacks or 0)
	end
	if bleeding then
		wounds = wounds + (bleeding.stacks or 0)
	end
	local panicroll = unit:Random(100) - 10 * wounds
	return panicroll < chance
end

local function JazzAI_UnitHasBleeding(unit)
	if not unit or unit:IsDead() then
		return false
	end
	local has_any = rawget(_G, "JazzHasAnyBleed")
	if type(has_any) == "function" and has_any(unit) then
		return true
	end
	return unit:HasStatusEffect("Bleeding")
		or unit:HasStatusEffect("BleedingMedium")
		or unit:HasStatusEffect("BleedingHeavy")
end

local function JazzAI_TeamHasBleeding(unit)
	if JazzAI_UnitHasBleeding(unit) then
		return true
	end
	for _, ally in ipairs(unit.team and unit.team.units or empty_table) do
		if ally ~= unit and JazzAI_UnitHasBleeding(ally) then
			return true
		end
	end
	return false
end

local function JazzAI_HasUsableBleedMedicine(unit)
	local get_bandage = rawget(_G, "JazzGetBandageItem")
	if type(get_bandage) == "function" and get_bandage(unit) then
		return true
	end
	local get_kit = rawget(_G, "JazzGetEquippedKitMedicine")
	if type(get_kit) == "function" then
		return get_kit(unit) and true or false
	end
	-- Load-order fallback; normal combat runs after jazz has installed the helpers.
	local found = false
	unit:ForEachItem(function(item)
		if found then
			return
		end
		local class_id = item.class
		local amount = IsKindOf(item, "InventoryStack") and (item.Amount or 0) or (item.Condition or 0)
		local required = class_id == "Medkit" and 50 or class_id == "FirstAidKit" and 30 or 0
		if amount > 0 and (
			class_id == "JAZZ_Bandage"
			or (class_id == "FirstAidKit" or class_id == "Medkit") and (unit.Medical or 0) >= required
		) then
			found = true
		end
	end)
	return found
end

local function JazzAI_UnitNeedsMedicCare(unit)
	if not unit or unit:IsDead() then
		return false
	end
	-- All Jazz bleed tiers (vanilla only checked "Bleeding").
	if type(rawget(_G, "JazzHasAnyBleed")) == "function" and JazzHasAnyBleed(unit) then
		return true
	end
	if unit:HasStatusEffect("Bleeding")
		or unit:HasStatusEffect("BleedingMedium")
		or unit:HasStatusEffect("BleedingHeavy")
	then
		return true
	end
	-- F10 / JAZZ-AI-MED-001 early heal threshold 85%
	return unit.HitPoints < MulDivRound(unit.MaxHitPoints, 85, 100)
end

function JazzAI_TryMedicSwitch(unit)
	if JazzAI_UnitNeedsMedicCare(unit) then
		return true
	end
	local team = unit.team
	if not team then
		return false
	end
	for _, ally in ipairs(team.units) do
		if ally ~= unit and JazzAI_UnitNeedsMedicCare(ally) then
			return true
		end
	end
	return false
end

function JazzAI_IsDedicatedMedicUnit(unit)
	return unit and JazzAI_InferRoleFamily(unit) == "Medic"
end

local function JazzAI_UnitIsMedicCapable(unit)
	if not unit or not IsValid(unit) or unit:IsDead() then
		return false
	end
	if unit.IsDowned and unit:IsDowned() then
		return false
	end
	if unit.IsIncapacitated and unit:IsIncapacitated() then
		return false
	end
	return true
end

function JazzAI_TeamHasLivingDedicatedMedic(team)
	if not team then
		return false
	end
	for _, ally in ipairs(team.units or empty_table) do
		if JazzAI_UnitIsMedicCapable(ally) and JazzAI_IsDedicatedMedicUnit(ally) then
			return true
		end
	end
	return false
end

local function JazzAI_FindNeediestPatient(team)
	local best, best_bleed, best_hpp, best_handle = false, 1, 1000, 0x7fffffff
	for _, ally in ipairs((team and team.units) or empty_table) do
		if JazzAI_UnitIsMedicCapable(ally) and JazzAI_UnitNeedsMedicCare(ally) then
			local bleed = JazzAI_UnitHasBleeding(ally) and 0 or 1
			local max_hp = ally.MaxHitPoints or 1
			local hpp = MulDivRound(ally.HitPoints or 0, 100, Max(1, max_hp))
			local handle = ally.handle or 0
			if bleed < best_bleed
				or (bleed == best_bleed and hpp < best_hpp)
				or (bleed == best_bleed and hpp == best_hpp and handle < best_handle) then
				best, best_bleed, best_hpp, best_handle = ally, bleed, hpp, handle
			end
		end
	end
	return best
end

local function JazzAI_IsAssignedFillInMedic(unit)
	if not unit or not unit.team or not JazzAI_HasUsableBleedMedicine(unit) then
		return false
	end
	if JazzAI_IsDedicatedMedicUnit(unit) then
		return false
	end
	local patient = JazzAI_FindNeediestPatient(unit.team)
	if not patient then
		return false
	end
	local best, best_dist, best_handle = false, 0x7fffffff, 0x7fffffff
	for _, ally in ipairs(unit.team.units or empty_table) do
		if JazzAI_UnitIsMedicCapable(ally)
			and not JazzAI_IsDedicatedMedicUnit(ally)
			and JazzAI_HasUsableBleedMedicine(ally) then
			local dist = 0
			if ally ~= patient and ally.GetDist then
				dist = ally:GetDist(patient) or 0
			end
			local handle = ally.handle or 0
			if dist < best_dist or (dist == best_dist and handle < best_handle) then
				best, best_dist, best_handle = ally, dist, handle
			end
		end
	end
	return best == unit
end

-- MED-002: only dedicated medic (or one fill-in if none) becomes Medic.
function JazzAI_ShouldBecomeMedic(unit, opts)
	opts = opts or empty_table
	if not unit or not JazzAI_TryMedicSwitch(unit) then
		return false
	end
	if (opts.allow_medic or JazzAI_IsDedicatedMedicUnit(unit)) then
		return true
	end
	if JazzAI_TeamHasLivingDedicatedMedic(unit.team) then
		return false
	end
	return JazzAI_IsAssignedFillInMedic(unit)
end

-- Medic archetype Behavior Score helpers (items.lua Score closures).
-- When self/ally needs care, combat behaviors must score 0 so Healer wins
-- exclusively — otherwise Standard/SeekEnemy (~Weight 100) beat Healer (200)
-- often enough to Priority-MobileShot toward the enemy before Bandage.
function JazzAI_MedicHealBehaviorScore(self, unit)
	if unit and JazzAI_TryMedicSwitch(unit) then
		return self.Weight or 1000
	end
	return 0
end

function JazzAI_MedicCombatBehaviorScore(self, unit)
	if unit and JazzAI_TryMedicSwitch(unit) then
		return 0
	end
	return self.Weight or 100
end

--- JAZZ-AI-REG-001: isolated pocket vs distant ally crowd.
--- LocalMax=2, LocalRadius=8, ClusterMin=3, ClusterGap=18 (tiles).
function JazzAI_NeedsRegroup(unit)
	if not unit or not unit.team or unit:IsDead() then
		return false
	end
	if unit.Affiliation ~= "Legion" then
		return false
	end
	-- Rocketeer / mortar / GL: stay rear and shoot. Legion_Regroup has no
	-- RocketLauncherFire, so isolation would silence them for the whole fight.
	if JazzAI_InferRoleFamily(unit) == "Heavy" then
		return false
	end
	if JazzAI_HasKeyword(unit, "Ordnance") then
		return false
	end
	local team = unit.team
	local scale = const.SlabSizeX
	local local_max, local_radius = 2, 8
	local cluster_min, cluster_gap = 3, 18

	local local_count, far_count = 0, 0
	for _, ally in ipairs(team.units) do
		if not ally:IsDead() then
			local dist = DivRound(unit:GetDist(ally), scale)
			if dist <= local_radius then
				local_count = local_count + 1
			end
			if dist >= cluster_gap then
				far_count = far_count + 1
			end
		end
	end
	return local_count <= local_max and far_count >= cluster_min
end

function JazzAI_ArchetypeExists(id)
	if not id or id == "" then
		return false
	end
	local table_ai = rawget(_G, "AIArchetypes")
	if type(table_ai) == "table" and table_ai[id] then
		return true
	end
	local root = Presets and Presets.AIArchetype
	if not root then
		return false
	end
	for _, group in pairs(root) do
		if type(group) == "table" then
			local preset = group[id]
			if preset then
				return true
			end
			for pid, p in pairs(group) do
				if type(p) == "table" and (p.id == id or p.Id == id or pid == id) then
					return true
				end
			end
		end
	end
	return false
end

--- Prefer requested id; if missing, fall back Assaulter → Frontliner → base unit.archetype.
function JazzAI_ResolveKnownArchetype(id, prefix, fallback)
	if JazzAI_ArchetypeExists(id) then
		return id
	end
	prefix = prefix or "Legion_"
	local candidates = {
		prefix .. "Assaulter",
		prefix .. "Frontliner",
		fallback,
	}
	for _, cand in ipairs(candidates) do
		if cand and cand ~= id and JazzAI_ArchetypeExists(cand) then
			return cand
		end
	end
	return id
end

--- Main entry for UnitData.PickCustomArchetype.
--- opts.allow_medic = true for Bonemaker-style units.
function JazzAI_PickCombatStance(unit, proto_context, opts)
	opts = opts or empty_table
	local archetype = unit.archetype
	local prefix = JazzAI_FactionArchetypePrefix(unit)
	local family = JazzAI_InferRoleFamily(unit)
	local prev = archetype

	if family == "Leader" then
		if JazzAI_WriteOfficerAura then
			JazzAI_WriteOfficerAura(unit)
		end
	end

	if JazzAI_ShouldBecomeMedic(unit, opts) then
		JazzAI_ApplyMedicOptLocCap()
		return "Medic"
	end
	if family == "Leader" then
		return archetype
	end

	-- REG-001: isolated Legion runs to distant ally cluster (before role push/flank)
	if JazzAI_NeedsRegroup(unit) then
		if PlayVoiceResponse and prev ~= "Legion_Regroup" then
			PlayVoiceResponse(unit, "AIArchetypeScared")
		end
		return "Legion_Regroup"
	end

	-- CMD aura influence on non-leaders
	local directive = JazzAI_GetTeamDirective and JazzAI_GetTeamDirective(unit)

	local enemy, dist = GetNearestEnemy(unit)

	-- F4 + F9: melee secondary (skip under FallBack / TakeCover / GoHidden — stay under cover / stealth)
	-- Sniper/Marksman / dynamic semi-sniper never dive to melee from aura pressure.
	local is_sniper = JazzAI_HasKeyword(unit, "Sniper") or JazzAI_HasKeyword(unit, "Marksman")
		or JazzAI_UnitIsDynamicSemiSniper(unit)
	local is_pseudo_mg = JazzAI_UnitIsDynamicPseudoMG(unit)
	local is_pusher = JazzAI_UnitIsDynamicPusher(unit)
		or family == "Pusher"
	if directive ~= "FallBack" and directive ~= "TakeCover" and directive ~= "GoHidden"
		and not is_sniper
		and enemy and not JazzAI_NeverMelee(unit) and JazzAI_FindAltMeleeWeapon(unit) then
		if JazzAI_CanReachMeleeAndAttackOnce(unit, enemy) then
			if JazzAI_EnsureWeaponClass(unit, "MeleeWeapon") then
				if PlayVoiceResponse and prev ~= "Melee" then
					PlayVoiceResponse(unit, "AIArchetypeAngry")
				end
				return "Melee"
			end
		end
	end

	-- Cover / building / heights / stealth hold: Scout/Pusher/Recruit/Line → Frontliner
	-- Sniper/Marksman / semi-sniper keep base (long-range / optics) — do not collapse into Frontliner.
	local cover_hold = directive == "FallBack" or directive == "TakeCover"
		or directive == "OccupyBuildings" or directive == "OccupyHeights" or directive == "GoHidden"
	if cover_hold and not is_sniper and not is_pseudo_mg then
		if family == "Scout" or family == "Pusher" or family == "Recruit" or family == "Line" then
			archetype = prefix .. "Frontliner"
		end
	-- F2 role stance — Push only for aura-assigned pusher (or dedicated Pusher family).
	elseif family == "Scout" then
		archetype = prefix .. "Flanker"
		local want_push = not (directive == "FallBack")
			and (directive == "Push" or JazzAI_NeedPush(unit, enemy, dist)
				or (unit.ai_context and unit.ai_context.jazz_flare_push))
		if want_push and is_pusher then
			archetype = prefix .. "Assaulter"
		end
	elseif family == "Pusher" then
		archetype = prefix .. "Assaulter"
		if JazzAI_NeedFlank(unit, enemy, dist) or directive == "Envelop" then
			archetype = prefix .. "Flanker"
		end
	elseif family == "Line" and not is_sniper then
		-- Aura pusher on Line, or CQB sidearm under NeedPush.
		if is_pusher and (directive == "Push" or JazzAI_NeedPush(unit, enemy, dist)) then
			archetype = prefix .. "Assaulter"
		elseif enemy and dist and JazzAI_NeedPush(unit, enemy, dist) and directive ~= "LowVisHold" and directive ~= "FallBack" then
			local cqb = JazzAI_FindAltCQBFirearm(unit)
			if cqb and is_pusher then
				if not unit:GetActiveWeapons(cqb.class) then
					AIPlayCombatAction("ChangeWeapon", unit, 0)
				end
				archetype = prefix .. "Assaulter"
			end
		end
	elseif family == "Recruit" then
		archetype = prefix .. "Assaulter"
	end

	-- Dynamic fill-ins when the squad lacks dedicated roles / commander Push assign.
	if is_sniper and not JazzAI_UnitIsDedicatedSniper(unit) then
		if family == "Scout" or family == "Pusher" or family == "Recruit" or family == "Line" then
			archetype = prefix .. "Frontliner"
		end
	end
	if is_pseudo_mg then
		local mg_id = prefix .. "Machinegunner"
		if JazzAI_ArchetypeExists(mg_id) then
			archetype = mg_id
		end
	end
	if is_pusher and not is_sniper and not is_pseudo_mg
		and (directive == "Push" or (unit.ai_context and unit.ai_context.jazz_flare_push)) then
		archetype = prefix .. "Assaulter"
	end
	-- MG / Heavy / Sniper keep base archetype; FocusFire / LowVisHold / HoldLine use family defaults

	if archetype ~= prev and PlayVoiceResponse then
		PlayVoiceResponse(unit, "AIArchetypeAngry")
	end

	if JazzAI_RollPanicDeserter(unit) then
		if PlayVoiceResponse then
			PlayVoiceResponse(unit, "AIArchetypeScared")
		end
		return "Deserter"
	end

	-- Missing faction preset (e.g. historical Rebels_Flanker gap) → known Assaulter/Frontliner.
	if archetype == "Medic" or archetype == "Deserter" or archetype == "Melee" or archetype == "Legion_Regroup" then
		return archetype
	end
	return JazzAI_ResolveKnownArchetype(archetype, prefix, unit.archetype)
end

-- MED-001: OptLoc ≤45 for Medic archetypes.
-- Runtime enforce so Mod Editor autosave of items.lua cannot restore OptLoc 80.
local JazzAI_MedicOptLocMax = 45
local JazzAI_MedicOptLocIds = {
	Medic = true,
	Medic_Low = true,
}

function JazzAI_ApplyMedicOptLocCap()
	local root = Presets and Presets.AIArchetype
	if not root then
		return
	end
	for _, group in pairs(root) do
		if type(group) == "table" then
			for id, preset in pairs(group) do
				local pid = id
				if type(preset) == "table" then
					pid = preset.id or preset.Id or id
				end
				if JazzAI_MedicOptLocIds[pid] and type(preset) == "table" then
					local r = preset.OptLocSearchRadius
					if type(r) == "number" and r > JazzAI_MedicOptLocMax then
						preset.OptLocSearchRadius = JazzAI_MedicOptLocMax
					end
				end
			end
		end
	end
end

function OnMsg.ModsReloaded()
	JazzAI_ApplyMedicOptLocCap()
end

function OnMsg.DataLoaded()
	JazzAI_ApplyMedicOptLocCap()
end
