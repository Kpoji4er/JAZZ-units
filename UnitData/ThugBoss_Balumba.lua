UndefineClass('ThugBoss_Balumba')
DefineClass.ThugBoss_Balumba = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 100,
	Dexterity = 93,
	Strength = 81,
	Wisdom = 79,
	Will = 100,
	Leadership = 84,
	Marksmanship = 100,
	Mechanical = 12,
	Explosives = 14,
	Medical = 59,
	Portrait = "UI/EnemiesPortraits/ThugOfficer",
	Name = T(313477221859, --[[ModItemUnitDataCompositeDef ThugBoss_Balumba Name]] "Балумба Курукуку"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
	},
	role = "Commander",
	MaxAttacks = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 80,
	StartingPerks = {
		"AutoWeapons",
		"Counterfire",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Officer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Officer_1",
		}),
	},
	Equipment = {
		"LegionT1_LMG",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "ThugGunner",
}

