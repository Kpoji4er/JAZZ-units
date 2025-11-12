UndefineClass('JAZZ_Legion_GunnerT2_AssaultGunner')
DefineClass.JAZZ_Legion_GunnerT2_AssaultGunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т2 Коммандо Commando | Легкий пулемет, пытается сближаться и поставить овервотч как можно ближе, во вторичке мачета и молотов",
	object_class = "UnitData",
	Health = 86,
	Agility = 78,
	Dexterity = 88,
	Strength = 80,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 76,
	Mechanical = 50,
	Explosives = 10,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(431404906000, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT2_AssaultGunner Name]] "Коммандо"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"CQB",
	},
	archetype = "Legion_Machinegunner",
	role = "Heavy",
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
		
		local health_perc = MulDivRound(target.HitPoints, 100, target.MaxHitPoints)
		local will_perc = MulDivRound(target.WillPoints, 100, target.MaxWillPoints)
		
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
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
		"RelentlessAdvance",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_alt_2",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_Elite",
			'Weight', 5,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_Stronger_Elite_alt",
			'Weight', 5,
		}),
	},
	Equipment = {
		"AssaultGunner_Inventory",
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

