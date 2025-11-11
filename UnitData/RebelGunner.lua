UndefineClass('RebelGunner')
DefineClass.RebelGunner = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Пулеметчик Штурмовой",
	object_class = "UnitData",
	Health = 86,
	Agility = 78,
	Dexterity = 88,
	Strength = 80,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 76,
	Mechanical = 100,
	Explosives = 10,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelHeavy",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(431404906000, --[[ModItemUnitDataCompositeDef RebelGunner Name]] "Засадный пулеметчик"),
	Randomization = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"MG",
		"CQB",
	},
	archetype = "Rebels_Machinegunner",
	role = "Heavy",
	CanManEmplacements = false,
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
	MaxHitPoints = 85,
	StartingPerks = {
		"HitTheDeck",
		"Ironclad",
		"RelentlessAdvance",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Heavy_Rebels",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Heavy_Rebels_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Heavy_Rebels_03",
		}),
	},
	Equipment = {
		"RebelGunner",
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

