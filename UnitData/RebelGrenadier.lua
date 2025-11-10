UndefineClass('RebelGrenadier')
DefineClass.RebelGrenadier = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Гренадер с4",
	object_class = "UnitData",
	Health = 75,
	Agility = 80,
	Dexterity = 85,
	Strength = 100,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 70,
	Mechanical = 100,
	Explosives = 100,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(176382444921, --[[ModItemUnitDataCompositeDef RebelGrenadier Name]] "Диверсант_Подрывник"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"RunAndGun",
	},
	archetype = "Rebels_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
			--archetype = "Brute"
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
	MaxHitPoints = 60,
	StartingPerks = {
		"MeleeTraining",
		"Ironclad",
		"MinFreeMove",
		"CQCTraining",
		"RelentlessAdvance",
		"SteadyBreathing",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_03",
		}),
	},
	Equipment = {
		"RebelGrenadier",
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
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

