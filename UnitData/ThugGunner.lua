UndefineClass('ThugGunner')
DefineClass.ThugGunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 65,
	Agility = 75,
	Dexterity = 70,
	Strength = 70,
	Wisdom = 5,
	Will = 45,
	Leadership = 0,
	Marksmanship = 65,
	Mechanical = 20,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/ThugHeavy",
	Name = T(747716825453, --[[ModItemUnitDataCompositeDef ThugGunner Name]] "Пуляло"),
	Randomization = true,
	Affiliation = "Thugs",
	StartingLevel = 3,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"Soldier",
		"Control",
	},
	archetype = "Legion_Machinegunner",
	role = "Heavy",
	RepositionArchetype = "Legion_Machinegunner",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 1,
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
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Heavy_2",
		}),
	},
	Equipment = {
		"Gunner_Inventory",
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

