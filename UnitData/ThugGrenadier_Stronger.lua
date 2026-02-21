UndefineClass('ThugGrenadier_Stronger')
DefineClass.ThugGrenadier_Stronger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


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
	Portrait = "UI/EnemiesPortraits/ThugDemo",
	Name = T(654442681700, --[[ModItemUnitDataCompositeDef ThugGrenadier_Stronger Name]] "Грабитель"),
	Affiliation = "Thugs",
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
			'Preset', "Thug_Demolishion",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Demolishion_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Demolishion_2",
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

