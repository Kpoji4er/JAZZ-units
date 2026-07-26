UndefineClass('ArmyHeavy')
DefineClass.ArmyHeavy = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 95,
	Agility = 88,
	Dexterity = 75,
	Strength = 90,
	Wisdom = 30,
	Will = 75,
	Leadership = 47,
	Marksmanship = 91,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ArmyHeavy",
	Name = T(160073217247, --[[ModItemUnitDataCompositeDef ArmyHeavy Name]] "Support Gunner"),
	Randomization = true,
	Affiliation = "Army",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
	},
	archetype = "HeavyGunner",
	role = "Heavy",
	RepositionArchetype = "HeavyGunner",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	MaxHitPoints = 85,
	StartingPerks = {
		"AutoWeapons",
		"Ironclad",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "GrandChien_Heavy",
		}),
	},
	Equipment = {
		"ArmyHeavy",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ArmyMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ArmyMale_2",
		}),
	},
	Tier = "Veteran",
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "ArmySoldier",
}

