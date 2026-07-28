UndefineClass('Jazz_Spider')
DefineClass.Jazz_Spider = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 76,
	Dexterity = 56,
	Strength = 68,
	Wisdom = 90,
	Will = 47,
	Leadership = 16,
	Marksmanship = 70,
	Mechanical = 0,
	Explosives = 0,
	Medical = 94,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Spider.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Spider_Big.png",
	IsMercenary = true,
	Name = T(513131038337, --[[ModItemUnitDataCompositeDef Jazz_Spider Name]] "Доктор Донна «Паук» Хьюстон"),
	Nick = T(234064899192, --[[ModItemUnitDataCompositeDef Jazz_Spider Nick]] "Паук"),
	AllCapsNick = T(641563680463, --[[ModItemUnitDataCompositeDef Jazz_Spider AllCapsNick]] "ПАУК"),
	Bio = T(303546330037, --[[ModItemUnitDataCompositeDef Jazz_Spider Bio]] 'После ухода из Организации таких, без преувеличения "светил" полевой хирургии, как Митча Шудлема, Берни Гловлесса и "Стеллы" Траммелл по разным естественным и противоестественным причинам, проведение полевых операций с высоким риском травматизма (то есть, почти любых операций Организации) стало под угрозой отказа для потенциальных заказчиков. К счастью, "новая кровь" не замедлила влиться в наш дружный коллектив, чему мы несказанно рады. Конечно, мы не устаем задавться вопросом, что в полевых операциях забыла молодой и перспективный хирург-травматолог, держащий на собственных изящных плечах практически всю неотложную Damage-хирургию своего округа, но некоторые вопросы так и не должны быть заданы. Дело либо не в деньгах, либо наоборот, в деньгах настолько больших, что Организации лучше не знать подробностей. Так или иначе, Доктор Хьюстон вполне способна собрать человеческий паззл правильно, даже если от человека осталась только та часть, которая дышит. Однако, не стоит удивляться, если при этом ваша фамилия окажется вписана в графу напротив согласия на использование экспериментального препарата, не прошедшего клинические испытания. Позывной "Паук" пришел вместе с ней в организацию с легкой руки Кирка "Статика". Там какая-то своя история, мы не вникали. И все же, стоит заметить, что для человека без боевого опыта и хоть сколько-нибудь тренированной физической формы, Донна чрезвычайно мягко ступает, и видит в темноте, как кошка.'),
	Nationality = "USA",
	Title = T(717418830781, --[[ModItemUnitDataCompositeDef Jazz_Spider Title]] "Алмазная Донна полевой хирургии."),
	Email = T(923960576868, --[[ModItemUnitDataCompositeDef Jazz_Spider Email]] "HoustonMD@aim.com"),
	snype_nick = T(481545511185, --[[ModItemUnitDataCompositeDef Jazz_Spider snype_nick]] "HoustonMD"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(302600089671, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "Учитывая специфику нашей работы, я требую хотя бы минимум уважения. Я нахожу, что мисс Зондергад весьма невоспитана и чрезвычайно склонна к снобизму. Это просто невыносимо. Извините."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
			'chanceToRoll', 30,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(318587916867, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "Очевидно, ваш бюджет не позволит вам адекватно оценить мою работу."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(205050620277, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "Не представляю, как можно это сделать. Как врач, я стараюсь уважать чужую жизнь, насколько это возможно при такой работе, конечно. Судя по вашей биографии, вы придерживаетесь другой философии. Я очень разборчива когда дело доходит до контракта. Вы для меня слегка... вульгарны, пожалуй."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(207048313891, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "Не представляю, как можно это сделать. Как врач, я стараюсь уважать чужую жизнь, насколько это возможно при такой работе, конечно. Судя по вашей биографии, вы придерживаетесь другой философии. Я очень разборчива когда дело доходит до контракта. Вы для меня слегка... вульгарны, пожалуй."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'chanceToRoll', 100,
			'Type', "rehire",
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(579655211150, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatMitigation Lines ChatMessage voice:Jazz_Spider]] "Мы с Вики Вотерс отлично ладим. Поэтому я готова ответить на ваше предложение согласием, несмотря на некоторые сомнения. Я уверена, что вместе с Вики мы сумеем со всем этим справится."),
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
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(299698692708, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatMitigation Lines ChatMessage voice:Jazz_Spider]] "Я вовсе не в восторге от этого проекта. Но скажу без затей: по моему мнению, Сова - отличный товарищ, и я доверяю ей полностью. Поэтому - я согласна!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(954128588772, --[[ModItemUnitDataCompositeDef Jazz_Spider Text Offline ChatMessage voice:Jazz_Spider]] "Доктор Хьюстон. Меня нет на месте, но, если вы оставите сообщение, кто-нибудь свяжется с вами в ближайшее время. Если нужна срочная медицинская помощь, позвоните в клинику по номеру JL5-1494."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(898527816735, --[[ModItemUnitDataCompositeDef Jazz_Spider Text GreetingAndOffer ChatMessage voice:Jazz_Spider]] "Доктор Хьюстон. Чем могу служить? Хорошо, поговорим о том, насколько долгий контракт вы собирались мне предложить."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(334995525715, --[[ModItemUnitDataCompositeDef Jazz_Spider Text ConversationRestart ChatMessage voice:Jazz_Spider]] " Простите, я хотела сказать... Послушайте, у меня есть и другие дела на сегодня!"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(669174238474, --[[ModItemUnitDataCompositeDef Jazz_Spider Text IdleLine ChatMessage voice:Jazz_Spider]] "Я слишком занята. Обязательно позвоните мне, когда выясните для себя, что вам, собственно, нужно."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(499758495969, --[[ModItemUnitDataCompositeDef Jazz_Spider Text PartingWords ChatMessage voice:Jazz_Spider]] "Отлично, похоже, что все в порядке. Готова к службе!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(569935050433, --[[ModItemUnitDataCompositeDef Jazz_Spider Text RehireIntro ChatMessage voice:Jazz_Spider]] "Похоже, мой контракт почти закончен. Поговорим о продлении, или мне подумать о другой работе?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(506384671724, --[[ModItemUnitDataCompositeDef Jazz_Spider Text RehireOutro ChatMessage voice:Jazz_Spider]] "Очень хорошо! Я с нетерпением жду новых заданий."),
		}),
	},
	MedicalDeposit = "large",
	SalaryLv1 = 400,
	SalaryMaxLv = 4300,
	LegacyNotes = "",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Vicki",
		"Raven",
	},
	Dislikes = {
		"Buns",
	},
	StartingPerks = {
		"Jazz_Perk_Spider",
		"NightOps",
		"Stealthy",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Spider",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Spider",
	},
	Specialization = "Doctor",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Jazz_Spider",
}

