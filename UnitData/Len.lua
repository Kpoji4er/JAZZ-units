UndefineClass('Len')
DefineClass.Len = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 87,
	Agility = 78,
	Dexterity = 88,
	Strength = 77,
	Wisdom = 83,
	Will = 95,
	Leadership = 68,
	Marksmanship = 83,
	Mechanical = 54,
	Explosives = 47,
	Medical = 35,
	Portrait = "UI/MercsPortraits/Len",
	BigPortrait = "UI/Mercs/Len",
	IsMercenary = true,
	Name = T(856122685331, --[[ModItemUnitDataCompositeDef Len Name]] "Капрал Лен Андерсон"),
	Nick = T(100823268874, --[[ModItemUnitDataCompositeDef Len Nick]] "Лен"),
	AllCapsNick = T(765224105732, --[[ModItemUnitDataCompositeDef Len AllCapsNick]] "ЛЕН"),
	Bio = T(651747616157, --[[ModItemUnitDataCompositeDef Len Bio]] "Записавшись в армию сразу же по окончании школы, капрал Андерсон большую частью своей взрослой жизни не выпускал из рук автомата. Лен отслужил в «зелёных беретах», а получив почётное увольнение со службы, переквалифицировался в солдата удачи, став одним из первых членов A.I.M. Лен располагает превосходными навыками во всех областях солдатской науки и имеет за плечами многие годы опыта борьбы с боевиками и спасения похищенных бизнесменов. Коллеги уважают его как командира и инструктора, а враги боятся как грозу мелких военных диктаторов."),
	Nationality = "USA",
	Title = T(452293562944, --[[ModItemUnitDataCompositeDef Len Title]] "Настоящий батя"),
	Email = T(159574405546, --[[ModItemUnitDataCompositeDef Len Email]] "len_anderson@aim.com"),
	snype_nick = T(152770436506, --[[ModItemUnitDataCompositeDef Len snype_nick]] "len_anderson"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(728045541164, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Я наслышан о вашем стиле командования. Слишком много «двухсотых». Я потому и дожил до своих лет, что научился вовремя говорить «нет». Вот как сейчас."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(334870751923, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Предложение отклоняется. Всего доброго."),
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
					'Text', T(779667141211, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Вы мне не нравитесь. Я достаточно пожил, чтоб самому выбирать, под чьим командованием служить - и у вас я служить не намерен."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(615940175069, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Предложение отклоняется. Всего доброго."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(252206147171, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Простите, сэр, но командир из вас так себе. Слишком много толковых парней уже не вернулись с ваших заданий. И я не намерен стать следующим."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(483984421915, --[[ModItemUnitDataCompositeDef Len Text MercChatRefusal Lines ChatMessage voice:Len]] "Боюсь, я не могу продлить действие нашего контракта."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'Type', "rehire",
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(775023517205, --[[ModItemUnitDataCompositeDef Len Text MercChatMitigation Lines ChatMessage voice:Len]] "За то время, что я знаком с доктором Кью, он показал себя отличным солдатом и великолепным медиком. Я был бы очень рад поработать с ним снова."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "DrQ",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(226612508863, --[[ModItemUnitDataCompositeDef Len Text MercChatMitigation Lines ChatMessage voice:Len]] "Не могу назвать ваше командование идеальным, но возможность работать с Вики вполне позволяет мне сделать вам некоторые поблажки."),
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
					'Text', T(130371395685, --[[ModItemUnitDataCompositeDef Len Text MercChatBranch Lines ChatMessage voice:Len]] "Хорошо. Такой вариант меня устраивает. Я также весьма рекомендовал бы нанять Доктора Кью - он отличный солдат и медик. Мне будет приятно вновь работать вместе с ним."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "DrQ",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(989283642424, --[[ModItemUnitDataCompositeDef Len Text MercChatBranch Lines ChatMessage voice:Len]] "Хорошо. Такой вариант меня устраивает. Кстати: если вам нужен толковый механик, Вики - идеальный кандидат. После её ремонта даже мой старый «шевроле» мурлычет, как котёнок."),
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
			'Text', T(593193742103, --[[ModItemUnitDataCompositeDef Len Text Offline ChatMessage voice:Len]] "Это капрал Лен Андерсон. Я временно недоступен. По возвращении дам вам знать."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(499964957820, --[[ModItemUnitDataCompositeDef Len Text GreetingAndOffer ChatMessage voice:Len]] "Приветствую. Капрал Лен Андерсон к вашим услугам. Я готов к несению службы. Изложите своё предложение."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(623982343340, --[[ModItemUnitDataCompositeDef Len Text ConversationRestart ChatMessage voice:Len]] "Чёртова техника отказала. На чём мы остановились?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(794781501609, --[[ModItemUnitDataCompositeDef Len Text IdleLine ChatMessage voice:Len]] "Я не привык впустую тратить время. Нельзя ли перейти к делу?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(453156990394, --[[ModItemUnitDataCompositeDef Len Text PartingWords ChatMessage voice:Len]] "Отлично. Я начну собирать вещи. Буду на месте в назначенное время."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(531047441945, --[[ModItemUnitDataCompositeDef Len Text RehireIntro ChatMessage voice:Len]] "Командир, если мои услуги требуются вам и дальше, нужно продлить действие контракта. Предлагаю не тянуть с этим."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(822598459526, --[[ModItemUnitDataCompositeDef Len Text RehireOutro ChatMessage voice:Len]] "Прекрасно. Возвращаюсь к своим служебным обязанностям."),
		}),
	},
	StartingSalary = 2150,
	SalaryIncrease = 210,
	SalaryLv1 = 170,
	SalaryMaxLv = 3600,
	LegacyNotes = 'JA1:\n\n"A member in excellent standing, Len Anderson has been fighting for truth and justice since his teens. A onetime member of the Green berets and a longtime member of A.I.M., his salary may seem excessive, but his extraordinary abilities easily merit the price." - Jagged Alliance.\n\nJA2:\n"A career military man, Anderson was barely out of his teens before he joined the Green berets. After serving with distinction, he joined A.I.M. as one of its original members and fought alongside A.I.M.s founders in the battle for Angetta. Len is a strong leader, his tours of duty has earned him the respect and appreciation of many." - Jagged Alliance 2\n\nAdditional info:\nBack in his home town, the community minded Anderson teaches a NRA course on the proper care and handling of automatic weapons.\n\nNotes:\nIn Jagged Alliance 2, Len\'s skills and experience don\'t advance. This is intended and not a bug (old dog and new tricks) and partly explain his very low price for his level. His baseline skills still make him worth hiring however, especially towards endgame.\nSomewhat gravelly voice. Tough as nails, no-nonsense and honest in his assessments.\nRespect is earned and not given with this man.\nHas no fear of criticising poor leadership.\nReminds of a hard but honest drill sergeant. Tends to be very by-the-book, otherwise.',
	StartingLevel = 7,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 89,
	Likes = {
		"Spike",
		"Vicki",
		"DrQ",
	},
	LearnToDislike = {
		"Omryn",
	},
	StartingPerks = {
		"Teacher",
		"OnMyTarget",
		"OldDog",
		"Flanker",
		"LightningReaction",
		"Deadeye",
		"Counterfire",
		"Hobbler",
		"StressManagement",
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Len",
			'Weight', 50,
			'GameStates', set({
	Savanna = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Len_Hot",
			'Weight', 50,
			'GameStates', set( "Savanna" ),
		}),
	},
	Equipment = {
		"Len",
	},
	Tier = "Legendary",
	Specialization = "Leader",
	pollyvoice = "Russell",
	gender = "Male",
	VoiceResponseId = "Len",
}

