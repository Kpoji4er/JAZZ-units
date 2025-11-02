UndefineClass('JAZZ_Legion_FlankerT3_Recon')
DefineClass.JAZZ_Legion_FlankerT3_Recon = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Разведчик Recon | ПП/Карабин с глушителем, камуфляж, полный стелс",
	object_class = "UnitData",
	Health = 75,
	Agility = 95,
	Dexterity = 95,
	Strength = 70,
	Wisdom = 80,
	Will = 70,
	Leadership = 15,
	Marksmanship = 80,
	Mechanical = 50,
	Explosives = 35,
	Medical = 10,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(973520781420, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT3_Recon Name]] "Разведчик"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"MobileShot",
		"Control",
		"Explosives",
		"Ordnance",
	},
	archetype = "Skirmisher",
	role = "Recon",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"MinFreeMove",
		"Untraceable",
		"CQCTraining",
		"Flanker",
		"GruntyPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_Elite",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_Elite_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_Elite_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionScout_Stronger_Elite",
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

