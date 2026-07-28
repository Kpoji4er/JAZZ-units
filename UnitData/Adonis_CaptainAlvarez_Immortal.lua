UndefineClass('Adonis_CaptainAlvarez_Immortal')
DefineClass.Adonis_CaptainAlvarez_Immortal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 88,
	Agility = 90,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 80,
	Will = 90,
	Leadership = 62,
	Marksmanship = 95,
	Mechanical = 47,
	Explosives = 64,
	Medical = 49,
	Portrait = "UI/EnemiesPortraits/AdonisOfficer",
	BigPortrait = "Mod/Dv3mFVN/NPCPortraits/Adonis_Alvarez_Big.png",
	Name = T(717331783376, --[[ModItemUnitDataCompositeDef Adonis_CaptainAlvarez_Immortal Name]] "Капитан Альварез"),
	Randomization = true,
	Affiliation = "Adonis",
	StartingLevel = 7,
	immortal = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
		"Explosives",
	},
	archetype = "Rebels_Frontliner",
	role = "Commander",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	unitPowerModifier = 75,
	MaxHitPoints = 80,
	StartingPerks = {
		"OpportunisticKiller",
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Adonis_Officer",
		}),
	},
	Equipment = {
		"AdonisSquadLeader",
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

