UndefineClass('Reaper')
DefineClass.Reaper = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 80,
	Agility = 92,
	Dexterity = 92,
	Strength = 81,
	Wisdom = 81,
	Will = 73,
	Leadership = 34,
	Marksmanship = 97,
	Mechanical = 41,
	Explosives = 47,
	Medical = 2,
	Portrait = "UI/MercsPortraits/Reaper",
	BigPortrait = "UI/Mercs/Reaper",
	IsMercenary = true,
	Name = T(418504386182, --[[ModItemUnitDataCompositeDef Reaper Name]] "Карл Шеппардс «Жнец»"),
	Nick = T(728059446658, --[[ModItemUnitDataCompositeDef Reaper Nick]] "Жнец"),
	AllCapsNick = T(554704973917, --[[ModItemUnitDataCompositeDef Reaper AllCapsNick]] "ЖНЕЦ"),
	Bio = T(344912752793, --[[ModItemUnitDataCompositeDef Reaper Bio]] "Как человек, свыкшийся с мыслью, что смерть - неотъемлемая часть жизни (или, по крайней мере, смерть врага - часть твоей жизни), Жнец - идеальный киллер. Навыки бесшумного перемещения и вскрытия замков помогают ему незаметно подкрадываться к цели, а леденящая кровь невозмутимость - с легкостью ее устранять. Шеппардс редко промахивается, но даже если и промахнулся, никогда не теряет голову и вторым выстрелом исправляет ситуацию. В настоящий момент Карл как раз закончил выслеживать парочку особо неуловимых международных террористов и готов к новым заданиям."),
	Nationality = "USA",
	Title = T(272376216454, --[[ModItemUnitDataCompositeDef Reaper Title]] "Предвестник смерти"),
	Email = T(426580911623, --[[ModItemUnitDataCompositeDef Reaper Email]] "smert@aim.com"),
	snype_nick = T(458369100789, --[[ModItemUnitDataCompositeDef Reaper snype_nick]] "smert'"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(151982790988, --[[ModItemUnitDataCompositeDef Reaper Text MercChatRefusal Lines ChatMessage voice:Reaper]] "У меня много потенциальных клиентов. Возможно, даже слишком много. Сперва мне нужно разобраться с предшествующими обязательствами. Но это не означает, что мы ещё не встретимся."),
				}),
			},
			'Conditions', {},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(261288234184, --[[ModItemUnitDataCompositeDef Reaper Text MercChatRefusal Lines ChatMessage voice:Reaper]] "Мне нужно посетить Тибет, очиститься после предыдущего задания. Напиши мне через пару дней."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(855430404520, --[[ModItemUnitDataCompositeDef Reaper Text MercChatRefusal Lines ChatMessage voice:Reaper]] "Сейчас меня занимает иной план бытия. Я должен выйти в астрал и очиститься. Возможно, мы ещё встретимся."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
			'Type', "rehire",
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(661300087224, --[[ModItemUnitDataCompositeDef Reaper Text MercChatMitigation Lines ChatMessage voice:Reaper]] "Я совсем не уверен в правильности своего решения. Но Тень Симмонс даёт положительные отзывы, так что я рискну. Моя судьба в твоих руках."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Shadow",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(417125635143, --[[ModItemUnitDataCompositeDef Reaper Text MercChatMitigation Lines ChatMessage voice:Reaper]] "Обычно я соглашаюсь на более заманчивые предложения. Но меня заинтриговал Кит Гансон. Я вижу здесь потенциал для развития. Поэтому я принимаю твои условия."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Blood",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(951172020299, --[[ModItemUnitDataCompositeDef Reaper Text Offline ChatMessage voice:Reaper]] "Это Жнец. Сейчас я на задании. Если вам нужны мои эксклюзивные услуги, свяжитесь со мной, когда я снова буду доступен."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(666747738581, --[[ModItemUnitDataCompositeDef Reaper Text GreetingAndOffer ChatMessage voice:Reaper]] "Я - Жнец. Я оказываю эксклюзивные услуги. Расскажи, чем я могу быть полезен тебе."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(906243182757, --[[ModItemUnitDataCompositeDef Reaper Text ConversationRestart ChatMessage voice:Reaper]] "Даю тебе ещё один шанс. Ты заинтриговал меня - иначе бы я уже давно положил трубку."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(558310587627, --[[ModItemUnitDataCompositeDef Reaper Text IdleLine ChatMessage voice:Reaper]] "Да. Всегда полезно подумать, прежде, чем говорить. Я предамся созерцанию смерти, пока ты думаешь."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(432330723394, --[[ModItemUnitDataCompositeDef Reaper Text PartingWords ChatMessage voice:Reaper]] "Отлично. Значит, решено. Мы заключили договор, подробности которого должны остаться только между нами."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(510950100711, --[[ModItemUnitDataCompositeDef Reaper Text RehireIntro ChatMessage voice:Reaper]] "Договор со мной вскоре подходит к концу. Я должен знать, желаешь ли ты продлить его действие. Мне остаться или замести все следы?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(610952982464, --[[ModItemUnitDataCompositeDef Reaper Text RehireOutro ChatMessage voice:Reaper]] "Хорошо. Я продолжу работать на тебя. На прежних условиях: никаких бумаг."),
		}),
	},
	StartingSalary = 3600,
	SalaryIncrease = 200,
	SalaryMaxLv = 6400,
	LegacyNotes = '"Otherwise known as The Assassin, if you come face-to-face with Carl Sheppards, chances are you\'re on your last breath. The Reaper takes pride in his patience. He strides silently and uses his stealth skills to gain easy access to his victims. Carl also gets a kick out of looking them in the eye just before they die. One of his former CO\'s described him as "potentially too dangerous even for A.I.M. service." - Jagged Alliance 2\n\nAdditional info:\n\nA loner, though not anti-social.\nSees death and killing as something spiritual.\nCarries himself as if living on another plane of existence, and can be very eloquent and poetic about how he perceives things.\nHe\'s almost spooky, has an unsettling calmness.',
	StartingLevel = 6,
	MaxHitPoints = 81,
	LearnToLike = {
		"Fauda",
	},
	StartingPerks = {
		"Stealthy",
		"Loner",
		"Spiritual",
		"TheGrim",
		"Flanker",
		"DeathFromAbove",
		"SingularPurpose",
		"Hobbler",
		"LastWarning",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_DustStorm",
			'Weight', 50,
			'GameStates', set({
	DustStorm = true,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_DustStorm",
			'Weight', 50,
			'GameStates', set({
	FireStorm = true,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_DustStorm",
			'Weight', 50,
			'GameStates', set({
	Heat = true,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_Jungle",
			'Weight', 50,
			'GameStates', set({
	Jungle = true,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_Jungle",
			'Weight', 50,
			'GameStates', set({
	Marshlands = true,
	Night = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Reaper_Snake",
			'Weight', 50,
			'GameStates', set( "Night" ),
		}),
	},
	Equipment = {
		"Reaper",
	},
	Tier = "Legendary",
	Specialization = "Stealth",
	gender = "Male",
	VoiceResponseId = "Reaper",
}

