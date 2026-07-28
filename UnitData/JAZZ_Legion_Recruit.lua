UndefineClass('JAZZ_Legion_Recruit')
DefineClass.JAZZ_Legion_Recruit = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Новобранец Recruit | ослабленный клон Roughneck для recruiter cargo",
	object_class = "UnitData",
	Health = 45,
	Agility = 68,
	Dexterity = 70,
	Strength = 35,
	Wisdom = 5,
	Will = 22,
	Leadership = 0,
	Marksmanship = 55,
	Mechanical = 0,
	Explosives = 45,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Roughneck.png",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001643, --[[ModItemUnitDataCompositeDef JAZZ_Legion_Recruit Name]] "Новобранец"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	neutral_retaliate = true,
	AIKeywords = {
		"CQB",
		"MobileShot",
		"Melee",
	},
	archetype = "Legion_Assaulter",
	role = "Stormer",
	OpeningAttackType = "Overwatch",
	MaxAttacks = 8,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
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
	MaxHitPoints = 40,
	StartingPerks = {
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Recon03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_2",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionGoon_alt_3",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Roughneck_Inventory",
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

