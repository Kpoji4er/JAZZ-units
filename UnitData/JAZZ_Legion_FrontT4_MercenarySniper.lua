UndefineClass('JAZZ_Legion_FrontT4_MercenarySniper')
DefineClass.JAZZ_Legion_FrontT4_MercenarySniper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т4 Mercenary Sniper Снайпер-наемник | С имбовыми хайтир снайперками даже в начале игры и статами на уровне снайперов из АИМ",
	object_class = "UnitData",
	Health = 85,
	Agility = 100,
	Dexterity = 95,
	Strength = 75,
	Wisdom = 70,
	Will = 80,
	Leadership = 30,
	Marksmanship = 100,
	Mechanical = 100,
	Explosives = 30,
	Medical = 80,
	Portrait = "UI/EnemiesPortraits/LegionSniper",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(890000000001129, --[[ModItemUnitDataCompositeDef JAZZ_Legion_FrontT4_MercenarySniper Name]] "Наемник снайпер"),
	Randomization = true,
	elite = true,
	eliteCategory = "Mercenary",
	Affiliation = "Legion",
	StartingLevel = 15,
	neutral_retaliate = true,
	AIKeywords = {
		"Sniper",
		"Control",
		"Marksman",
	},
	archetype = "Legion_Frontliner",
	role = "Marksman",
	AlwaysUseOpeningAttack = true,
	OpeningAttackType = "PinDown",
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
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"LightningReactionNPC",
		"Instagib",
		"Killzone",
		"Spiritual",
		"Hobbler",
		"DeathFromAbove",
		"Hotblood",
		"SteadyBreathing",
		"Deadeye",
		"TrickShot",
		"Hardened",
		"StressManagement",
		"HawksEye",
		"SidneyPerk",
		"Spiritual",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Marksman03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionSniper_Stronger_Elite_alt",
			'Weight', 2,
		}),
	},
	Equipment = {
		"MercenarySniper_Inventory",
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

