UndefineClass('JAZZ_Legion_FlankerT4_Ranger')
DefineClass.JAZZ_Legion_FlankerT4_Ranger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Рейнджер Ranger | Фланкер со снайперкой, переходящий на карабин/пп с колемом в близи",
	object_class = "UnitData",
	Health = 80,
	Agility = 98,
	Dexterity = 95,
	Strength = 72,
	Wisdom = 100,
	Will = 85,
	Leadership = 30,
	Marksmanship = 95,
	Mechanical = 100,
	Explosives = 30,
	Medical = 30,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(621106396948, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT4_Ranger Name]] "Рейнджер"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 18,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Flank",
		"Control",
		"RunAndGun",
	},
	archetype = "Legion_Assaulter",
	role = "Recon",
	RepositionArchetype = "Legion_Assaulter",
	AlwaysUseOpeningAttack = true,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		local roll = self:Random(100)
		local chance = 50
		
		if enemy and dist < 16*const.SlabSizeX and weapon_class ~= "AssaultRifle" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "AssaultRifle"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 16*const.SlabSizeX and weapon_class ~= "SubmachineGun" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "SubmachineGun"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		local stealth_stance = self:GetStanceToStealth()
		if self:CanStealth(stealth_stance) then
		 self:Hide()
		end	
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "SniperRifle")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"Counterfire",
		"OpportunisticKiller",
		"Instagib",
		"Infiltrator",
		"Flanker",
		"Hardened",
		"RelentlessAdvance",
		"Untraceable",
		"Stealthy",
		"NightOps",
		"CQCTraining",
		"LightningReaction",
		"Hotblood",
		"LastWarning",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt_2",
		}),
	},
	Equipment = {
		"Ranger_Inventory",
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

