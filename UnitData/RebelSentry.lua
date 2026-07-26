UndefineClass('RebelSentry')
DefineClass.RebelSentry = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Фланкер Винтовка",
	object_class = "UnitData",
	Health = 70,
	Agility = 88,
	Dexterity = 70,
	Wisdom = 15,
	Will = 55,
	Leadership = 0,
	Marksmanship = 85,
	Mechanical = 100,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelOfficer",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000000586, --[[ModItemUnitDataCompositeDef RebelSentry Name]] "Патрульный"),
	Randomization = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 10,
	neutral_retaliate = true,
	AIKeywords = {
		"Marksman",
		"Sniper",
		"Control",
	},
	archetype = "Rebels_Frontliner",
	role = "Soldier",
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
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"Hotblood",
		"OpportunisticKiller",
		"Instagib",
		"BunsPerk",
		"Killzone",
		"CancelShotPerk",
		"Spiritual",
		"Spotter",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Marksman_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Soldier_Rebels_04",
		}),
	},
	Equipment = {
		"RebelSentry",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "LegionMale_2",
		}),
	},
	pollyvoice = "Joey",
	gender = "Male",
	VoiceResponseId = "RebelSoldier",
}

