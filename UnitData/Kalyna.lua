UndefineClass('Kalyna')
DefineClass.Kalyna = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 62,
	Agility = 77,
	Dexterity = 73,
	Strength = 42,
	Wisdom = 48,
	Will = 76,
	Leadership = 6,
	Marksmanship = 80,
	Mechanical = 67,
	Explosives = 10,
	Medical = 5,
	Portrait = "UI/MercsPortraits/Kalyna",
	BigPortrait = "UI/Mercs/Kalyna",
	IsMercenary = true,
	Name = T(509273629491, --[[ModItemUnitDataCompositeDef Kalyna Name]] "Калина Соколова"),
	Nick = T(967981889962, --[[ModItemUnitDataCompositeDef Kalyna Nick]] "Калина"),
	AllCapsNick = T(776190610664, --[[ModItemUnitDataCompositeDef Kalyna AllCapsNick]] "КАЛИНА"),
	Bio = T(429856793976, --[[ModItemUnitDataCompositeDef Kalyna Bio]] "Дочь украинских шахтёров, Калина с детства училась у своей бабушки, как стрелять дичь и чинить машины, обогревающие и снабжающие электричеством их небольшой посёлок. Чтобы отвлечь внучку от нищеты, в которой жила её семья, женщина забивала Калине голову народными сказками. Едва повзрослев, девушка покинула родной посёлок в поисках лучшей жизни. Коллектив A.I.M. рад приветствовать в своих рядах эту способную ученицу, талантливого механика и отличного стрелка."),
	Nationality = "Ukraine",
	Title = T(586433848631, --[[ModItemUnitDataCompositeDef Kalyna Title]] "Золушка с пушкой"),
	Email = T(380814063809, --[[ModItemUnitDataCompositeDef Kalyna Email]] "smelaya_princessa@aim.com"),
	snype_nick = T(910968647763, --[[ModItemUnitDataCompositeDef Kalyna snype_nick]] "smelaya_princessa"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(961507236130, --[[ModItemUnitDataCompositeDef Kalyna Text MercChatHaggle Lines ChatMessage voice:Kalyna]] "Нужно купить моей babusya новую плиту. Я же отправляюсь в приключение, да? Кто тогда будет ей старую чинить? Пожалуйста, дай денег на печку."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(483394569007, --[[ModItemUnitDataCompositeDef Kalyna Text MercChatHaggle Lines ChatMessage voice:Kalyna]] "А в приключении можно найти сокровище? Я хочу найти сокровище. Привезу его домой."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(859680042747, --[[ModItemUnitDataCompositeDef Kalyna Text Offline ChatMessage voice:Kalyna]] "Жила-была девочка Калина. Она была хорошей девочкой и убивала всех злых. А сейчас она отправилась в приключение. Свяжитесь с говорящим компьютером."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(810277831825, --[[ModItemUnitDataCompositeDef Kalyna Text GreetingAndOffer ChatMessage voice:Kalyna]] "Привет, говорящий компьютер. Я - Калина. Ты хочешь предложить мне работу?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(721028393051, --[[ModItemUnitDataCompositeDef Kalyna Text ConversationRestart ChatMessage voice:Kalyna]] "Я тебя помню. Ты - говорящий компьютер. Хочешь ещё поговорить?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(945554625500, --[[ModItemUnitDataCompositeDef Kalyna Text IdleLine ChatMessage voice:Kalyna]] "Ой-ой, говорящий компьютер больше не говорит. Он сломался?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(521306661797, --[[ModItemUnitDataCompositeDef Kalyna Text PartingWords ChatMessage voice:Kalyna]] "Пока, говорящий компьютер. Спасибо, что посылаешь меня в приключение."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(914552457387, --[[ModItemUnitDataCompositeDef Kalyna Text RehireIntro ChatMessage voice:Kalyna]] "Я вспомнила, что следующее полнолуние уже наступило. А значит, мой контракт скоро закончится. Обновим его?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(303431814510, --[[ModItemUnitDataCompositeDef Kalyna Text RehireOutro ChatMessage voice:Kalyna]] "Ура! Снова приключения!"),
		}),
	},
	MedicalDeposit = "none",
	DurationDiscount = "none",
	Haggling = "low",
	StartingSalary = 600,
	SalaryIncrease = 260,
	SalaryLv1 = 650,
	SalaryMaxLv = 4000,
	RepositionArchetype = "Sniper",
	MaxHitPoints = 45,
	Likes = {
		"Omryn",
	},
	LearnToLike = {
		"Igor",
	},
	LearnToDislike = {
		"Flay",
	},
	StartingPerks = {
		"NightOps",
		"Optimist",
		"KalynaPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Kalyna",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Kalyna_Hot",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Kalyna_Hot",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Kalyna_Hot",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Kalyna",
	},
	Specialization = "Marksmen",
	pollyvoice = "Kimberly",
	gender = "Female",
}

