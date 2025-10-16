UndefineClass('RebelSergant_Immortal_M1')
DefineClass.RebelSergant_Immortal_M1 = {
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
	Name = T(680793505123, --[[ModItemUnitDataCompositeDef RebelSergant_Immortal_M1 Name]] "Контимир Бурда"),
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
		"Adonis_762x39",
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

