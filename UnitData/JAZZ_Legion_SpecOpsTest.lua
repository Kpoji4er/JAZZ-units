UndefineClass('JAZZ_Legion_SpecOpsTest')
DefineClass.JAZZ_Legion_SpecOpsTest = {
    __parents = { "UnitData" },
    __generated_by_class = "ModItemUnitDataCompositeDef",

    comment = "JAZZ-APPEAR-001 TEST ONLY: LDW woodland special forces prototype + MP40; not in campaign pools",
    object_class = "UnitData",
    Health = 85,
    Agility = 70,
    Dexterity = 70,
    Strength = 90,
    Wisdom = 50,
    Will = 60,
    Marksmanship = 70,
    MaxHitPoints = 85,
    Portrait = "Mod/Dv3mFVN/EnemyPortraits/Legion/Recruit.png",
    BigPortrait = "UI/Enemies/LegionRaider",
    Name = T(890000000001643, "РќРѕРІРѕР±СЂР°РЅРµС†"),
    Affiliation = "Legion",
    gender = "Male",
    Randomization = false,
    archetype = "Assault",
    role = "Stormer",
    Equipment = {},
    AppearancesList = { PlaceObj('AppearanceWeight', { 'Preset', "JAZZ_Legion_SpecOpsTest" }) },
    CustomEquipGear = function(self, items)
        items[#items + 1] = PlaceInventoryItem("JazzArmor_Uniform")
        self:TryEquip(items, "Torso", "Armor")
        items[#items + 1] = PlaceInventoryItem("JazzArmor_UniformPants")
        self:TryEquip(items, "Legs", "Armor")
        items[#items + 1] = PlaceInventoryItem("JazzArmor_CamoBalaclava")
        self:TryEquip(items, "Head", "Armor")
        items[#items + 1] = PlaceInventoryItem("MP40")
        local ammo = PlaceInventoryItem("JAZZ_AMMO_9x19_FMJ")
        ammo.Amount = 120
        items[#items + 1] = ammo
        self:TryEquip(items, "Handheld A", "Firearm")
        self:TryLoadAmmo("Handheld A", "Firearm", "JAZZ_AMMO_9x19_FMJ")
    end,
}
