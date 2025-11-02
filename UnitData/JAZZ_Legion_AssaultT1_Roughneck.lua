UndefineClass('JAZZ_Legion_AssaultT1_Roughneck')
DefineClass.JAZZ_Legion_AssaultT1_Roughneck = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Головорез Roughneck | Пистолеты + Ножи, в лейте пп и калаши, пушит в упор",
	object_class = "UnitData",
	Health = 55,
	Agility = 78,
	Dexterity = 80,
	Strength = 40,
	Wisdom = 5,
	Will = 30,
	Leadership = 0,
	Marksmanship = 65,
	Mechanical = 0,
	Explosives = 64,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(217901684853, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT1_Roughneck Name]] "Головорез"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 2,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"MobileShot",
	},
	archetype = "Skirmisher",
	role = "Stormer",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 8*const.SlabSizeX then
			archetype = "Brute"
			weapon_class = "Melee"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"MinFreeMove",
		"TakeAim",
		"CQCTraining",
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
		"LegionGoon",
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

