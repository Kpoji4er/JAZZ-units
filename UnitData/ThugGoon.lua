UndefineClass('ThugGoon')
DefineClass.ThugGoon = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


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
	Portrait = "UI/EnemiesPortraits/ThugSoldier",
	Name = T(812831809650, --[[ModItemUnitDataCompositeDef ThugGoon Name]] "Костоправ"),
	Randomization = true,
	Affiliation = "Thugs",
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
		
		local bleeding = self:GetStatusEffect("Bleeding")
		if bleeding then
			archetype = "Medic"
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
			'Preset', "Thug_Medic",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Medic_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Medic_2",
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

