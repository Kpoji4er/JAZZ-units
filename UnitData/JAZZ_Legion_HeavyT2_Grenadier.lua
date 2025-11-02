UndefineClass('JAZZ_Legion_HeavyT2_Grenadier')
DefineClass.JAZZ_Legion_HeavyT2_Grenadier = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Гранатометчик Heavy Grenadier",
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
	Portrait = "UI/EnemiesPortraits/LegionArtillery",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(164455308660, --[[ModItemUnitDataCompositeDef JAZZ_Legion_HeavyT2_Grenadier Name]] "Гранатомётчик"),
	Randomization = true,
	Affiliation = "Legion",
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
	PickCustomArchetype = function (self, proto_context)  end,
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
			'Preset', "Legion_Artillery",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Artillery02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Artillery03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRoceteer_Stronger",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRoceteer_Stronger_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRoceteer_Stronger_alt",
			'Weight', 2,
		}),
	},
	Equipment = {
		"LegionRocketeer",
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

