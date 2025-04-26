UndefineClass('Sidney')
DefineClass.Sidney = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 75,
	Agility = 70,
	Dexterity = 90,
	Strength = 74,
	Wisdom = 79,
	Will = 72,
	Leadership = 39,
	Marksmanship = 92,
	Mechanical = 0,
	Explosives = 15,
	Medical = 44,
	Portrait = "UI/MercsPortraits/SidneyN",
	BigPortrait = "UI/Mercs/SidneyN",
	IsMercenary = true,
	Name = T(841570945724, --[[ModItemUnitDataCompositeDef Sidney Name]] "Сидней Нетельсон"),
	Nick = T(753322319118, --[[ModItemUnitDataCompositeDef Sidney Nick]] "Сидней"),
	AllCapsNick = T(897461283861, --[[ModItemUnitDataCompositeDef Sidney AllCapsNick]] "СИДНЕЙ"),
	Bio = T(199288355089, --[[ModItemUnitDataCompositeDef Sidney Bio]] "Невозмутимого Сиднея Нетельсона чаще всего можно найти в ближайшем бридж-клубе играющим в карты и непринуждённо болтающим со сливками местного общества. Разумеется, всё это справедливо лишь для тех моментов, когда он не на задании - в этом случае он обыкновенно хладнокровно стоит под градом пуль, методично прореживая ряды противников метательными ножами, гранатами или любым подвернувшимся под руку огнестрельным оружием. После, за чашкой чая, он с удовольствием расскажет вам, как именно он всё это делал - разумеется, с неизменной английской импозантностью и сдержанностью."),
	Nationality = "England",
	Title = T(887910706417, --[[ModItemUnitDataCompositeDef Sidney Title]] "Скромный подданный Её Величества"),
	Email = T(148356789359, --[[ModItemUnitDataCompositeDef Sidney Email]] "nettleson@aim.com"),
	snype_nick = T(509119494377, --[[ModItemUnitDataCompositeDef Sidney snype_nick]] "nettleson"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(647545826862, --[[ModItemUnitDataCompositeDef Sidney Text MercChatRefusal Lines ChatMessage voice:Sidney]] "Ах, как неудобно вышло: я только что вспомнил, что договорился с одним парнем из Лидса. Мы собирались обсудить сильные и слабые стороны наших футбольных команд. Боюсь, я уже занят. Всего хорошего!"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(687315673351, --[[ModItemUnitDataCompositeDef Sidney Text MercChatRefusal Lines ChatMessage voice:Sidney]] "Тысяча извинений, но я работаю только по долгосрочным контрактам. Не люблю, знаете ли, по тридцать раз летать туда-сюда. Уверен, вы меня поймёте."),
				}),
			},
			'Type', "duration",
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(528608115027, --[[ModItemUnitDataCompositeDef Sidney Text MercChatHaggle Lines ChatMessage voice:Sidney]] "Простите. Не хочу показаться невежливым, но я очень надеялся застать начало сезона бабочек. Пожалуй, я мог бы отложить свои планы до следующего года, но тогда не затруднит ли вас как-либо компенсировать мне эту задержку?"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(523907038825, --[[ModItemUnitDataCompositeDef Sidney Text MercChatMitigation Lines ChatMessage voice:Sidney]] "Я слышал, что вы наняли Стрелку. Чудно! Так держать! Обожаю работать с ней в паре. Замечательный профессионал! Считайте, что я уже в команде."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Scope",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(354256993142, --[[ModItemUnitDataCompositeDef Sidney Text MercChatBranch Lines ChatMessage voice:Sidney]] "Великолепно! С радостью поработаю вместе с вами. И, кстати, могу ли я отрекомендовать вам Стрелку? Мне кажется, она сейчас не занята. Уверен, вы не пожалеете."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Scope",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(500449552384, --[[ModItemUnitDataCompositeDef Sidney Text Offline ChatMessage voice:Sidney]] "Сидней Нетельсон. Боюсь, в данный момент я не могу подойти к компьютеру. Если вы хотите сделать мне деловое предложение, свяжитесь со мной, когда я буду доступен. Буду вам премного благодарен."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(917305404813, --[[ModItemUnitDataCompositeDef Sidney Text GreetingAndOffer ChatMessage voice:Sidney]] "Сидней Нетельсон к вашим услугам."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(341175474329, --[[ModItemUnitDataCompositeDef Sidney Text ConversationRestart ChatMessage voice:Sidney]] "Здравствуйте! Рад снова слышать вас."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(398847119897, --[[ModItemUnitDataCompositeDef Sidney Text IdleLine ChatMessage voice:Sidney]] "Вы здесь? Мигающая лампочка намекает, что да, но эти чёртовы компьютеры, бывает, лгут."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(591742548820, --[[ModItemUnitDataCompositeDef Sidney Text PartingWords ChatMessage voice:Sidney]] "По рукам. Я отправляюсь сейчас же!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(158779961719, --[[ModItemUnitDataCompositeDef Sidney Text RehireIntro ChatMessage voice:Sidney]] "Извините за беспокойство, но я подумал, что должен известить вас о том, что наше соглашение вскоре теряет силу."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(962444405635, --[[ModItemUnitDataCompositeDef Sidney Text RehireOutro ChatMessage voice:Sidney]] "Превосходно! Я не люблю забивать себе голову мелкими формальностями, мне интереснее заниматься моими прямыми обязанностями."),
		}),
	},
	StartingSalary = 3600,
	SalaryIncrease = 220,
	SalaryLv1 = 370,
	SalaryMaxLv = 4200,
	LegacyNotes = 'JA1:\n"A quiet and reflective member in excellent standing, Sidney Nettleson entertains a certain fondness for putting things to sleep permanently. Sometimes referred to as the "Sandman," his low-key approach doesn\'t alter the fact that he is a harsh professional." - Jagged Alliance\n\nJA2:\n\n"Whether it\'s sharing a spot of tea with British blue-bloods or putting a .38 slug into an unwanted nuisance, Sidney does it with poise and dignity. Sidney combines the mannerisms of the upper crust with the lighting quickness of a Wild West gunslinger. Years of avid cricket-playing have also given him a much-feared throwing arm." - Jagged Alliance 2',
	StartingLevel = 5,
	MaxHitPoints = 80,
	Likes = {
		"Scope",
	},
	StartingPerks = {
		"Throwing",
		"Negotiator",
		"SidneyPerk",
		"Hotblood",
		"Deadeye",
		"BreachAndClear",
		"Instagib",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Sidney",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Sidney_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Sidney_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Sidney_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Sidney",
	},
	Tier = "Legendary",
	Specialization = "Marksmen",
	gender = "Male",
	VoiceResponseId = "Sidney",
}

