UndefineClass('Raven')
DefineClass.Raven = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 85,
	Agility = 76,
	Dexterity = 93,
	Strength = 68,
	Wisdom = 78,
	Leadership = 19,
	Marksmanship = 94,
	Mechanical = 5,
	Explosives = 5,
	Medical = 17,
	Portrait = "UI/MercsPortraits/Raven",
	BigPortrait = "UI/Mercs/Raven",
	IsMercenary = true,
	Name = T(861196503875, --[[ModItemUnitDataCompositeDef Raven Name]] "Шарлен Хиггенс «Сова»"),
	Nick = T(273069265497, --[[ModItemUnitDataCompositeDef Raven Nick]] "Сова"),
	AllCapsNick = T(830280514307, --[[ModItemUnitDataCompositeDef Raven AllCapsNick]] "СОВА"),
	Bio = T(615837234228, --[[ModItemUnitDataCompositeDef Raven Bio]] "Пока её муж Рон с помощниками отбивали попытки сомалийских пиратов взять их лайнер на абордаж, «Сова» использовала прикрытие ночи, одного за другим снимая нападающих чёткими короткими очередями из трофейного автомата. Шарлен - опытный снайпер с железной выдержкой и предпочитает сражаться бок о бок с мужем, но превосходно справится с поставленным заданием и самостоятельно. В команде она всегда старается поддерживать высокие профессиональные стандарты и дух товарищества."),
	Nationality = "USA",
	Title = T(374351690992, --[[ModItemUnitDataCompositeDef Raven Title]] "Ужас, летящий на крыльях ночи"),
	Email = T(215342188748, --[[ModItemUnitDataCompositeDef Raven Email]] "sova@aim.com"),
	snype_nick = T(838938896346, --[[ModItemUnitDataCompositeDef Raven snype_nick]] "sova"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(235009774120, --[[ModItemUnitDataCompositeDef Raven Text MercChatRefusal Lines ChatMessage voice:Raven]] "Не думаю, что после гибели Рона я вообще хочу чем-либо заниматься. Извини, но мне нужно побыть с моими собаками и оплакать мужа. Не пиши мне больше."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Raider",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(821677606255, --[[ModItemUnitDataCompositeDef Raven Text MercChatRefusal Lines ChatMessage voice:Raven]] "Твой банковский счет как-то... недоукомплектован. Я должна быть уверена, что мне заплатят. Я ведь не просто за ради острых ощущений этим занимаюсь, так?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(707170466268, --[[ModItemUnitDataCompositeDef Raven Text MercChatHaggle Lines ChatMessage voice:Raven]] "Я тебя почти не знаю. В общем-то даже совсем не знаю."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(985051500493, --[[ModItemUnitDataCompositeDef Raven Text MercChatHaggle Lines ChatMessage voice:Raven]] "А значит, я вынуждена запросить более высокую ставку. Вдруг ты как командир вообще профнепригоден?"),
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
					'Text', T(803743956491, --[[ModItemUnitDataCompositeDef Raven Text MercChatMitigation Lines ChatMessage voice:Raven]] "Если мой муж согласен работать с тобой, я - тоже."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(669225827490, --[[ModItemUnitDataCompositeDef Raven Text MercChatMitigation Lines ChatMessage voice:Raven]] "Договорились."),
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
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(222829981265, --[[ModItemUnitDataCompositeDef Raven Text MercChatBranch Lines ChatMessage voice:Raven]] "Не люблю оставлять Рона одного дома. Нет, правда: я когда уезжаю, он по мне скучает даже больше, чем мои собаки."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(239121158866, --[[ModItemUnitDataCompositeDef Raven Text MercChatBranch Lines ChatMessage voice:Raven]] "Может, напишешь и ему тоже? Он хорош. Не настолько, насколько я, конечно, но тут уж мало кто сравнится."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Raider",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(646426109683, --[[ModItemUnitDataCompositeDef Raven Text Offline ChatMessage voice:Raven]] "Привет, это Шарлен Хиггенс. Я сейчас вышла. Может, поговорим в другое время?"),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(190805596706, --[[ModItemUnitDataCompositeDef Raven Text GreetingAndOffer ChatMessage voice:Raven]] "Привет, это Шарлен Хиггенс. Я так понимаю, у тебя для меня интересное задание?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(262640626809, --[[ModItemUnitDataCompositeDef Raven Text ConversationRestart ChatMessage voice:Raven]] "Ладно, попробуем ещё раз."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(885107977144, --[[ModItemUnitDataCompositeDef Raven Text IdleLine ChatMessage voice:Raven]] "Мне хорошо даются ночные операции, стрельба и вообще невыполнимые задания. Это так, пища для размышлений."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(523902854972, --[[ModItemUnitDataCompositeDef Raven Text PartingWords ChatMessage voice:Raven]] "Отлично. Жду не дождусь, когда можно будет начать. Осталось только найти, кто посидит с моими собаками."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(473763278790, --[[ModItemUnitDataCompositeDef Raven Text RehireIntro ChatMessage voice:Raven]] "Мой контракт пора продлевать. Я не против, а ты?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(512849572301, --[[ModItemUnitDataCompositeDef Raven Text RehireOutro ChatMessage voice:Raven]] "Отлично. Мне нравится такой вариант."),
		}),
	},
	StartingSalary = 1850,
	SalaryIncrease = 230,
	SalaryLv1 = 1200,
	SalaryMaxLv = 7500,
	LegacyNotes = '"Former L.A.P.D. SWAT team sharpshooter, Sgt. Charlene Higgens left the force for A.I.M. so she could work alongside her husband, Ron Higgens. They prefer to take assignments together since operate with the precision of a solitary unit. If you listen to them though, you\'d never realize they\'re married; they rarely acknowledge their personal lives during work. Raven is qualified in night operations." - A.I.M. dossier\n\nAdditional info:\n\nA female version of her husband. They belong together. Also good friends with Donna who is their unofficial go to doctor for treating injuries.\nLess obsessive about being in charge.\nA consummate professional that gets on well with everyone.\nLighter, more prone to humor\nMore open and outgoing.',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Raider",
	},
	StartingPerks = {
		"AutoWeapons",
		"Spotter",
		"Deadeye",
		"NightOps",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Raven",
	},
	Tier = "Veteran",
	Specialization = "Autoriflemen",
	pollyvoice = "Emma",
	gender = "Female",
	VoiceResponseId = "Raven",
}

