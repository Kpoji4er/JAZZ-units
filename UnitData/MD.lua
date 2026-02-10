UndefineClass('MD')
DefineClass.MD = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 72,
	Agility = 62,
	Dexterity = 78,
	Strength = 76,
	Wisdom = 94,
	Will = 68,
	Leadership = 4,
	Marksmanship = 68,
	Mechanical = 7,
	Explosives = 0,
	Medical = 81,
	Portrait = "UI/MercsPortraits/MD",
	BigPortrait = "UI/Mercs/MD",
	IsMercenary = true,
	Name = T(686612112398, --[[ModItemUnitDataCompositeDef MD Name]] "Др. Майкл Доусон «ЭмДи»"),
	Nick = T(484352976943, --[[ModItemUnitDataCompositeDef MD Nick]] "ЭмДи"),
	AllCapsNick = T(640628882023, --[[ModItemUnitDataCompositeDef MD AllCapsNick]] "ЭМДИ"),
	Bio = T(186460451002, --[[ModItemUnitDataCompositeDef MD Bio]] "Закончив мединститут, Майкл отказался от перспективной карьеры врача и подался в наёмники. Сам он на этот счёт отвечает уклончиво, но многие подозревают, что Доусон вступал в A.I.M. в полной уверенности, что имеет дело с отделением «Врачей без границ». Как бы то ни было, впервые нюхнув пороху в Арулько, ЭмДи нашёл, что солдатская жизнь ему по вкусу. Ловкость, с которой он обращается со скальпелем, пригождается ему и в бою, и в импровизированной операционной, а неистребимый оптимизм побуждает других учиться на его примере."),
	Nationality = "Canada",
	Title = T(892027636726, --[[ModItemUnitDataCompositeDef MD Title]] "Синдром самозванца и неувядающий оптимизм"),
	Email = T(853992834316, --[[ModItemUnitDataCompositeDef MD Email]] "md@aim.com"),
	snype_nick = T(894034021981, --[[ModItemUnitDataCompositeDef MD snype_nick]] "md"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(589316307933, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Ммм… Анаболик тоже будет. Нет, я против него ничего личного не имею, но... он любит дразниться — говорит, что я «слабак и баба»."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(377316958854, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Нет, конечно, я могу его понять. Но мне же потом платить за психотерапию потребуется…"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Steroid",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(255971337240, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Всё чудесно. Просто с Лавой мы не очень ладим. Она всё говорит, что я напоминаю ей ту каку, что однажды ел её пёс."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(706928440131, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Конечно, может и так. Я же не видел. Кака могла быть похожа. Просто это сильно подкашивает меня, и оплата новых сессий психотерапии будет очень кстати."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Meltdown",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(133732872963, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Боже мой. Гвоздь тоже с вами? Он переехал меня как-то мотоцикл- Байком! Он вроде велел называть байком. Потом развернулся и опять переехал. Пару раз. А потом ещё и обматерил, так как я изпачкал ему шины кровью."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(812957826017, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Ну, допускаю, что я виноват, нужно было успеть отпрыгнуть. Словом… он так любит вспоминать это, что мне будут нужны средства на лечение ПТСР."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Nails",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(232520855092, --[[ModItemUnitDataCompositeDef MD Text Offline ChatMessage voice:MD]] "Привет! Это доктор Майкл Доусон. Не могу разговаривать. Перезвоните позже… А, хотя зачем я стараюсь? Никто не перезвонит. Возьмут и обратятся к людям подороже, поопытнее... к Сиднею там или Доку Кью."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(844200702211, --[[ModItemUnitDataCompositeDef MD Text GreetingAndOffer ChatMessage voice:MD]] "Привет. А это не розыгрыш? А то мне позвонил один наёмник, представился чужим именем и я на две недели застрял в Камбодже. Это ведь реальное предложение?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(156327251175, --[[ModItemUnitDataCompositeDef MD Text ConversationRestart ChatMessage voice:MD]] "Ох, слава Богу! Думал вы меня отвергли."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(514838144823, --[[ModItemUnitDataCompositeDef MD Text IdleLine ChatMessage voice:MD]] "А-а-м-м-м... Вы же не передумали меня брать, нет? Да?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(204072676737, --[[ModItemUnitDataCompositeDef MD Text PartingWords ChatMessage voice:MD]] "Ух ты! Я уж и не надеялся. Уверены? Точно? Вы ничего не спутали? Точно-точно???"),
		}),
		PlaceObj('ChatMessage', {
			'Text', T(248975416845, --[[ModItemUnitDataCompositeDef MD Text PartingWords ChatMessage voice:MD]] "Что это я… конечно ничего... Т-то есть конечно точно. Глупости говорю, простите. Так куда отправляемся? В Африку? Ой, я шортики возьму."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(141535236983, --[[ModItemUnitDataCompositeDef MD Text RehireIntro ChatMessage voice:MD]] "М-м-м... Даже не знаю, как сказать, но… м-м-мой контракт… заканчивается. Видимо. Можем, продлить его, если не против."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(169241431651, --[[ModItemUnitDataCompositeDef MD Text RehireOutro ChatMessage voice:MD]] "Вы… Ого! Спасибо! Я тогда пойду, э-э-у-у… продолжать вот это… всё — да?"),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 450,
	SalaryIncrease = 270,
	SalaryLv1 = 525,
	SalaryMaxLv = 3500,
	LegacyNotes = '"Fresh out of med school, Doctor Dawson eagerly awaits his first assignment. Although his innocent and youthful appearance has prevented others from taking him seriously but rest assured, once he saves a couple of lives, he\'ll be shown the kind of respect he deserves. For a man who just completed his internship, he can certainly wield a mean scalpel."\n\nAdditional info:\n\nYoung, inexperienced, a little chattier than most of the others.\nUses some scientific terminology.\nEnthusiastic and somewhat brash.\nSurprises himself on occasion as he feels his way through combat.\nMD has an excellent wisdom score, so you can easily train up his marksmanship',
	MaxHitPoints = 72,
	LearnToDislike = {
		"Flay",
	},
	StartingPerks = {
		"Teacher",
		"Optimist",
		"Zoophobic",
		"BuildingConfidence",
		"MartialArts",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "MD",
			'Weight', 50,
			'GameStates', set({
	CursedForest = false,
	Jungle = false,
	Marshlands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set({
	FireStorm = true,
	Heat = false,
}),
		}),
	},
	Equipment = {
		"MD",
	},
	Specialization = "Doctor",
	gender = "Male",
	VoiceResponseId = "MD",
}

