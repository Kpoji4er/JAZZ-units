UndefineClass('RebelHeavy_Mortar')
DefineClass.RebelHeavy_Mortar = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Минометчик",
	object_class = "UnitData",
	Health = 80,
	Agility = 80,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 50,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(339004978895, --[[ModItemUnitDataCompositeDef RebelHeavy_Mortar Name]] "Миномётчик"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"Explosives",
		"Smoke",
		"RunAndGun",
		"Nova",
		"Explosives",
	},
	archetype = "Artillery",
	role = "Artillery",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"LightningReactionNPC",
		"HeavyWeaponsTraining",
		"Hardened",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Demolitions_Rebels_02",
		}),
	},
	Equipment = {
		"RebelHeavy_Mortar",
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

