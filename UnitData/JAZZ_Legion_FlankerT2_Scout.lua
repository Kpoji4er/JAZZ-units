UndefineClass('JAZZ_Legion_FlankerT2_Scout')
DefineClass.JAZZ_Legion_FlankerT2_Scout = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Скаут Scout | Ближний флангер с ПП/Карабином, хорошо видит и пытается прятаться",
	object_class = "UnitData",
	Health = 70,
	Agility = 88,
	Dexterity = 85,
	Strength = 65,
	Wisdom = 70,
	Will = 60,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 15,
	Medical = 21,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(465277985554, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT2_Scout Name]] "Скаут"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"CQB",
	},
	archetype = "Legion_Assaulter",
	role = "Recon",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		local roll = self:Random(100)
		local chance = 50
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Revolver" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Revolver"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Pistol" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Pistol"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 10*const.SlabSizeX and weapon_class ~= "SubmachineGun" and roll < chance then
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
		
		local panicroll = self:Random(100)
		local panicshance = 0
		
		local health_perc = MulDivRound(self.HitPoints, 100, self.MaxHitPoints)
		local will_perc = MulDivRound(self.WillPoints, 100, self.MaxWillPoints)
		
		local wounds = 0
		local wounded = self:GetStatusEffect("Wounded")
		local bleeding = self:GetStatusEffect("Bleeding")
		if wounded then
			wounds = wounded.stacks 
		end
		if bleeding then
			wounds = wounds + bleeding.stacks 
		end
		panicroll = panicroll - 10*wounds
									
		if wounds > 1 then
			local panicshance = 100-health_perc
		end
		
		if will_perc < 40 then
			local panicshance = Max(panicshance,100-will_perc)
		end
		
		if panicroll < panicshance then
		PlayVoiceResponse(self, "AIArchetypeScared")
		archetype = "Deserter"
		end
		
		return archetype
	end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"OpportunisticKiller",
		"MinFreeMove",
		"Counterfire",
		"Flanker",
		"RelentlessAdvance",
		"Untraceable",
		"Stealthy",
		"CQCTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionScout_Stronger_alt_2",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
	},
	Equipment = {
		"Scout_Inventory",
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

