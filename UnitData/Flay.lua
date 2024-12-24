UndefineClass('Flay')
DefineClass.Flay = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 79,
	Agility = 63,
	Dexterity = 78,
	Strength = 80,
	Wisdom = 79,
	Leadership = 12,
	Marksmanship = 84,
	Mechanical = 18,
	Explosives = 0,
	Medical = 50,
	Portrait = "UI/MercsPortraits/Flay",
	BigPortrait = "UI/Mercs/Flay",
	IsMercenary = true,
	Name = T(699164512124, --[[ModItemUnitDataCompositeDef Flay Name]] "Жак Боэн «Живодёр»"),
	Nick = T(966243227542, --[[ModItemUnitDataCompositeDef Flay Nick]] "Живодёр"),
	AllCapsNick = T(443046260792, --[[ModItemUnitDataCompositeDef Flay AllCapsNick]] "ЖИВОДЁР"),
	Affiliation = "Secret",
	HireStatus = "NotMet",
	Bio = T(418902593982, --[[ModItemUnitDataCompositeDef Flay Bio]] "Браконьер со стажем, за свою жизнь Живодёр успел поохотиться на все мыслимые виды животных. Теперь он переключился на новую для него добычу: человека.\nЖак не мастер располагать к себе сослуживцев, однако своё дело он знает в совершенстве и с готовностью согласился присоединиться к вам, видя в этом наилучшее поле для реализации своих садистских наклонностей."),
	Nationality = "GrandChien",
	Title = T(751458905244, --[[ModItemUnitDataCompositeDef Flay Title]] "Охотник на безрогих оленей"),
	MedicalDeposit = "none",
	SalaryLv1 = 0,
	SalaryMaxLv = 0,
	StartingLevel = 2,
	MaxHitPoints = 79,
	StartingPerks = {
		"MeleeTraining",
		"Loner",
		"MakeThemBleed",
		"OptimalPerformance",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Flay",
		}),
	},
	Equipment = {
		"Flay",
	},
	Tier = "Veteran",
	Specialization = "Marksmen",
	gender = "Male",
	VoiceResponseId = "Flay",
}

