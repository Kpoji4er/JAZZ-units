UndefineClass('JAZZ_Legion_FrontT2_Marksman')
DefineClass.JAZZ_Legion_FrontT2_Marksman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Охотник Marksman | Боевая винтовка или полуавтомат снайперский. После середины игры с малой оптикой",
	object_class = "UnitData",
	Health = 70,
	Agility = 88,
	Dexterity = 70,
	Wisdom = 15,
	Will = 55,
	Leadership = 0,
	Marksmanship = 85,
	Mechanical = 35,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRaider",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(477554350185, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT2_Marksman Name]] "Охотник"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
		"Ordnance",
	},
	role = "Soldier",
	MaxAttacks = 10,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"Hotblood",
		"OpportunisticKiller",
		"Instagib",
		"BunsPerk",
		"Killzone",
		"CancelShotPerk",
		"Spiritual",
		"Spotter",
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
			'Preset', "LegionSharpShooter_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSharpShooter_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSharpShooter_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionSharpShooter_Stronger",
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

