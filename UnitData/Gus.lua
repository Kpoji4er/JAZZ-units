UndefineClass('Gus')
DefineClass.Gus = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 74,
	Agility = 71,
	Dexterity = 84,
	Strength = 81,
	Wisdom = 94,
	Will = 97,
	Leadership = 85,
	Marksmanship = 95,
	Mechanical = 80,
	Explosives = 76,
	Medical = 71,
	Portrait = "UI/MercsPortraits/Gus",
	BigPortrait = "UI/Mercs/Gus",
	IsMercenary = true,
	Name = T(427138476543, --[[ModItemUnitDataCompositeDef Gus Name]] "Гас Тарболс"),
	Nick = T(732907985726, --[[ModItemUnitDataCompositeDef Gus Nick]] "Гас"),
	AllCapsNick = T(980126090528, --[[ModItemUnitDataCompositeDef Gus AllCapsNick]] "ГАС"),
	HireStatus = "Retired",
	Bio = T(257144197846, --[[ModItemUnitDataCompositeDef Gus Bio]] "Ходят слухи, что, когда вновь избранный правитель Арулько предложил Тарболсу пост старшего военного советника, старый солдат отказался, заявив: «Я вам не штабная крыса, чёрт подери!» Он всё-таки задержался достаточно, чтобы помочь подготовить первые несколько отрядов новой армии Арулько, но в конце концов покинул страну, проворчав что-то насчёт новой ноги. На данный момент его анкета всё ещё значится в списке находящихся на активной боевой службе наёмников, однако Гас уже несколько месяцев как не отвечает на звонки."),
	Nationality = "USA",
	Title = T(453788960669, --[[ModItemUnitDataCompositeDef Gus Title]] "Ненавидит штабную работу"),
	Email = T(844112356581, --[[ModItemUnitDataCompositeDef Gus Email]] "napalm_poutru@aim.com"),
	snype_nick = T(568370092426, --[[ModItemUnitDataCompositeDef Gus snype_nick]] "napalm_poutru"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(367663661849, --[[ModItemUnitDataCompositeDef Gus Text MercChatRefusal Lines ChatMessage voice:Gus]] "Отбой, Деревянский. Я теперь на пенсии. Рад бы, конечно, снова пострелять, но нога ни к чёрту."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(434798682432, --[[ModItemUnitDataCompositeDef Gus Text MercChatRefusal Lines ChatMessage voice:Gus]] "Мне страсть как охота потусить снова со старыми друзьями, но засранцы почти все на том свете. Эх, а я по ним скучаю... Ладно, пенсия - она и есть пенсия. Иди подоставай кого-нибудь ещё."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {}),
			},
			'chanceToRoll', 100,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(263880823235, --[[ModItemUnitDataCompositeDef Gus Text MercChatMitigation Lines ChatMessage voice:Gus]] "Чёрт, Деревяшкин, я ж сказал: на пенсии я! Мне дома положено сидеть, телек смотреть. Хотя... тряхнуть стариной с Леном... да и денег у тебя, похоже, на меня хватит..."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(886757961404, --[[ModItemUnitDataCompositeDef Gus Text MercChatMitigation Lines ChatMessage voice:Gus]] "Хрен с тобой, Деревяга. Я в деле. Смотри, чтоб я об этом не пожалел."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Len",
						}),
						PlaceObj('MercChatConditionMoney', {
							PresetValue = ">=50",
						}),
					},
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(700927801510, --[[ModItemUnitDataCompositeDef Gus Text MercChatMitigation Lines ChatMessage voice:Gus]] "Посмотри в словаре, что значит «пенсия», Деревяшкин. По мне - это значит «сиди и плюй в потолок»."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(976770556216, --[[ModItemUnitDataCompositeDef Gus Text MercChatMitigation Lines ChatMessage voice:Gus]] "Но раз уж ты уломал Лысого и даже покрыл все его алименты, значит, ты не лыком шит. Чёрт, Дубинкин, убедил ты меня. За дело. К чёрту пенсию."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Scully",
						}),
						PlaceObj('MercChatConditionMoney', {
							PresetValue = ">=50",
						}),
					},
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(498050185462, --[[ModItemUnitDataCompositeDef Gus Text MercChatBranch Lines ChatMessage voice:Gus]] "Раз уж ты собираешь стариков-разбойников, что б тебе не нанять и Лысого? Он - профи, каких мало. Да и свалить от своих бывших жён подальше будет рад."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(476258380189, --[[ModItemUnitDataCompositeDef Gus Text MercChatBranch Lines ChatMessage voice:Gus]] "Ладно, Деревядзе, конец связи. Скоро свидимся."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Scully",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(723868347890, --[[ModItemUnitDataCompositeDef Gus Text MercChatBranch Lines ChatMessage voice:Gus]] "Я слышал, Лен всё ещё зажигает. Он толковый солдат, хоть и упёртый как хрен знает что. Если предпочитаешь старпёров вроде меня, советую его тоже нанять."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(476258380189, --[[ModItemUnitDataCompositeDef Gus Text MercChatBranch Lines ChatMessage voice:Gus]] "Ладно, Деревядзе, конец связи. Скоро свидимся."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Len",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(318037696742, --[[ModItemUnitDataCompositeDef Gus Text Offline ChatMessage voice:Gus]] "Валите нахрен, я на пенсии. Больше никаких заданий, сплошной отдых. День, мать его, за днём. И не пишите мне больше."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(535111747196, --[[ModItemUnitDataCompositeDef Gus Text GreetingAndOffer ChatMessage voice:Gus]] "Не-не-не, Деревяшка. Я пас. На этот раз - реально. Я с этой чёртовой ногой еле ковыляю."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(623440416332, --[[ModItemUnitDataCompositeDef Gus Text ConversationRestart ChatMessage voice:Gus]] "Обломись, Деревяшкин. Я ещё не в маразме. Думаешь, если напишешь мне пять минут спустя, я уже всё забуду? Сказано же: я пас."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(174739397106, --[[ModItemUnitDataCompositeDef Gus Text IdleLine ChatMessage voice:Gus]] "Я не понял: кто тут старый пердун, не врубающийся в новые технологии, - ты или я? В чём затык? Комп завис? Или мозги твои?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(374431190814, --[[ModItemUnitDataCompositeDef Gus Text PartingWords ChatMessage voice:Gus]] "Выходит, скоро свидимся, Деревяшка."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(615386056408, --[[ModItemUnitDataCompositeDef Gus Text RehireIntro ChatMessage voice:Gus]] "Слышь, Деревяшкин! Раз уж ты меня сюда вытащил, может, не забудешь про меня и мой чёртов контракт, а?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(509965443319, --[[ModItemUnitDataCompositeDef Gus Text RehireOutro ChatMessage voice:Gus]] "Вот так-то. А теперь наваляем этим гадам, пока у меня нога опять не разболелась."),
		}),
	},
	DurationDiscount = "none",
	StartingSalary = 4600,
	SalaryIncrease = 200,
	SalaryLv1 = 1800,
	SalaryMaxLv = 6500,
	LegacyNotes = "JA1:\n\nGus' officially appears for the first time in Deadly Games as a non-player character who hires the commander to perform a series of missions, eventually culminating in a takedown of terrorist organization DFK.\n\nIf there's room in the team, Gus will join your merc squad on the very last mission to take on the DFK in their own headquarters. He carries with him high stats all around with the exception of a slightly subpar agility and medical skill, high level gear (to match the gear the squad has undoubtedly accumulated at this point) and joins for free. He performs the entire mission with a huge smile on his face, no matter what's going on. Evidently he really meant it when he said he wanted to get onto the field.\n\nJA2:\n\n\n\"After rather heated negotiations, A.I.M. is pleased to announce that the legendary DFK annihilator, Gus Tarballs, is now a member of our ranks. Gus's induction was delayed slightly when his mobile home slipped from its support blocks while he was in the process cleaning the septic hosing. Fortunately, his crushed right leg has healed rather nicely. Additional info: Our medical staff has recently cleared heavy weapons specialist Tarballs for full active duty.\" - A.I.M. dossier, Jagged Alliance 2\n\nJA2WF:\n\nHealth problems have caused Gus to retire from active mercenary service. Old leg injuries have finally caught up to him. We are nevertheless proud that we have this mature and experienced mercenary on our board of directors where he can continue to advise us on strategic matters.\" - Jagged Alliance 2: Wildfire Alumni gallery\n\nAdditional Info:\n\nAppearing to have a outgoing personality, Gus actually prefers the life of a loner and does better if no one is around him watching his every move. As he would say: \"Leave me the hell alone, woody\"\nRefers to the player as \"Woody\", a likely reference to one of Sir-Tech's founders, Robert Woodhead.",
	StartingLevel = 8,
	MaxHitPoints = 75,
	Likes = {
		"Len",
		"Scully",
	},
	StartingPerks = {
		"HeavyWeaponsTraining",
		"Loner",
		"OldDog",
		"WeGotThis",
		"CancelShotPerk",
		"LeadFromTheFront",
		"TrickShot",
		"TakeAim",
		"BeefedUp",
		"Flanker",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Gus",
			'Weight', 50,
			'GameStates', set({
	Savanna = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Gus_Savana",
			'Weight', 50,
			'GameStates', set( "Savanna" ),
		}),
	},
	Equipment = {
		"Gus",
	},
	Tier = "Legendary",
	Specialization = "Leader",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
}

