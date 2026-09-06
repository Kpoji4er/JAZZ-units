UndefineClass('ThugEnforcer_Stronger')
DefineClass.ThugEnforcer_Stronger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Застрельщик Skirmisher | Дальний флангер с Боевой/снайперсокй винтовкой. хорошо видит и пытается прятаться",
	object_class = "UnitData",
	Health = 75,
	Agility = 97,
	Dexterity = 93,
	Strength = 95,
	Wisdom = 16,
	Leadership = 65,
	Marksmanship = 43,
	Mechanical = 0,
	Explosives = 33,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugStormer",
	Name = T(508376359044, --[[ModItemUnitDataCompositeDef ThugEnforcer_Stronger Name]] "Tough Enforcer"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"Marksman",
	},
	archetype = "Legion_Frontliner",
	role = "Recon",
	RepositionArchetype = "Legion_Frontliner",
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
	MaxHitPoints = 100,
	StartingPerks = {
		"HoldPosition",
		"OpportunisticKiller",
		"Counterfire",
		"Hardened",
		"Flanker",
		"Untraceable",
		"MinFreeMove",
		"MinFreeMove",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Stormer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Stormer_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Stormer_2",
		}),
	},
	Equipment = {
		"Skirmisher_Inventory",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "ThugGunner",
}

