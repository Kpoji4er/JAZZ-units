UndefineClass('Vicki')
DefineClass.Vicki = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 79,
	Agility = 84,
	Dexterity = 72,
	Strength = 70,
	Wisdom = 85,
	Leadership = 33,
	Marksmanship = 85,
	Mechanical = 95,
	Explosives = 28,
	Medical = 18,
	Portrait = "UI/MercsPortraits/Vicky",
	BigPortrait = "UI/Mercs/Vicky",
	IsMercenary = true,
	Name = T(997941066310, --[[ModItemUnitDataCompositeDef Vicki Name]] "Виктория Уотерс «Вики»"),
	Nick = T(982571881202, --[[ModItemUnitDataCompositeDef Vicki Nick]] "Вики"),
	AllCapsNick = T(912931350387, --[[ModItemUnitDataCompositeDef Vicki AllCapsNick]] "ВИКИ"),
	Bio = T(978581055615, --[[ModItemUnitDataCompositeDef Vicki Bio]] "Вики Уотерс в совершенстве стреляет по-македонски и послужит прекрасным дополнением к любой команде. В данным момент она работает авиамехаником у Джемса Буллока, также известного как «Небесный Всадник», ремонтируя его вертолёт в промежутках между развозом туристов. Поговаривают, что эти двое - не просто деловые партнёры, однако сама Вики сообщает, что, если кому-то требуются её услуги, она готова к выполнению новых заданий."),
	Nationality = "Jamaica",
	Title = T(584992608799, --[[ModItemUnitDataCompositeDef Vicki Title]] "Одна рука чинит, другая разрушает"),
	Email = T(459711242023, --[[ModItemUnitDataCompositeDef Vicki Email]] "vicki@aim.com"),
	snype_nick = T(600504575562, --[[ModItemUnitDataCompositeDef Vicki snype_nick]] "vicki"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(486816886469, --[[ModItemUnitDataCompositeDef Vicki Text MercChatRefusal Lines ChatMessage voice:Vicki]] "Нет уж. Я слышать, у тебя не отряд, а клуб бойскаутов. Я не повторять эту ошибку дважды. Эти мальчишки рядом со мной всегда терять голову."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, "HireStatus", "Hired") > 3 and table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud].gender == "Female" end) == 0
					end,
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(249681548198, --[[ModItemUnitDataCompositeDef Vicki Text MercChatRefusal Lines ChatMessage voice:Vicki]] "Нет уж. О тебе ходить нехорошие слухи. Мне нужно кое-что обсудить с друзьями, прежде чем я тебе поверить. Пиши мне потом."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(723908821448, --[[ModItemUnitDataCompositeDef Vicki Text MercChatHaggle Lines ChatMessage voice:Vicki]] "Я тебе не доверять. На тебе много мёртвых наёмников, а это очень плохо. Я уметь выживать, но тогда ты платить мне больше."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(901575776171, --[[ModItemUnitDataCompositeDef Vicki Text MercChatHaggle Lines ChatMessage voice:Vicki]] "Ты будешь платить мне больше - штраф за то, что нанять такого козла, как Смайли. Этого сопляка надо учить себя вести."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Smiley",
						}),
						PlaceObj('MercIsLikedDisliked', {
							Object = "Smiley",
							Relation = "Dislikes",
							TargetUnit = "Vicki",
						}),
					},
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(581903016213, --[[ModItemUnitDataCompositeDef Vicki Text MercChatMitigation Lines ChatMessage voice:Vicki]] "Я думать о более выгодных предложениях, правда. Но мне нравится работать с другими женщинами. А то в наше время в командах одни мальчишки. Так что я согласна."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud].gender == "Female" end) >= 2
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(155504263416, --[[ModItemUnitDataCompositeDef Vicki Text Offline ChatMessage voice:Vicki]] "Это Виктория Уотерс. Я на войне или в гараже. Скажи самое важное, и я связаться с тобой сразу, как могу."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(390177396694, --[[ModItemUnitDataCompositeDef Vicki Text GreetingAndOffer ChatMessage voice:Vicki]] "Вики Уотерс. С кем говорю?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(654047163706, --[[ModItemUnitDataCompositeDef Vicki Text ConversationRestart ChatMessage voice:Vicki]] "Ты возвращаться? Хорошо."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(166872348899, --[[ModItemUnitDataCompositeDef Vicki Text IdleLine ChatMessage voice:Vicki]] "Давай, рожай! Пора!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(490243743780, --[[ModItemUnitDataCompositeDef Vicki Text PartingWords ChatMessage voice:Vicki]] "Я рада, то мы приходить к соглашению. Теперь я показать, как настоящий боец это делает!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(105250329735, --[[ModItemUnitDataCompositeDef Vicki Text RehireIntro ChatMessage voice:Vicki]] "Слушай, друг, контракт-то, считай, кончился. Ты бы хотеть его сначала?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(672945741836, --[[ModItemUnitDataCompositeDef Vicki Text RehireOutro ChatMessage voice:Vicki]] "Да-да. Кто распробовать Вики Уотерс, всегда приходить за ещё!"),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 2000,
	SalaryIncrease = 290,
	SalaryLv1 = 700,
	SalaryMaxLv = 5300,
	LegacyNotes = '"Victoria Waters is without a doubt A.I.M.s finest female mercenary. Possessing deadly aim, determination and an experience class any mercenary would be proud of, Victoria works best with her hands and is currently restoring her dads \'64 Chevy." - Jagged Alliance\n\nJA1:\n\n"Whether it\'s repairing a handgun or firing off automatic weapon bursts, the ambidextrous Victoria Waters works best with her hands. Aside from working for A.I.M., Vicki spends her spare time managing Vicki\'s Vintage Automobiles, her own restoration and antique car dealership. Despite constant teasing, Vicki insists on using the stairs no matter how tall the building." - Jagged Alliance 2\n\nJA2:\n\nAdditional info:\nJamaican accent.\nVery methodical and determined. No-nonsense.\nThe easy-going accent, contrasts her forceful dialogue. It also contrasts her mechanical abilities by giving her a sense of sophistication.',
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 79,
	LearnToDislike = {
		"Smiley",
	},
	StartingPerks = {
		"Ambidextrous",
		"Throwing",
		"Claustrophobic",
		"WeaponPersonalization",
		"TakeAim",
		"Hobbler",
		"Flanker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Vicki",
		}),
	},
	Equipment = {
		"Vicki",
	},
	Tier = "Elite",
	Specialization = "Mechanic",
	pollyvoice = "Aditi",
	gender = "Female",
	VoiceResponseId = "Vicki",
}

