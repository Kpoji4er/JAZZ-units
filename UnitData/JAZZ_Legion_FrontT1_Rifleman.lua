UndefineClass('JAZZ_Legion_FrontT1_Rifleman')
DefineClass.JAZZ_Legion_FrontT1_Rifleman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Стрелок Rifleman | Болтовка без оптики. С середины игры боевые винтовки без оптики",
	object_class = "UnitData",
	Agility = 85,
	Dexterity = 65,
	Strength = 50,
	Wisdom = 5,
	Will = 40,
	Leadership = 0,
	Marksmanship = 80,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(239462113851, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT1_Rifleman Name]] "Стрелок"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 4,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Control",
	},
	archetype = "Legion_Frontliner",
	role = "Marksman",
	RepositionArchetype = "Legion_Frontliner",
	AlwaysUseOpeningAttack = true,
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
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"OpportunisticKiller",
		"Instagib",
		"CancelShotPerk",
		"Spotter",
		"Spiritual",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSharpShooter",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSharpShooter_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSharpShooter_alt_1",
			'Weight', 3,
		}),
	},
	Equipment = {
		"Rifleman_Inventory",
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

