-- Shared format for first+last elite names. Nested T(first)/T(last) keep language switching.
local EliteNameComboFormatId = 890000000001650

function BuildNameCombos(first_names, last_names)
	local out, seen = {}, {}

	local function text_key(v)
		local s = _InternalTranslate(v) or ""
		s = s:gsub("^%s+", ""):gsub("%s+$", "")
		if s == "" then
			return nil
		end
		return s:lower()
	end

	local function add_name(name_t, key)
		if not key or seen[key] then
			return
		end
		seen[key] = true
		out[#out + 1] = name_t
	end

	for _, fn in ipairs(first_names or {}) do
		add_name(fn, text_key(fn))
	end

	for _, fn in ipairs(first_names or {}) do
		local fk = text_key(fn)
		if fk then
			for _, ln in ipairs(last_names or {}) do
				local lk = text_key(ln)
				if lk then
					add_name(T{ EliteNameComboFormatId, "<first> <last>", first = fn, last = ln }, fk .. " " .. lk)
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
			local s = _InternalTranslate(name) or ""
			s = s:gsub("^%s+", ""):gsub("%s+$", "")
			local key = s:lower()
			if key ~= "" and not seen[key] then
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
