UndefineClass('JAZZ_Legion_FrontT2_Raider')
DefineClass.JAZZ_Legion_FrontT2_Raider = {
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
	Portrait = "UI/EnemiesPortraits/LegionSoldier",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(113948731495, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT2_Raider Name]] "Налётчик"),
	Randomization = true,
	Affiliation = "Legion",
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
	CustomEquipGear = function (self, items)  end,
	MaxHitPoints = 50,
	StartingPerks = {
		"AutoWeapons",
		"TakeAim",
		"MinFreeMove",
		"HitTheDeck",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier04",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier05",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Soldier06",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_alt",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_alt_2",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRaider_Stronger_alt_3",
			'Weight', 4,
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

