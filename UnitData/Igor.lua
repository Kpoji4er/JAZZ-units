UndefineClass('Igor')
DefineClass.Igor = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 89,
	Dexterity = 74,
	Strength = 85,
	Wisdom = 81,
	Will = 79,
	Leadership = 4,
	Marksmanship = 78,
	Mechanical = 36,
	Explosives = 19,
	Medical = 17,
	Portrait = "UI/MercsPortraits/Igor",
	BigPortrait = "UI/Mercs/Igor",
	IsMercenary = true,
	Name = T(951021360874, --[[ModItemUnitDataCompositeDef Igor Name]] "Игорь Долвич"),
	Nick = T(242446641011, --[[ModItemUnitDataCompositeDef Igor Nick]] "Игорь"),
	AllCapsNick = T(383779569786, --[[ModItemUnitDataCompositeDef Igor AllCapsNick]] "ИГОРЬ"),
	Bio = T(401565007653, --[[ModItemUnitDataCompositeDef Igor Bio]] "Хоть Игорь и гордится тем, что он - племянник самого Ивана Долвича, он по праву может похвалиться и собственными достижениями. Молодой, но исключительно талантливый наёмник, он уже завоевал уважение коллег своей выносливостью, отвагой, меткостью и способностью незаметно подкрадываться к противнику. Тем не менее, до своего легендарного дяди ему ещё расти и расти, и Игорь исполнен решимости преумножить славу семьи Долвичей. Крайне перспективный боец!"),
	Nationality = "Russia",
	Title = T(753598137188, --[[ModItemUnitDataCompositeDef Igor Title]] "Наёмник-орденоносец"),
	Email = T(673794011457, --[[ModItemUnitDataCompositeDef Igor Email]] "super_igor@aim.com"),
	snype_nick = T(951768641593, --[[ModItemUnitDataCompositeDef Igor snype_nick]] "super_igor"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(336851318657, --[[ModItemUnitDataCompositeDef Igor Text MercChatRefusal Lines ChatMessage voice:Igor]] "Нет! Ты убил дядю Ивана. Он был самый лучший! Если он умер под твоим командованием, значит, ты ужасный командир. Теперь Игорь - последний из Долвичей. Игорь должен выжить."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(387833852326, --[[ModItemUnitDataCompositeDef Igor Text MercChatRefusal Lines ChatMessage voice:Igor]] "Нет. Ты - ужасный командир, и мой дядя мёртв. Я больше не буду на тебя работать."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Ivan",
				}),
			},
			'Type', "rehire",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(122302977852, --[[ModItemUnitDataCompositeDef Igor Text MercChatRefusal Lines ChatMessage voice:Igor]] "Слишком многие из твоих бойцов возвращаются домой по частям. Я не настолько стремлюсь умереть. Я должен отклонить твоё предложение."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(449010257088, --[[ModItemUnitDataCompositeDef Igor Text MercChatHaggle Lines ChatMessage voice:Igor]] "Нет! A.I.M. вечно недоплачивает Игрою. Игорь заслуживает надбавки. Например, такой."),
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
					'Text', T(604251052049, --[[ModItemUnitDataCompositeDef Igor Text MercChatHaggle Lines ChatMessage voice:Igor]] "Я уже совершил немало подвигов. Я заслуживаю прибавки."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(134926984200, --[[ModItemUnitDataCompositeDef Igor Text MercChatMitigation Lines ChatMessage voice:Igor]] "Я всегда считал честью служить там, где служит мой потрясающий дядя. Я согласен!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(424670207295, --[[ModItemUnitDataCompositeDef Igor Text MercChatMitigation Lines ChatMessage voice:Igor]] "Я уже думал сказать, что больше не хочу работать на тебя, но с тобой моя Калинка. Я должен оберегать её. Я останусь - но попрошу надбавки за то, что забочусь о ней."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Kalyna",
						}),
						PlaceObj('MercIsLikedDisliked', {
							Object = "Kalyna",
							TargetUnit = "Igor",
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
					'Text', T(689959628569, --[[ModItemUnitDataCompositeDef Igor Text MercChatBranch Lines ChatMessage voice:Igor]] "Найми и дядю Ивана тоже. Он - самый лучший. Пусть видит, что я не опозорил имя Долвичей. А теперь давай выпьем. Я ушёл за водкой."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ivan",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(100640650018, --[[ModItemUnitDataCompositeDef Igor Text Offline ChatMessage voice:Igor]] "Это Игорь. Игорь - отличный наёмник. Почти все бывшие командиры его хвалят. Напишите позже, если хотите нанять Игоря."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(103428746749, --[[ModItemUnitDataCompositeDef Igor Text GreetingAndOffer ChatMessage voice:Igor]] "Это Игорь. Игорь - отличный наёмник. Как и его великий дядя. Что нужно делать?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(513452735443, --[[ModItemUnitDataCompositeDef Igor Text ConversationRestart ChatMessage voice:Igor]] "Нужно было отвлечься, выпить с друзьями? Понимаю. Продолжим разговор?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(710657353028, --[[ModItemUnitDataCompositeDef Igor Text IdleLine ChatMessage voice:Igor]] "Алё? Мне водку пить пора, давай к делу. Игорь спешит."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(332890798261, --[[ModItemUnitDataCompositeDef Igor Text PartingWords ChatMessage voice:Igor]] "Ты не пожалеешь. Игорь - отличный наемник. Много почетных грамот заслужит. Может, даже орден."),
		}),
		PlaceObj('ChatMessage', {
			'Text', T(434040400943, --[[ModItemUnitDataCompositeDef Igor Text PartingWords ChatMessage voice:Igor]] "Отлично. Теперь давай выпьем. Я пошёл за водкой."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(863582844498, --[[ModItemUnitDataCompositeDef Igor Text RehireIntro ChatMessage voice:Igor]] "Ты видишь, что Игорь - отличный наёмник. Но его контракт скоро заканчивается. Это нужно исправить."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(938302509814, --[[ModItemUnitDataCompositeDef Igor Text RehireOutro ChatMessage voice:Igor]] "Теперь давай выпьем. Русский обычай."),
		}),
	},
	MedicalDeposit = "large",
	Haggling = "high",
	StartingSalary = 450,
	SalaryIncrease = 290,
	SalaryLv1 = 275,
	SalaryMaxLv = 3500,
	LegacyNotes = '"Following in his uncle\'s footsteps won\'t be easy for Igor. His uncle Ivan Dolvich is legendary. Igor may be new to A.I.M. but he is by no means new to armed combat--he developed his abilities for stealth while in action in Chechnya. Most importantly, his bloodline speaks volumes about his potential. Igor and Ivan are already being referred to as the Russian "I-Team."" - A.I.M. Dossier\n\nAdditional info: \n\nRussian accent.\nHas had plenty of exposure to alcohol due to the horrors of war, though not as much of a drunk as Larry. \nUses odd expressions, which sometimes come off as strange and funny.\nAdmires his uncle, Ivan, but probably lacks the fortitude and discipline to be like him.\nHis affordable rates and good physical stats makes him a good choice for the opening game.',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "MeleeWeapon")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 91,
	Likes = {
		"Ivan",
		"Grunty",
	},
	LearnToLike = {
		"Kalyna",
	},
	StartingPerks = {
		"Nazdarovya",
		"Stealthy",
		"OptimalPerformance",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Igor",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Igor_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Igor_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Igor_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Igor",
	},
	Specialization = "Stealth",
	pollyvoice = "Geraint",
	gender = "Male",
	VoiceResponseId = "Igor",
}

