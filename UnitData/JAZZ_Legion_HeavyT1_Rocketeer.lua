UndefineClass('JAZZ_Legion_HeavyT1_Rocketeer')
DefineClass.JAZZ_Legion_HeavyT1_Rocketeer = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Ракетчик Rocketeer",
	object_class = "UnitData",
	Health = 65,
	Agility = 70,
	Dexterity = 70,
	Strength = 70,
	Wisdom = 5,
	Will = 30,
	Leadership = 0,
	Mechanical = 0,
	Explosives = 35,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Rocketeer.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(100080397822, --[[ModItemUnitDataCompositeDef JAZZ_Legion_HeavyT1_Rocketeer Name]] "Ракетчик"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Ordnance",
	},
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
	},
	Equipment = {
		"Rocketeer_Inventory",
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

