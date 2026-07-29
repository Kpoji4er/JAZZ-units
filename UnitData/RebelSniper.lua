UndefineClass('RebelSniper')
DefineClass.RebelSniper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Снайпер",
	object_class = "UnitData",
	Health = 75,
	Agility = 92,
	Dexterity = 80,
	Wisdom = 30,
	Will = 75,
	Leadership = 20,
	Marksmanship = 95,
	Mechanical = 100,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelSniper",
	Name = T(782796459960, --[[ModItemUnitDataCompositeDef RebelSniper Name]] "Deadeye"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
	},
	archetype = "Rebels_Frontliner",
	role = "Marksman",
	CanManEmplacements = false,
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "PinDown",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"LightningReactionNPC",
		"Spiritual",
		"Instagib",
		"HawksEye",
		"Killzone",
		"Spiritual",
		"DeathFromAbove",
		"SteadyBreathing",
		"TrickShot",
		"Hobbler",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Marksman_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Marksman_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Marksman_Rebels_03",
		}),
	},
	Equipment = {
		"RebelSniper",
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

