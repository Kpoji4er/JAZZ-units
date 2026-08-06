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
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Skirmisher.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(268314076234, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT2_Skirmisher Name]] "Застрельщик"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"Marksman",
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
		"Hardened",
		"Flanker",
		"Untraceable",
		"MinFreeMove",
		"Hotblood",
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
		"Skirmisher_Inventory",
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

