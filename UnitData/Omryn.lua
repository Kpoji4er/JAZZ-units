UndefineClass('Omryn')
DefineClass.Omryn = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 67,
	Agility = 75,
	Dexterity = 66,
	Strength = 85,
	Wisdom = 77,
	Will = 82,
	Leadership = 15,
	Marksmanship = 80,
	Mechanical = 43,
	Explosives = 7,
	Medical = 13,
	Portrait = "UI/MercsPortraits/Omryn",
	BigPortrait = "UI/Mercs/Omryn",
	IsMercenary = true,
	Name = T(991660835571, --[[ModItemUnitDataCompositeDef Omryn Name]] "Юрий Омрын"),
	Nick = T(703536100724, --[[ModItemUnitDataCompositeDef Omryn Nick]] "Омрын"),
	AllCapsNick = T(586907860855, --[[ModItemUnitDataCompositeDef Omryn AllCapsNick]] "ОМРЫН"),
	Bio = T(503386258599, --[[ModItemUnitDataCompositeDef Omryn Bio]] "Родившийся в стойбище оленеводов на Дальнем Востоке России, Омрын начал свою карьеру наёмника с того, что помогал M.E.R.C. выслеживать браконьеров в сибирской тайге. Почувствовав вкус к приключениям, молодой чукча уехал из России и вступил во французский Иностранный легион, в конце концов осев в этой стране. Прекрасная меткость, необычайная острота слуха, невозмутимость и знание английского, французского и русского принесли Омрыну расположение начальства и уважение товарищей. Человек по природе неторопливый и не амбициозный, Омрын в конце концов устал от службы и при первой возможности перешёл в A.I.M., сам подбирая задания себе по вкусу."),
	Nationality = "Russia",
	Title = T(136809018730, --[[ModItemUnitDataCompositeDef Omryn Title]] "Вечно голодный охотник"),
	Email = T(568909169483, --[[ModItemUnitDataCompositeDef Omryn Email]] "yura@aim.com"),
	snype_nick = T(796275464087, --[[ModItemUnitDataCompositeDef Omryn snype_nick]] "yura"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(455048670549, --[[ModItemUnitDataCompositeDef Omryn Text MercChatHaggle Lines ChatMessage voice:Omryn]] "Эээ, плохие знаки чую, начальник. Работа непростая будет. Трудная работа - больше кушать, однако."),
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
					'Text', T(885814480955, --[[ModItemUnitDataCompositeDef Omryn Text MercChatHaggle Lines ChatMessage voice:Omryn]] "Работа нравится, начальник, только вот жратвы мала-мала не хватает. Жрать хочется всегда, давай денег больше. Уговор?"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(956878799729, --[[ModItemUnitDataCompositeDef Omryn Text MercChatHaggle Lines ChatMessage voice:Omryn]] "Драться заставляешь, начальник. а выспаться не даешь. Без сна какой я работник? И пожрать бы. И вообще. Денег давай. Уговор?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {
					PresetValue = ">=10",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(902519634531, --[[ModItemUnitDataCompositeDef Omryn Text Offline ChatMessage voice:Omryn]] "Омрын у аппарата. День духов, однако. Работать никак нельзя. Я сам скажу, когда день духов закончится."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(927832147316, --[[ModItemUnitDataCompositeDef Omryn Text GreetingAndOffer ChatMessage voice:Omryn]] "Омрын у аппарата. Ты, что ли, тут начальник? Работу мала-мала даешь? Только чтоб нетяжелую."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(620358003115, --[[ModItemUnitDataCompositeDef Omryn Text ConversationRestart ChatMessage voice:Omryn]] "Ты там подушку придавил, да? Спать - хорошо, однако. А хорошо поспать - еще лучше. Вот поговорим, я тоже прикорну."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(343432743008, --[[ModItemUnitDataCompositeDef Omryn Text IdleLine ChatMessage voice:Omryn]] "Это ты хорошо придумал, вприкуску разговоры разговаривать. Это мы с тобой поладим, начальник."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(441195752933, --[[ModItemUnitDataCompositeDef Omryn Text PartingWords ChatMessage voice:Omryn]] "Отлично, начальник! Уговор! Поеду я в твой Гранд-шьен. Вот только поем сначала. И храпака дам минут на триста. Чтоб силы набраться, однако."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(280135101598, --[[ModItemUnitDataCompositeDef Omryn Text RehireIntro ChatMessage voice:Omryn]] "Контракт выходит, начальник! Омрыну,  жрать надо будет, а для такого надо денег заработать. Давай по-новой контракт заводить."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(763826917260, --[[ModItemUnitDataCompositeDef Omryn Text RehireOutro ChatMessage voice:Omryn]] "Уговор. Теперь и поесть можно. А как поедим, можно и поспать."),
		}),
	},
	StartingSalary = 650,
	SalaryLv1 = 375,
	SalaryMaxLv = 3300,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 67,
	StartingPerks = {
		"AutoWeapons",
		"Claustrophobic",
		"Spiritual",
		"EyesOnTheBack",
		"CancelShotPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Omryn",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Omryn_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Omryn_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Omryn_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Omryn",
	},
	Specialization = "Autoriflemen",
	gender = "Male",
	VoiceResponseId = "Omryn",
}

