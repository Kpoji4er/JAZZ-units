UndefineClass('Magic')
DefineClass.Magic = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 95,
	Agility = 99,
	Dexterity = 98,
	Strength = 92,
	Wisdom = 80,
	Leadership = 15,
	Marksmanship = 94,
	Mechanical = 91,
	Explosives = 27,
	Medical = 24,
	Portrait = "UI/MercsPortraits/Magic",
	BigPortrait = "UI/Mercs/Magic",
	IsMercenary = true,
	Name = T(990490681062, --[[ModItemUnitDataCompositeDef Magic Name]] "Эрл Уолкер «Маг»"),
	Nick = T(597495451908, --[[ModItemUnitDataCompositeDef Magic Nick]] "Маг"),
	AllCapsNick = T(400907277958, --[[ModItemUnitDataCompositeDef Magic AllCapsNick]] "МАГ"),
	Bio = T(273999095685, --[[ModItemUnitDataCompositeDef Magic Bio]] "Хоть сам Маг и старается не придавать этому большого значения, мы с гордостью сообщаем, что Эрл Уолкер стал победителем Международного конкурса наёмников сразу в двух номинациях: «самые ловкие пальцы» и «самый элегантный внешний вид». Зачёт, Маг! Сочетание олимпийского атлетизма, юркости, чуткости слуха и ловкости делают из Мага оперативника высшего класса. А в сочетании с исключительной меткостью - и вовсе аса среди наёмников."),
	Nationality = "USA",
	Title = T(392626315903, --[[ModItemUnitDataCompositeDef Magic Title]] "Ловкость рук - и никакого мошенничества"),
	Email = T(201985029292, --[[ModItemUnitDataCompositeDef Magic Email]] "magic@aim.com"),
	snype_nick = T(367614979450, --[[ModItemUnitDataCompositeDef Magic snype_nick]] "magic"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(791488790738, --[[ModItemUnitDataCompositeDef Magic Text MercChatRefusal Lines ChatMessage voice:Magic]] "До тех пор, пока в списке приглашённых остаётся эта цыпочка Сдоба, можешь забыть, что я собирался на твою вечеринку."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(624090922681, --[[ModItemUnitDataCompositeDef Magic Text MercChatRefusal Lines ChatMessage voice:Magic]] "Слышь, друг... Если хочешь посмотреть на Мага в деле, придётся отвалить капусты. Сечёшь?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(715661622535, --[[ModItemUnitDataCompositeDef Magic Text MercChatRefusal Lines ChatMessage voice:Magic]] "Эта цыпочка Сдоба ломает мне весь кайф. Я пошёл. Может, в другой раз."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
			'Type', "rehire",
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(610720160197, --[[ModItemUnitDataCompositeDef Magic Text MercChatMitigation Lines ChatMessage voice:Magic]] "Ты взял Айсмена - ты взял меня."),
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
					'Text', T(274138944570, --[[ModItemUnitDataCompositeDef Magic Text MercChatMitigation Lines ChatMessage voice:Magic]] "Я уж думал сказать, что не могу, потому что собираюсь упорядочивать свою коллекцию пластинок, но вижу, что у тебя в команде есть мой братишка, Блад Гансон. С ним я где угодно готов работать."),
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
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(825397889767, --[[ModItemUnitDataCompositeDef Magic Text MercChatBranch Lines ChatMessage voice:Magic]] "Если хочешь ещё толковых парней - бери Айса. Мужик что надо."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ice",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(450011435940, --[[ModItemUnitDataCompositeDef Magic Text MercChatBranch Lines ChatMessage voice:Magic]] "Слышал, мой братишка Блад тоже работу ищет. Приценись и к нему тоже."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Blood",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(370043022550, --[[ModItemUnitDataCompositeDef Magic Text Offline ChatMessage voice:Magic]] "Это Маг. Я сейчас занят. Но не дрейфь - оставь сообщение, и я звякну тебе, когда вернусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(675309371261, --[[ModItemUnitDataCompositeDef Magic Text GreetingAndOffer ChatMessage voice:Magic]] "Маг. Чем помочь?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(217534341976, --[[ModItemUnitDataCompositeDef Magic Text ConversationRestart ChatMessage voice:Magic]] "Здорово. Ну, что на этот раз?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(514348844008, --[[ModItemUnitDataCompositeDef Magic Text IdleLine ChatMessage voice:Magic]] "Не хочу тебя торопить, мужик, но... я ещё хотел в магазин грампластинок заскочить до закрытия. Сечёшь?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(199111145437, --[[ModItemUnitDataCompositeDef Magic Text PartingWords ChatMessage voice:Magic]] "Супер. Договорились. До скорого."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(341035456537, --[[ModItemUnitDataCompositeDef Magic Text RehireIntro ChatMessage voice:Magic]] "Дело есть. Ты собираешься продлевать мой контракт или как?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(435176604344, --[[ModItemUnitDataCompositeDef Magic Text RehireOutro ChatMessage voice:Magic]] "Отлично. Готов зажигать и дальше."),
		}),
	},
	StartingSalary = 4900,
	SalaryIncrease = 150,
	SalaryLv1 = 2800,
	SalaryMaxLv = 9000,
	LegacyNotes = 'JA1:\n\n"Cautious, light-footed and extremely agile, Earl Walker is considered to be one of the best second story men in the business. And even when he\'s been fingered, his sharp eyes and deadly aim have eliminated the dilemma of witnesses!" - Jagged Alliance\n\nJA2:\n\n"Magic\'s calm, cool, and collected demeanor sets the tone for battle. In peak physical condition, he displays razor-sharp reflexes and catlike agility. Magic can ferret out danger with astonishing acumen. And with his lethal marksmanship, he quickly and efficiently puts an end to any threat. He\'s nicknamed Magic due to the way doors seem to open up in front of him." - Jagged Alliance 2\n\nAdditional info:\n\nVoice: Deep, drawn-out and definitive\nAssertive, detached and deadly.\nBeing a second-story man, he is regularly wanted by the police, something he shared with fellow burglar Jimmy Upton until Jimmy was caught and jailed.',
	StartingLevel = 5,
	MaxHitPoints = 95,
	Likes = {
		"Blood",
		"Ice",
	},
	Dislikes = {
		"Buns",
	},
	StartingPerks = {
		"Stealthy",
		"Scoundrel",
		"SecondStoryMan",
		"SteadyBreathing",
		"DeathFromAbove",
		"Untraceable",
		"LuckyStreak",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Magic",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Magic_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Magic_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Magic_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Magic",
	},
	Tier = "Legendary",
	Specialization = "Mechanic",
	gender = "Male",
	VoiceResponseId = "Magic",
}

