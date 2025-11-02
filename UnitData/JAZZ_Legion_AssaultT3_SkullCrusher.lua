UndefineClass('JAZZ_Legion_AssaultT3_SkullCrusher')
DefineClass.JAZZ_Legion_AssaultT3_SkullCrusher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Череполом SkullCrusher | Элитный танк с дробовиком и милишкой",
	object_class = "UnitData",
	Health = 90,
	Agility = 75,
	Dexterity = 80,
	Strength = 95,
	Wisdom = 25,
	Will = 85,
	Leadership = 0,
	Marksmanship = 85,
	Mechanical = 85,
	Explosives = 35,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionStormer",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(243489839730, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT3_SkullCrusher Name]] "Череполом"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Smoke",
		"Flank",
		"Explosives",
	},
	archetype = "Brute",
	role = "Stormer",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 60,
	StartingPerks = {
		"MinFreeMove",
		"Throwing",
		"BreachAndClear",
		"BeefedUp",
		"Shatterhand",
		"NailsPerk",
		"CQCTraining",
		"KillingWind",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher_Stronger_Elite_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"LegionMeleeFighter_Stronger_Elite",
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
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

