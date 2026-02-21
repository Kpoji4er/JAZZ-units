UndefineClass('ThugSniper_Stronger_Elite')
DefineClass.ThugSniper_Stronger_Elite = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


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
	Portrait = "UI/EnemiesPortraits/ThugSniper",
	Name = T(290103631560, --[[ModItemUnitDataCompositeDef ThugSniper_Stronger_Elite Name]] "Рейнджер"),
	Randomization = true,
	elite = true,
	Affiliation = "Thugs",
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
		local chance = 70
		
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
			'Preset', "Thug_Marksman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Marksman_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Marksman_2",
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

