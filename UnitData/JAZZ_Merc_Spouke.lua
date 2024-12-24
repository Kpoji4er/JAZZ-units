UndefineClass('JAZZ_Merc_Spouke')
DefineClass.JAZZ_Merc_Spouke = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 93,
	Agility = 81,
	Dexterity = 80,
	Strength = 94,
	Wisdom = 79,
	Leadership = 20,
	Marksmanship = 80,
	Mechanical = 15,
	Explosives = 93,
	Medical = 27,
	Portrait = "Mod/Dv3mFVN/Images/25_300х300.png",
	BigPortrait = "Mod/Dv3mFVN/Images/25_2000х2000 2.png",
	IsMercenary = true,
	Name = T(332539396098, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Name]] 'Эрни Споук "Споук"'),
	Nick = T(310008076558, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Nick]] "Споук"),
	AllCapsNick = T(770795604613, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke AllCapsNick]] "СПОУК"),
	Bio = T(589735084653, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Bio]] "Эрни родился в одном из портовых городов на востоке США.Как и все темнокожие ребята играл на улице в баскетбол мечтая играть за главную команду Сент-Луиса. Был членом банды своего района, несколько раз задерживался полицией. Повзрослев вступил в армию США.Служил в морской пехоте сапером. Отлично владеет навыками минного дела. При выполнении одного из заданий в Ираке получил ранение. Вышел в отставку. Через какое-то время примкнул к AIM."),
	Nationality = "USA",
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(876005699189, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text MercChatMitigation Lines ChatMessage voice:JAZZ_Merc_Spouke]] "Айс в деле?! Ништяк, я весь твой командир."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ice",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(384723366977, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text Offline ChatMessage voice:JAZZ_Merc_Spouke]] "Я пока занят. Свяжись со мной завтра, послезавтра или когда-нибудь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(345340110773, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text GreetingAndOffer ChatMessage voice:JAZZ_Merc_Spouke]] "Отдел по борьбе с минной опасностью слушает! Шутка, не понял? Твои проблемы, Эрни Споук на проводе."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(901031758481, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text ConversationRestart ChatMessage voice:JAZZ_Merc_Spouke]] "Вернемся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(633598512041, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text IdleLine ChatMessage voice:JAZZ_Merc_Spouke]] "Тик-так, тиик-тааак."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(711131072956, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text PartingWords ChatMessage voice:JAZZ_Merc_Spouke]] "Собираю монатки и выезжаю. Кстати к слову, там мой братишка Айс вроде не занят, было бы неплохо иметь под боком толкового стрелка и надежного напарника."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(344054099652, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text RehireIntro ChatMessage voice:JAZZ_Merc_Spouke]] "А я погляжу тут весело, к сожалению необходимо вставить купюру в купюроприемник, предлагаю продлить контракт."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(540645319934, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text RehireOutro ChatMessage voice:JAZZ_Merc_Spouke]] "Отлично, теперь пошли взрывать."),
		}),
	},
	StartingSalary = 2000,
	SalaryIncrease = 210,
	SalaryLv1 = 750,
	SalaryMaxLv = 5000,
	StartingLevel = 4,
	Likes = {
		"Ice",
		"Len",
		"Spike",
	},
	StartingPerks = {
		"Jazz_Perk_00",
		"BreachAndClear",
		"Throwing",
		"HitTheDeck",
		"HeavyWeaponsTraining",
		"BreachAndClear",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "JAZZ_Spouke",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Sapper",
	},
	Tier = "Veteran",
	Specialization = "ExplosiveExpert",
	gender = "Male",
	VoiceResponseId = "JAZZ_Merc_Spouke",
	FallbackMissingVR = "Grizzly",
	DaysUntilOnline = 0,
}

