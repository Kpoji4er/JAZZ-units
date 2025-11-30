UndefineClass('JAZZ_Legion_GunnerT3_VeteranGunner')
DefineClass.JAZZ_Legion_GunnerT3_VeteranGunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Подавитель Supperssor | Ветеран пулеметчик с хорошими пулеметами. Флангует",
	object_class = "UnitData",
	Health = 92,
	Agility = 86,
	Dexterity = 80,
	Strength = 88,
	Wisdom = 30,
	Will = 80,
	Leadership = 10,
	Marksmanship = 84,
	Mechanical = 70,
	Explosives = 10,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(431404906000, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT3_VeteranGunner Name]] "Подавитель"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 14,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"Soldier",
		"Flank",
		"Marksman",
		"Control",
	},
	archetype = "Legion_Machinegunner",
	role = "Heavy",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
		"RelentlessAdvance",
		"TrueGrit",
		"Hardened",
		"OverwatchExpert",
		"CollateralDamage",
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
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_Elite",
			'Weight', 5,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_Elite_alt",
			'Weight', 5,
		}),
	},
	Equipment = {
		"VeteranGunner_Inventory",
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

