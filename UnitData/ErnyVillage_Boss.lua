UndefineClass('ErnyVillage_Boss')
DefineClass.ErnyVillage_Boss = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "--Босс в деревне Эрни",
	object_class = "UnitData",
	Health = 95,
	Agility = 80,
	Dexterity = 90,
	Strength = 77,
	Wisdom = 100,
	Leadership = 81,
	Marksmanship = 50,
	Mechanical = 11,
	Explosives = 90,
	Medical = 9,
	Portrait = "UI/EnemiesPortraits/LegionOfficer",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(393079276704, --[[ModItemUnitDataCompositeDef ErnyVillage_Boss Name]] "Босс"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
	},
	role = "Commander",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 2,
	MaxHitPoints = 80,
	StartingPerks = {
		"OpportunisticKiller",
		"Hobbler",
		"Flanker",
		"AutoWeapons",
		"CQCTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Shaman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaidLeader_Stronger_Elite",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaidLeader_Stronger_Elite_alt",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionSentry",
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
	VoiceResponseId = "LegionRaider",
}

