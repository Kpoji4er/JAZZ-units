UndefineClass('JAZZ_Legion_GunnerT2_GMPG')
DefineClass.JAZZ_Legion_GunnerT2_GMPG = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Пулеметчик Machinegunner | Пулеметчик с единым пулеметом. Вторичка пистолет и дымы",
	object_class = "UnitData",
	Health = 88,
	Agility = 80,
	Dexterity = 74,
	Strength = 85,
	Wisdom = 15,
	Will = 55,
	Leadership = 0,
	Marksmanship = 80,
	Explosives = 10,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/GMPG.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(602782802811, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT2_GMPG Name]] "Пулемётчик"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"Soldier",
		"Control",
	},
	archetype = "Legion_Machinegunner",
	role = "Heavy",
	MaxAttacks = 1,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
		"HeavyWeaponsTraining",
		"Spotter",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"GMPG_Inventory",
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

