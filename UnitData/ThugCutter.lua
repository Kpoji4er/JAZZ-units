UndefineClass('ThugCutter')
DefineClass.ThugCutter = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 53,
	Agility = 96,
	Dexterity = 91,
	Strength = 61,
	Wisdom = 79,
	Leadership = 9,
	Marksmanship = 38,
	Mechanical = 0,
	Explosives = 11,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugRecon",
	Name = T(447902373075, --[[ModItemUnitDataCompositeDef ThugCutter Name]] "Slasher"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 2,
	neutral_retaliate = true,
	archetype = "Brute",
	role = "Stormer",
	MaxAttacks = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 60,
	StartingPerks = {
		"MinFreeMove",
		"HardBlow",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon_2",
		}),
	},
	Equipment = {
		"LegionT2_AutoPistol",
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
	gender = "Male",
	VoiceResponseId = "ThugGunner",
}

