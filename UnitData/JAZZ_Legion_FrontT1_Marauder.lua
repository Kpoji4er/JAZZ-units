UndefineClass('JAZZ_Legion_FrontT1_Marauder')
DefineClass.JAZZ_Legion_FrontT1_Marauder = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Мародер Marauder | Рандомное между ШВ, БВ, Карабином и ПП (В начале). Можно даже легкий пулемет",
	object_class = "UnitData",
	Health = 65,
	Agility = 80,
	Dexterity = 70,
	Wisdom = 5,
	Will = 45,
	Leadership = 0,
	Marksmanship = 74,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(521007046314, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT1_Marauder Name]] "Мародёр"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Explosives",
	},
	role = "Soldier",
	OpeningAttackType = "Overwatch",
	PinnedDownChance = 40,
	MaxAttacks = 10,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"TakeAim",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier04",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier05",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier06",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionRaiders",
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

