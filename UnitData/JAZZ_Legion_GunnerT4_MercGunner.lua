UndefineClass('JAZZ_Legion_GunnerT4_MercGunner')
DefineClass.JAZZ_Legion_GunnerT4_MercGunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Наемник Пулеметчик Mercenary Machinegunner | Как ветеран, только имбовый",
	object_class = "UnitData",
	Health = 98,
	Agility = 92,
	Dexterity = 95,
	Strength = 98,
	Wisdom = 50,
	Will = 90,
	Leadership = 30,
	Marksmanship = 88,
	Mechanical = 100,
	Explosives = 20,
	Medical = 20,
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(431404906000, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT4_MercGunner Name]] "Наемник Пулеметчик"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 16,
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
		"CollateralDamage",
		"Ironclad",
		"Hardened",
		"RelentlessAdvance",
		"TrueGrit",
		"OverwatchExpert",
		"HeavyWeaponsTraining",
		"Spotter",
		"Enfilade",
		"Killzone",
		"Hobbler",
		"AutoWeapons",
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
		"MercGunner_Inventory",
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

