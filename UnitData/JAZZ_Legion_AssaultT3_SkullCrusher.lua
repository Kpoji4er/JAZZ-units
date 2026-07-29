UndefineClass('JAZZ_Legion_AssaultT3_SkullCrusher')
DefineClass.JAZZ_Legion_AssaultT3_SkullCrusher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Череполом SkullCrusher | Элитный танк с дробовиком и милишкой",
	object_class = "UnitData",
	Health = 90,
	Agility = 75,
	Dexterity = 80,
	Strength = 95,
	Wisdom = 25,
	Will = 85,
	Leadership = 30,
	Marksmanship = 85,
	Mechanical = 85,
	Explosives = 35,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Skullcrusher.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000187, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT3_SkullCrusher Name]] "Череполом"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Melee",
		"Smoke",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 60,
	StartingPerks = {
		"Throwing",
		"BreachAndClear",
		"BeefedUp",
		"NailsPerk",
		"CQCTraining",
		"KillingWind",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"SkullCrusher_Inventory",
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
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

