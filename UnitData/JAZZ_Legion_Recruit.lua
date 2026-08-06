UndefineClass('JAZZ_Legion_Recruit')
DefineClass.JAZZ_Legion_Recruit = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Новобранец Recruit | ослабленный клон Roughneck для recruiter cargo",
	object_class = "UnitData",
	Health = 45,
	Agility = 68,
	Dexterity = 70,
	Strength = 35,
	Wisdom = 5,
	Will = 22,
	Leadership = 0,
	Marksmanship = 55,
	Mechanical = 0,
	Explosives = 45,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Recruit.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001643, --[[ModItemUnitDataCompositeDef JAZZ_Legion_Recruit Name]] "Новобранец"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"MobileShot",
		"Melee",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 8,
	PickCustomArchetype = function (self, proto_context)
		return JazzAI_PickCombatStance(self, proto_context)
	end,

	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 40,
	StartingPerks = {
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_2",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_3",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Roughneck_Inventory",
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

