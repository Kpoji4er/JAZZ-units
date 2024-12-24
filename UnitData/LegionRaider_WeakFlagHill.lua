UndefineClass('LegionRaider_WeakFlagHill')
DefineClass.LegionRaider_WeakFlagHill = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 70,
	Dexterity = 70,
	Strength = 63,
	Wisdom = 11,
	Leadership = 10,
	Marksmanship = 40,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRaider",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(489533267755, --[[ModItemUnitDataCompositeDef LegionRaider_WeakFlagHill Name]] "Головорез"),
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Flank",
		"Nova",
	},
	archetype = "TutorialMinion",
	MaxAttacks = 1,
	MaxHitPoints = 60,
	StartingPerks = {
		"Flanker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_2",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_3",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider",
		}),
	},
	Equipment = {
		"Minion",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "LegionMale_1",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

