UndefineClass('JAZZ_Legion_FlankerT3_Pathfinder')
DefineClass.JAZZ_Legion_FlankerT3_Pathfinder = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Следопыт Pathfinder | Винтовк с глушителем и оптикой, камуфляж, полный стелс",
	object_class = "UnitData",
	Health = 75,
	Agility = 95,
	Dexterity = 92,
	Strength = 70,
	Wisdom = 80,
	Will = 75,
	Leadership = 15,
	Marksmanship = 90,
	Mechanical = 50,
	Explosives = 15,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Pathfinder.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000803, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT3_Pathfinder Name]] "Следопыт"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"Sniper",
		"Control",
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
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"Hobbler",
		"OpportunisticKiller",
		"Instagib",
		"FleetingShadow",
		"Counterfire",
		"Hardened",
		"Flanker",
		"Untraceable",
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
		"Pathfinder_Inventory",
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

