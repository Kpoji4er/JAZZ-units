UndefineClass('JAZZ_Legion_AssaultT1_Grenadier')
DefineClass.JAZZ_Legion_AssaultT1_Grenadier = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Гренадер Grenadier | Огромный приоритет на броски гранат",
	object_class = "UnitData",
	Health = 70,
	Agility = 65,
	Dexterity = 70,
	Strength = 70,
	Wisdom = 5,
	Will = 35,
	Leadership = 0,
	Marksmanship = 55,
	Mechanical = 0,
	Explosives = 15,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(392427068113, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT1_Grenadier Name]] "Гренадёр"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Explosives",
		"CQB",
	},
	archetype = "Legion_Assaulter",
	role = "Demolitions",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "PipeBomb")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"Throwing",
		"BreachAndClear",
		"MinFreeMove",
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
			'Preset', "LegionGrenadir",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Grenadier_Inventory",
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

