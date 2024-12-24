function ReceiveStatGainingPoints(unit, xpGain)
	if HasPerk(unit, "OldDog")
    then if unit:Random(100)>50 then return end
end
	local xp = unit.Experience
	local xpPercent, level = CalcXpPercentAndLevel(xp)
	local pointsToGain = 0
	
	local xpTresholds = {}
	local interval = 1000 / const.StatGaining.PointsPerLevel
	for i=1, const.StatGaining.PointsPerLevel-1 do
		xpTresholds[#xpTresholds+1] = (xpTresholds[#xpTresholds] or 0) + interval
	end
	xpTresholds[#xpTresholds+1] = 1000
	local nXPTable = #XPTable
	while level < nXPTable and xpGain > 0 do -- loop per levelup, check all milestones
		local tempXp = Min(xpGain, GetXPTable(level + 1) - GetXPTable(level))
		xp = xp + tempXp
		xpGain = xpGain - tempXp
		
		local newXpPercent, newLevel = CalcXpPercentAndLevel(xp)
		if newLevel > level then newXpPercent = 100 * 10 end
		
		for i = 1, #xpTresholds do
			if xpPercent < xpTresholds[i] and newXpPercent >= xpTresholds[i] then
				pointsToGain = pointsToGain + 1
			end
		end
		
		level = newLevel
		xpPercent = 0
	end
	
	if level == nXPTable and xpGain > 0 then -- after max level
		local xpSinceLastMilestone = (xp - GetXPTable(nXPTable))
		-- Currently after lvl 10 you get a point every <MilestoneAfterMax> xp increasing by <MilestoneAfterMaxIncrement> xp every time
		local milestone = const.StatGaining.MilestoneAfterMax
		local increment = const.StatGaining.MilestoneAfterMaxIncrement
		while xpSinceLastMilestone >= milestone do
			xpSinceLastMilestone = xpSinceLastMilestone - milestone
			milestone = milestone + increment
		end
		
		while xpGain > 0 do -- loop per after max level milestone
			local xpToMilestone = milestone - xpSinceLastMilestone
			local tempXp = Min(xpGain, xpToMilestone)
			xp = xp + tempXp
			xpGain = xpGain - tempXp
			
			if tempXp >= xpToMilestone then
				pointsToGain = pointsToGain + 1
				xpSinceLastMilestone = 0
				milestone = milestone + increment
			end
		end
	end
	unit.statGainingPoints = unit.statGainingPoints + pointsToGain
end