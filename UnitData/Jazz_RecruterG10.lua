UndefineClass('Jazz_RecruterG10')
DefineClass.Jazz_RecruterG10 = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 96,
	Agility = 95,
	Dexterity = 89,
	Strength = 85,
	Wisdom = 86,
	Will = 80,
	Leadership = 76,
	Marksmanship = 84,
	Mechanical = 83,
	Explosives = 70,
	Medical = 76,
	Portrait = "UI/EnemiesPortraits/ArmyHeavy",
	Name = T(951442777109, --[[ModItemUnitDataCompositeDef Jazz_RecruterG10 Name]] "Тёмный Властелин"),
	Randomization = true,
	Affiliation = "Civilian",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"Control",
	},
	role = "Soldier",
	MaxAttacks = 2,
	PickCustomArchetype = function (self, proto_context)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"Berserker",
		"HoldPosition",
		"DieselPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Landsbach_SuperSoldier_Stormer",
		}),
	},
	Equipment = {
		"Nazi_UHMWPE_Set_Heavy",
	},
	AdditionalGroups = {},
	Tier = "Elite",
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "SuperSoldier_Assault",
}

