UndefineClass('Wolf')
DefineClass.Wolf = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 83,
	Dexterity = 86,
	Strength = 87,
	Wisdom = 75,
	Leadership = 58,
	Marksmanship = 79,
	Mechanical = 65,
	Explosives = 43,
	Medical = 48,
	Portrait = "UI/MercsPortraits/Wolf",
	BigPortrait = "UI/Mercs/Wolf",
	IsMercenary = true,
	Name = T(415973309831, --[[ModItemUnitDataCompositeDef Wolf Name]] "Питер Сандерсон «Волк»"),
	Nick = T(854057195964, --[[ModItemUnitDataCompositeDef Wolf Nick]] "Волк"),
	AllCapsNick = T(772197398311, --[[ModItemUnitDataCompositeDef Wolf AllCapsNick]] "ВОЛК"),
	Bio = T(947517898504, --[[ModItemUnitDataCompositeDef Wolf Bio]] "Ненадолго покинув A.I.M., чтобы занять должность инструктора в элитном (и весьма высокооплачиваемом) загородном пейнтбольном клубе для состоятельных бизнесменов, Волк в конце концов устал учить заплывших жиром сорокалетних топ-менеджеров, как делать вид, что они убивают друг друга. Окончательно его добил недельный выездной лагерь, где он пытался обучить своих подопечных основам тактики и ночных операций, пока те шарились по лесу в светоотражающих оранжевых жилетах. Вернувшись в город, Сандерс сообщил, что более чем готов вновь поработать наёмником. Волк - один из самых всесторонне подготовленных бойцов A.I.M., пользующийся популярностью у клиентов, которым нужен мастер на все руки. Спешите заключить с ним контракт сейчас, пока это не сделали за вас другие!"),
	Nationality = "USA",
	Title = T(474239652453, --[[ModItemUnitDataCompositeDef Wolf Title]] "Универсальный наёмник"),
	Email = T(478313327038, --[[ModItemUnitDataCompositeDef Wolf Email]] "volk1@aim.com"),
	snype_nick = T(735297197775, --[[ModItemUnitDataCompositeDef Wolf snype_nick]] "volk1"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(339046331040, --[[ModItemUnitDataCompositeDef Wolf Text MercChatRefusal Lines ChatMessage voice:Wolf]] "Мы с Лиской... у нас с ней было. А теперь она погибла, и всё по твоей вине. Так что проваливай. Я никогда больше не буду на тебя работать."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Fox",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(972802933246, --[[ModItemUnitDataCompositeDef Wolf Text MercChatRefusal Lines ChatMessage voice:Wolf]] "Я бы с радостью, но ко мне в гости приехала мама, да и вообще дела. Я занятой человек, представляешь? Может, в другой раз."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(317941837726, --[[ModItemUnitDataCompositeDef Wolf Text MercChatHaggle Lines ChatMessage voice:Wolf]] "Послужной список у тебя неважный - судя по тому, сколько народу с твоих заданий не возвращается. Если хочешь, чтобы я на тебя работал, придётся заплатить больше."),
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
					'Text', T(836197395161, --[[ModItemUnitDataCompositeDef Wolf Text MercChatHaggle Lines ChatMessage voice:Wolf]] "Новые контракты, новые ставки. Я сегодня лучше, чем вчера."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(833123233503, --[[ModItemUnitDataCompositeDef Wolf Text MercChatMitigation Lines ChatMessage voice:Wolf]] "Если Лиска с тобой, то и я, разумеется, тоже! Считай, что я в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(191822303648, --[[ModItemUnitDataCompositeDef Wolf Text MercChatBranch Lines ChatMessage voice:Wolf]] "Знаешь, мне приятно будет слетать в эту командировку с Лиской. Может, позовёшь и её тоже?"),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(527442588676, --[[ModItemUnitDataCompositeDef Wolf Text MercChatBranch Lines ChatMessage voice:Wolf]] "Это так, предложение. Ну, я пошёл паковать вещи."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Fox",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(929760186481, --[[ModItemUnitDataCompositeDef Wolf Text Offline ChatMessage voice:Wolf]] "Это Волк. Я сейчас в спортивном зале, но я напишу, когда освобожусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(479719341895, --[[ModItemUnitDataCompositeDef Wolf Text GreetingAndOffer ChatMessage voice:Wolf]] "Волк на связи. Если у тебя есть деньги, можем договориться."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(205981379707, --[[ModItemUnitDataCompositeDef Wolf Text ConversationRestart ChatMessage voice:Wolf]] "Нас разъединили. Попробуем ещё разок."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(450435284152, --[[ModItemUnitDataCompositeDef Wolf Text IdleLine ChatMessage voice:Wolf]] "Эй! Чего молчишь?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(453546769788, --[[ModItemUnitDataCompositeDef Wolf Text PartingWords ChatMessage voice:Wolf]] "Ну, пойду паковать вещи."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(565646668072, --[[ModItemUnitDataCompositeDef Wolf Text RehireIntro ChatMessage voice:Wolf]] "Мой контракт почти что истёк. Расскажи про твои планы. Меня люди ждут."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(806165285161, --[[ModItemUnitDataCompositeDef Wolf Text RehireOutro ChatMessage voice:Wolf]] "Похоже, Злобный Серый Волк ещё немного поработает на тебя."),
		}),
	},
	MedicalDeposit = "large",
	DurationDiscount = "long only",
	Haggling = "high",
	StartingSalary = 1150,
	SalaryLv1 = 600,
	SalaryMaxLv = 3500,
	LegacyNotes = 'JA1:\n\nAppropriately known as "Wolf", Peter Sanderson has been tracking down the enemy and acquiring a well-rounded knowledge of all mercenary disciplines as a member of A.I.M. over the past four years. His reputation is that of a proven professional." - A.I.M. Dossier, Jagged Alliance\n\nJA2:\n\n"Peter Sanderson just returned from a six-month absence. He booked off on personal leave to take an intensive physical training program and various other courses to top-off his status as a jack-of-all-trades. Having lost over forty pounds, he\'s in the best shape he has ever been in and A.I.M., as a result, has gladly renewed his membership.\n\nAdditional info: When not on assignment, Sanderson instructs a Wolverine Civil Defense unit during the evenings." - A.I.M. Dossier, Jagged Alliance 2\n\nJust a solid guy to have around. For his price tag and skill set he\'s a great addition to almost any team. Wolf does prefer the life of a loner though, and will do better if no other merc is close by.',
	StartingLevel = 3,
	MaxHitPoints = 90,
	Likes = {
		"Fox",
	},
	StartingPerks = {
		"Teacher",
		"JackOfAllTrades",
		"CancelShotPerk",
		"BeefedUp",
		"NightOps",
		"Pessimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Wolf",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Wolf_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Wolf_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Wolf_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Wolf",
	},
	Tier = "Veteran",
	Specialization = "Leader",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Wolf",
}

