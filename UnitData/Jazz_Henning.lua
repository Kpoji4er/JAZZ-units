UndefineClass('Jazz_Henning')
DefineClass.Jazz_Henning = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 78,
	Agility = 70,
	Dexterity = 75,
	Strength = 75,
	Wisdom = 96,
	Will = 85,
	Leadership = 76,
	Marksmanship = 92,
	Mechanical = 35,
	Explosives = 35,
	Medical = 35,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Henning.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Henning_Big.png",
	IsMercenary = true,
	Name = T(890000000004002, --[[ModItemUnitDataCompositeDef Jazz_Henning Name]] "[WIP] Хеннинг фон Браниц"),
	Nick = T(890000000004003, --[[ModItemUnitDataCompositeDef Jazz_Henning Nick]] "Хеннинг"),
	AllCapsNick = T(890000000004004, --[[ModItemUnitDataCompositeDef Jazz_Henning AllCapsNick]] "ХЕННИНГ"),
	Bio = T(890000000004005, --[[ModItemUnitDataCompositeDef Jazz_Henning Bio]] "work in progress"),
	Nationality = "Germany",
	Title = T(890000000004006, --[[ModItemUnitDataCompositeDef Jazz_Henning Title]] "Барон-гасс"),
	Email = T(890000000004007, --[[ModItemUnitDataCompositeDef Jazz_Henning Email]] "Henning@aim.com"),
	snype_nick = T(890000000004008, --[[ModItemUnitDataCompositeDef Jazz_Henning snype_nick]] "vonbranitz"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004009, --[[ModItemUnitDataCompositeDef Jazz_Henning Text MercChatRefusal Lines ChatMessage voice:Jazz_Henning]] "Пока Тор в отряде — нет. Не нахожу с ним общего языка."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Thor" or k == "Jazz_Ricochet")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004010, --[[ModItemUnitDataCompositeDef Jazz_Henning Text MercChatRefusal Lines ChatMessage voice:Jazz_Henning]] "Слишком много потерь для моих стандартов командования."),
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
					'Text', T(890000000004011, --[[ModItemUnitDataCompositeDef Jazz_Henning Text MercChatMitigation Lines ChatMessage voice:Jazz_Henning]] "Штайгер или Лора уже здесь? Тогда я готов присоединиться."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Steiger" or k == "Jazz_Laura")
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
					'Text', T(890000000004012, --[[ModItemUnitDataCompositeDef Jazz_Henning Text MercChatBranch Lines ChatMessage voice:Jazz_Henning]] "Найдёте Штайгера — берите. Дисциплинированный солдат."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Steiger",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004013, --[[ModItemUnitDataCompositeDef Jazz_Henning Text Offline ChatMessage voice:Jazz_Henning]] "Фон Браниц отсутствует. Позже."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004014, --[[ModItemUnitDataCompositeDef Jazz_Henning Text GreetingAndOffer ChatMessage voice:Jazz_Henning]] "Хеннинг слушает. Излагайте."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004015, --[[ModItemUnitDataCompositeDef Jazz_Henning Text ConversationRestart ChatMessage voice:Jazz_Henning]] "Связь прервалась. Продолжайте, пожалуйста."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004016, --[[ModItemUnitDataCompositeDef Jazz_Henning Text IdleLine ChatMessage voice:Jazz_Henning]] "Жду распоряжений."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004017, --[[ModItemUnitDataCompositeDef Jazz_Henning Text PartingWords ChatMessage voice:Jazz_Henning]] "Принято. Я в вашем распоряжении."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004018, --[[ModItemUnitDataCompositeDef Jazz_Henning Text RehireIntro ChatMessage voice:Jazz_Henning]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004019, --[[ModItemUnitDataCompositeDef Jazz_Henning Text RehireOutro ChatMessage voice:Jazz_Henning]] "Остаюсь. Здесь ещё есть кем командовать."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 5000,
	SalaryIncrease = 200,
	SalaryLv1 = 2500,
	SalaryMaxLv = 10000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 78,
	Likes = {
		"Jazz_Steiger",
		"Jazz_Laura",
	},
	Dislikes = {
		"Thor",
		"Jazz_Ricochet",
	},
	StartingPerks = {
		"Jazz_Perk_Henning",
		"AutoWeapons",
		"HeavyWeaponsTraining",
		"LeadFromTheFront",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Henning",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Henning",
	},
	Tier = "Elite",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Henning",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
