UndefineClass('RebelSentry')
DefineClass.RebelSentry = {
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
	Name = T(628639184991, --[[ModItemUnitDataCompositeDef RebelSentry Name]] "Sentry"),
	Randomization = true,
	elite = true,
	eliteCategory = "Maquis",
	Affiliation = "Rebel",
	StartingLevel = 5,
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
		"RebelSentry",
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

