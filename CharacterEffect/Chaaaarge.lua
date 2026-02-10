UndefineClass('Chaaaarge')
DefineClass.Chaaaarge = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	__copy_group = "Perk-Personal",
	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				if target == attacker then
					self:SetParameter("attacked", true)
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCombatEnd",
			Handler = function (self, target)
				self:SetParameter("attacked", false)
				self:SetParameter("applied", false)
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				if g_Combat.current_turn < self:ResolveValue("turnToProc") then return end
				if self:ResolveValue("attacked") and not self:ResolveValue("applied") then
					local chance = self:ResolveValue("chanceToProc")
					local roll = InteractionRand(100, "BuildingConfidence")
					if roll < chance then
						target:AddStatusEffect("Inspired")
						target.team:ChangeMorale(1, self.DisplayName)
						self:SetParameter("applied", true)
					end
				end
			end,
		}),
	},
	DisplayName = T(982240783679, --[[ModItemCharacterEffectCompositeDef Chaaaarge DisplayName]] "Find My Feet"),
	Description = T(249265686079, --[[ModItemCharacterEffectCompositeDef Chaaaarge Description]] "Can become <GameTerm('Inspired')> and increase the team's <GameTerm('Morale')> during combat."),
	Icon = "UI/Icons/Perks/BuildingConfidence",
	Tier = "Personal",
}

