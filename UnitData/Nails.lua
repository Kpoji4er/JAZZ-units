UndefineClass('Nails')
DefineClass.Nails = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 71,
	Dexterity = 88,
	Strength = 90,
	Wisdom = 79,
	Will = 72,
	Leadership = 30,
	Marksmanship = 84,
	Mechanical = 63,
	Explosives = 78,
	Medical = 11,
	Portrait = "UI/MercsPortraits/Nails",
	BigPortrait = "UI/Mercs/Nails",
	IsMercenary = true,
	Name = T(837593519203, --[[ModItemUnitDataCompositeDef Nails Name]] "Эдгар Сморф «Гвоздь»"),
	Nick = T(516388631352, --[[ModItemUnitDataCompositeDef Nails Nick]] "Гвоздь"),
	AllCapsNick = T(597544800039, --[[ModItemUnitDataCompositeDef Nails AllCapsNick]] "ГВОЗДЬ"),
	Bio = T(622487091001, --[[ModItemUnitDataCompositeDef Nails Bio]] "Основав первую в истории Арулько банду байкеров, Гвоздь вскоре с отвращением покинул её, поскольку так и не смог убедить товарищей сделать ограбления винных магазинов и поджоги автозаправок (тех, что бодяжат бензин, разумеется) двумя столпами их совместной деятельности. Сейчас Гвоздь рассматривает предложения нанимателей, которым пригодится его навык обращения со взрывчаткой и механизмами и крутой нрав. Он готов лететь куда угодно и стрелять по кому угодно при условии, что от него не будут требовать расстаться с косухой (во многих местах уже продырявленной и изрядно попахивающей)."),
	Nationality = "USA",
	Title = T(494228139073, --[[ModItemUnitDataCompositeDef Nails Title]] "Не трожь косуху"),
	Email = T(150606437691, --[[ModItemUnitDataCompositeDef Nails Email]] "kosuhu_ne_otdam@aim.com"),
	snype_nick = T(309985618460, --[[ModItemUnitDataCompositeDef Nails snype_nick]] "kosuhu_ne_otdam"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(766632300489, --[[ModItemUnitDataCompositeDef Nails Text MercChatRefusal Lines ChatMessage voice:Nails]] "С тобой в банке-то хоть здороваются? Наруби капусты — тогда с тобой и побазарим."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(456685093723, --[[ModItemUnitDataCompositeDef Nails Text MercChatRefusal Lines ChatMessage voice:Nails]] "Без обид, бродяга, мы кататься едем. Давай в другой раз."),
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
					'Text', T(321697258530, --[[ModItemUnitDataCompositeDef Nails Text MercChatHaggle Lines ChatMessage voice:Nails]] "Вернусь я с задания или нет - это бабушка надвое сказала. Парень я рисковый, но за риск надо конкретно отсыпать, бродяга."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(429290818592, --[[ModItemUnitDataCompositeDef Nails Text MercChatHaggle Lines ChatMessage voice:Nails]] "Когда товар крутеет, цены растут. Меня уже зовёт дорога. Не хочешь прощаться — бахни сверху, бродяга."),
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
					'Text', T(857732043501, --[[ModItemUnitDataCompositeDef Nails Text MercChatMitigation Lines ChatMessage voice:Nails]] "Короче. Лиска с тобой? Я с тобой! Это без базара."),
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
					'Text', T(632674475914, --[[ModItemUnitDataCompositeDef Nails Text MercChatBranch Lines ChatMessage voice:Nails]] "Э, Лиску-то нанять не хочешь? Девочка мастер поднимать... э... боевой дух. Сечёшь? И на задании о-о-чень полезна. Ручки у неё рабочие!"),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(818028279133, --[[ModItemUnitDataCompositeDef Nails Text MercChatBranch Lines ChatMessage voice:Nails]] "Эт самое, ладно. Ща вернусь тогда, я быстро."),
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
			'Text', T(927826728791, --[[ModItemUnitDataCompositeDef Nails Text Offline ChatMessage voice:Nails]] "Гвоздь! Отвечу, слышь, когда отвечу. Дела ща тут делаю."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(487748725487, --[[ModItemUnitDataCompositeDef Nails Text GreetingAndOffer ChatMessage voice:Nails]] "Хай, бродяга! Надо подкатить, помутить и откатить? Эт ко мне!"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(635363764783, --[[ModItemUnitDataCompositeDef Nails Text ConversationRestart ChatMessage voice:Nails]] "Досмотрел свою порнушку, бродяга? Тогда давай уже за дело."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(315553885416, --[[ModItemUnitDataCompositeDef Nails Text IdleLine ChatMessage voice:Nails]] "Бро-одяга-а! Харош пялить там на тёлочек, алё. У меня дел дохрена."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(490165429885, --[[ModItemUnitDataCompositeDef Nails Text PartingWords ChatMessage voice:Nails]] "Замётано. Только имей в виду: со мной косуха в комплекте. Я её не снимаю. Ваще. И даже! ВАЩЕ! НЕ ПРОСИ!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(223858526991, --[[ModItemUnitDataCompositeDef Nails Text RehireIntro ChatMessage voice:Nails]] "У нас контрактик на исходе-то, бродяга. Чё день грядущий нам базарит?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(418152484689, --[[ModItemUnitDataCompositeDef Nails Text RehireOutro ChatMessage voice:Nails]] "Замётано. Понавожу тут шухеру ещё немного."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 1600,
	SalaryLv1 = 400,
	SalaryMaxLv = 3900,
	LegacyNotes = 'JA1:\n\n"Edgar Smorth was the leader of the largest biker gang on the continent. He\'s as tough as, you guessed it, Nails, and he\'s wanted in just about every country with law. For now, Nails has decided to lie low in A.I.M.. A word of warning - Don\'t mess with the vest!" - Jagged Alliance\n\nJA2:\n\n"Edgar Smorth traded in his bike, leathers, and vest to become a full-time A.I.M. mercenary. In the year he\'s been with the organization, Nails has taken advantage of his knowledge about car bombs to become a military explosives expert. Despite his career change, he hasn\'t lost his combative edge or substantial belly he developed as a renegade biker. Edgar has a knack for getting into inaccessible places, just as long as they aren\'t too small and narrow." - Jagged Alliance 2\n\nAdditional info:\n\nEx-biker, tough guy.\nVoice: Heavy, deep and raspy.\nTakes a jovial pleasure in killing.\nLikes let out a sick laugh when he\'s having fun.\nCalls people Scooter; a friendly put-down.\nDo not even think about touching the leather jacket.',
	StartingLevel = 4,
	MaxHitPoints = 72,
	Likes = {
		"Fox",
	},
	StartingPerks = {
		"MeleeTraining",
		"Psycho",
		"Claustrophobic",
		"NailsPerk",
		"TakeAim",
		"InstantAutopsy",
		"LineBreaker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Nails",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Nails_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Nails_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Nails_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
	},
	Equipment = {
		"Nails",
	},
	Tier = "Elite",
	Specialization = "ExplosiveExpert",
	gender = "Male",
}

