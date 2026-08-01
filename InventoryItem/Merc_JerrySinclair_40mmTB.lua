UndefineClass('Merc_JerrySinclair_40mmTB')
DefineClass.Merc_JerrySinclair_40mmTB = {
	__parents = { "Ordnance" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "Ordnance",
	Icon = "Mod/e6L4ECj/Images/WorkshopMercs/Jerry_40mm.png",
	DisplayName = T(993313513257, --[[ModItemInventoryItemCompositeDef Merc_JerrySinclair_40mmTB DisplayName]] "40-mm-TB"),
	DisplayNamePlural = T(619592102061, --[[ModItemInventoryItemCompositeDef Merc_JerrySinclair_40mmTB DisplayNamePlural]] "40-mm-TB"),
	Description = T(561559420489, --[[ModItemInventoryItemCompositeDef Merc_JerrySinclair_40mmTB Description]] "Jerry's handcrafted 40-mm-thermobaric ammo for Grenade Launchers. Provide increased area of effect and penetration power compared to regular 40mm-HE grenades."),
	AdditionalHint = T(897423146210, --[[ModItemInventoryItemCompositeDef Merc_JerrySinclair_40mmTB AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Burning</color> in the epicenter\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Inflicts <color EmStyle>Suppressed</color> in the surrounding area"),
	Cost = 1500,
	CenterUnitDamageMod = 140,
	CenterObjDamageMod = 500,
	CenterAppliedEffects = {
		"Burning",
	},
	AreaOfEffect = 4,
	AreaObjDamageMod = 500,
	AreaAppliedEffects = {
		"Suppressed",
	},
	DeathType = "BlowUp",
	Caliber = "40mmGrenade",
	BaseDamage = 46,
}
