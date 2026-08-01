UndefineClass('Merc_CarolThompson_Item')
DefineClass.Merc_CarolThompson_Item = {
	__parents = { "LockpickBase" },
	__generated_by_class = "ModItemInventoryItemCompositeDef",


	object_class = "LockpickBase",
	RepairCost = 120,
	Icon = "Mod/e6L4ECj/Images/WorkshopMercs/Carol_Toolbox.png",
	DisplayName = T(384137813577, --[[ModItemInventoryItemCompositeDef Merc_CarolThompson_Item DisplayName]] "Carol's Toolbox"),
	DisplayNamePlural = T(425648125814, --[[ModItemInventoryItemCompositeDef Merc_CarolThompson_Item DisplayNamePlural]] "Carol's Toolbox"),
	AdditionalHint = T(132897973896, --[[ModItemInventoryItemCompositeDef Merc_CarolThompson_Item AdditionalHint]] "<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Unlocks doors and containers (based on Mechanical)\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Bonus to skill checks for picking locks\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Loses Condition after each use\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Can be repaired\n<image UI/Conversation/T_Dialogue_IconBackgroundCircle.tga 400 130 128 120> Used automatically from the Inventory"),
	UnitStat = "Mechanical",
	locked = true,
	skillCheckPenalty = -10,
}
