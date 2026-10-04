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
	Title = T(586433848631, --[[ModItemUnitDataCompositeDef Kalyna Title]] "A Cinderella Story"),
	Email = T(380814063809, --[[ModItemUnitDataCompositeDef Kalyna Email]] "hero_princess@aim.com"),
	snype_nick = T(910968647763, --[[ModItemUnitDataCompositeDef Kalyna snype_nick]] "smelaya_princessa"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(961507236130, --[[ModItemUnitDataCompositeDef Kalyna Text MercChatHaggle Lines ChatMessage voice:Kalyna]] "My babusya needs a new stove. I cannot be always fixing this one if I am to go on an adventure with you! Give more money for new stove, please."),
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
					'Text', T(483394569007, --[[ModItemUnitDataCompositeDef Kalyna Text MercChatHaggle Lines ChatMessage voice:Kalyna]] "I hear there should be treasure on the adventure. I want some treasure to bring back home."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(859680042747, --[[ModItemUnitDataCompositeDef Kalyna Text Offline ChatMessage voice:Kalyna]] "Once upon a time, there lived a young girl called Kalyna. She was good and killed all evil-doers. Right now she is on an adventure. Call again on talking computer."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(810277831825, --[[ModItemUnitDataCompositeDef Kalyna Text GreetingAndOffer ChatMessage voice:Kalyna]] "Hello, talking computer. I am Kalyna, nice to meet you. Are you offering a job?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(721028393051, --[[ModItemUnitDataCompositeDef Kalyna Text ConversationRestart ChatMessage voice:Kalyna]] "I remember you. You are talking computer. Want to talk some more?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(945554625500, --[[ModItemUnitDataCompositeDef Kalyna Text IdleLine ChatMessage voice:Kalyna]] "Uh-oh, talking computer is no longer talking. Must be broken."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(521306661797, --[[ModItemUnitDataCompositeDef Kalyna Text PartingWords ChatMessage voice:Kalyna]] "Bye, talking computer. Nice of you to send me on an adventure."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(914552457387, --[[ModItemUnitDataCompositeDef Kalyna Text RehireIntro ChatMessage voice:Kalyna]] "I just remember when the last full moon was. This means my contract is at an end. Renew?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(303431814510, --[[ModItemUnitDataCompositeDef Kalyna Text RehireOutro ChatMessage voice:Kalyna]] "Uraaaa! More adventure!"),
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

