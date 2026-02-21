UndefineClass('ThugGunner_Stronger_Elite')
DefineClass.ThugGunner_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


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
	Portrait = "UI/EnemiesPortraits/ThugHeavy",
	Name = T(347920605650, --[[ModItemUnitDataCompositeDef ThugGunner_Stronger_Elite Name]] "Гранатомётчик"),
	Randomization = true,
	Affiliation = "Thugs",
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
	PickCustomArchetype = function (self, proto_context)
		local function PrimaryNonGL(self)
		  return self:GetActiveWeapons("AssaultRifle")
		      or self:GetActiveWeapons("Rifle")
		      or self:GetActiveWeapons("Carbine")
		      or self:GetActiveWeapons("BattleRifle")
		      or self:GetActiveWeapons("SubmachineGun")
		      or self:GetActiveWeapons("Shotgun")
		end
		
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		local roll = self:Random(100)
		local chance = 50
		
		local weapon_class = "Firearm"
		if enemy and dist < 40*const.SlabSizeX and dist > 15*const.SlabSizeX and roll < chance then
		  weapon_class = "GrenadeLauncher"
		else
		  weapon_class = (PrimaryNonGL(self) and PrimaryNonGL(self).weapon_class) or "AssaultRifle"
		end
		
		if enemy and dist < 10*const.SlabSizeX then
			archetype = "Legion_Assaulter"
			weapon_class = "Melee"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
		  AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		return archetype
	end,
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
			'Preset', "Thug_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_2",
		}),
	},
	Equipment = {
		"HeavyGrenadier_Inventory",
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

