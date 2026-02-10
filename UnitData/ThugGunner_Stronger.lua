UndefineClass('ThugGunner_Stronger')
DefineClass.ThugGunner_Stronger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 62,
	Agility = 77,
	Dexterity = 39,
	Strength = 82,
	Wisdom = 30,
	Leadership = 20,
	Marksmanship = 84,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugHeavy",
	Name = T(373187345626, --[[ModItemUnitDataCompositeDef ThugGunner_Stronger Name]] "Tough Gun-runner"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 4,
	neutral_retaliate = true,
	archetype = "HeavyGunner",
	role = "Heavy",
	MaxAttacks = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	StartingPerks = {
		"HeavyWeaponsTraining",
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_2",
		}),
	},
	Equipment = {
		"LegionT2_LMG",
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

