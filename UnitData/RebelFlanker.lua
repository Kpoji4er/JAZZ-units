UndefineClass('RebelFlanker')
DefineClass.RebelFlanker = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Фланкер ПП",
	object_class = "UnitData",
	Health = 75,
	Agility = 95,
	Dexterity = 95,
	Strength = 70,
	Wisdom = 80,
	Will = 70,
	Leadership = 15,
	Marksmanship = 80,
	Mechanical = 100,
	Explosives = 35,
	Medical = 10,
	Portrait = "UI/EnemiesPortraits/RebelRecon",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(973520781420, --[[ModItemUnitDataCompositeDef RebelFlanker Name]] "Диверсант"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"RunAndGun",
		"CQB",
	},
	archetype = "Rebels_Assaulter",
	role = "Recon",
	CanManEmplacements = false,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
			archetype = "Melee"
			weapon_class = "Melee"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		local stealth_stance = self:GetStanceToStealth()
		if self:CanStealth(stealth_stance) then
		 self:Hide()
		end	
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"RelentlessAdvance",
		"MinFreeMove",
		"HoldPosition",
		"CQCTraining",
		"Flanker",
		"Counterfire",
		"OpportunisticKiller",
		"Untraceable",
		"Stealthy",
		"NightOps",
		"CQCTraining",
		"LightningReactionNPC",
		"Hotblood",
		"FleetingShadow",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Recon_Rebels_03",
		}),
	},
	Equipment = {
		"RebelFlanker",
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
	VoiceResponseId = "RebelSoldier",
}

