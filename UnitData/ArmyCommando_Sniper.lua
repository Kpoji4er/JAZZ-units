UndefineClass('ArmyCommando_Sniper')
DefineClass.ArmyCommando_Sniper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 80,
	Agility = 98,
	Dexterity = 99,
	Strength = 66,
	Wisdom = 71,
	Will = 95,
	Leadership = 72,
	Marksmanship = 93,
	Mechanical = 0,
	Explosives = 0,
	Medical = 63,
	Portrait = "UI/EnemiesPortraits/ArmyRecon",
	Name = T(709745548820, --[[ModItemUnitDataCompositeDef ArmyCommando_Sniper Name]] "Разведчик Снайпер"),
	Randomization = true,
	Affiliation = "Army",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
	},
	archetype = "Soldier_Sniper",
	role = "Recon",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"Stealthy",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "GrandChien_Recon",
		}),
	},
	Equipment = {
		"ArmyScout",
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
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "ArmySoldier",
}

