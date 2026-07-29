UndefineClass('Rebel_NPC_Ghost_Guards')
DefineClass.Rebel_NPC_Ghost_Guards = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Свита Призрака",
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
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000801, --[[ModItemUnitDataCompositeDef Rebel_NPC_Ghost_Guards Name]] "Повстанец-Рейнджер"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 18,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Flank",
		"Control",
		"RunAndGun",
	},
	archetype = "Rebels_Frontliner",
	role = "Recon",
	RepositionArchetype = "Legion_Assaulter",
	AlwaysUseOpeningAttack = true,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "SniperRifle")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
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
			'Preset', "Recon_Rebels",
		}),
	},
	Equipment = {
		"Rebel_NPC_GhostGuards",
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
	VoiceResponseId = "RebelSoldier",
}

