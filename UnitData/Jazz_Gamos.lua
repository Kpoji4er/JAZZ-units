UndefineClass('Jazz_Gamos')
DefineClass.Jazz_Gamos = {
	Haggling = "low",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 68,
	Agility = 68,
	Dexterity = 66,
	Strength = 69,
	Wisdom = 35,
	Will = 33,
	Leadership = 5,
	Marksmanship = 78,
	Mechanical = 19,
	Explosives = 1,
	Medical = 1,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Gamos.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Gamos_Big.png",
	IsMercenary = true,
	Name = T(890000000003302, --[[ModItemUnitDataCompositeDef Jazz_Gamos Name]] "Гамос"),
	Nick = T(890000000003303, --[[ModItemUnitDataCompositeDef Jazz_Gamos Nick]] "Гамос"),
	AllCapsNick = T(890000000003304, --[[ModItemUnitDataCompositeDef Jazz_Gamos AllCapsNick]] "ГАМОС"),
	Bio = T(890000000003305, --[[ModItemUnitDataCompositeDef Jazz_Gamos Bio]] "Гамос - скромный абориген острова Метавира, которого судьба постоянно сводит с наемниками AIM. Сначала он помогал наемникам в качестве проводника на самой Метавире, потом даже немного поработал наемником в операциях Гаса Тарболса против концерна DFK, после чего, неизвестно как, постречался Организации в ходе кризиса в Арулько за рулем угнанного фургончика. Так или иначе, этот миляга снова решил поработать на AIM и посмотреть мир, и мы не смогли ему в этой малости отказать."),
	Nationality = "Metavira",
	Title = T(890000000003306, --[[ModItemUnitDataCompositeDef Jazz_Gamos Title]] "Я много путешествовать"),
	Email = T(890000000003307, --[[ModItemUnitDataCompositeDef Jazz_Gamos Email]] "Gamos@arulco.reb"),
	snype_nick = T(890000000003308, --[[ModItemUnitDataCompositeDef Jazz_Gamos snype_nick]] "Gamos"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003309, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text MercChatRefusal Lines ChatMessage voice:Jazz_Gamos]] "Много люди умирать с вами. Гамос не хотеть так."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003310, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text MercChatRefusal Lines ChatMessage voice:Jazz_Gamos]] "Мало денег. Гамос семью кормить надо."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003311, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text Offline ChatMessage voice:Jazz_Gamos]] "Гамос много путешествовать — сейчас нет тут. Потом."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003312, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text GreetingAndOffer ChatMessage voice:Jazz_Gamos]] "Гамос тут. Куда идти надо?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003313, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text ConversationRestart ChatMessage voice:Jazz_Gamos]] "Связь пропадать. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003314, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text IdleLine ChatMessage voice:Jazz_Gamos]] "Идём? Гамос знать дорогу."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003315, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text PartingWords ChatMessage voice:Jazz_Gamos]] "Хорошо, Гамос идёт. Джунгли не страшны."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003316, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text RehireIntro ChatMessage voice:Jazz_Gamos]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003317, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text RehireOutro ChatMessage voice:Jazz_Gamos]] "Гамос остаётся. Есть ещё тропы показать."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 250,
	SalaryIncrease = 200,
	SalaryLv1 = 100,
	SalaryMaxLv = 1000,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Gamos",
		"Stealthy",
		"Flanker",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Gamos",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Gamos",
	},
	Tier = "Regular",
	Specialization = "Stealth",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Gamos",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
