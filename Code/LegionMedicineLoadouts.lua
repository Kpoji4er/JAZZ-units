-- MED-001 / UNITS: medicine is generated into Legion starting inventories.
-- The generation chance belongs to the soldier, not to a post-death bonus roll;
-- drop_chance=100 makes a generated item recoverable if it was not consumed.

local lMedicineChanceByTier = {
	[1] = 10,
	[2] = 30,
	[3] = 50,
	[4] = 100,
}

local function lFindLootItem(loot_def, item_id)
	for _, entry in ipairs(loot_def or empty_table) do
		if IsKindOf(entry, "LootEntryInventoryItem") and entry.item == item_id then
			return entry
		end
	end
	return false
end

local function lEnsureLootItem(loot_def, item_id, chance)
	if not loot_def then
		return false
	end
	local entry = lFindLootItem(loot_def, item_id)
	if entry then
		entry.generate_chance = chance
		entry.drop_chance = 100
		entry.stack_min = 1
		entry.stack_max = 1
		return entry
	end
	entry = PlaceObj("LootEntryInventoryItem", {
		item = item_id,
		generate_chance = chance,
		drop_chance = 100,
		stack_min = 1,
		stack_max = 1,
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

local function lHasAnyKit(loot_list)
	for _, loot_def in ipairs(loot_list) do
		if lFindLootItem(loot_def, "FirstAidKit") or lFindLootItem(loot_def, "Medkit") then
			return true
		end
	end
	return false
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
				elseif unit_def.role == "Medic" and not lHasAnyKit(loot_list) then
					lEnsureLootItem(primary, tier >= 3 and "Medkit" or "FirstAidKit", 100)
				end
			end
		end
	end
end

function OnMsg.DataLoaded()
	lInstallLegionMedicineLoadouts()
end

function OnMsg.ModsReloaded()
	lInstallLegionMedicineLoadouts()
end
