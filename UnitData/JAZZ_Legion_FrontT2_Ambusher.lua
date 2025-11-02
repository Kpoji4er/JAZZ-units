UndefineClass('JAZZ_Legion_FrontT2_Ambusher')
DefineClass.JAZZ_Legion_FrontT2_Ambusher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Засадник Ambusher | Снайперки с не очень сильными прицелами",
	object_class = "UnitData",
	Health = 65,
	Agility = 90,
	Dexterity = 82,
	Strength = 50,
	Wisdom = 15,
	Will = 55,
	Leadership = 0,
	Marksmanship = 90,
	Mechanical = 35,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(254157828912, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT2_Ambusher Name]] "Засадник"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
	},
	archetype = "Soldier_Sniper",
	role = "Marksman",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 5,
	PickCustomArchetype = function (self, proto_context)  end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"LightningReactionNPC",
		"DeathFromAbove",
		"Instagib",
		"Killzone",
		"Spiritual",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"LegionSniper_Stronger",
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

