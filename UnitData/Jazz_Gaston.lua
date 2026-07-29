UndefineClass('Jazz_Gaston')
DefineClass.Jazz_Gaston = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 85,
	Agility = 80,
	Dexterity = 85,
	Strength = 75,
	Wisdom = 70,
	Will = 70,
	Leadership = 40,
	Marksmanship = 94,
	Mechanical = 25,
	Explosives = 20,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Gaston.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Gaston_Big.png",
	IsMercenary = true,
	Name = T(890000000003502, --[[ModItemUnitDataCompositeDef Jazz_Gaston Name]] "[WIP] Гастон Кавалье"),
	Nick = T(890000000003503, --[[ModItemUnitDataCompositeDef Jazz_Gaston Nick]] "Гастон"),
	AllCapsNick = T(890000000003504, --[[ModItemUnitDataCompositeDef Jazz_Gaston AllCapsNick]] "ГАСТОН"),
	Bio = T(890000000003505, --[[ModItemUnitDataCompositeDef Jazz_Gaston Bio]] "work in progress"),
	Nationality = "France",
	Title = T(890000000003506, --[[ModItemUnitDataCompositeDef Jazz_Gaston Title]] "Дамский снайпер"),
	Email = T(890000000003507, --[[ModItemUnitDataCompositeDef Jazz_Gaston Email]] "Gaston@merc.com"),
	snype_nick = T(890000000003508, --[[ModItemUnitDataCompositeDef Jazz_Gaston snype_nick]] "cavalier"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003509, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text MercChatRefusal Lines ChatMessage voice:Jazz_Gaston]] "Пока Злобный или Бифф в отряде — нет. Один отбивает моих дам, другой портит настроение."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Vicious" or k == "Jazz_Biff")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003510, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text MercChatRefusal Lines ChatMessage voice:Jazz_Gaston]] "Слишком много потерь для моего вкуса."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003511, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text MercChatMitigation Lines ChatMessage voice:Jazz_Gaston]] "О, Тоска, Банс или Лиска уже здесь? Тогда я определённо в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Buzz" or k == "Buns" or k == "Fox")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003512, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text MercChatBranch Lines ChatMessage voice:Jazz_Gaston]] "Если ищете ещё одну прекрасную даму — зовите Тоску."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Buzz",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003513, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text Offline ChatMessage voice:Jazz_Gaston]] "Гастон у дамы. Пишите, отвечу, когда освобожусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003514, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text GreetingAndOffer ChatMessage voice:Jazz_Gaston]] "Gaston à l'appareil. Слушаю ваше предложение."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003515, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text ConversationRestart ChatMessage voice:Jazz_Gaston]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003516, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text IdleLine ChatMessage voice:Jazz_Gaston]] "Ну же, время дорого — как и мой шарм."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003517, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text PartingWords ChatMessage voice:Jazz_Gaston]] "Pour vous — всегда готов. Беру винтовку."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003518, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text RehireIntro ChatMessage voice:Jazz_Gaston]] "Контракт заканчивается. Продлеваем, mon ami?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003519, --[[ModItemUnitDataCompositeDef Jazz_Gaston Text RehireOutro ChatMessage voice:Jazz_Gaston]] "Остаюсь. Крыши здесь превосходные."),
		}),
	},
	MedicalDeposit = "standard",
	StartingSalary = 2500,
	SalaryIncrease = 200,
	SalaryLv1 = 1000,
	SalaryMaxLv = 6000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Jazz_Buzz",
		"Buns",
		"Fox",
	},
	Dislikes = {
		"Jazz_Vicious",
		"Jazz_Biff",
	},
	StartingPerks = {
		"Jazz_Perk_Gaston",
		"TakeAim",
		"Deadeye",
		"NightOps",
		"SteadyBreathing",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Gaston",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Gaston",
	},
	Tier = "Elite",
	Specialization = "Marksmen",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Gaston",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
