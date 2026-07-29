UndefineClass('RebelFlanker')
DefineClass.RebelFlanker = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Фланкер ПП",
	object_class = "UnitData",
	Health = 75,
	Agility = 95,
	Dexterity = 95,
	Strength = 70,
	Wisdom = 80,
	Will = 70,
	Leadership = 15,
	Marksmanship = 80,
	Mechanical = 100,
	Explosives = 35,
	Medical = 10,
	Portrait = "UI/EnemiesPortraits/RebelRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001347, --[[ModItemUnitDataCompositeDef RebelFlanker Name]] "Диверсант"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"CQB",
	},
	archetype = "Rebels_Flanker",
	role = "Recon",
	CanManEmplacements = false,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"MinFreeMove",
		"HoldPosition",
		"CQCTraining",
		"Flanker",
		"Counterfire",
		"OpportunisticKiller",
		"Untraceable",
		"Stealthy",
		"NightOps",
		"CQCTraining",
		"LightningReactionNPC",
		"Hotblood",
		"FleetingShadow",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels_03",
		}),
	},
	Equipment = {
		"RebelFlanker",
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

