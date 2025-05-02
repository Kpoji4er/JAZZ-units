UndefineClass('Spike')
DefineClass.Spike = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 82,
	Agility = 88,
	Dexterity = 91,
	Strength = 86,
	Wisdom = 85,
	Will = 100,
	Leadership = 85,
	Marksmanship = 92,
	Mechanical = 62,
	Explosives = 45,
	Medical = 11,
	Portrait = "UI/MercsPortraits/Spike",
	BigPortrait = "UI/Mercs/Spike",
	IsMercenary = true,
	Name = T(395026778305, --[[ModItemUnitDataCompositeDef Spike Name]] "Майор Спайк Скэллион"),
	Nick = T(689077463286, --[[ModItemUnitDataCompositeDef Spike Nick]] "Спайк"),
	AllCapsNick = T(379507685500, --[[ModItemUnitDataCompositeDef Spike AllCapsNick]] "СПАЙК"),
	Affiliation = "Secret",
	Bio = T(650744630014, --[[ModItemUnitDataCompositeDef Spike Bio]] "Теперь все знают, что Скэллион и был тем самым Майором, который объявил войну представляемой Сантьяго корпорации «Адонис», когда узнал, чего именно они добиваются в Гран-Шьене. Правда, изначально они его и наняли - но как именно он оказался на службе у «Адониса» и почему прервал свой долгосрочный контракт с властями Северной Кореи, неизвестно."),
	Nationality = "USA",
	SalaryLv1 = 0,
	SalaryMaxLv = 0,
	LegacyNotes = 'JA:\n\n"A seasoned veteran of international conflict, Major Spike Scallion was deservingly decorated for the unflinching courage he exhibited while evacuating the villagers of Kampoa under extremely heavy fire. This major commands respect and a sizeable fee." \n\nJA2 Alumni: \n\n"The departure of Spike Scallion from A.I.M. was a major loss to the organization. His demeanour and unwavering command of any situation always served as a comfort for those who found themselves neck deep in it alongside him. Major Scallion was offered a lucrative long-term contract serving as a military consultant for the North Koreans and no amount of negotiation could convince him to stay."',
	StartingLevel = 8,
	MaxHitPoints = 77,
	Likes = {
		"Len",
	},
	StartingPerks = {
		"AutoWeapons",
		"BulletHell",
		"Hobbler",
		"LeadFromTheFront",
		"OpportunisticKiller",
		"Counterfire",
		"Killzone",
		"SwiftStrike",
		"LightningReaction",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "TheMajor",
		}),
	},
	Equipment = {
		"Spike",
	},
	Tier = "Legendary",
	Specialization = "Leader",
	gender = "Male",
}

