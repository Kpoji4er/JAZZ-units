-- JAZZ-AI-ROLE-002 / ROLE-003: shared combat stance for PickCustomArchetype.
-- Deterministic NeedPush/NeedFlank; panic tiers; melee secondary via AP-reach (F9).

local function JazzAI_UnitClassName(unit)
	return (unit and (unit.class or unit.className or unit.unitdatadef_id)) or ""
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

function JazzAI_TryMedicSwitch(unit)
	local bleeding = unit:GetStatusEffect("Bleeding")
	if bleeding then
		return true
	end
	local team = unit.team
	if not team then
		return false
	end
	for _, ally in ipairs(team.units) do
		if not ally:IsDead() then
			if ally:GetStatusEffect("Bleeding") then
				return true
			end
			-- F10 early heal threshold 85%
			if ally.HitPoints < MulDivRound(ally.MaxHitPoints, 85, 100) then
				return true
			end
		end
	end
	return false
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
		return archetype
	end

	if opts.allow_medic or family == "Medic" then
		-- F10: bleeding on self or allies triggers Medic immediately
		if JazzAI_TryMedicSwitch(unit) then
			return "Medic"
		end
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
	if directive == "LowVisHold" and family == "Line" then
		-- keep Frontliner / base (Hold bias via policies elsewhere)
	elseif directive == "Push" and family == "Scout" then
		-- nudge toward Assaulter
	elseif directive == "Envelop" and family == "Pusher" then
		-- nudge toward Flanker after base assign below
	end

	local enemy, dist = GetNearestEnemy(unit)

	-- F4 + F9: melee secondary
	if enemy and not JazzAI_NeverMelee(unit) and JazzAI_FindAltMeleeWeapon(unit) then
		if JazzAI_CanReachMeleeAndAttackOnce(unit, enemy) then
			if JazzAI_EnsureWeaponClass(unit, "MeleeWeapon") then
				if PlayVoiceResponse and prev ~= "Melee" then
					PlayVoiceResponse(unit, "AIArchetypeAngry")
				end
				return "Melee"
			end
		end
	end

	-- F2 role stance
	if family == "Scout" then
		archetype = prefix .. "Flanker"
		if JazzAI_NeedPush(unit, enemy, dist) or directive == "Push" or (unit.ai_context and unit.ai_context.jazz_flare_push) then
			archetype = prefix .. "Assaulter"
		end
	elseif family == "Pusher" then
		archetype = prefix .. "Assaulter"
		if JazzAI_NeedFlank(unit, enemy, dist) or directive == "Envelop" then
			archetype = prefix .. "Flanker"
		end
	elseif family == "Line" then
		-- CQB sidearm → temporary Assaulter if alt has CQB firearm
		if enemy and dist and JazzAI_NeedPush(unit, enemy, dist) then
			local cqb = JazzAI_FindAltCQBFirearm(unit)
			if cqb then
				if not unit:GetActiveWeapons(cqb.class) then
					AIPlayCombatAction("ChangeWeapon", unit, 0)
				end
				archetype = prefix .. "Assaulter"
			end
		end
	elseif family == "Recruit" then
		archetype = prefix .. "Assaulter"
	end
	-- MG / Heavy keep base archetype

	if archetype ~= prev and PlayVoiceResponse then
		PlayVoiceResponse(unit, "AIArchetypeAngry")
	end

	if JazzAI_RollPanicDeserter(unit) then
		if PlayVoiceResponse then
			PlayVoiceResponse(unit, "AIArchetypeScared")
		end
		return "Deserter"
	end

	return archetype
end
