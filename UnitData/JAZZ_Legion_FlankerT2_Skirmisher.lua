UndefineClass('JAZZ_Legion_FlankerT2_Skirmisher')
DefineClass.JAZZ_Legion_FlankerT2_Skirmisher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Застрельщик Skirmisher | Дальний флангер с Боевой/снайперсокй винтовкой. хорошо видит и пытается прятаться",
	object_class = "UnitData",
	Health = 80,
	Agility = 90,
	Dexterity = 80,
	Strength = 70,
	Wisdom = 70,
	Will = 80,
	Leadership = 53,
	Marksmanship = 83,
	Mechanical = 55,
	Explosives = 23,
	Medical = 50,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(268314076234, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT2_Skirmisher Name]] "Застрельщик\nРэйнджер"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Soldier",
		"RunAndGun",
		"Ordnance",
	},
	role = "Soldier",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"BunsPerk",
		"Stealthy",
		"StressManagement",
		"Untraceable",
		"Hobbler",
		"Stealthy",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionRanger_Stronger",
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

