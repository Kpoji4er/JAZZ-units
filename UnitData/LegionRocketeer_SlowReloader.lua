UndefineClass('LegionRocketeer_SlowReloader')
DefineClass.LegionRocketeer_SlowReloader = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 50,
	Agility = 83,
	Dexterity = 25,
	Strength = 88,
	Wisdom = 14,
	Leadership = 10,
	Marksmanship = 12,
	Mechanical = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionArtillery",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(426384476732, --[[ModItemUnitDataCompositeDef LegionRocketeer_SlowReloader Name]] "Гранатометчик"),
	Randomization = true,
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"Ordnance",
	},
	role = "Artillery",
	CanManEmplacements = false,
	MaxAttacks = 1,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "RocketLauncher")
		self:TryEquip(items, "Handheld B", "AssaultRifle")
	end,
	MaxHitPoints = 50,
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Artillery",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionButcher",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt_2",
		}),
	},
	Equipment = {
		"LegionRocketeer_SlowReloader",
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

