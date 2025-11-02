UndefineClass('JAZZ_Legion_FrontT4_MercenarySniper')
DefineClass.JAZZ_Legion_FrontT4_MercenarySniper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Mercenary Sniper Снайпер-наемник | С имбовыми хайтир снайперками даже в начале игры и статами на уровне снайперов из АИМ",
	object_class = "UnitData",
	Health = 85,
	Agility = 100,
	Dexterity = 95,
	Strength = 75,
	Wisdom = 70,
	Will = 80,
	Leadership = 30,
	Marksmanship = 100,
	Mechanical = 100,
	Explosives = 30,
	Medical = 40,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(839107049203, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT4_MercenarySniper Name]] "Наемник снайпер"),
	Randomization = true,
	elite = true,
	eliteCategory = "Mercenary",
	Affiliation = "Legion",
	StartingLevel = 15,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
		"MobileShot",
	},
	archetype = "Soldier_Sniper",
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
		"LightningReactionNPC",
		"Instagib",
		"Killzone",
		"Spiritual",
		"Hobbler",
		"DeathFromAbove",
		"Hotblood",
		"SteadyBreathing",
		"Deadeye",
		"TrickShot",
		"Hardened",
		"StressManagement",
		"HawksEye",
		"SidneyPerk",
		"Spiritual",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_Elite_alt",
			'Weight', 2,
		}),
	},
	Equipment = {
		"LegionSniper_Stronger_Elite",
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

