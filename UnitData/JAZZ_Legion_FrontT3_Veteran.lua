UndefineClass('JAZZ_Legion_FrontT3_Veteran')
DefineClass.JAZZ_Legion_FrontT3_Veteran = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Ветеран Veteran. Как налетчик, но лучше патроны/шмот. Мб еще шанс на нож сделать",
	object_class = "UnitData",
	Health = 88,
	Agility = 90,
	Dexterity = 90,
	Strength = 80,
	Wisdom = 30,
	Will = 75,
	Leadership = 20,
	Marksmanship = 85,
	Mechanical = 50,
	Explosives = 20,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(918921277026, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT3_Veteran Name]] "Ветеран"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 12,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Ordnance",
		"RunAndGun",
	},
	archetype = "Legion_Frontliner",
	role = "Soldier",
	MaxAttacks = 10,
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
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "GrenadeLauncher")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"Ironclad",
		"TakeAim",
		"AutoWeapons",
		"MinFreeMove",
		"HitTheDeck",
		"Hardened",
		"Shatterhand",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier04",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier05",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier06",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite_alt",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_Elite_alt_2",
			'Weight', 4,
		}),
	},
	Equipment = {
		"Veteran_Inventory",
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

