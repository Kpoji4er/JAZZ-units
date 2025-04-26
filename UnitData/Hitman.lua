UndefineClass('Hitman')
DefineClass.Hitman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 72,
	Agility = 69,
	Dexterity = 40,
	Strength = 72,
	Wisdom = 74,
	Will = 89,
	Leadership = 58,
	Marksmanship = 88,
	Mechanical = 11,
	Explosives = 39,
	Medical = 3,
	Portrait = "UI/MercsPortraits/Hitman",
	BigPortrait = "UI/Mercs/Hitman",
	IsMercenary = true,
	Name = T(799859181071, --[[ModItemUnitDataCompositeDef Hitman Name]] "Фрэнк Хеннеси «Стрелок»"),
	Nick = T(946077284416, --[[ModItemUnitDataCompositeDef Hitman Nick]] "Стрелок"),
	AllCapsNick = T(734624158090, --[[ModItemUnitDataCompositeDef Hitman AllCapsNick]] "СТРЕЛОК"),
	Bio = T(649246167400, --[[ModItemUnitDataCompositeDef Hitman Bio]] "Проведя последние несколько лет в безуспешных попытках сбросить лишний вес, Фрэнк вынужден был признать, что стал очередным обладателем пивного животика (несмотря на то, что все в A.I.M. знают его как любителя женского пола, а не пива). Тем не менее, Хеннеси остаётся одним из лучших мастеров обращения с огнестрельным оружием и метательными ножами, а обходительные манеры делают из него превосходного инструктора. «Стрелок» - весомое во всех смыслах добавление к любой команде."),
	Nationality = "USA",
	Title = T(831408309409, --[[ModItemUnitDataCompositeDef Hitman Title]] "Обходительный киллер"),
	Email = T(626379380637, --[[ModItemUnitDataCompositeDef Hitman Email]] "strelok@aim.com"),
	snype_nick = T(645661687272, --[[ModItemUnitDataCompositeDef Hitman snype_nick]] "strelok"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(808348013682, --[[ModItemUnitDataCompositeDef Hitman Text MercChatRefusal Lines ChatMessage voice:Hitman]] "Нет уж, я с Рейдером работать не намерен. Тупой, как пробка, а строит из себя начальника. Извиняй, ас, но эту ошибку я повторять не намерен."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Raider",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(601719461266, --[[ModItemUnitDataCompositeDef Hitman Text MercChatRefusal Lines ChatMessage voice:Hitman]] "Скажем так, ас: поговаривают, что у тебя солдаты мрут, как мухи. А мне моя жизнь дорога. Извини, я на такие риски не иду."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(620001696951, --[[ModItemUnitDataCompositeDef Hitman Text MercChatHaggle Lines ChatMessage voice:Hitman]] "Говорят, у тебя денег куры не клюют, ас. Я согласен поработать на тебя, если ты и мне бабок отвалишь."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {
					PresetValue = ">=50",
				}),
			},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(554415577338, --[[ModItemUnitDataCompositeDef Hitman Text MercChatHaggle Lines ChatMessage voice:Hitman]] "Слышь, ас, мне тут сказали, тебе деньжат привалило. Хочешь, чтоб я и дальше на тебя работал, - делись."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {
					PresetValue = ">=50",
				}),
			},
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(531216698923, --[[ModItemUnitDataCompositeDef Hitman Text MercChatHaggle Lines ChatMessage voice:Hitman]] "Знаешь, ас. Профи-то я профи, но я тут на тебя вкалываю, как на трёх работах. А рук и ног у меня не три пары. Хочешь, чтоб я и дальше в таком режиме работал, придётся отстегнуть мне денег, и немало."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {
					PresetValue = ">=10",
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(630933806416, --[[ModItemUnitDataCompositeDef Hitman Text MercChatMitigation Lines ChatMessage voice:Hitman]] "Что ж. С такой красоткой, как Сова, кто откажется? Я в деле, ас. Хоть оно мне и не нравится."),
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
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(219051126945, --[[ModItemUnitDataCompositeDef Hitman Text MercChatMitigation Lines ChatMessage voice:Hitman]] "Ну, ас, Хряпа ты уломал, а где Хряп - считай, операция удалась. Я тогда тоже согласен. Надеюсь, я об этом не пожалею."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Grunty",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(933155613749, --[[ModItemUnitDataCompositeDef Hitman Text Offline ChatMessage voice:Hitman]] "Стрелок Хеннеси, наёмник! Я тут в отлучке, ас, так что напишу, когда вернусь. Счастливо тебе."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(349490027919, --[[ModItemUnitDataCompositeDef Hitman Text GreetingAndOffer ChatMessage voice:Hitman]] "Здорово, ас! Кажется, ты хочешь предложить мне работу."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(588171612533, --[[ModItemUnitDataCompositeDef Hitman Text ConversationRestart ChatMessage voice:Hitman]] "Ты здесь, ас? На чём мы остановились?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(286657788041, --[[ModItemUnitDataCompositeDef Hitman Text IdleLine ChatMessage voice:Hitman]] "Ты там заснул, ас? Давай уже к делу."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(949447625244, --[[ModItemUnitDataCompositeDef Hitman Text PartingWords ChatMessage voice:Hitman]] "Значит, по рукам, ас. Ты не пожалеешь, что нанял меня."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(830992502289, --[[ModItemUnitDataCompositeDef Hitman Text RehireIntro ChatMessage voice:Hitman]] "Ас, мой контракт того и гляди закончится. Не хочешь застолбить меня на подольше?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(798713629390, --[[ModItemUnitDataCompositeDef Hitman Text RehireOutro ChatMessage voice:Hitman]] "Отлично, ас. Я знал, что тебе нужны первоклассные стрелки."),
		}),
	},
	StartingSalary = 900,
	SalaryLv1 = 100,
	SalaryMaxLv = 2900,
	LegacyNotes = 'JA1:\n\n"Undisturbed by the scent of death, Frank Hennessy is a member in excellent standing. A private, yet personable individual, the Hitman has a proven track record and a no nonsense disposition. A note of caution: he suffers from buoyancy difficulties." - Jagged Alliance\n\nJA2:\n\n"The Hitman\'s easy-going and personable disposition has made him one of the more popular and respected mercenaries in the organization. Unfortunately, Frank hasn\'t taken care of himself lately and his health and skills have dropped off slightly. Despite repeated attempts, Hennessy has been unable to overcome his weight problem.  Additional info: Frank has been talking of throwing in the towel and become a combat instructor." - Jagged Alliance 2',
	StartingLevel = 4,
	MaxHitPoints = 75,
	Likes = {
		"Raven",
		"Grunty",
	},
	Dislikes = {
		"Raider",
	},
	StartingPerks = {
		"Teacher",
		"DedicatedCamper",
		"TakeAim",
		"Hobbler",
		"HitTheDeck",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman",
			'Weight', 50,
			'GameStates', set({
	CursedForest = false,
	DustStorm = false,
	FireStorm = false,
	Heat = false,
	Jungle = false,
	Marshlands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Hitman_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
	},
	Equipment = {
		"Hitman",
	},
	Tier = "Elite",
	Specialization = "Marksmen",
	gender = "Male",
	VoiceResponseId = "Hitman",
}

