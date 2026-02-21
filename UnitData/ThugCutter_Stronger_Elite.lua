UndefineClass('ThugCutter_Stronger_Elite')
DefineClass.ThugCutter_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Череполом SkullCrusher | Элитный танк с дробовиком и милишкой",
	object_class = "UnitData",
	Health = 90,
	Agility = 75,
	Dexterity = 80,
	Strength = 95,
	Wisdom = 25,
	Will = 85,
	Leadership = 30,
	Marksmanship = 85,
	Mechanical = 85,
	Explosives = 35,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugRecon",
	Name = T(856730692631, --[[ModItemUnitDataCompositeDef ThugCutter_Stronger_Elite Name]] "Badass Slasher"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Melee",
		"Smoke",
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
		"BreachAndClear",
		"BeefedUp",
		"Shatterhand",
		"NailsPerk",
		"CQCTraining",
		"KillingWind",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "ThugElite",
		}),
	},
	Equipment = {
		"SkullCrusher_Inventory",
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

