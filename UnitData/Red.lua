UndefineClass('Red')
DefineClass.Red = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 66,
	Agility = 66,
	Dexterity = 81,
	Strength = 68,
	Wisdom = 79,
	Leadership = 21,
	Marksmanship = 78,
	Mechanical = 35,
	Explosives = 100,
	Medical = 5,
	Portrait = "UI/MercsPortraits/Red",
	BigPortrait = "UI/Mercs/Red",
	IsMercenary = true,
	Name = T(929255472486, --[[ModItemUnitDataCompositeDef Red Name]] "Эрни Спрагг «Рыжий»"),
	Nick = T(898873386961, --[[ModItemUnitDataCompositeDef Red Nick]] "Рыжий"),
	AllCapsNick = T(402554487810, --[[ModItemUnitDataCompositeDef Red AllCapsNick]] "РЫЖИЙ"),
	Bio = T(519116089912, --[[ModItemUnitDataCompositeDef Red Bio]] "Коллеги любят шутить, что Рыжий продолжил пускать поезда под откос даже после официального окончания Первой мировой, однако Эрни остаётся одним из ведущих экспертов-подрывников в базе A.I.M. и, несмотря на возраст, находится в хорошей форме.\nХотя во время перестрелок он производит впечатление мрачного и даже вспыльчивого типа, дайте ему мину - и он установит (или обезвредит) её одной левой.\nИ не обращайте внимание на его старомодные взгляды на жизнь: во всём, что касается взрывчатых веществ, «Рыжий» уверенно идёт в ногу со временем."),
	Nationality = "Scotland",
	Title = T(610428368333, --[[ModItemUnitDataCompositeDef Red Title]] "Шотландский торнадо"),
	Email = T(738518702343, --[[ModItemUnitDataCompositeDef Red Email]] "gorets@aim.com"),
	snype_nick = T(286093352279, --[[ModItemUnitDataCompositeDef Red snype_nick]] "gorets"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(204277783053, --[[ModItemUnitDataCompositeDef Red Text MercChatRefusal Lines ChatMessage voice:Red]] "Я мог бы работать на тебя, но есть одна проблемка. Я, видишь ли, хочу ещё пожить. Жизнь у меня, конечно, не сахар, но всё лучше, чем в ящик сыграть. А у тебя там, говорят, люди мрут. Вот мне и не хочется быть следующим."),
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
					'Text', T(996587913004, --[[ModItemUnitDataCompositeDef Red Text MercChatRefusal Lines ChatMessage voice:Red]] "Имей в виду: я не хочу тащиться на другой конец света ради какой-то мелочёвки. Составь контракт на подольше - или я на такое не подписываюсь."),
				}),
			},
			'Type', "duration",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(635542348486, --[[ModItemUnitDataCompositeDef Red Text MercChatRefusal Lines ChatMessage voice:Red]] "Слыхал, у тебя в команде Сдоба. Вот облом. Эта баба думает, что все кругом неправы, а её работа - их поправлять. Пораскинь мозгами и уволь её к чертям - тогда можешь мне ещё раз написать."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(423476528097, --[[ModItemUnitDataCompositeDef Red Text MercChatHaggle Lines ChatMessage voice:Red]] "Я баб с оружием не люблю, а у тебя сплошные бабы. Так что если хочешь, чтоб я согласился, подкинь ещё деньжат. Чтоб мне спокойнее было."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud].gender == "Female" end) >= 3
					end,
				}),
			},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(596918996231, --[[ModItemUnitDataCompositeDef Red Text MercChatHaggle Lines ChatMessage voice:Red]] "Если хочешь, чтоб я терпел эту балаболку Фазу, придётся выложить побольше деньжат. У меня от её болтовни уже уши в трубочку сворачиваются - так что считай это расходами на медобслуживание."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Livewire",
						}),
						PlaceObj('MercIsLikedDisliked', {
							Object = "Livewire",
							Relation = "Dislikes",
							TargetUnit = "Red",
						}),
					},
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(477851657674, --[[ModItemUnitDataCompositeDef Red Text Offline ChatMessage voice:Red]] "Это Эрни Спрагг, специалист по взрывам. Большим взрывам, маленьким взрывам - любым. Я либо смотрю футбол, либо мне не нравится ваша рожа, и я просто не беру трубку."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(442588283020, --[[ModItemUnitDataCompositeDef Red Text GreetingAndOffer ChatMessage voice:Red]] "Это Эрни Спрагг. Что, опять лететь в какую-нибудь жопу мира? Ну почему в нормальную страну никогда не позовут сапёра? Чтоб ты знал, я в своём комбинезоне отлично выгляжу!"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(913839648044, --[[ModItemUnitDataCompositeDef Red Text ConversationRestart ChatMessage voice:Red]] "Ох! Куда ты подевался? Давай уже всё выясним."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(468996036878, --[[ModItemUnitDataCompositeDef Red Text IdleLine ChatMessage voice:Red]] "Ты там или ушёл играть в приставку? Ох, уж эти мне дети с их приставками!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(156162799216, --[[ModItemUnitDataCompositeDef Red Text PartingWords ChatMessage voice:Red]] "Ага, договорились. Теперь осталось добыть тысячный солнцезащитный крем, а то я по самую задницу буду в веснушках."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(981721812446, --[[ModItemUnitDataCompositeDef Red Text RehireIntro ChatMessage voice:Red]] "У меня тут контракт истекает. Может, сделаешь что-нибудь на этот счёт?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(728306294667, --[[ModItemUnitDataCompositeDef Red Text RehireOutro ChatMessage voice:Red]] "А ты, оказывается, не полное дерьмо. Я, кажется, рад, что мы и дальше сотрудничаем."),
		}),
	},
	MedicalDeposit = "extreme",
	StartingSalary = 800,
	SalaryIncrease = 280,
	SalaryLv1 = 100,
	SalaryMaxLv = 2750,
	LegacyNotes = '"This mad, mumbling Scotsman is from the old school of explosives where your instructor would fly by in pieces and you quickly moved up the ranks. Spragg is a survivor. With many years of experience under his wire cutters, he takes pride in teaching those military college kids a thing or two about detonation devices. Don\'t be thrown by Red\'s frantic ravings; the situation is rarely as dire as he likes to believe."\n\nAdditional info:\n\nEasily excitable. Goes off rants. Bit of a hothead\nPessimist. Sees situations for their worst.\nHeavy Scottish accent.\nWell liked by most of the other explosive experts despite his attitude.',
	StartingLevel = 4,
	MaxHitPoints = 68,
	Dislikes = {
		"Buns",
	},
	LearnToDislike = {
		"Livewire",
	},
	StartingPerks = {
		"MrFixit",
		"Pessimist",
		"HaveABlast",
		"BreachAndClear",
		"Deadeye",
		"Hobbler",
		"Teacher",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Red",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Red_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Red_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Red_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Red",
	},
	Tier = "Elite",
	Specialization = "ExplosiveExpert",
	pollyvoice = "Geraint",
	gender = "Male",
	VoiceResponseId = "Red",
}

