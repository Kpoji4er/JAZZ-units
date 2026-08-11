UndefineClass('VengefulTemperament')
DefineClass.VengefulTemperament = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "fearAoE",
			'Value', 5,
			'Tag', "<fearAoE>",
		}),
	},
	unit_reactions = {},
	DisplayName = T(780344747381, --[[ModItemCharacterEffectCompositeDef VengefulTemperament DisplayName]] "Тяжелый характер"),
	Description = T(695881945070, --[[ModItemCharacterEffectCompositeDef VengefulTemperament Description]] 'Активная способность «Ураган Норма»: враги в радиусе 5 клеток впадают в панику или бешенство. Зависит от уровня мудрости противника.'),
	Icon = "UI/Icons/Perks/VengefulTemperament",
	Tier = "Personal",
}
