UndefineClass('RebelSergeant_Immortal_M1')
DefineClass.RebelSergeant_Immortal_M1 = {
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
	BigPortrait = "Mod/Dv3mFVN/NPCPortraits/Rebels_Burda_Big.png",
	Name = T(890000000000837, --[[ModItemUnitDataCompositeDef RebelSergeant_Immortal_M1 Name]] "Контимир Бурда"),
	Randomization = true,
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
		return JazzAI_PickCombatStance(self, proto_context)
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

