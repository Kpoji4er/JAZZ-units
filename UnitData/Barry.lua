UndefineClass('Barry')
DefineClass.Barry = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 73,
	Dexterity = 87,
	Strength = 78,
	Wisdom = 91,
	Will = 67,
	Leadership = 29,
	Marksmanship = 70,
	Mechanical = 46,
	Explosives = 93,
	Medical = 20,
	Portrait = "UI/MercsPortraits/Barry",
	BigPortrait = "UI/Mercs/Barry",
	IsMercenary = true,
	Name = T(919764309920, --[[ModItemUnitDataCompositeDef Barry Name]] "Барри Ангер"),
	Nick = T(872433137526, --[[ModItemUnitDataCompositeDef Barry Nick]] "Барри"),
	AllCapsNick = T(420472155832, --[[ModItemUnitDataCompositeDef Barry AllCapsNick]] "БАРРИ"),
	Bio = T(201477611708, --[[ModItemUnitDataCompositeDef Barry Bio]] "Благочестивый христианин и педант - на первый взгляд Барри Ангеру больше подошла бы карьера не солдата удачи, а электрика. Тем не менее, сам он предпочитает зарабатывать на жизнь, не прокладывая провода в своей родной Венгрии, а закладывая взрывчатку на складах противника (куда сам же и проникает, вскрывая замки)."),
	Nationality = "Hungary",
	Title = T(139748625274, --[[ModItemUnitDataCompositeDef Barry Title]] "Святой покровитель пластида"),
	Email = T(314757335274, --[[ModItemUnitDataCompositeDef Barry Email]] "unger.barry@aim.com"),
	snype_nick = T(435268553018, --[[ModItemUnitDataCompositeDef Barry snype_nick]] "unger.barry"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(674127463811, --[[ModItemUnitDataCompositeDef Barry Text MercChatRefusal Lines ChatMessage voice:Barry]] "Даже с бомбами безопасно работать, а вот с тобой слишком опасно. Начни лучше заботиться о своих солдатах! Пока!"),
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
					'Text', T(650809113310, --[[ModItemUnitDataCompositeDef Barry Text MercChatRefusal Lines ChatMessage voice:Barry]] "Предпочитаю долгосрочные контракты. Так надёжнее."),
				}),
			},
			'Type', "duration",
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(646034666673, --[[ModItemUnitDataCompositeDef Barry Text MercChatHaggle Lines ChatMessage voice:Barry]] "Работать на тебя опасно. Но за дополнительную плату я согласен."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(115207671188, --[[ModItemUnitDataCompositeDef Barry Text MercChatHaggle Lines ChatMessage voice:Barry]] "Мы раньше не работали вместе. Я тебя не разузнал. Заплати больше - это будет моя страховка."),
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
					'Text', T(456533953431, --[[ModItemUnitDataCompositeDef Barry Text MercChatMitigation Lines ChatMessage voice:Barry]] "Я не до конца уверен, но Рыжий с тобой. Он мой друг, так что ладно, по рукам."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Red",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(935578724304, --[[ModItemUnitDataCompositeDef Barry Text MercChatBranch Lines ChatMessage voice:Barry]] "Мы достигли взаимного согласия. Считай меня своим наёмником."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(408115538874, --[[ModItemUnitDataCompositeDef Barry Text MercChatBranch Lines ChatMessage voice:Barry]] "Ещё одно: мой друг Рыжий - просто взрывное устройство. Я буду рад работать вместе с ним. Имей в виду."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(196551213889, --[[ModItemUnitDataCompositeDef Barry Text MercChatBranch Lines ChatMessage voice:Barry]] "Мы скоро встретимся. Пока."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Red",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(816742272286, --[[ModItemUnitDataCompositeDef Barry Text Offline ChatMessage voice:Barry]] "Барри Ангер. Я сейчас не на связи. Но готов работать. Я работаю со взрывчаткой. Пишите, когда сможете."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(255302860986, --[[ModItemUnitDataCompositeDef Barry Text GreetingAndOffer ChatMessage voice:Barry]] "Барри Ангер. Это по поводу работы? Сейчас работы мало, так что я не привередливый."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(490078009951, --[[ModItemUnitDataCompositeDef Barry Text ConversationRestart ChatMessage voice:Barry]] "Мы не достигли согласия. Предлагаю продолжить дальше."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(181178716282, --[[ModItemUnitDataCompositeDef Barry Text IdleLine ChatMessage voice:Barry]] "Машина зависла? Если нет - предлагаю продолжить."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(553481989500, --[[ModItemUnitDataCompositeDef Barry Text PartingWords ChatMessage voice:Barry]] "Мы достигли взаимного согласия. Считай меня своим наёмником. Пока."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(779078342210, --[[ModItemUnitDataCompositeDef Barry Text RehireIntro ChatMessage voice:Barry]] "Мой контракт подходит к завершению. Предлагаю достигнуть нового согласия."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(912455165410, --[[ModItemUnitDataCompositeDef Barry Text RehireOutro ChatMessage voice:Barry]] "Я удовлетворён. Спасибо."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 470,
	SalaryIncrease = 280,
	SalaryLv1 = 100,
	SalaryMaxLv = 4100,
	LegacyNotes = '"Hungarian-born Unger is part of a new breed of explosive experts. He learned most of his trade the safe way--in a classroom. His studies included the theory behind incendiary devices, and the technical aspects of electronics and circuitry. Although he also took locksmith and swimming courses, he didn\'t do well in the latter." - A.I.M. Dossier\n\nAdditional info:\n\nSpeaks with a heavy Hungarian accent. Use of English is stilted and overly formal.\nDispassionate and distant, straightforward with his opinions, yet in possession of humility.\nReligion had a strong part in his upbringing.\nPrecise and intelligent (would likely read instructions before attempting anything).',
	StartingLevel = 2,
	MaxHitPoints = 82,
	Likes = {
		"Red",
	},
	StartingPerks = {
		"MrFixit",
		"Spiritual",
		"DesignerExplosives",
		"BreachAndClear",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Barry",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Barry_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Barry_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Barry_Savana",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
	},
	Equipment = {
		"Barry",
	},
	Specialization = "ExplosiveExpert",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Barry",
}

