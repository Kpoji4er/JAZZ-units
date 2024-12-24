UndefineClass('Fox')
DefineClass.Fox = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 78,
	Agility = 85,
	Dexterity = 100,
	Strength = 56,
	Wisdom = 76,
	Leadership = 21,
	Marksmanship = 69,
	Mechanical = 15,
	Explosives = 8,
	Medical = 69,
	Portrait = "UI/MercsPortraits/Fox",
	BigPortrait = "UI/Mercs/Fox",
	IsMercenary = true,
	Name = T(653970492916, --[[ModItemUnitDataCompositeDef Fox Name]] "Синтия Газмен «Лиска»"),
	Nick = T(550680559818, --[[ModItemUnitDataCompositeDef Fox Nick]] "Лиска"),
	AllCapsNick = T(533036246701, --[[ModItemUnitDataCompositeDef Fox AllCapsNick]] "ЛИСКА"),
	Bio = T(431815979541, --[[ModItemUnitDataCompositeDef Fox Bio]] "Согласившись задержаться в стране, чтобы позировать для рекламирующих новый мирный Арулько брошюр, Синтия с готовностью фотографировалась в бикини на местных пляжах и выступала на местных стрелковых конкурсах, щеголяя навыками стрельбы по-македонски. Её глубокие познания в человеческой анатомии также оказались востребованы: сын президента нанял её, чтобы она давала ему частные уроки. Тем не менее, недавно она сообщила, что вновь открыта к деловым отношениями, - где угодно, когда угодно и с кем угодно."),
	Nationality = "USA",
	Title = T(643740690300, --[[ModItemUnitDataCompositeDef Fox Title]] "С пистолетами и наголо"),
	Email = T(275428567670, --[[ModItemUnitDataCompositeDef Fox Email]] "liska@aim.com"),
	snype_nick = T(750146314874, --[[ModItemUnitDataCompositeDef Fox snype_nick]] "liska"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(968862205775, --[[ModItemUnitDataCompositeDef Fox Text MercChatRefusal Lines ChatMessage voice:Fox]] "Ещё чего! Пока у тебя в команде этот надувной матрас Анаболик, на меня даже не рассчитывай!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Steroid",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(424506783398, --[[ModItemUnitDataCompositeDef Fox Text MercChatRefusal Lines ChatMessage voice:Fox]] "Прости, я тут вспомнила: одна знаменитость пригласила меня в свой личный пляжный домик на закрытые кинопробы. Это мой шанс попасть в Голливуд! Мне не терпится показать все свои достоинства!"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(690973322218, --[[ModItemUnitDataCompositeDef Fox Text MercChatHaggle Lines ChatMessage voice:Fox]] "То, что ты нанял в команду этого тупого качка Анаболика, внесло в работу много лишнего стресса. Теперь мне потребуется денежный стимул, чтобы продолжить здесь работать."),
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
					'Text', T(545857097628, --[[ModItemUnitDataCompositeDef Fox Text MercChatHaggle Lines ChatMessage voice:Fox]] "Этот лапотник Смайли меня достал! Если хочешь, чтоб я осталась в команде, придётся доплатить. Считай это платой за то, что я не отрублю ему его мерзкие грабли."),
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
							TargetUnit = "Fox",
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
					'Text', T(160370239004, --[[ModItemUnitDataCompositeDef Fox Text MercChatMitigation Lines ChatMessage voice:Fox]] "Если Волчок уже с тобой, я согласна! Не терпится показаться ему в новом бикини!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Wolf",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(158023635837, --[[ModItemUnitDataCompositeDef Fox Text MercChatMitigation Lines ChatMessage voice:Fox]] "Если в команде есть мой медвежонок Гризли, я тоже в неё хочу!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Grizzly",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(168114906666, --[[ModItemUnitDataCompositeDef Fox Text MercChatBranch Lines ChatMessage voice:Fox]] "О'кей, договорились. Кстати, я тут слышала, Волк тоже свободен. Обожаю работать c ним в паре. Если наймёшь и его - буду тебе о-о-очень благодарна."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Wolf",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(202992877509, --[[ModItemUnitDataCompositeDef Fox Text MercChatBranch Lines ChatMessage voice:Fox]] "О'кей, договорились! Кстати, мысль: я знаю, что Гризли сейчас не занят. Возьми к себе и моего медвежонка тоже - а уж я придумаю, как выразить мою благодарность."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Grizzly",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(372042629873, --[[ModItemUnitDataCompositeDef Fox Text Offline ChatMessage voice:Fox]] "Это Синтия Газмен. Я сейчас связана по рукам и ногам, но регулярно проверяю автоответчик. Так что можете оставить сообщение, и я с вами наверняка встречусь!"),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(303692254961, --[[ModItemUnitDataCompositeDef Fox Text GreetingAndOffer ChatMessage voice:Fox]] "Лиска слушает. Если хочешь предложить мне задание, я готова работать, не покладая рук. И других частей тела."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(258922001582, --[[ModItemUnitDataCompositeDef Fox Text ConversationRestart ChatMessage voice:Fox]] "А, снова ты? Я знала, что произведу на тебя впечатление."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(173758988412, --[[ModItemUnitDataCompositeDef Fox Text IdleLine ChatMessage voice:Fox]] "Ну что так долго? У меня сегодня ещё запись на депиляцию."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(210052524908, --[[ModItemUnitDataCompositeDef Fox Text PartingWords ChatMessage voice:Fox]] "Отлично! Сейчас упакую солнцезащитный крем и перевязочные пакеты - и скоро буду у тебя."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(972810372163, --[[ModItemUnitDataCompositeDef Fox Text RehireIntro ChatMessage voice:Fox]] "Я девушка занятая, и желающих - хоть отбавляй. Не советую откладывать продление контракта на последний момент."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(760883994778, --[[ModItemUnitDataCompositeDef Fox Text RehireOutro ChatMessage voice:Fox]] "Рада, что я тебе приглянулась. И это я ещё не всё тебе показала."),
		}),
	},
	MedicalDeposit = "large",
	DurationDiscount = "long only",
	StartingSalary = 560,
	SalaryIncrease = 280,
	SalaryLv1 = 222,
	SalaryMaxLv = 4200,
	LegacyNotes = 'JA 1\n\n"Dangerous, desirable and devious, Cynthia Guzzman is the latest female addition to our organization. A former nurse from Newark with a doctor\'s attitude, the Fox is known for her field treatment of casualties, excellent agility and amazing dexterity."\n\nJA2\n\n"Initially trained as an emergency room nurse, Fox Guzzman was recently featured in "Babes and Bullets," a prestigious monthly mercenary magazine. Her article on controlling hemorrhaging while on the battlefield was almost as highly praised as her centerfold layout."\nAdditional Info: Guzzman has recently spent a lot of time on the firing range and it has paid off handsomely."\n\nJA2 WF\n\n"Originally trained as a nurse, Fox Guzzmann was highlighted in an outstanding monthly magazine for mercenaries. The special article was entitled "Curves in Uniform". In the article, her medical skills on the combat field were almost as highly praised as her front and backsides."\n\nAdditional info:\nThe pin-up girl of A.I.M., stunning and seductive.\nDialogue is often vaguely (or not so vaguely) sexual\nConscious of her appearance, and is not afraid to take advantage of her good looks\nVoice is seductive in all games except Back In Action\nIt is implied that she and Peter "Wolf" Sanderson are more than just friends. Openly mentions past affairs with a few other male mercenaries (and implies even more).',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 77,
	Likes = {
		"Wolf",
		"Grizzly",
	},
	LearnToLike = {
		"Fauda",
	},
	Dislikes = {
		"Steroid",
	},
	LearnToDislike = {
		"Smiley",
	},
	StartingPerks = {
		"Teacher",
		"Ambidextrous",
		"Scoundrel",
		"FoxPerk",
		"OpportunisticKiller",
		"Pessimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox",
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
			'Preset', "Fox_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox_Savana_Hot",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox_Savana_Hot",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Fox_Savana_Hot",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Fox",
	},
	Specialization = "Doctor",
	pollyvoice = "Nicole",
	gender = "Female",
	VoiceResponseId = "Fox",
}

