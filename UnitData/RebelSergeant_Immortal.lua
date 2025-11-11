UndefineClass('RebelSergeant_Immortal')
DefineClass.RebelSergeant_Immortal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Сержант",
	object_class = "UnitData",
	Health = 95,
	Agility = 90,
	Dexterity = 90,
	Strength = 80,
	Wisdom = 80,
	Will = 100,
	Leadership = 100,
	Marksmanship = 90,
	Mechanical = 100,
	Explosives = 70,
	Medical = 70,
	Portrait = "UI/EnemiesPortraits/RebelOfficer",
	BigPortrait = "UI/Mercs/IMP_Fixer",
	Name = T(641054948744, --[[ModItemUnitDataCompositeDef RebelSergeant_Immortal Name]] "Командир отряда"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 6,
	immortal = true,
	villain = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Sniper",
		"Marksman",
		"Smoke",
		"Explosives",
		"Leader",
	},
	archetype = "Rebels_Frontliner",
	role = "Marksman",
	CanManEmplacements = false,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
			archetype = "Melee"
			weapon_class = "Melee"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		local stealth_stance = self:GetStanceToStealth()
		if self:CanStealth(stealth_stance) then
		 self:Hide()
		end	
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"CQCTraining",
		"Spiritual",
		"BattleFocus",
		"RelentlessAdvance",
		"ShoulderToShoulder",
		"AutoWeapons",
		"Spotter",
		"TakeAim",
		"Shatterhand",
		"OnMyTarget",
		"Ironclad",
		"LightStep",
		"TrickShot",
		"LeadFromTheFront",
		"Shatterhand",
		"Hobbler",
		"LightningReactionNPC",
		"Instagib",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Commander_Rebels",
		}),
	},
	Equipment = {
		"RebelSergeant",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "LegionMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "LegionMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "RebelSoldier",
}

