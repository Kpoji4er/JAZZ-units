UndefineClass('Rebel_NPC_Ghost')
DefineClass.Rebel_NPC_Ghost = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = 'Дьяло "Призрак" Канджура - НПЦ-Снайпер',
	object_class = "UnitData",
	Health = 100,
	Agility = 98,
	Dexterity = 98,
	Strength = 100,
	Wisdom = 80,
	Will = 100,
	Leadership = 100,
	Marksmanship = 100,
	Mechanical = 100,
	Explosives = 90,
	Medical = 90,
	Portrait = "UI/EnemiesPortraits/RebelRecon",
	BigPortrait = "Mod/Dv3mFVN/Images/REBELS_Ghost.png",
	Name = T(325500638329, --[[ModItemUnitDataCompositeDef Rebel_NPC_Ghost Name]] "Призрак"),
	Randomization = true,
	eliteCategory = "Foreigners",
	Affiliation = "Legion",
	StartingLevel = 8,
	villain = true,
	neutral_retaliate = true,
	AIKeywords = {
		"Smoke",
		"Flank",
		"Marksman",
		"Control",
		"Leader",
	},
	archetype = "Rebels_Frontliner",
	role = "Commander",
	RepositionArchetype = "Legion_Assaulter",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "Overwatch",
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "SniperRifle"
		local roll = 100
		
		if enemy and dist < 16*const.SlabSizeX and weapon_class ~= "AssaultRifle"  then
			weapon_class = "AssaultRifle"
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
		self:TryEquip(items, "Handheld A", "SniperRifle")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 80,
	StartingPerks = {
		"Spotter",
		"SidneyPerk",
		"TakeAim",
		"OnMyTarget",
		"Ironclad",
		"LightStep",
		"TrickShot",
		"LeadFromTheFront",
		"Shatterhand",
		"StressManagement",
		"Hotblood",
		"Instagib",
		"LightningReaction",
		"HitTheDeck",
		"CollateralDamage",
		"Hardened",
		"Spiritual",
		"BattleFocus",
		"RelentlessAdvance",
		"ShoulderToShoulder",
		"TrueGrit",
		"OverwatchExpert",
		"VengefulTemperament",
		"HeavyWeaponsTraining",
		"TagTeam",
		"BeefedUp",
		"Killzone",
		"CQCTraining",
		"Hobbler",
		"AutoWeapons",
		"WeGotThis",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Rebels_NPC_Ghost",
		}),
	},
	Equipment = {
		"Rebel_NPC_Ghost",
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

