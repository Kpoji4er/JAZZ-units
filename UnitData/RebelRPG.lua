UndefineClass('RebelRPG')
DefineClass.RebelRPG = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 65,
	Dexterity = 85,
	Strength = 71,
	Wisdom = 69,
	Leadership = 10,
	Marksmanship = 72,
	Mechanical = 71,
	Explosives = 84,
	Medical = 40,
	Portrait = "UI/EnemiesPortraits/RebelSoldier",
	Name = T(230679868131, --[[ModItemUnitDataCompositeDef RebelRPG Name]] "Гранатометчик"),
	elite = true,
	eliteCategory = "Maquis",
	Affiliation = "Rebel",
	StartingLevel = 2,
	AIKeywords = {
		"Ordnance",
		"Control",
		"Sniper",
	},
	role = "Artillery",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	unitPowerModifier = 200,
	StartingPerks = {
		"CQCTraining",
		"HeavyWeaponsTraining",
		"BeefedUp",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_03",
		}),
	},
	Equipment = {
		"RebelRPG",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "MaquisMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "MaquisMale_2",
		}),
	},
	gender = "Male",
}

