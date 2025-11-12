UndefineClass('JAZZ_Legion_AssaultT2_Pyro')
DefineClass.JAZZ_Legion_AssaultT2_Pyro = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Пироман Pyro | Дробовик и молотовы",
	object_class = "UnitData",
	Health = 85,
	Agility = 70,
	Dexterity = 80,
	Strength = 90,
	Wisdom = 15,
	Will = 75,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 50,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(546032242947, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT2_Pyro Name]] "Пироман"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 7,
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"Melee",
		"Explosives",
	},
	archetype = "Legion_Assaulter",
	role = "Demolitions",
	CanManEmplacements = false,
	RepositionArchetype = "Legion_Assaulter",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
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
		"Throwing",
		"MinFreeMove",
		"BreachAndClear",
		"BeefedUp",
		"RelentlessAdvance",
		"Berserker",
		"Ironclad",
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
			'Preset', "LegionGrenadir_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGrenadir_Stronger_alt_2",
			'Weight', 3,
		}),
	},
	Equipment = {
		"Pyro_Inventory",
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

