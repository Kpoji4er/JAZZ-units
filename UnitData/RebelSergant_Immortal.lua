UndefineClass('RebelSergant_Immortal')
DefineClass.RebelSergant_Immortal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 66,
	Agility = 71,
	Strength = 63,
	Wisdom = 86,
	Leadership = 73,
	Marksmanship = 69,
	Mechanical = 54,
	Explosives = 57,
	Medical = 45,
	Portrait = "UI/EnemiesPortraits/RebelOfficer",
	BigPortrait = "UI/Mercs/IMP_Fixer",
	Name = T(212739914739, --[[ModItemUnitDataCompositeDef RebelSergant_Immortal Name]] "Командир отряда"),
	Randomization = true,
	elite = true,
	eliteCategory = "Maquis",
	Affiliation = "Rebel",
	StartingLevel = 5,
	immortal = true,
	ImportantNPC = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
	},
	role = "Commander",
	MaxAttacks = 10,
	MaxHitPoints = 80,
	StartingPerks = {
		"BeefedUp",
		"Berserker",
		"AutoWeapons",
		"MinFreeMove",
		"NightOps",
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
			'Name', "MaquisMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "MaquisMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "RebelSoldier",
}

