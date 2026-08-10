UndefineClass('VengefulTemperament')
DefineClass.VengefulTemperament = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				-- Signature CombatAction id must match perk class (EnumUIActions + this gate).
				if target == attacker and IsKindOf(attack_target, "Unit") and action.id == self.class then
					local aoe = self:ResolveValue("fearAoE")
					for _, unit in ipairs(g_Units) do
						if unit ~= attack_target and unit.team:IsAllySide(attack_target.team) and DivRound(unit:GetDist(attack_target), const.SlabSizeX) <= aoe then
							if not RollSkillCheck(unit, "Wisdom", 50) then
								unit:AddStatusEffect("Panicked")
							else
								unit:AddStatusEffect("Berserk")
							end
							unit.ActionPoints = unit:GetMaxActionPoints()
						end
					end
				end
			end,
		}),
	},
	DisplayName = T(780344747381, --[[ModItemCharacterEffectCompositeDef VengefulTemperament DisplayName]] "Тяжелый характер"),
	Description = T(695881945070, --[[ModItemCharacterEffectCompositeDef VengefulTemperament Description]] 'Враги, находящиеся в радиусе 5 клеток впадают в панику или бешенство при виде Надвигающегося Урагана "Норма". Зависит от уровня мудрости противника.'),
	Icon = "UI/Icons/Perks/VengefulTemperament",
	Tier = "Personal",
}
