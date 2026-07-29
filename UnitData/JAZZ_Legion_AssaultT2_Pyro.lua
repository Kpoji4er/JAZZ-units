UndefineClass('JAZZ_Legion_AssaultT2_Pyro')
DefineClass.JAZZ_Legion_AssaultT2_Pyro = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Пироман Pyro | Дробовик и молотовы",
	object_class = "UnitData",
	Health = 85,
	Agility = 70,
	Dexterity = 80,
	Strength = 90,
	Wisdom = 15,
	Will = 75,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 50,
	Explosives = 0,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Pyro.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(546032242947, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT2_Pyro Name]] "Пироман"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 7,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Melee",
		"Explosives",
	},
	archetype = "Legion_Assaulter",
	role = "Demolitions",
	CanManEmplacements = false,
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
		"Throwing",
		"BreachAndClear",
		"BeefedUp",
		"RelentlessAdvance",
		"Berserker",
		"Ironclad",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"Pyro_Inventory",
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
	pollyvoice = "Russell",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

