UndefineClass('JAZZ_Legion_GunnerT2_GMPG')
DefineClass.JAZZ_Legion_GunnerT2_GMPG = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Пулеметчик Machinegunner | Пулеметчик с единым пулеметом. Вторичка пистолет и дымы",
	object_class = "UnitData",
	Health = 88,
	Agility = 80,
	Dexterity = 74,
	Strength = 85,
	Wisdom = 15,
	Will = 55,
	Leadership = 0,
	Marksmanship = 80,
	Explosives = 10,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(602782802811, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT2_GMPG Name]] "Пулемётчик"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"Soldier",
		"Control",
	},
	archetype = "Legion_Machinegunner",
	role = "Heavy",
	MaxAttacks = 1,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		local roll = self:Random(100)
		local chance = 50
		
		if enemy and dist < 6*const.SlabSizeX and weapon_class ~= "Revolver" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Revolver"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 6*const.SlabSizeX and weapon_class ~= "Pistol" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Pistol"
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
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
		"HeavyWeaponsTraining",
		"Spotter",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"GMPG_Inventory",
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

