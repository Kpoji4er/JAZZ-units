UndefineClass('ThugGoon_Stronger')
DefineClass.ThugGoon_Stronger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 75,
	Agility = 80,
	Dexterity = 85,
	Strength = 70,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 70,
	Mechanical = 50,
	Explosives = 25,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugSoldier",
	Name = T(765470374054, --[[ModItemUnitDataCompositeDef ThugGoon_Stronger Name]] "Штурмовик"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 6,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"RunAndGun",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local archetype = self.archetype
		
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
	MaxHitPoints = 60,
	StartingPerks = {
		"MeleeTraining",
		"Ironclad",
		"MinFreeMove",
		"CQCTraining",
		"RelentlessAdvance",
		"SteadyBreathing",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_2",
		}),
	},
	Equipment = {
		"Shocktrooper_Inventory",
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
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

