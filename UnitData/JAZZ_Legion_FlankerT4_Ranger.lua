UndefineClass('JAZZ_Legion_FlankerT4_Ranger')
DefineClass.JAZZ_Legion_FlankerT4_Ranger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Рейнджер Ranger | Фланкер со снайперкой, переходящий на карабин/пп с колемом в близи",
	object_class = "UnitData",
	Health = 80,
	Agility = 98,
	Dexterity = 95,
	Strength = 72,
	Wisdom = 100,
	Will = 85,
	Leadership = 30,
	Marksmanship = 95,
	Mechanical = 100,
	Explosives = 30,
	Medical = 30,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(621106396948, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT4_Ranger Name]] "Рейнджер"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 18,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
		"Heal_Low",
		"Soldier",
		"Flank",
		"RunAndGun",
		"MobileShot",
	},
	role = "Marksman",
	AlwaysUseOpeningAttack = true,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"BunsPerk",
		"Stealthy",
		"StressManagement",
		"Untraceable",
		"Hobbler",
		"Shatterhand",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt_2",
		}),
	},
	Equipment = {
		"LegionRanger_Stronger_Elite",
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

