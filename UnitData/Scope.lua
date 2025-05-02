UndefineClass('Scope')
DefineClass.Scope = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 86,
	Agility = 89,
	Dexterity = 76,
	Strength = 64,
	Wisdom = 83,
	Will = 77,
	Leadership = 39,
	Marksmanship = 99,
	Mechanical = 4,
	Explosives = 21,
	Medical = 17,
	Portrait = "UI/MercsPortraits/Scope",
	BigPortrait = "UI/Mercs/Scope",
	IsMercenary = true,
	Name = T(630357922162, --[[ModItemUnitDataCompositeDef Scope Name]] "Шейла Стерлинг «Стрелка»"),
	Nick = T(616337703669, --[[ModItemUnitDataCompositeDef Scope Nick]] "Стрелка"),
	AllCapsNick = T(947910685503, --[[ModItemUnitDataCompositeDef Scope AllCapsNick]] "СТРЕЛКА"),
	Bio = T(706856939539, --[[ModItemUnitDataCompositeDef Scope Bio]] "В прошлом снайпер британской «Спешиэл Эйр Сервис», Стрелка умеет стремительно выйти на огневую позицию и сделать выстрел точно в цель. Во время одного ночного рейда на вражескую военную базу Стерлинг поразила шесть подтверждённых целей, перемещаясь между зданиями так быстро, что противник решил, будто его окружили. Профессионал высшего класса, она при этом не брезгует делиться с товарищами практическими советами."),
	Nationality = "England",
	Title = T(125612851314, --[[ModItemUnitDataCompositeDef Scope Title]] "Добрый ангел-хранитель"),
	Email = T(792449207788, --[[ModItemUnitDataCompositeDef Scope Email]] "prizel_i_pechenje@aim.com"),
	snype_nick = T(110116698394, --[[ModItemUnitDataCompositeDef Scope snype_nick]] "prizel_i_pechenje"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(491860556098, --[[ModItemUnitDataCompositeDef Scope Text MercChatRefusal Lines ChatMessage voice:Scope]] "Боюсь, ваше печальное финансовое положение несколько осложняет ситуацию. Я работаю только на тех, кто может заплатить. Прошу меня простить."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(233936267389, --[[ModItemUnitDataCompositeDef Scope Text MercChatRefusal Lines ChatMessage voice:Scope]] "Мне очень жаль, но счёт убитых наёмников говорит о вашей вопиющей безответственности, командир. Я не могу согласиться работать на вас."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(934501718003, --[[ModItemUnitDataCompositeDef Scope Text MercChatRefusal Lines ChatMessage voice:Scope]] "Я хотела бы больше времени проводить со своими детьми. Мне и без того слишком часто приходилось отлучаться из дома. Так что я, если можно, предпочла бы менее долгосрочный контракт."),
				}),
			},
			'Type', "duration",
			'Duration', "long",
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(144156829230, --[[ModItemUnitDataCompositeDef Scope Text MercChatMitigation Lines ChatMessage voice:Scope]] "Я не упущу возможности работать с Сиднеем. Ради этого я готова перестать сомневаться на ваш счёт."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Sidney",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(533577545840, --[[ModItemUnitDataCompositeDef Scope Text MercChatBranch Lines ChatMessage voice:Scope]] "Очень хорошо. И позволю себе бесплатный совет: не упустите шанса нанять Сиднея, это человек-легенда. С ним все ваши планы осуществятся гораздо быстрее."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(548856167739, --[[ModItemUnitDataCompositeDef Scope Text MercChatBranch Lines ChatMessage voice:Scope]] "Ну, до скорого. Надо бежать: у меня в духовке печенье. Я привезу немного и вам!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Sidney",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(945988831482, --[[ModItemUnitDataCompositeDef Scope Text Offline ChatMessage voice:Scope]] "Это Стрелка Стерлинг. К сожалению, меня сейчас нет на месте. Непременно дам знать, когда вернусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(700818684654, --[[ModItemUnitDataCompositeDef Scope Text GreetingAndOffer ChatMessage voice:Scope]] "Приветствую. Я внимательно вас слушаю. Итак?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(762646434698, --[[ModItemUnitDataCompositeDef Scope Text ConversationRestart ChatMessage voice:Scope]] "Нас, к сожалению, разъединили. Ну что, продолжим разговор?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(232882685066, --[[ModItemUnitDataCompositeDef Scope Text IdleLine ChatMessage voice:Scope]] "Нельзя ли чуточку побыстрее? У меня в духовке печенье."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(635926695231, --[[ModItemUnitDataCompositeDef Scope Text PartingWords ChatMessage voice:Scope]] "Отлично. Раз мы обо всём договорились, с нетерпением жду встречи. Я захвачу печенье, сможем выпить чаю."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(606582024557, --[[ModItemUnitDataCompositeDef Scope Text RehireIntro ChatMessage voice:Scope]] "Извините за неожиданное вторжение, но мой контракт вскоре истекает. Планируете ли вы продолжить наше сотрудничество?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(294477608448, --[[ModItemUnitDataCompositeDef Scope Text RehireOutro ChatMessage voice:Scope]] "Великолепно. Раз мы договорились, можно продолжить."),
		}),
	},
	DurationDiscount = "none",
	StartingSalary = 2600,
	SalaryIncrease = 200,
	SalaryMaxLv = 4900,
	LegacyNotes = '"As a former member of the British Special Forces, Sheila Sterlin was stationed in Belfast. She is en expert sharpshooter and trained in the art of urban warfare. Though she\'s new in the organization, Scope is a professional with impressive credentials." - A.I.M. Dossier, Jagged Alliance: Deadly Games\n\n"First off, a correction is in order: Sterling\'s previous bio mistakenly stated that she was a member of the British Special Forces when, in fact, no such service exsists. She served with the British Special Air Service (SAS). A.I.M. regrets the error and any inconvenience it may have caused.\n\nAdditional Info: Trained in urban warfare, Scope is an expert markwoman and is well-versed in night operations." - A.I.M. Dossier, Jagged Alliance 2',
	StartingLevel = 5,
	MaxHitPoints = 87,
	Likes = {
		"Sidney",
	},
	StartingPerks = {
		"NightOps",
		"HawksEye",
		"CancelShotPerk",
		"SteadyBreathing",
		"DeathFromAbove",
		"OpportunisticKiller",
		"Teacher",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Scope",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scope_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scope_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scope_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Scope",
	},
	Tier = "Legendary",
	Specialization = "Marksmen",
	pollyvoice = "Kendra",
	gender = "Female",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Scope",
}

