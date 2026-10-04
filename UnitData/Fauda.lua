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
	Name = T(433525179007, --[[ModItemUnitDataCompositeDef Fauda Name]] 'Кеви Аджит «Фауда»'),
	Nick = T(786968855598, --[[ModItemUnitDataCompositeDef Fauda Nick]] "Фауда"),
	AllCapsNick = T(560956094378, --[[ModItemUnitDataCompositeDef Fauda AllCapsNick]] "ФАУДА"),
	Bio = T(847511420495, --[[ModItemUnitDataCompositeDef Fauda Bio]] 'Когда Кеви и её брат Зоран сражались в рядах бойцов Пешмерги, их имена были на устах каждого курда. Однако когда Зоран погиб, а сама она еле выжила в засаде, устроенной на них иракскими националистами, Кеви принудительно комиссовали. Не пожелав сдаваться, она вступила в ряды A.I.M. с целью заработать достаточно денег, чтобы однажды снарядить собственную армию, вернуться на родину и отомстить убийцам брата. Товарищи прозвали Кеви «Фауда», так как в бою её вечно бросало в две крайности: безрассудную напористость либо чрезмерную осторожность. При всём том, в одном она постоянна: в своей любви к большим пушкам и гранатам. И те, и другие в её руках неизменно смертоносны.'),
	Nationality = "Iraq",
	Title = T(301899503224, --[[ModItemUnitDataCompositeDef Fauda Title]] "Peshmerga Deadly Dervish"),
	Email = T(990035155352, --[[ModItemUnitDataCompositeDef Fauda Email]] "Fauda@aim.com"),
	snype_nick = T(910030716918, --[[ModItemUnitDataCompositeDef Fauda snype_nick]] "FaudaAgit"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(608786325446, --[[ModItemUnitDataCompositeDef Fauda Text MercChatRefusal Lines ChatMessage voice:Fauda]] "How can you hire anyone if you are a beggar? Come back when you can afford to hire good soldiers, then we will talk."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(431816852528, --[[ModItemUnitDataCompositeDef Fauda Text MercChatRefusal Lines ChatMessage voice:Fauda]] "How can you keep me if you have no money? I told you to take all spoils from battle but you do not listen. If you cannot keep a big war chest, I will not continue to work for you."),
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
					'Text', T(905829914489, --[[ModItemUnitDataCompositeDef Fauda Text MercChatHaggle Lines ChatMessage voice:Fauda]] "Working for you is dull and pointless. I came to fight and kill the agents of Shaitan. Instead, I sit in camp doing empty work. I spit on this. If I am to be doing nothing you will pay me more!"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(510251097592, --[[ModItemUnitDataCompositeDef Fauda Text Offline ChatMessage voice:Fauda]] "This machine is made by Shaitan! Where is button? ...Oh. Ahem. This is Fauda Agit. I am not in machine right now. I am on a job. Contact me again when I am not on a job. Machine will know."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(803966294859, --[[ModItemUnitDataCompositeDef Fauda Text GreetingAndOffer ChatMessage voice:Fauda]] "Greetings. I am Fauda. Do you have a job for me?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(109033566183, --[[ModItemUnitDataCompositeDef Fauda Text ConversationRestart ChatMessage voice:Fauda]] "Shaitan moves through machine to interrupt us, but he is weak and we are strong. Now we can continue our discussion."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(170860465782, --[[ModItemUnitDataCompositeDef Fauda Text IdleLine ChatMessage voice:Fauda]] "Did Shaitan take your tongue? Speak!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(929498218341, --[[ModItemUnitDataCompositeDef Fauda Text PartingWords ChatMessage voice:Fauda]] "Good. I will kill your enemies in the name of my brother so I can face him with clear eyes when I die. "),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(647351259105, --[[ModItemUnitDataCompositeDef Fauda Text RehireIntro ChatMessage voice:Fauda]] "I want to continue my contract. Do you agree?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(913491882738, --[[ModItemUnitDataCompositeDef Fauda Text RehireOutro ChatMessage voice:Fauda]] "Good. Enough of this now. Let us return to our work."),
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

