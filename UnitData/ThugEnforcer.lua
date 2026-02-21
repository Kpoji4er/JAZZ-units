UndefineClass('ThugEnforcer')
DefineClass.ThugEnforcer = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Мародер Marauder | Рандомное между ШВ, БВ, Карабином и ПП (В начале). Можно даже легкий пулемет",
	object_class = "UnitData",
	Health = 75,
	Agility = 69,
	Dexterity = 93,
	Strength = 95,
	Wisdom = 16,
	Leadership = 65,
	Marksmanship = 43,
	Mechanical = 0,
	Explosives = 33,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugStormer",
	Name = T(806300520980, --[[ModItemUnitDataCompositeDef ThugEnforcer Name]] "Enforcer"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
	},
	archetype = "Legion_Frontliner",
	role = "Soldier",
	MaxAttacks = 2,
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
			panicshance = 100-health_perc
		end
		
		if will_perc < 40 then
			panicshance = Max(panicshance,100-will_perc)
		end
		
		if panicroll < panicshance then
		PlayVoiceResponse(self, "AIArchetypeScared")
		archetype = "Deserter"
		end
		
		print(panicroll..'against'..panicshance)
		
		return archetype
	end,
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 100,
	StartingPerks = {
		"TakeAim",
		"MinFreeMove",
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
		"Marauder_Inventory",
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

