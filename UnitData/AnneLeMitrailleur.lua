UndefineClass('AnneLeMitrailleur')
DefineClass.AnneLeMitrailleur = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Анка Пулеметчица - Квестовое",
	object_class = "UnitData",
	Health = 62,
	Agility = 47,
	Dexterity = 39,
	Strength = 59,
	Wisdom = 30,
	Leadership = 20,
	Marksmanship = 40,
	Mechanical = 0,
	Explosives = 0,
	Medical = 0,
	Portrait = "UI/EnemiesPortraits/RebelStormer",
	Name = T(313818019736, --[[ModItemUnitDataCompositeDef AnneLeMitrailleur Name]] "Anne la Mitrailleuse"),
	Randomization = true,
	Affiliation = "Rebel",
	StartingLevel = 2,
	neutral_retaliate = true,
	archetype = "HeavyGunner",
	role = "Heavy",
	MaxAttacks = 2,
	PickCustomArchetype = function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "Firearm"
		
		if enemy and dist < 10*const.SlabSizeX then
			--archetype = "Brute"
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
		"AutoWeapons",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "RebelFemaleSniper",
		}),
	},
	Equipment = {
		"AnneLeMitrailleur",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "MaquisFemale_1",
		}),
	},
	pollyvoice = "Kendra",
	gender = "Female",
	VoiceResponseId = "AnneLeMitrailleur",
	FallbackMissingVR = "VillagerFemale",
}

