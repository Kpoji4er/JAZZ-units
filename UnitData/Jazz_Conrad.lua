UndefineClass('Jazz_Conrad')
DefineClass.Jazz_Conrad = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 80,
	Agility = 69,
	Dexterity = 78,
	Strength = 78,
	Wisdom = 80,
	Will = 75,
	Leadership = 51,
	Marksmanship = 95,
	Mechanical = 55,
	Explosives = 68,
	Medical = 40,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Conrad.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Conrad_Big.png",
	IsMercenary = true,
	Name = T(890000000002202, --[[ModItemUnitDataCompositeDef Jazz_Conrad Name]] "[WIP] Лейтенант Конрад Джиллет"),
	Nick = T(890000000002203, --[[ModItemUnitDataCompositeDef Jazz_Conrad Nick]] "Конрад"),
	AllCapsNick = T(890000000002204, --[[ModItemUnitDataCompositeDef Jazz_Conrad AllCapsNick]] "КОНРАД"),
	Bio = T(890000000002205, --[[ModItemUnitDataCompositeDef Jazz_Conrad Bio]] "work in progress"),
	Nationality = "Germany",
	Title = T(890000000002206, --[[ModItemUnitDataCompositeDef Jazz_Conrad Title]] "Дорогой лейтенант"),
	Email = T(890000000002207, --[[ModItemUnitDataCompositeDef Jazz_Conrad Email]] "Conrad@merc.com"),
	snype_nick = T(890000000002208, --[[ModItemUnitDataCompositeDef Jazz_Conrad snype_nick]] "ltgillett"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002209, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text MercChatRefusal Lines ChatMessage voice:Jazz_Conrad]] "Пока пьяный Ларри в отряде — я не подписываюсь. Это не армия, а балаган."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Larry",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002210, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text MercChatHaggle Lines ChatMessage voice:Jazz_Conrad]] "Моя ставка не обсуждается — разве что в большую сторону."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002211, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text MercChatHaggle Lines ChatMessage voice:Jazz_Conrad]] "Отряд полон американцев. Ясно, доплата за акцент, который приходится терпеть."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and ud.Nationality == "USA"
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002212, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text MercChatMitigation Lines ChatMessage voice:Jazz_Conrad]] "Игги или Ротман уже здесь? Тогда условия меня устраивают."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Iggy" or k == "Jazz_Rothman")
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
					'Text', T(890000000002213, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text MercChatBranch Lines ChatMessage voice:Jazz_Conrad]] "Наймите ещё Игги — с толковым напарником дисциплина держится сама."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Iggy",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002214, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text Offline ChatMessage voice:Jazz_Conrad]] "Лейтенант Джиллет. Оставьте сообщение — отвечу, если условия того стоят."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002215, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text GreetingAndOffer ChatMessage voice:Jazz_Conrad]] "Джиллет слушает. Излагайте условия — и не жадничайте."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002216, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text ConversationRestart ChatMessage voice:Jazz_Conrad]] "Связь прервалась. Продолжим — время дорого, как и я."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002217, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text IdleLine ChatMessage voice:Jazz_Conrad]] "Время — деньги. Моё особенно."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002218, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text PartingWords ChatMessage voice:Jazz_Conrad]] "Контракт принят. Постройте людей — начинаем с дисциплины."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002219, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text RehireIntro ChatMessage voice:Jazz_Conrad]] "Контракт заканчивается. У меня есть и другие предложения — решайте."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002220, --[[ModItemUnitDataCompositeDef Jazz_Conrad Text RehireOutro ChatMessage voice:Jazz_Conrad]] "Остаюсь. Ваша дисциплина меня почти впечатлила."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 3300,
	SalaryIncrease = 200,
	SalaryLv1 = 2000,
	SalaryMaxLv = 8000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 80,
	Likes = {
		"Jazz_Iggy",
		"Jazz_Rothman",
	},
	Dislikes = {
		"Larry",
	},
	StartingPerks = {
		"Jazz_Perk_Conrad",
		"Teacher",
		"TakeAim",
		"SteadyBreathing",
		"ShoulderToShoulder",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Conrad",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Conrad",
	},
	Tier = "Elite",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Conrad",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
