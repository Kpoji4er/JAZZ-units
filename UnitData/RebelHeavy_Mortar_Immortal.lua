UndefineClass('RebelHeavy_Mortar_Immortal')
DefineClass.RebelHeavy_Mortar_Immortal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Минометчик",
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
	Portrait = "UI/EnemiesPortraits/RebelDemo",
	BigPortrait = "UI/Enemies/LegionRaider",
	Name = T(339004978895, --[[ModItemUnitDataCompositeDef RebelHeavy_Mortar_Immortal Name]] "Миномётчик"),
	Randomization = true,
	elite = true,
	eliteCategory = "Rebels",
	Affiliation = "Rebel",
	StartingLevel = 8,
	immortal = true,
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
			'Preset', "Demolitions_Rebels_02",
		}),
	},
	Equipment = {
		"RebelHeavy_Mortar",
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

