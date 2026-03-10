UndefineClass('Steroid')
DefineClass.Steroid = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 56,
	Dexterity = 48,
	Strength = 97,
	Wisdom = 61,
	Will = 84,
	Leadership = 9,
	Marksmanship = 89,
	Mechanical = 76,
	Explosives = 13,
	Medical = 22,
	Portrait = "UI/MercsPortraits/Steroid",
	BigPortrait = "UI/Mercs/Steroid",
	IsMercenary = true,
	Name = T(191942662733, --[[ModItemUnitDataCompositeDef Steroid Name]] "Бобби Гонтарски «Анаболик»"),
	Nick = T(547412809082, --[[ModItemUnitDataCompositeDef Steroid Nick]] "Анаболик"),
	AllCapsNick = T(413371651152, --[[ModItemUnitDataCompositeDef Steroid AllCapsNick]] "АНАБОЛИК"),
	Bio = T(456387407873, --[[ModItemUnitDataCompositeDef Steroid Bio]] "Тушит ли он пожары в родной Варшаве или гасит карателей Дейдраны в Арулько, любой, кто видит неутомимого Бобби Гонтарски, понимает: у этого человека лучше не вставать на пути. Навыки обращения Анаболика с инструментами и приборами служат неплохим дополнением к его меткости, беспримерной физической силе и несгибаемой воле. Столкнувшись с проблемой, Бобби обыкновенно продолжает бить её до тех пор, пока «проблема» не упадёт замертво."),
	Nationality = "Poland",
	Title = T(545683006311, --[[ModItemUnitDataCompositeDef Steroid Title]] "Достаточно одной таблетки"),
	Email = T(836836892923, --[[ModItemUnitDataCompositeDef Steroid Email]] "bobby@aim.com"),
	snype_nick = T(161230893072, --[[ModItemUnitDataCompositeDef Steroid snype_nick]] "bobby"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(494152129582, --[[ModItemUnitDataCompositeDef Steroid Text MercChatRefusal Lines ChatMessage voice:Steroid]] "Ты Ивана нанял? Тогда меня ты НЕ НАЙМЕШЬ. Я с такими, как он, не работаю."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(144466457355, --[[ModItemUnitDataCompositeDef Steroid Text MercChatRefusal Lines ChatMessage voice:Steroid]] "Я с коммунистами вроде Игоря не работаю. Я лучше буду дружиться с немцами."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(139476577458, --[[ModItemUnitDataCompositeDef Steroid Text MercChatHaggle Lines ChatMessage voice:Steroid]] "За тебя умерло много людей. Я не страдаю жаждой смерти. Может, ты предложишь больше, а?"),
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
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(621647051327, --[[ModItemUnitDataCompositeDef Steroid Text MercChatMitigation Lines ChatMessage voice:Steroid]] "Задание не идеальное, но у тебя в команде Гризли. Он хороший солдат и товарищ по качалке."),
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
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(597080364679, --[[ModItemUnitDataCompositeDef Steroid Text MercChatBranch Lines ChatMessage voice:Steroid]] "Я ищу работу, поэтому я говорю: да. Но я не люблю Ивана Долвича. Пожалуйста, держи его за деревьями."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(558558300486, --[[ModItemUnitDataCompositeDef Steroid Text MercChatBranch Lines ChatMessage voice:Steroid]] "Работать в одной команде с Игорем Долвичем - это неприятно. Пожалуйста, не давай ему лезть ко мне со своим пахучим коммунизмом."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(144300816928, --[[ModItemUnitDataCompositeDef Steroid Text Offline ChatMessage voice:Steroid]] "Роберт Гонтарски сейчас неприступен. Может быть, я свяжусь с вами, а может, и не свяжусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(853380302875, --[[ModItemUnitDataCompositeDef Steroid Text GreetingAndOffer ChatMessage voice:Steroid]] "Это Бобби Гонтарски. Ты даёшь мне работу?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(369484340930, --[[ModItemUnitDataCompositeDef Steroid Text ConversationRestart ChatMessage voice:Steroid]] "Закончил отжиматься? Я тоже. Давай съедим по протеиновому батончику и обсудим дело."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(799080241348, --[[ModItemUnitDataCompositeDef Steroid Text IdleLine ChatMessage voice:Steroid]] "Ты зачем замолчал? Упражнения делаешь?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(508884817963, --[[ModItemUnitDataCompositeDef Steroid Text PartingWords ChatMessage voice:Steroid]] "Спасибо за работу, гмм. Завидимся."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(818850924401, --[[ModItemUnitDataCompositeDef Steroid Text RehireIntro ChatMessage voice:Steroid]] "Мой контракт почти выполнился. Хочешь смотреть ещё, что могут эти бицепсы?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(851247417827, --[[ModItemUnitDataCompositeDef Steroid Text RehireOutro ChatMessage voice:Steroid]] "Очень хорошо. Я буду рад бить для тебя ещё злых врагов."),
		}),
	},
	MedicalDeposit = "none",
	Haggling = "low",
	StartingSalary = 800,
	SalaryIncrease = 240,
	SalaryLv1 = 780,
	SalaryMaxLv = 4700,
	LegacyNotes = "The transition from fighting fires to firefights has gone rather well for this ex-fireman from Warsaw. His knowledge of mechanics kept the out- dated and under-funded Polish firehouse running. His eagle-eyed vision and pumped-up persistence, now keeps the enemy on the run.\n\nAdditional info:\n\nGontarski refuses to submit to urine testing.",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 99,
	Likes = {
		"Larry",
		"Grizzly",
	},
	LearnToLike = {
		"Kalyna",
	},
	Dislikes = {
		"Ivan",
		"Igor",
	},
	LearnToDislike = {
		"Omryn",
	},
	StartingPerks = {
		"MrFixit",
		"SteroidPunch",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Steroid",
	},
	Specialization = "Mechanic",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Steroid",
}

