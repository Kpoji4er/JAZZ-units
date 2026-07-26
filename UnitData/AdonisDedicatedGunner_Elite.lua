UndefineClass('AdonisDedicatedGunner_Elite')
DefineClass.AdonisDedicatedGunner_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 94,
	Agility = 91,
	Dexterity = 89,
	Strength = 95,
	Wisdom = 71,
	Will = 99,
	Leadership = 72,
	Marksmanship = 90,
	Mechanical = 50,
	Explosives = 81,
	Medical = 52,
	Portrait = "UI/EnemiesPortraits/AdonisHeavy",
	Name = T(188933600963, --[[ModItemUnitDataCompositeDef AdonisDedicatedGunner_Elite Name]] "Gunner"),
	Randomization = true,
	elite = true,
	eliteCategory = "Foreigners",
	Affiliation = "Adonis",
	StartingLevel = 6,
	neutral_retaliate = true,
	role = "Heavy",
	MaxAttacks = 10,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"HeavyWeaponsTraining",
		"CollateralDamage",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Adonis_Soldier",
		}),
	},
	Equipment = {
		"AdonisAssault_Elite",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "AdonisMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "AdonisMale_2",
		}),
	},
	Tier = "Elite",
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "AdonisAssault",
}

