UndefineClass('DrQ')
DefineClass.DrQ = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 88,
	Agility = 94,
	Dexterity = 81,
	Strength = 73,
	Wisdom = 87,
	Leadership = 26,
	Mechanical = 19,
	Explosives = 20,
	Medical = 88,
	Portrait = "UI/MercsPortraits/DrQ",
	BigPortrait = "UI/Mercs/DrQ",
	IsMercenary = true,
	Name = T(231173544601, --[[ModItemUnitDataCompositeDef DrQ Name]] "Доктор Кью Хуаонг"),
	Nick = T(293945362464, --[[ModItemUnitDataCompositeDef DrQ Nick]] "Кью"),
	AllCapsNick = T(562036496158, --[[ModItemUnitDataCompositeDef DrQ AllCapsNick]] "КЬЮ"),
	Bio = T(527433658116, --[[ModItemUnitDataCompositeDef DrQ Bio]] "Рассказывают, что однажды, приехав в некую страну на семинар по иглоукалыванию, доктор Кью умудрился не только прочитать там лекцию, но и тем же вечером применить свои навыки ночных операций вкупе с познаниями в боевых искусствах. Пробравшись в расположенный неподалёку лагерь местного наркобарона, он нейтрализовал охранников, стороживших захваченный груз медикаментов, и доставил его в ближайшую больницу. Поговаривают даже, что он отказался брать плату за свои услуги, хотя сам доктор это отрицает."),
	Nationality = "China",
	Title = T(727721975643, --[[ModItemUnitDataCompositeDef DrQ Title]] "Эксперт по тактическому иглоукалыванию"),
	Email = T(970559294874, --[[ModItemUnitDataCompositeDef DrQ Email]] "doctor_q@aim.com"),
	snype_nick = T(893736356942, --[[ModItemUnitDataCompositeDef DrQ snype_nick]] "doctor_q"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(614053168152, --[[ModItemUnitDataCompositeDef DrQ Text MercChatRefusal Lines ChatMessage voice:DrQ]] "Очень сожалею, но вынужден отказаться. Я участвую в исследовании новых методов лечения. Возможно, нам ещё предначертано встретиться вновь."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(767241591939, --[[ModItemUnitDataCompositeDef DrQ Text MercChatRefusal Lines ChatMessage voice:DrQ]] "Я не могу принять ваше предложение. Мне кажется, что вы с пренебрежением относитесь к жизням своих солдат."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(656350600015, --[[ModItemUnitDataCompositeDef DrQ Text MercChatRefusal Lines ChatMessage voice:DrQ]] "Я не хотел бы ставить вас в неловкое положение, но состояние вашего банковского счёта намекает, что вы явно не успели принять во внимание некоторые финансовые соображения. Я на такое не согласен."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(144557312468, --[[ModItemUnitDataCompositeDef DrQ Text MercChatMitigation Lines ChatMessage voice:DrQ]] "Некоторые из ваших методов вызывают у меня большие сомнения. Несмотря на это, я готов положиться на суждение Виктории Уотерс, которой всегда доверял. Я согласен принять ваши условия."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Vicki",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(275961281267, --[[ModItemUnitDataCompositeDef DrQ Text MercChatBranch Lines ChatMessage voice:DrQ]] "Спешу сообщить, что присутствие в команде Виктории Уотерс, также известной как Вики, принесёт обоюдную пользу и вам, и мне."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(882968834068, --[[ModItemUnitDataCompositeDef DrQ Text MercChatBranch Lines ChatMessage voice:DrQ]] "Раз уж мы достигли согласия, я пойду собирать вещи. Спасибо."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Vicki",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(959106516354, --[[ModItemUnitDataCompositeDef DrQ Text Offline ChatMessage voice:DrQ]] "Это доктор Кью Хуаонг. В данный момент я занят. Я извещу вас, когда вернусь, - или попробуйте ещё раз сами."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(342206637305, --[[ModItemUnitDataCompositeDef DrQ Text GreetingAndOffer ChatMessage voice:DrQ]] "Доктор Кью Хуаонг. Говорите."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(958782603918, --[[ModItemUnitDataCompositeDef DrQ Text ConversationRestart ChatMessage voice:DrQ]] "Давайте очистим наши сознания от ненужного шума и попытаемся вновь достичь взаимовыгодного соглашения."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(476696721288, --[[ModItemUnitDataCompositeDef DrQ Text IdleLine ChatMessage voice:DrQ]] "Похоже, что торопливость новых технологий повлияла и на меня. Я с нетерпением жду от вас новых слов."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(835003965086, --[[ModItemUnitDataCompositeDef DrQ Text PartingWords ChatMessage voice:DrQ]] "Такая форма соглашения будет полезна нам обоим. Я согласен на ваши условия."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(591231386836, --[[ModItemUnitDataCompositeDef DrQ Text RehireIntro ChatMessage voice:DrQ]] "Срок действия нашего взаимного соглашения истекает. Не хотели бы вы обсудить вопрос о его продлении?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(614588738362, --[[ModItemUnitDataCompositeDef DrQ Text RehireOutro ChatMessage voice:DrQ]] "Мысль о продлении контракта меня вполне устраивает."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 1350,
	SalaryIncrease = 200,
	SalaryLv1 = 380,
	SalaryMaxLv = 4000,
	LegacyNotes = '"Doctor Huaong draws much of his medical knowledge from the branches of the ancient healing traditions. His marksmanship may be a little poor, but Dr. Q\'s expertise in so many other disciplines--night operations, guerrilla warfare tactics, and martial arts-more than make up for it, and he could easily double his fees. "\n\nAdditional info:\nHis salary is currently undergoing renegotiation.',
	StartingLevel = 3,
	MaxHitPoints = 88,
	Likes = {
		"Vicki",
	},
	StartingPerks = {
		"MartialArts",
		"NightOps",
		"ExplodingPalm",
		"SwiftStrike",
		"Savior",
		"Pessimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
	Jungle = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Jungle",
			'Weight', 50,
			'GameStates', set( "Coastal" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Savana",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "DrQ_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"DrQ",
	},
	Tier = "Elite",
	Specialization = "Doctor",
	gender = "Male",
}

