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
	Name = T(332539396098, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Name]] "Эрни Споук «Фраг»"),
	Nick = T(310008076558, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Nick]] "Фраг"),
	AllCapsNick = T(770795604613, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke AllCapsNick]] "ФРАГ"),
	Bio = T(589735084653, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Bio]] "Эрни родился в одном из портовых городов на востоке США. Как и все остальные пацаны с района, он играл в стритбол, мечтая когда-нибудь выйти на корт за главную команду Сент-Луиса. Был членом молодежной банды своего района, несколько раз задерживался полицией, но натворить больших бед не успел. Повзрослев, вступил в армию США, так как посчитал, что служба станет для него отличным социальным лифтом. После учебки служил сапером в морской пехоте, так что отлично владеет навыками минного дела. При выполнении одного из заданий, о которых не рассказывают дома, получил ранение. Был эвакуирован, а после курса реабилитации и вовсе вышел в отставку. Через какое-то время примкнул к AIM, чему Организация несказанно рада. На должности сапера обычно очень высокая текучка кадров. Не скрывает, что пришел в Организацию за деньгами, так что держите карман шире."),
	Nationality = "USA",
	Title = T(534127356489, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Title]] "Жизни Саперов Важны"),
	Email = T(460502027712, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Email]] "CHPOK!@aim.com"),
	snype_nick = T(540573932957, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke snype_nick]] "letsgoboom"),
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(876005699189, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text MercChatMitigation Lines ChatMessage voice:JAZZ_Merc_Spouke]] "Айс в деле?! Ништяк. Я весь твой, командир."),
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
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(916724097519, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text MercChatMitigation Lines ChatMessage voice:JAZZ_Merc_Spouke]] "Капрал Лен Андерсон, сэр! Ха-ха-ха. Лен - командир что надо, любую команду за уши из жопы вытащит. Так что, я впишусь, если нет возражений."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Len",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(450984196945, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text MercChatMitigation Lines ChatMessage voice:JAZZ_Merc_Spouke]] "Чо говоришь, Майором сам Скэллион был? Кремень мужик, наслышан, наслышан. Мля, чет очень хочу посмотреть, чем у вас там все кончится. Возьмешь?"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Spike",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(274466626035, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text MercChatBranch Lines ChatMessage voice:JAZZ_Merc_Spouke]] "Собираю манатки и выезжаю. К слову, там мой братишка Айс не занят, пригласи его. Он мой братюня от другой мамуни, да и шмаляет что твой Пикассо."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ice",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(384723366977, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text Offline ChatMessage voice:JAZZ_Merc_Spouke]] "Я пока занят. Свяжись со мной завтра, послезавтра или когда-нибудь еще."),
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
			'Text', T(633598512041, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text IdleLine ChatMessage voice:JAZZ_Merc_Spouke]] "Тик-так, мазафака, тиик-тааак."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(711131072956, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text PartingWords ChatMessage voice:JAZZ_Merc_Spouke]] "Ну чо, беру побольше пластмассы всякой разной. Ну знаешь, чтоб все по-серьезному было. Давай, до связи, командир."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(344054099652, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text RehireIntro ChatMessage voice:JAZZ_Merc_Spouke]] "Я заценил, как тут весело, братан. К сожалению, для продолжения веселья необходимо вставить купюру в купюроприемник."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(540645319934, --[[ModItemUnitDataCompositeDef JAZZ_Merc_Spouke Text RehireOutro ChatMessage voice:JAZZ_Merc_Spouke]] "Найс, брателло. Пошли взрывать."),
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

