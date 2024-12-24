-- Experience point thresholds per level.
XPTable =
{
	0, -- Level 1
	1000,
	2500,
	4500,
	7000, -- Level 5
	10000,
	13500,
	17500,
	22000,
	27000, -- Level 10
    32000,
    37000,
    42000,
    47000,
    55000,
    62500,
    70000,
    78000,
    88000,
    99000,
    110000 
}

function GetXPTable(level)
	if IsGameRuleActive("HardLessons") then 
		local percent = 100 + (GameRuleDefs.HardLessons:ResolveValue("XPTableModifier") or 0)
		if level then
			return MulDivRound(XPTable[level], percent, 100)
		else
			return table.imap(XPTable,function(xp) return MulDivRound(xp, percent, 100) end)
		end
	end
	return level and XPTable[level] or XPTable
end

function CalcLevel(xp)
	local nXPTable = #XPTable
	for i = 1, nXPTable do
		if xp < GetXPTable(i) then
			return i - 1
		end
	end
	return nXPTable	
end

function CalcXpPercentAndLevel(xp) -- multiplied by 10 for precision to tenths
	local level = CalcLevel(xp)
	local nXPTable = #XPTable
	if level == nXPTable then
		return 100 * 10, nXPTable
	else
		local levelxp = GetXPTable(level)
		return MulDivRound(xp - levelxp, 100 * 10, GetXPTable(level + 1) - levelxp), level
	end
end