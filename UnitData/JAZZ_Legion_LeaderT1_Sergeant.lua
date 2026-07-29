UndefineClass('JAZZ_Legion_LeaderT1_Sergeant')
DefineClass.JAZZ_Legion_LeaderT1_Sergeant = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Бригадир Sergeant | Командир-Штурмовик",
	object_class = "UnitData",
	Health = 80,
	Agility = 82,
	Dexterity = 85,
	Strength = 70,
	Will = 80,
	Leadership = 70,
	Marksmanship = 85,
	Mechanical = 100,
	Explosives = 30,
	Medical = 30,
	Portrait = "UI/EnemiesPortraits/LegionOfficer",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(375592592463, --[[ModItemUnitDataCompositeDef JAZZ_Legion_LeaderT1_Sergeant Name]] "Бригадир"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 3,
	villain = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Leader",
		"Control",
		"Soldier",
		"Explosives",
		"RunAndGun",
	},
	archetype = "Legion_Assaulter",
	role = "Commander",
	RepositionArchetype = "Legion_Assaulter",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 80,
	StartingPerks = {
		"CQCTraining",
		"Spiritual",
		"BattleFocus",
		"RelentlessAdvance",
		"ShoulderToShoulder",
		"AutoWeapons",
		"Spotter",
		"TakeAim",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Shaman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Shaman02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Shaman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaidLeader",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaidLeader_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaidLeader_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"Sergeant_Inventory",
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

