UndefineClass('Ice')
DefineClass.Ice = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 88,
	Dexterity = 87,
	Strength = 84,
	Wisdom = 78,
	Leadership = 25,
	Marksmanship = 87,
	Mechanical = 42,
	Explosives = 3,
	Medical = 7,
	Portrait = "UI/MercsPortraits/Ice",
	BigPortrait = "UI/Mercs/Ice",
	IsMercenary = true,
	Name = T(487023376427, --[[ModItemUnitDataCompositeDef Ice Name]] "Айс Уильямс"),
	Nick = T(176437286252, --[[ModItemUnitDataCompositeDef Ice Nick]] "Айс"),
	AllCapsNick = T(117433013766, --[[ModItemUnitDataCompositeDef Ice AllCapsNick]] "АЙС"),
	Bio = T(207628950939, --[[ModItemUnitDataCompositeDef Ice Bio]] "Один из наиболее востребованных наёмников в A.I.M., Айс пользуется популярностью как у новых, так и у постоянных клиентов благодаря своей ненавязчивой, дружеской манере общения. Хотя Уильямс с лёгкостью обращается и со снайперским оружием, его излюбленный режим стрельбы - старая добрая очередь из автомата, и он с готовностью делится с коллегами практическими советами, как лучше контролировать увод ствола в сторону."),
	Nationality = "USA",
	Title = T(634721638536, --[[ModItemUnitDataCompositeDef Ice Title]] "Настоящий «айс»"),
	Email = T(234986731479, --[[ModItemUnitDataCompositeDef Ice Email]] "ice@aim.com"),
	snype_nick = T(680935424578, --[[ModItemUnitDataCompositeDef Ice snype_nick]] "ice"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(980198563693, --[[ModItemUnitDataCompositeDef Ice Text MercChatRefusal Lines ChatMessage voice:Ice]] "Похоже, у тебя туго с бабками. Нет бабок - нет шмоток, нет шмоток - нет Айсмена. Сечёшь?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(947420046783, --[[ModItemUnitDataCompositeDef Ice Text MercChatRefusal Lines ChatMessage voice:Ice]] "Ох, блин. Чувак, реально забыл: обещал другану помочь с переездом. Мой косяк. Мир!"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(449305513325, --[[ModItemUnitDataCompositeDef Ice Text MercChatRefusal Lines ChatMessage voice:Ice]] "Задания-однодневки - это не моё, друг. Зови, если нужно как следует вложиться."),
				}),
			},
			'Type', "duration",
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(253254561122, --[[ModItemUnitDataCompositeDef Ice Text MercChatHaggle Lines ChatMessage voice:Ice]] "Я тебя не знаю. Может, ты нормальный мужик... а может, нет. Подкинь ещё, там видно будет."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionRehire', {}),
			},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(451725402409, --[[ModItemUnitDataCompositeDef Ice Text MercChatMitigation Lines ChatMessage voice:Ice]] "Йо, с Магом я всегда готов работать. Уже иду."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Magic",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(220360813308, --[[ModItemUnitDataCompositeDef Ice Text MercChatMitigation Lines ChatMessage voice:Ice]] "Гризли своё дело знает. Если он с тобой, значит, ты нормальный мужик. Я в деле."),
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
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(196058391078, --[[ModItemUnitDataCompositeDef Ice Text MercChatMitigation Lines ChatMessage voice:Ice]] "Бли-и-ин... У тебя в отряде Блад? Это всем чувакам чувак. Лады. Считай, я согласен."),
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
					'Text', T(355937024201, --[[ModItemUnitDataCompositeDef Ice Text MercChatBranch Lines ChatMessage voice:Ice]] "Заметано. Йо, еще одно: Маг - наш человек. Найми и его тоже."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Magic",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(446131633228, --[[ModItemUnitDataCompositeDef Ice Text MercChatBranch Lines ChatMessage voice:Ice]] "Замётано. А если хочешь совсем как взрослый, найми и Гризли тоже. Он крутой мужик."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Grizzly",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(354674179288, --[[ModItemUnitDataCompositeDef Ice Text MercChatBranch Lines ChatMessage voice:Ice]] "Замётано. Кстати, Блад, говорят, тож работу ищет. Найми-ка ты и его. Чувак - талантище."),
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
			'Text', T(439765835734, --[[ModItemUnitDataCompositeDef Ice Text Offline ChatMessage voice:Ice]] "Это Айс Уильямс. Я сейчас занят, но если это по работе, скиньте сообщение, я отпишусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(796351074859, --[[ModItemUnitDataCompositeDef Ice Text GreetingAndOffer ChatMessage voice:Ice]] "Айс. Как дела?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(394207735795, --[[ModItemUnitDataCompositeDef Ice Text ConversationRestart ChatMessage voice:Ice]] "Я весь внимание. Ну, давай."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(879227309291, --[[ModItemUnitDataCompositeDef Ice Text IdleLine ChatMessage voice:Ice]] "Это что, игра такая? Типа я должен угадать, что у тебя на уме?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(306254363554, --[[ModItemUnitDataCompositeDef Ice Text PartingWords ChatMessage voice:Ice]] "Отлично. Давай попробуем!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(722650285343, --[[ModItemUnitDataCompositeDef Ice Text RehireIntro ChatMessage voice:Ice]] "Контракт почти вышел. Как насчёт обновить?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(425548162876, --[[ModItemUnitDataCompositeDef Ice Text RehireOutro ChatMessage voice:Ice]] "Супер, супер. Не будем терять время."),
		}),
	},
	DurationDiscount = "long only",
	StartingSalary = 1500,
	SalaryIncrease = 260,
	SalaryLv1 = 780,
	SalaryMaxLv = 5400,
	LegacyNotes = 'JA1:\n\nA.I.M. Dossier - Jagged Alliance\n\n"A longtime member, Ice Williams has been primarily used as a sniper since joining the organization. Undaunted by the prospect of working for those of unknown reputation, he instead prides himself in helping those new to the mercenary game establish themselves."\nA.I.M. Dossier - Deadly Games\n\n"A longtime member, Ice Williams has been primarily used as a sniper since joining the organization almost nine years ago. "Casual" is probably the word that best describes this nonchalant soldier for hire. "Lethal" would be another."\n\nJA2:\n\nA.I.M. Dossier\n\n"The Iceman is back. After a short yet disastrous stint with one of our competitors--and we use that term loosely-Ice gained insight and wisdom on the merits of dealing with a professional organization. Williams owes a debt of gratitude to Magic for getting him reinstated."\n"Additional Info: His weapon of choice is the automatic."\nAdditional info:\n\nCool, laid-back, patient and friendly.\nNever gets overly excited. He\'s always got it covered.\nLives life for the moment, by the moment.\nConversation has a street corner, rather than combat zone, feel to it.\nIce\'s patience and friendly demeanor make him an ideal instructor.\nIt can be inferred from his JA2 bio (worked for a competitor) and his JA1 bio (loves helping the new guy) that he spent a short (very short) time working for M.E.R.C.',
	StartingLevel = 3,
	MaxHitPoints = 90,
	Likes = {
		"Magic",
		"Grizzly",
		"Blood",
	},
	LearnToLike = {
		"Livewire",
	},
	StartingPerks = {
		"AutoWeapons",
		"IcePerk",
		"Flanker",
		"LightningReaction",
		"Teacher",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Ice",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Ice_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Ice_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Ice_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Ice",
	},
	Tier = "Veteran",
	Specialization = "Autoriflemen",
	gender = "Male",
}

