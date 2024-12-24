UndefineClass('TheGrim')
DefineClass.TheGrim = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				if target == attacker and action.id == self.class and IsKindOf(attack_target, "Unit") and table.find(results.killed_units or empty_table, attack_target) then
					for _, unit in ipairs(g_Units) do
						if unit ~= attack_target and unit.team:IsAllySide(attack_target.team) and DivRound(unit:GetDist(attack_target), const.SlabSizeX) <= self:ResolveValue("fearAoE") then
							unit:AddStatusEffect("Panicked")
							unit.ActionPoints = unit:GetMaxActionPoints()
						end
					end
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCalcCritChance",
			Handler = function (self, target, attacker, attack_target, action, weapon, data)
				if target == attacker and data.action_id == self.class then
					data.guaranteed_crit = true
				end
			end,
		}),
	},
	DisplayName = T(623795138668, --[[ModItemCharacterEffectCompositeDef TheGrim DisplayName]] "Мрачная судьба"),
	Description = T(773536167600, --[[ModItemCharacterEffectCompositeDef TheGrim Description]] "<em>Дистанционная атака</em> автоматически вызывающая <GameTerm('Crit')>.\n\nКогда атакующий убивает цель, остальные враги вокруг впадают в <GameTerm('Panic')>.\n\nНе может быть использовано с дробовиками."),
	Icon = "UI/Icons/Perks/TheGrim",
	Tier = "Personal",
}

