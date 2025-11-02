function BuildNameCombos(first_names, last_names)
  local out, seen = {}, {}

  local function to_text(v)
    return _InternalTranslate(v)
  end

  local function add_text(s)
    s = (s or ""):gsub("^%s+",""):gsub("%s+$","")
    if s == "" then return end
    local key = s:lower()
    if not seen[key] then
      seen[key] = true
      out[#out+1] = Untranslated(s)
    end
  end

  for _, fn in ipairs(first_names or {}) do
    add_text(to_text(fn))
  end

  for _, fn in ipairs(first_names or {}) do
    local f = to_text(fn)
    if f ~= "" then
      for _, ln in ipairs(last_names or {}) do
        local l = to_text(ln)
        if l ~= "" then
          add_text(string.format("%s %s", f, l))
        end
      end
    end
  end

  return out
end

function CollectEnemyNames(first_names, last_names,nicknames)
    local names = BuildNameCombos(first_names, last_names)
    if nicknames then
        for _, name in ipairs(nicknames) do
          names[#names+1] = name
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

    --print(EnemyNames)


    for i, EnemyName in ipairs(EnemyNames) do
        local new_id = string.format("%s%03d", prefix, i)
        --print(EnemyName)

        PlaceObj('EliteEnemyName', {
            group   = Group,
            id      = new_id,
            name    = _InternalTranslate(EnemyName),
            Comment = "",
        })
    end

    print(string.format("[AddEliteEnemyNames] создано %d имён для %s (префикс %s)", #EnemyNames, Group, prefix))
end