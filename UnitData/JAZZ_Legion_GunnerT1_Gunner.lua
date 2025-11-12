UndefineClass('JAZZ_Legion_GunnerT1_Gunner')
DefineClass.JAZZ_Legion_GunnerT1_Gunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Пуляло Shoota | Cлабый пулеметчик со старыми пулеметами. Оверватчит, Достает ножик на ближних",
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
	Portrait = "UI/EnemiesPortraits/LegionHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(663837406922, --[[ModItemUnitDataCompositeDef JAZZ_Legion_GunnerT1_Gunner Name]] "Пуляло"),
	Randomization = true,
	Affiliation = "Legion",
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
			'Preset', "Legion_Heavy",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Heavy03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner",
			'Weight', 3,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGunner_alt",
			'Weight', 3,
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

