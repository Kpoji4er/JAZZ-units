UndefineClass('JAZZ_Legion_AssaultT2_ShockTrooper')
DefineClass.JAZZ_Legion_AssaultT2_ShockTrooper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Штурмовик Shocktrooper | Штурмовик с ПП/Карабином и гранатами. Стрелок",
	object_class = "UnitData",
	Health = 75,
	Agility = 80,
	Dexterity = 85,
	Strength = 70,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 70,
	Mechanical = 50,
	Explosives = 25,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Shocktrooper.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000098, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT2_ShockTrooper Name]] "Штурмовик"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"RunAndGun",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 60,
	StartingPerks = {
		"MeleeTraining",
		"Ironclad",
		"MinFreeMove",
		"CQCTraining",
		"RelentlessAdvance",
		"SteadyBreathing",
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
			'Preset', "LegionButcher_Stronger",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Shocktrooper_Inventory",
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

