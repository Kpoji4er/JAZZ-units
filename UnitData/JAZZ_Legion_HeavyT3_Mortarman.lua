UndefineClass('JAZZ_Legion_HeavyT3_Mortarman')
DefineClass.JAZZ_Legion_HeavyT3_Mortarman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Т3 Минометчик Mortarman",
	object_class = "UnitData",
	Health = 80,
	Agility = 80,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 15,
	Will = 65,
	Leadership = 0,
	Marksmanship = 75,
	Mechanical = 50,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/LegionArtillery",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(339004978895, --[[ModItemUnitDataCompositeDef JAZZ_Legion_HeavyT3_Mortarman Name]] "Миномётчик"),
	Randomization = true,
	Affiliation = "Legion",
	StartingLevel = 8,
	neutral_retaliate = true,
	AIKeywords = {
		"Explosives",
		"Smoke",
		"RunAndGun",
		"Nova",
		"Explosives",
	},
	archetype = "Artillery",
	role = "Artillery",
	CanManEmplacements = false,
	MaxAttacks = 10,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Mortar"
		
		if GameState.Underground or enemy and dist < 15*const.SlabSizeX then
			archetype = "Skirmisher"
			weapon_class = "Revolver"
			PlayVoiceResponse(self, "AIArchetypeScared")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		return archetype
	end,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "HeavyWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 50,
	StartingPerks = {
		"LightningReactionNPC",
		"HeavyWeaponsTraining",
		"Hardened",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Legion_Artillery03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMortalman_Stronger_Elite",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMortalman_Stronger_Elite_alt",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMortalman_Stronger_alt_2",
			'Weight', 2,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "LegionMortalman_Stronger_alt",
			'Weight', 2,
		}),
	},
	Equipment = {
		"Mortarman_Inventory",
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

