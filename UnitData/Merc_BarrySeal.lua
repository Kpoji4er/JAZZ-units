UndefineClass('Merc_BarrySeal')
DefineClass.Merc_BarrySeal = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Бывший контрабандист",
	object_class = "UnitData",
	Health = 75,
	Agility = 65,
	Dexterity = 70,
	Strength = 63,
	Wisdom = 86,
	Will = 61,
	Leadership = 36,
	Marksmanship = 64,
	Mechanical = 64,
	Explosives = 20,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/Images/emixed_0c7fd4a8f7bf11f08c25aeff0e6241ad_1894550443_generation_0 copy2 2.png",
	BigPortrait = "Mod/Dv3mFVN/Images/emixed_0c7fd4a8f7bf11f08c25aeff0e6241ad_1894550443_generation_0 copy 2.png",
	IsMercenary = true,
	Name = T(291907236404, --[[ModItemUnitDataCompositeDef Merc_BarrySeal Name]] "Берриман Сил"),
	Nick = T(817805811528, --[[ModItemUnitDataCompositeDef Merc_BarrySeal Nick]] "Пилот"),
	AllCapsNick = T(567246704413, --[[ModItemUnitDataCompositeDef Merc_BarrySeal AllCapsNick]] "ПИЛОТ"),
	Affiliation = "Thugs",
	HireStatus = "NotMet",
	Bio = T(316915090294, --[[ModItemUnitDataCompositeDef Merc_BarrySeal Bio]] "Бывший военный, который волей судьбы стал контрабандистом, участвовал в уничтожении режима Кастро на кубе, не подпускайте его близко к Фиделю. На данный момент Барри контрабандист, который вёз нас для выполнения контракта, всех его друзей убили при высадке, да и он сам чуть не погиб, теперь он присоединился к A.I.M."),
	Nationality = "USA",
	Title = T(967900698879, --[[ModItemUnitDataCompositeDef Merc_BarrySeal Title]] 'Барриман "Пилот" Сил'),
	Email = T(844599512838, --[[ModItemUnitDataCompositeDef Merc_BarrySeal Email]] "Barry_Smugler@yandex.com"),
	snype_nick = T(638265936693, --[[ModItemUnitDataCompositeDef Merc_BarrySeal snype_nick]] "Пилот"),
	Likes = {
		"Spike",
	},
	LearnToLike = {
		"Fauda",
	},
	Dislikes = {
		"Fidel",
	},
	LearnToDislike = {
		"Grizzly",
	},
	StartingPerks = {
		"NightOps",
		"Negotiator",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "ForeignMerc_01",
		}),
	},
	AdditionalGroups = {},
	gender = "Male",
}

