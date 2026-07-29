UndefineClass('JAZZ_Legion_FlankerT2_Scout')
DefineClass.JAZZ_Legion_FlankerT2_Scout = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Скаут Scout | Ближний флангер с ПП/Карабином, хорошо видит и пытается прятаться",
	object_class = "UnitData",
	Health = 70,
	Agility = 88,
	Dexterity = 85,
	Strength = 65,
	Wisdom = 70,
	Will = 60,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 15,
	Medical = 21,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(465277985554, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT2_Scout Name]] "Скаут"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"CQB",
	},
	archetype = "Legion_Flanker",
	role = "Recon",
	RepositionArchetype = "Legion_Flanker",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"OpportunisticKiller",
		"Counterfire",
		"Flanker",
		"RelentlessAdvance",
		"Untraceable",
		"Stealthy",
		"CQCTraining",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_alt_2",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
	},
	Equipment = {
		"Scout_Inventory",
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

