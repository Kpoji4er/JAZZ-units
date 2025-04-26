UndefineClass('Fauda')
DefineClass.Fauda = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 78,
	Agility = 79,
	Dexterity = 45,
	Strength = 82,
	Wisdom = 81,
	Will = 97,
	Leadership = 64,
	Marksmanship = 80,
	Mechanical = 61,
	Explosives = 63,
	Medical = 19,
	Portrait = "UI/MercsPortraits/Fauda",
	BigPortrait = "UI/Mercs/Fauda",
	IsMercenary = true,
	Name = T(433525179007, --[[ModItemUnitDataCompositeDef Fauda Name]] "Кеви Аджит «Фауда»"),
	Nick = T(786968855598, --[[ModItemUnitDataCompositeDef Fauda Nick]] "Фауда"),
	AllCapsNick = T(560956094378, --[[ModItemUnitDataCompositeDef Fauda AllCapsNick]] "ФАУДА"),
	Bio = T(847511420495, --[[ModItemUnitDataCompositeDef Fauda Bio]] "Когда Кеви и её брат Зоран сражались в рядах бойцов Пешмерги, их имена были на устах каждого курда. Однако когда Зоран погиб, а сама она еле выжила в засаде, устроенной на них иракскими националистами, Кеви принудительно комиссовали. Не пожелав сдаваться, она вступила в ряды A.I.M. с целью заработать достаточно денег, чтобы однажды снарядить собственную армию, вернуться на родину и отомстить убийцам брата. Товарищи прозвали Кеви «Фауда», так как в бою её вечно бросало в две крайности: безрассудную напористость либо чрезмерную осторожность. При всём том, в одном она постоянна: в своей любви к большим пушкам и гранатам. И те, и другие в её руках неизменно смертоносны."),
	Nationality = "Iraq",
	Title = T(301899503224, --[[ModItemUnitDataCompositeDef Fauda Title]] "Дервиш динамита"),
	Email = T(990035155352, --[[ModItemUnitDataCompositeDef Fauda Email]] "Fauda@aim.com"),
	snype_nick = T(910030716918, --[[ModItemUnitDataCompositeDef Fauda snype_nick]] "FaudaAgit"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(608786325446, --[[ModItemUnitDataCompositeDef Fauda Text MercChatRefusal Lines ChatMessage voice:Fauda]] "Разве нищие могут кого-нибудь нанимать? Возвращайся, когда сможешь позволить себе настоящих солдат, - тогда и поговорим."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(431816852528, --[[ModItemUnitDataCompositeDef Fauda Text MercChatRefusal Lines ChatMessage voice:Fauda]] "Как ты собираешься мне платить, если у тебя нет денег? Говорила же: нужно брать трофеи. Не можешь скопить денег на войну - я на тебя не работаю."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'Type', "rehire",
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(905829914489, --[[ModItemUnitDataCompositeDef Fauda Text MercChatHaggle Lines ChatMessage voice:Fauda]] "На тебя скучно работать. Я пришла, чтобы сражаться и убивать слуг шайтана. А вместо этого я целыми днями сижу в лагере и занимаюсь ерундой. Тьфу на такую работу! Хочешь, чтобы я бездельничала, - плати больше!"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(510251097592, --[[ModItemUnitDataCompositeDef Fauda Text Offline ChatMessage voice:Fauda]] "Шайтан-машина... Где же эта кнопка? А. Кхм. Говорит Фауда Аджит. Я сейчас не у машины. Я на задании. Перезвоните, когда я буду не на задании. Машина скажет."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(803966294859, --[[ModItemUnitDataCompositeDef Fauda Text GreetingAndOffer ChatMessage voice:Fauda]] "Приветствую. Я Фауда. У тебя для меня работа?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(109033566183, --[[ModItemUnitDataCompositeDef Fauda Text ConversationRestart ChatMessage voice:Fauda]] "Шайтан сделал, чтобы машина нас прервала, но он слаб, а мы сильны. Мы можем говорить дальше."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(170860465782, --[[ModItemUnitDataCompositeDef Fauda Text IdleLine ChatMessage voice:Fauda]] "У тебя что, язык отнялся? Говори!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(929498218341, --[[ModItemUnitDataCompositeDef Fauda Text PartingWords ChatMessage voice:Fauda]] "Хорошо. Я убью твоих врагов за своего брата, чтобы без стыда взглянуть ему в глаза, когда умру."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(647351259105, --[[ModItemUnitDataCompositeDef Fauda Text RehireIntro ChatMessage voice:Fauda]] "Я хочу продолжать наш контракт. Ты согласен?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(913491882738, --[[ModItemUnitDataCompositeDef Fauda Text RehireOutro ChatMessage voice:Fauda]] "Хорошо. Хватит об этом. Продолжим заниматься делом."),
		}),
	},
	StartingSalary = 3250,
	SalaryIncrease = 200,
	SalaryLv1 = 500,
	SalaryMaxLv = 4000,
	StartingLevel = 7,
	MaxHitPoints = 80,
	LearnToDislike = {
		"Kalyna",
		"Fox",
	},
	StartingPerks = {
		"HeavyWeaponsTraining",
		"AutoWeapons",
		"KillingWind",
		"HitTheDeck",
		"SteadyBreathing",
		"StressManagement",
		"CancelShotPerk",
		"TakeAim",
		"BreachAndClear",
		"Ironclad",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Fauda",
		}),
	},
	Equipment = {
		"Fauda",
	},
	Tier = "Legendary",
	Specialization = "HeavyWeapons",
	pollyvoice = "Joanna",
	gender = "Female",
	VoiceResponseId = "Fauda",
}

