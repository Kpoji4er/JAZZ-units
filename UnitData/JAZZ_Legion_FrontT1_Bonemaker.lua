UndefineClass('JAZZ_Legion_FrontT1_Bonemaker')
DefineClass.JAZZ_Legion_FrontT1_Bonemaker = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Косторправ Bonemaker | Медик-Стрелок. Вначале с болтовкой, потом с ШВ",
	object_class = "UnitData",
	Health = 85,
	Agility = 85,
	Dexterity = 75,
	Strength = 40,
	Wisdom = 50,
	Will = 75,
	Leadership = 50,
	Marksmanship = 70,
	Mechanical = 0,
	Explosives = 0,
	Medical = 90,
	Portrait = "UI/EnemiesPortraits/LegionMedic",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(397958642127, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT1_Bonemaker Name]] "Костоправ"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 5,
	neutral_retaliate = true,
	AIKeywords = {
		"Heal",
		"Smoke",
		"Marksman",
	},
	archetype = "Legion_Frontliner",
	role = "Medic",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local archetype = self.archetype
		
		local panicroll = self:Random(100)
		local panicshance = 0
		
		for _, ally in ipairs(self.team.units) do
			if not ally:IsDead() and ally.HitPoints < MulDivRound(ally.MaxHitPoints, 70, 100) then
				archetype = "Medic"
			end
		end
		
		
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
	MaxHitPoints = 80,
	StartingPerks = {
		"Caretaker",
		"BeefedUp",
		"Savior",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_WitchDoctor",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_WitchDoctor02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_WitchDoctor03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMedic_Stronger",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMedic_Stronger_alt",
			'Weight', 4,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMedic_Stronger_alt_2",
			'Weight', 4,
		}),
	},
	Equipment = {
		"Bonemaker_Inventory",
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

