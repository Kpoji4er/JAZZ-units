UndefineClass('MilitiaElite')
DefineClass.MilitiaElite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 85,
	Dexterity = 80,
	Strength = 80,
	Wisdom = 35,
	Will = 80,
	Leadership = 10,
	Marksmanship = 85,
	Mechanical = 5,
	Explosives = 5,
	Medical = 15,
	Portrait = "UI/EnemiesPortraits/MilitiaHeavy",
	Name = T(521013473391, --[[ModItemUnitDataCompositeDef MilitiaElite Name]] "Элита"),
	StartingLevel = 6,
	militia = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Marksman",
	},
	archetype = "Rebels_Frontliner",
	role = "Militia",
	MaxAttacks = 10,
	RewardExperience = 0,
	StartingPerks = {
		"AutoWeapons",
		"TakeAim",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Militia_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Militia_Artillery",
		}),
	},
	Equipment = {
		"MilitiaRookie",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Exclusive', true,
			'Name', "Militia_2",
		}),
		PlaceObj('AdditionalGroup', {
			'Name', "MilitiaElite",
		}),
	},
	gender = "Male",
	VoiceResponseId = "MilitiaRookie",
}

