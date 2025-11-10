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
	Portrait = "UI/EnemiesPortraits/LegionArtillery",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(100080397822, --[[ModItemUnitDataCompositeDef JAZZ_Legion_HeavyT1_Rocketeer Name]] "Ракетчик\nРакетчик"),
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

