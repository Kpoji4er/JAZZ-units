-- MED-001 / UNITS: medicine stacks on Legion / AME / AIM medic starting inventories.
-- drop_chance=100: generated item is recoverable if not consumed.
-- AIM Doctor Meds scale with Medical (50..200). AME + Legion Medic role: flat 50.

local lMedicineChanceByTier = {
	[1] = 10,
	[2] = 30,
	[3] = 50,
	[4] = 100,
}

local lMedicMedsStackFlat = 50
local lAimMedsMin = 50
local lAimMedsMax = 200

local function lFindLootItem(loot_def, item_id)
	for _, entry in ipairs(loot_def or empty_table) do
		if IsKindOf(entry, "LootEntryInventoryItem") and entry.item == item_id then
			return entry
		end
	end
	return false
end

local function lEnsureLootItem(loot_def, item_id, chance, stack_min, stack_max)
	if not loot_def then
		return false
	end
	local min_stack = stack_min or 1
	local max_stack = stack_max or min_stack
	local entry = lFindLootItem(loot_def, item_id)
	if entry then
		entry.generate_chance = chance
		entry.drop_chance = 100
		entry.stack_min = min_stack
		entry.stack_max = max_stack
		return entry
	end
	entry = PlaceObj("LootEntryInventoryItem", {
		item = item_id,
		generate_chance = chance,
		drop_chance = 100,
		stack_min = min_stack,
		stack_max = max_stack,
	})
	table.insert(loot_def, entry)
	return entry
end

local function lUnitTier(unit_id)
	local tier = tonumber(string.match(unit_id or "", "T([1-4])"))
	if tier then
		return tier
	end
	return unit_id == "JAZZ_Legion_Recruit" and 1 or false
end

local function lUnitLootDefs(unit_def, loot_defs)
	local result = {}
	for _, loot_id in ipairs(unit_def.Equipment or empty_table) do
		local loot_def = loot_defs[loot_id]
		if loot_def then
			result[#result + 1] = loot_def
		end
	end
	return result
end

-- Level-table Equipment (MD → MD50/MD35/…) must patch leaf defs, not the selector parent.
local function lCollectLeafLootDefs(loot_def, loot_defs, out, seen)
	if not loot_def or seen[loot_def] then
		return
	end
	seen[loot_def] = true
	local nested = false
	for _, entry in ipairs(loot_def) do
		if IsKindOf(entry, "LootEntryLootDef") and entry.loot_def then
			nested = true
			lCollectLeafLootDefs(loot_defs[entry.loot_def], loot_defs, out, seen)
		end
	end
	if not nested then
		out[#out + 1] = loot_def
	end
end

local function lLeafLootDefsForUnit(unit_def, loot_defs)
	local leaves = {}
	local seen = {}
	for _, loot_def in ipairs(lUnitLootDefs(unit_def, loot_defs)) do
		lCollectLeafLootDefs(loot_def, loot_defs, leaves, seen)
	end
	return leaves
end

local function lHasAnyKit(loot_list)
	for _, loot_def in ipairs(loot_list) do
		if lFindLootItem(loot_def, "FirstAidKit") or lFindLootItem(loot_def, "Medkit") then
			return true
		end
	end
	return false
end

local function lEnsureMedsOnLeaves(leaves, stack)
	for _, loot_def in ipairs(leaves) do
		lEnsureLootItem(loot_def, "Meds", 100, stack, stack)
	end
end

-- Medical 0..100 → Meds 50..200 (linear).
local function lAimMedicMedsStack(medical)
	local med = medical or 0
	if med < 0 then
		med = 0
	elseif med > 100 then
		med = 100
	end
	return lAimMedsMin + MulDivRound(med, lAimMedsMax - lAimMedsMin, 100)
end

local function lIsAmeMedic(unit_def)
	return unit_def and unit_def.AMERole == "Medic"
end

-- Hireable Doctor pool (AIM / vanilla AIM presets / AIM-tagged JA12). Not AME.
local function lIsAimDoctor(unit_def)
	if not unit_def or unit_def.Specialization ~= "Doctor" then
		return false
	end
	if lIsAmeMedic(unit_def) or unit_def.Affiliation == "AME" then
		return false
	end
	local aff = unit_def.Affiliation
	if aff == "AIM" or aff == "A.I.M." or aff == "MERC" then
		return true
	end
	-- Vanilla MD/Fox/Thor/DrQ often omit Affiliation on the companion; still hireable Doctors.
	return unit_def.IsMercenary and (not aff or aff == "")
end

local function lInstallLegionMedicineLoadouts()
	local unit_defs = rawget(_G, "UnitDataDefs")
	local loot_defs = rawget(_G, "LootDefs")
	if type(unit_defs) ~= "table" or type(loot_defs) ~= "table" then
		return
	end

	for unit_id, unit_def in pairs(unit_defs) do
		local tier = type(unit_id) == "string" and string.find(unit_id, "^JAZZ_Legion_")
			and lUnitTier(unit_id)
		if tier then
			local loot_list = lUnitLootDefs(unit_def, loot_defs)
			local primary = loot_list[1]
			if primary then
				local chance = lMedicineChanceByTier[tier]
				lEnsureLootItem(primary, "JAZZ_Bandage", chance)
				lEnsureLootItem(primary, "JAZZ_Morphine", chance)

				if string.find(unit_id, "^JAZZ_Legion_LeaderT") then
					lEnsureLootItem(primary, "FirstAidKit", chance)
				elseif string.find(unit_id, "Veteran") then
					lEnsureLootItem(primary, "FirstAidKit", 100)
				elseif unit_def.role == "Medic" then
					if not lHasAnyKit(loot_list) then
						lEnsureLootItem(primary, tier >= 3 and "Medkit" or "FirstAidKit", 100)
					end
					lEnsureLootItem(primary, "Meds", 100, lMedicMedsStackFlat, lMedicMedsStackFlat)
				end
			end
		elseif lIsAmeMedic(unit_def) then
			lEnsureMedsOnLeaves(lLeafLootDefsForUnit(unit_def, loot_defs), lMedicMedsStackFlat)
		elseif lIsAimDoctor(unit_def) then
			lEnsureMedsOnLeaves(
				lLeafLootDefsForUnit(unit_def, loot_defs),
				lAimMedicMedsStack(unit_def.Medical)
			)
		end
	end
end

function OnMsg.DataLoaded()
	lInstallLegionMedicineLoadouts()
end

function OnMsg.ModsReloaded()
	lInstallLegionMedicineLoadouts()
end
