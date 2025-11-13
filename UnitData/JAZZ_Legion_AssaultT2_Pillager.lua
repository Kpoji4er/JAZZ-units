UndefineClass('JAZZ_Legion_AssaultT2_Pillager')
DefineClass.JAZZ_Legion_AssaultT2_Pillager = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Грабитель Pillager | ПП + Ножи, только в городах",
	object_class = "UnitData",
	Health = 70,
	Agility = 88,
	Dexterity = 95,
	Wisdom = 15,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 50,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(278695304484, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT2_Pillager Name]] "Грабитель"),
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Soldier",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	PinnedDownChance = 100,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 8*const.SlabSizeX then
			--archetype = "Brute"
			weapon_class = "Melee"
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
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"CQCTraining",
		"TakeAim",
		"RelentlessAdvance",
		"SteadyBreathing",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_Stronger",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_Stronger_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_Stronger_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Pillager_Inventory",
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

