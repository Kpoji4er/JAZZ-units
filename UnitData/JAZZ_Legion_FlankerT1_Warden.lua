UndefineClass('JAZZ_Legion_FlankerT1_Warden')
DefineClass.JAZZ_Legion_FlankerT1_Warden = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Часовой (Дозорный?) Warden (Watchman?) | Хорошо видит, Дальний флангер с болтовкой/самозарядкой",
	object_class = "UnitData",
	Agility = 70,
	Dexterity = 65,
	Strength = 50,
	Will = 45,
	Leadership = 10,
	Marksmanship = 75,
	Mechanical = 0,
	Explosives = 15,
	Medical = 10,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(620648651508, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT1_Warden Name]] "Дозорный"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"Control",
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
		"MinFreeMove",
		"OpportunisticKiller",
		"Counterfire",
		"OverwatchExpert",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Warden_Inventory",
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

