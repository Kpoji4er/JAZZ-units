UndefineClass('PierreGuard_Ordnance')
DefineClass.PierreGuard_Ordnance = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 70,
	Dexterity = 80,
	Strength = 53,
	Wisdom = 65,
	Leadership = 10,
	Marksmanship = 63,
	Mechanical = 0,
	Medical = 49,
	Portrait = "UI/EnemiesPortraits/LegionRaider",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(372158959580, --[[ModItemUnitDataCompositeDef PierreGuard_Ordnance Name]] "Телохранитель Пьера"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 4,
	neutral_retaliate = true,
	archetype = "Legion_Frontliner",
	role = "Soldier",
	MaxAttacks = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
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
	},
	Equipment = {
		"PierreGuard_Ordnance",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "LegionMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

