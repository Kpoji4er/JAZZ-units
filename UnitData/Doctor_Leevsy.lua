UndefineClass('Doctor_Leevsy')
DefineClass.Doctor_Leevsy = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 100,
	Dexterity = 100,
	Strength = 98,
	Wisdom = 100,
	Will = 100,
	Leadership = 100,
	Marksmanship = 100,
	Mechanical = 32,
	Explosives = 72,
	Medical = 100,
	Name = T(496511088531, --[[ModItemUnitDataCompositeDef Doctor_Leevsy Name]] "Доктор Ливси"),
	eliteCategory = "",
	Affiliation = "Rebel",
	StartingLevel = 10,
	immortal = true,
	ImportantNPC = true,
	role = "Commander",
	StartingPerks = {
		"Ambidextrous",
		"AutoWeapons",
		"CQCTraining",
		"Deadeye",
		"GruntyPerk_JAZZ",
		"Optimist",
		"BeefedUp",
		"BattleFocus",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Doctor_Leevsy",
		}),
	},
	Equipment = {
		"AdonisArmor_Full_Heavy",
	},
	gender = "Male",
}

