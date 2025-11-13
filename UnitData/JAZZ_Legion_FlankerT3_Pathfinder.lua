UndefineClass('JAZZ_Legion_FlankerT3_Pathfinder')
DefineClass.JAZZ_Legion_FlankerT3_Pathfinder = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Следопыт Pathfinder | Винтовк с глушителем и оптикой, камуфляж, полный стелс",
	object_class = "UnitData",
	Health = 75,
	Agility = 95,
	Dexterity = 92,
	Strength = 70,
	Wisdom = 80,
	Will = 75,
	Leadership = 15,
	Marksmanship = 90,
	Mechanical = 50,
	Explosives = 15,
	Medical = 20,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(621106396948, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FlankerT3_Pathfinder Name]] "Следопыт"),
	Randomization = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"Sniper",
		"Control",
	},
	archetype = "Legion_Frontliner",
	role = "Recon",
	RepositionArchetype = "Legion_Frontliner",
	AlwaysUseOpeningAttack = true,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		local roll = self:Random(100)
		local chance = 50
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Revolver" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Revolver"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Pistol" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "Pistol"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 10*const.SlabSizeX and weapon_class ~= "SubmachineGun" and roll < chance then
			archetype = "Legion_Assaulter"
			weapon_class = "SubmachineGun"
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
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"HoldPosition",
		"Hobbler",
		"OpportunisticKiller",
		"Instagib",
		"FleetingShadow",
		"Counterfire",
		"Hardened",
		"Flanker",
		"Untraceable",
		"Hotblood",
		"LastWarning",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_Elite_alt",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionRanger_Stronger_alt_2",
		}),
	},
	Equipment = {
		"Pathfinder_Inventory",
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

