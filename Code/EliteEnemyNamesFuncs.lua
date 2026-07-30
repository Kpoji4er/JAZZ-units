-- Shared format for first+last elite names. Nested T(first)/T(last) keep language switching.
local EliteNameComboFormatId = 890000000001650

-- Dedup by localization id / structure, never by translated text (language-dependent pool size → MP desync).
local function name_key(v)
	if v == nil then
		return nil
	end
	if type(v) == "number" then
		return "T" .. v
	end
	if type(v) == "table" then
		local id = v[1]
		if type(id) == "number" then
			if v.first ~= nil or v.last ~= nil then
				local fk = name_key(v.first)
				local lk = name_key(v.last)
				if fk and lk then
					return fk .. "|" .. lk
				end
			end
			return "T" .. id
		end
	end
	local s = tostring(v)
	if s == "" then
		return nil
	end
	return "S:" .. s
end

function BuildNameCombos(first_names, last_names)
	local out, seen = {}, {}

	local function add_name(name_t, key)
		if not key or seen[key] then
			return
		end
		seen[key] = true
		out[#out + 1] = name_t
	end

	for _, fn in ipairs(first_names or {}) do
		add_name(fn, name_key(fn))
	end

	for _, fn in ipairs(first_names or {}) do
		local fk = name_key(fn)
		if fk then
			for _, ln in ipairs(last_names or {}) do
				local lk = name_key(ln)
				if lk then
					add_name(T{ EliteNameComboFormatId, "<first> <last>", first = fn, last = ln }, fk .. "|" .. lk)
				end
			end
		end
	end

	return out, seen
end

function CollectEnemyNames(first_names, last_names, nicknames)
	local names, seen = BuildNameCombos(first_names, last_names)

	if nicknames then
		for _, name in ipairs(nicknames) do
			local key = name_key(name)
			if key and not seen[key] then
				seen[key] = true
				names[#names + 1] = name
			end
		end
	end

	return names
end

function AddEliteEnemyNames(Group, EnemyNames)
	if not EnemyNames or #EnemyNames == 0 then
		print("[AddEliteEnemyNames] пустой список имён для группы " .. tostring(Group))
		return
	end

	local prefix = "JazzMerc_" .. tostring(Group) .. "_"

	for i, EnemyName in ipairs(EnemyNames) do
		local new_id = string.format("%s%03d", prefix, i)
		PlaceObj('EliteEnemyName', {
			group = Group,
			id = new_id,
			-- Keep T / T{} so GenerateEliteUnitName assigns a localizable Name.
			name = EnemyName,
			Comment = "",
		})
	end

	print(string.format("[AddEliteEnemyNames] создано %d имён для %s (префикс %s)", #EnemyNames, Group, prefix))
end

-- unit.Name is saved via TToLuaCode, which asserts not THasArgs(T).
-- EliteEnemyName presets keep localizable T / T{first,last}; bake only when copying onto UnitData.
local function MakeSaveableUnitName(name)
	if name and THasArgs(name) then
		return Untranslated(_InternalTranslate(name))
	end
	return name
end

function SanitizeEliteUnitNamesForSave()
	for _, ud in sorted_pairs(gv_UnitData or empty_table) do
		if ud and ud.Name and THasArgs(ud.Name) then
			ud.Name = MakeSaveableUnitName(ud.Name)
		end
	end
end

local OrigGenerateEliteUnitName = GenerateEliteUnitName
function GenerateEliteUnitName(unit)
	OrigGenerateEliteUnitName(unit)
	if unit then
		unit.Name = MakeSaveableUnitName(unit.Name)
	end
end

function OnMsg.GatherSessionData()
	SanitizeEliteUnitNamesForSave()
end
