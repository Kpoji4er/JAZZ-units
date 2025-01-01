UndefineClass('MilitiaVeteran')
DefineClass.MilitiaVeteran = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Agility = 85,
	Dexterity = 70,
	Strength = 80,
	Wisdom = 35,
	Leadership = 10,
	Marksmanship = 80,
	Mechanical = 5,
	Explosives = 5,
	Medical = 15,
	Portrait = "UI/EnemiesPortraits/MilitiaSoldier",
	Name = T(789759429990, --[[ModItemUnitDataCompositeDef MilitiaVeteran Name]] "Опытный"),
	StartingLevel = 3,
	militia = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Sniper",
	},
	role = "Militia",
	MaxAttacks = 10,
	RewardExperience = 0,
	StartingPerks = {
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Militia_Demolition",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Militia_Stormer",
		}),
	},
	Equipment = {
		"MilitiaRookie",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 25,
			'Exclusive', true,
			'Name', "Militia_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 75,
			'Exclusive', true,
			'Name', "Militia_2",
		}),
		PlaceObj('AdditionalGroup', {
			'Name', "MilitiaVeteran",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 25,
			'Name', "CivilianMale_3",
		}),
	},
	gender = "Male",
	VoiceResponseId = "MilitiaRookie",
}

