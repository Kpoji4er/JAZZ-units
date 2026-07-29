UndefineClass('RebelRPG')
DefineClass.RebelRPG = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Гранатометчик М79/РПГ",
	object_class = "UnitData",
	Health = 75,
	Agility = 82,
	Dexterity = 78,
	Strength = 85,
	Wisdom = 15,
	Leadership = 0,
	Marksmanship = 74,
	Mechanical = 50,
	Explosives = 50,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(164455308660, --[[ModItemUnitDataCompositeDef RebelRPG Name]] "Гранатомётчик"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"Ordnance",
		"Control",
		"Sniper",
	},
	archetype = "Artillery",
	role = "Artillery",
	CanManEmplacements = false,
	MaxAttacks = 1,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HeavyWeaponsTraining",
		"Hardened",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_03",
		}),
	},
	Equipment = {
		"RebelRPG",
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

