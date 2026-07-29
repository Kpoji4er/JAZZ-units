UndefineClass('RebelSoldier')
DefineClass.RebelSoldier = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Фронтлайнер",
	object_class = "UnitData",
	Health = 88,
	Agility = 90,
	Dexterity = 90,
	Strength = 80,
	Wisdom = 30,
	Will = 75,
	Leadership = 20,
	Marksmanship = 85,
	Mechanical = 50,
	Explosives = 20,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(256556608638, --[[ModItemUnitDataCompositeDef RebelSoldier Name]] "Rebel"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Ordnance",
		"RunAndGun",
	},
	archetype = "Rebels_Frontliner",
	role = "Soldier",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"Ironclad",
		"TakeAim",
		"AutoWeapons",
		"MinFreeMove",
		"HitTheDeck",
		"Hardened",
		"Shatterhand",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_04",
		}),
	},
	Equipment = {
		"RebelSoldier",
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
	VoiceResponseId = "RebelSoldier",
}

