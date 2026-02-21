UndefineClass('ThugGoon_Stronger_Elite')
DefineClass.ThugGoon_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 95,
	Dexterity = 95,
	Strength = 100,
	Wisdom = 40,
	Will = 60,
	Leadership = 40,
	Marksmanship = 85,
	Mechanical = 85,
	Medical = 20,
	Portrait = "UI/EnemiesPortraits/ThugSoldier",
	Name = T(515735951720, --[[ModItemUnitDataCompositeDef ThugGoon_Stronger_Elite Name]] "Палач"),
	Randomization = true,
	elite = true,
	Affiliation = "Thugs",
	StartingLevel = 15,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"RunAndGun",
		"MobileShot",
		"Heal",
		"Melee",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
			--archetype = "Brute"
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
	MaxHitPoints = 60,
	StartingPerks = {
		"MinFreeMove",
		"Throwing",
		"Ironclad",
		"CQCTraining",
		"Hotblood",
		"RelentlessAdvance",
		"SteadyBreathing",
		"BeefedUp",
		"Shatterhand",
		"NailsPerk",
		"SidneyPerk",
		"KillingWind",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_1",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Headsman_Inventory",
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
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

