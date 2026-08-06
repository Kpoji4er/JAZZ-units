UndefineClass('JAZZ_Legion_FlankerT4_Ranger')
DefineClass.JAZZ_Legion_FlankerT4_Ranger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Рейнджер Ranger | Фланкер со снайперкой, переходящий на карабин/пп с колемом в близи",
	object_class = "UnitData",
	Health = 80,
	Agility = 98,
	Dexterity = 95,
	Strength = 72,
	Wisdom = 100,
	Will = 85,
	Leadership = 30,
	Marksmanship = 95,
	Mechanical = 100,
	Explosives = 30,
	Medical = 30,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Ranger.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000802, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT4_Ranger Name]] "Рейнджер"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 18,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Flank",
		"Control",
		"RunAndGun",
	},
	archetype = "Legion_Flanker",
	role = "Recon",
	RepositionArchetype = "Legion_Flanker",
	AlwaysUseOpeningAttack = true,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "SniperRifle")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"Counterfire",
		"OpportunisticKiller",
		"Instagib",
		"Infiltrator",
		"Flanker",
		"Hardened",
		"RelentlessAdvance",
		"Untraceable",
		"Stealthy",
		"NightOps",
		"CQCTraining",
		"LightningReaction",
		"Hotblood",
		"LastWarning",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt_2",
		}),
	},
	Equipment = {
		"Ranger_Inventory",
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

