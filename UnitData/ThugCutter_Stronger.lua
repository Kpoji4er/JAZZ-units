UndefineClass('ThugCutter_Stronger')
DefineClass.ThugCutter_Stronger = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Налетчик Raider | ШВ, иногда ГП/Гранатомет",
	object_class = "UnitData",
	Health = 78,
	Agility = 88,
	Dexterity = 84,
	Strength = 75,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 80,
	Mechanical = 35,
	Explosives = 20,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugRecon",
	Name = T(608848035570, --[[ModItemUnitDataCompositeDef ThugCutter_Stronger Name]] "Tough Slasher"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"Soldier",
		"Ordnance",
	},
	archetype = "Legion_Frontliner",
	role = "Soldier",
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
		
		--print(panicroll..'against'..panicshance)
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"TakeAim",
		"MinFreeMove",
		"HitTheDeck",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon_2",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Recon",
		}),
	},
	Equipment = {
		"Raider_Inventory",
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

