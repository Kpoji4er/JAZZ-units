UndefineClass('JAZZ_Legion_AssaultT3_Punisher')
DefineClass.JAZZ_Legion_AssaultT3_Punisher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Каратель Punisher | Элитный штурмовик с гранатами",
	object_class = "UnitData",
	Health = 90,
	Agility = 85,
	Dexterity = 90,
	Strength = 95,
	Wisdom = 30,
	Will = 80,
	Leadership = 30,
	Marksmanship = 80,
	Mechanical = 80,
	Explosives = 50,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Punisher.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(437565517773, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT3_Punisher Name]] "Каратель"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Soldier",
		"RunAndGun",
		"MobileShot",
		"Stim",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 100,
	StartingPerks = {
		"BeefedUp",
		"Berserker",
		"CQCTraining",
		"Ironclad",
		"RelentlessAdvance",
		"BreachAndClear",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_Stronger_Elite_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_Stronger_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Punisher_Inventory",
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

