UndefineClass('CorazonGuard')
DefineClass.CorazonGuard = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 100,
	Dexterity = 100,
	Strength = 100,
	Wisdom = 100,
	Will = 100,
	Leadership = 100,
	Marksmanship = 100,
	Mechanical = 100,
	Explosives = 100,
	Medical = 100,
	Portrait = "UI/EnemiesPortraits/AdonisSoldier",
	Name = T(574676973785, --[[ModItemUnitDataCompositeDef CorazonGuard Name]] "Guard"),
	elite = true,
	eliteCategory = "Foreigners",
	Affiliation = "Adonis",
	StartingLevel = 10,
	archetype = "Rebels_Frontliner",
	RepositionArchetype = "Skirmisher",
	MaxAttacks = 10,
	MaxHitPoints = 80,
	StartingPerks = {
		"AutoWeapons",
		"Berserker",
		"HitTheDeck",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Adonis_Stormer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Adonis_Recon",
		}),
	},
	Equipment = {
		"AdonisGuard",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "AdonisMale_1",
		}),
	},
	pollyvoice = "Russell",
	gender = "Male",
}

