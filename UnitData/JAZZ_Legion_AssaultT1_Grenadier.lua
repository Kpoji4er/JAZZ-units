UndefineClass('JAZZ_Legion_AssaultT1_Grenadier')
DefineClass.JAZZ_Legion_AssaultT1_Grenadier = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Гренадер Grenadier | Огромный приоритет на броски гранат",
	object_class = "UnitData",
	Health = 70,
	Agility = 65,
	Dexterity = 70,
	Strength = 70,
	Wisdom = 5,
	Will = 35,
	Leadership = 0,
	Marksmanship = 55,
	Mechanical = 0,
	Explosives = 15,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(392427068113, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT1_Grenadier Name]] "Гренадёр"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"Explosives",
		"CQB",
	},
	archetype = "Legion_Assaulter",
	role = "Demolitions",
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
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "PipeBomb")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"Throwing",
		"BreachAndClear",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Demolishion03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Grenadier_Inventory",
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
	pollyvoice = "Russell",
	gender = "Male",
	VoiceResponseId = "LegionRaider",
}

