UndefineClass('RebelHeavy_Mortar_Immortal')
DefineClass.RebelHeavy_Mortar_Immortal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 55,
	Dexterity = 66,
	Strength = 87,
	Wisdom = 77,
	Leadership = 29,
	Marksmanship = 65,
	Mechanical = 34,
	Explosives = 95,
	Medical = 41,
	Portrait = "UI/EnemiesPortraits/RebelDemo",
	Name = T(124643559793, --[[ModItemUnitDataCompositeDef RebelHeavy_Mortar_Immortal Name]] "Минометчик"),
	elite = true,
	eliteCategory = "Maquis",
	Affiliation = "Rebel",
	StartingLevel = 2,
	immortal = true,
	AIKeywords = {
		"Explosives",
		"Sniper",
	},
	archetype = "Artillery",
	role = "Artillery",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	unitPowerModifier = 200,
	StartingPerks = {
		"HeavyWeaponsTraining",
		"AutoWeapons",
		"CQCTraining",
		"HaveABlast",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_02",
		}),
	},
	Equipment = {
		"RebelHeavy_Mortar",
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
}

