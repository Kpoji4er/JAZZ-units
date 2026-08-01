UndefineClass('JAZZ_Legion_FrontT4_Mercenary')
DefineClass.JAZZ_Legion_FrontT4_Mercenary = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Наемник Mercenary | Как ветеран, но со статами как у ветеранов АИМ и колемом. Всегда хорошее оружие, даже в начале игры",
	object_class = "UnitData",
	Health = 95,
	Agility = 95,
	Dexterity = 100,
	Strength = 80,
	Wisdom = 70,
	Will = 90,
	Leadership = 30,
	Marksmanship = 90,
	Mechanical = 100,
	Explosives = 80,
	Medical = 80,
	Portrait = "UI/EnemiesPortraits/LegionSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001279, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT4_Mercenary Name]] "Наемник"),
	Randomization = true,
	elite = true,
	eliteCategory = "Mercenary",
	Affiliation = "Legion",
	StartingLevel = 15,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Ordnance",
		"Marksman",
		"RunAndGun",
	},
	archetype = "Legion_Frontliner",
	role = "Soldier",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "GrenadeLauncher")
		self:TryEquip(items, "Handheld B", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"Spotter",
		"Ironclad",
		"TakeAim",
		"AutoWeapons",
		"Hardened",
		"Shatterhand",
		"HitTheDeck",
		"StressManagement",
		"Hotblood",
		"Hobbler",
		"Instagib",
		"Killzone",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier04",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier05",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier06",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite_alt",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite_alt_2",
			'Weight', 4,
		}),
	},
	Equipment = {
		"Mercenary_Inventory",
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

