UndefineClass('ThugGrenadier_Stronger_Elite')
DefineClass.ThugGrenadier_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


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
	Portrait = "UI/EnemiesPortraits/ThugDemo",
	Name = T(931285992937, --[[ModItemUnitDataCompositeDef ThugGrenadier_Stronger_Elite Name]] "Наемник Пулеметчик"),
	Randomization = true,
	elite = true,
	Affiliation = "Thugs",
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
			'Preset', "Thug_Demolishion",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Demolishion_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Demolishion_2",
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

