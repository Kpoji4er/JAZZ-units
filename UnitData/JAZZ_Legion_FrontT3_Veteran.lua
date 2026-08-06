UndefineClass('JAZZ_Legion_FrontT3_Veteran')
DefineClass.JAZZ_Legion_FrontT3_Veteran = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Ветеран Veteran. Как налетчик, но лучше патроны/шмот. Мб еще шанс на нож сделать",
	object_class = "UnitData",
	Health = 88,
	Agility = 90,
	Dexterity = 90,
	Strength = 80,
	Wisdom = 30,
	Will = 75,
	Leadership = 20,
	Marksmanship = 85,
	Mechanical = 50,
	Explosives = 20,
	Medical = 30,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Veteran.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001280, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT3_Veteran Name]] "Ветеран"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Ordnance",
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
		"Ironclad",
		"TakeAim",
		"AutoWeapons",
		"HitTheDeck",
		"Hardened",
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
		"Veteran_Inventory",
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

