--[[ 
local modOption = CurrentModOptions or {}

Added in ModEditor as ChangeProperty

StatGainingPrerequisites.TrapDisarmExplosives.oncePerMapVisit = false
StatGainingPrerequisites.TrapDisarmMechanical.oncePerMapVisit = false
StatGainingPrerequisites.ResourceDiscovery.oncePerMapVisit = false
StatGainingPrerequisites.TrapDiscovery.oncePerMapVisit = false

StatGainingPrerequisites.ExplosiveMultiHit.failChance = 0
-- Add 20% fail chance for ResourceDiscovery stat gain triggers as removing the oncePerMapVisit flag added a significant amount of opportunities
StatGainingPrerequisites.ResourceDiscovery.failChance = 20
-- Add 75% fail chance for TrapDiscovery stat gain triggers as removing the oncePerMapVisit flag added an extreme amount of opportunities
StatGainingPrerequisites.TrapDiscovery.failChance = 75
]]

-- Offset to stat gain roll chance
const.StatGaining.BonusToRoll = 0

function GetWisdomBonusMod()
    local wisdomBonusModifier = 1 * 105
    return wisdomBonusModifier
end

function GetModifiedThreshold(stat, penalty, bonus)
    local successChance = 1000 - stat - penalty + bonus
    return round((1000 - successChance * 2.0), 1)
end


function RollForStatGaining(unit, stat, failChance)

  -- need to check for Perk "OldDog" here as that perks functionality is implemented with not gaining statGainingPoints, but dependency on statGainingPoints has been removed here
  --if HasPerk(unit, "OldDog") then return end
  
  local statGaining = GetMercStateFlag(unit.session_id, "StatGaining") or {}
  --local cooldowns = statGaining.Cooldowns or {}
  local success_text = "(fail) "
  local reason_text = ""
  local extraFailRoll = InteractionRand(100, "StatGaining")
  if not failChance or failChance <= extraFailRoll then
    if 0 <= unit[stat] and unit[stat] < 100 then
      local bonusToRoll = const.StatGaining.BonusToRoll
      local penaltyReduction = 0
      local teamSize = unit.team and unit.team.units and #unit.team.units or 1
      -- Stat dependent bonus to roll for vastly different occurence rate of stat gaining prerequisites, Note: in 0.1% bonus success chance
      -- Get penalty reduction for stats where team members compete for stat gaining prerequisites (mainly combat tasks)
      if stat == 'Health' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Agility' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Dexterity' then
        bonusToRoll = bonusToRoll + 1
        penaltyReduction = penaltyReduction + 1 * (teamSize - 1)
      elseif stat == 'Strength' then
        bonusToRoll = bonusToRoll + 1
        penaltyReduction = penaltyReduction + 1 * (teamSize - 1)
      elseif stat == 'Wisdom' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Leadership' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Marksmanship' then
        bonusToRoll = bonusToRoll + 1
        penaltyReduction = penaltyReduction + 1 * (teamSize - 1)
      elseif stat == 'Mechanical' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Explosives' then
        bonusToRoll = bonusToRoll + 1
      elseif stat == 'Medical' then
        bonusToRoll = bonusToRoll + 1
      end

      --[[
            * The higher the stat already is the more difficult it is to gain a point
            * Adjust penalty depending on team size, as more team members spread out the stat gain triggers accross all participants for certain stats
            Note: scaled to 1000, for 0.1% roll precision
      ]]
      local penaltyForHighStat = MulDivRound((100 - unit[stat]), 1000, (100 + penaltyReduction + (100 - unit[stat])))
      local bonusForLongNoStatGain = 0
        bonusForLongNoStatGain = 10 * Max(0, unit.statGainingPoints - const.StatGaining.PointsPerLevel)
      -- Enhance stat to 0.1 precision and calculate threshold
      local threshold = GetModifiedThreshold(10 * unit[stat], penaltyForHighStat, (bonusToRoll + bonusForLongNoStatGain))
      -- increase the odds to gain a stat point if there are statGainingPoints banked worth more than a level of XP
      --[[
            * Wisdom bonus to roll is: Wisdom above threshold multiplied with a factor (between [0.1 (stat == 99) .. 10 (stat == 0)], depending on how high the stat to roll for already is)
            * Also, exclude roll for wisdom stat gain from getting bonus from wisdom itself (this would make no sense)
            Note: Wisdom enhances the possible roll range and is not a flat bonus offset like bonusToRoll or bonusForLongNoStatGain
      ]]
      local bonusForWisdom = 0
      if stat ~= 'Wisdom' then
        bonusForWisdom = Max(0, MulDivRound((unit['Wisdom'] - tonumber(60)),(100 - unit[stat]) * GetWisdomBonusMod(), 1000))
      end
      CombatLog("debug", "Wisdom Bonus: " .. bonusForWisdom)

      local roll = InteractionRand((1000 + bonusForWisdom))
      if threshold <= roll then
        GainStat(unit, stat)
        unit.statGainingPoints = unit.statGainingPoints - 1
        success_text = "(success) "
      end
      reason_text = "\nNeed min " .. threshold .. " , rolled " .. roll
    else
      reason_text = stat .. " is " .. unit[stat]
    end
  else
    reason_text = "Fail chance procced, need: " .. failChance .. ", Rolled: " .. extraFailRoll
  end
  CombatLog("debug", success_text .. _InternalTranslate(unit.Nick) .. " stat gain " .. stat .. ". " .. reason_text)
  SetMercStateFlag(unit.session_id, "StatGaining", statGaining)
end
