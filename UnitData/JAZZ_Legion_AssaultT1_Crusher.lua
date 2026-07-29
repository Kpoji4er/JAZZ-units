UndefineClass('JAZZ_Legion_AssaultT1_Crusher')
DefineClass.JAZZ_Legion_AssaultT1_Crusher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Громила Crusher | Танк - Дробовик + Пистолет",
	object_class = "UnitData",
	Health = 75,
	Agility = 65,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 5,
	Will = 45,
	Leadership = 0,
	Mechanical = 0,
	Explosives = 10,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Crusher.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(188332474737, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT1_Crusher Name]] "Громила"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 4,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Melee",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Shotgun")
		self:TryEquip(items, "Handheld B", "Pistol")
	end,
	MaxHitPoints = 100,
	StartingPerks = {
		"BeefedUp",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Crusher_Inventory",
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

