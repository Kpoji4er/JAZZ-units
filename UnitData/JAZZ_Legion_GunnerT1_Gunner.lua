UndefineClass('JAZZ_Legion_GunnerT1_Gunner')
DefineClass.JAZZ_Legion_GunnerT1_Gunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Пуляло Shoota | Cлабый пулеметчик со старыми пулеметами. Оверватчит, Достает ножик на ближних",
	object_class = "UnitData",
	Health = 65,
	Agility = 75,
	Dexterity = 70,
	Strength = 70,
	Wisdom = 5,
	Will = 45,
	Leadership = 0,
	Marksmanship = 65,
	Mechanical = 20,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(663837406922, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT1_Gunner Name]] "Пуляло"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Soldier",
		"Gunner",
	},
	archetype = "HeavyGunner",
	role = "Heavy",
	RepositionArchetype = "Soldier_Sniper",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 1,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "SMG")
	end,
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
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
			'Preset', "LegionGunner",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_alt",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionGunner",
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

