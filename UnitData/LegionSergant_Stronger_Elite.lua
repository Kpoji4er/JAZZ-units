UndefineClass('LegionSergant_Stronger_Elite')
DefineClass.LegionSergant_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 95,
	Agility = 85,
	Dexterity = 95,
	Strength = 75,
	Wisdom = 80,
	Will = 90,
	Leadership = 75,
	Marksmanship = 95,
	Mechanical = 80,
	Explosives = 65,
	Medical = 51,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(161332307544, --[[ModItemUnitDataCompositeDef LegionSergant_Stronger_Elite Name]] "Элитный сержант"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 7,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
		"Soldier",
		"Explosives",
		"Ordnance",
	},
	role = "Marksman",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "PinDown",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"DeathFromAbove",
		"LightStep",
		"StressManagement",
		"ShoulderToShoulder",
		"BattleFocus",
		"MinFreeMove",
		"LightningReactionNPC",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSergant_Stronger_Elite",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSergant_Stronger_Elite_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSergant_Stronger_alt_2",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSergant_Stronger_alt",
		}),
	},
	Equipment = {
		"LegionSergeant_Stronger_Elite",
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

