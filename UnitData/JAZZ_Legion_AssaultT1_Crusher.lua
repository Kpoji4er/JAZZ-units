UndefineClass('JAZZ_Legion_AssaultT1_Crusher')
DefineClass.JAZZ_Legion_AssaultT1_Crusher = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т1 Громила Crusher | Танк - Дробовик + Пистолет",
	object_class = "UnitData",
	Health = 75,
	Agility = 65,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 5,
	Will = 45,
	Leadership = 0,
	Mechanical = 0,
	Explosives = 10,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionStormer",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(188332474737, --[[ModItemUnitDataCompositeDef JAZZ_Legion_AssaultT1_Crusher Name]] "Громила"),
	Randomization = true,
	elite = true,
	eliteCategory = "Legion",
	Affiliation = "Legion",
	StartingLevel = 4,
	neutral_retaliate = true,
	AIKeywords = {
		"Flank",
		"Explosives",
		"Control",
	},
	archetype = "Brute",
	role = "Stormer",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Revolver" then
			archetype = "Brute"
			weapon_class = "Revolver"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if enemy and dist < 8*const.SlabSizeX and weapon_class ~= "Pistol" then
			archetype = "Brute"
			weapon_class = "Pistol"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Shotgun")
		self:TryEquip(items, "Handheld B", "Pistol")
	end,
	MaxHitPoints = 100,
	StartingPerks = {
		"BeefedUp",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Stormer03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionManiac_alt_2",
			'Weight', 2,
		}),
	},
	Equipment = {
		"LegionBerserker",
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

