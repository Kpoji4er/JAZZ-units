UndefineClass('Jazz_Flo')
DefineClass.Jazz_Flo = {
	Affiliation = "MERC",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 58,
	Agility = 37,
	Dexterity = 64,
	Strength = 45,
	Wisdom = 82,
	Will = 15,
	Leadership = 1,
	Marksmanship = 38,
	Mechanical = 7,
	Explosives = 2,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Flo.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Flo_Big.png",
	IsMercenary = true,
	Name = T(890000000003002, --[[ModItemUnitDataCompositeDef Jazz_Flo Name]] "Флоренс Габриель"),
	Nick = T(890000000003003, --[[ModItemUnitDataCompositeDef Jazz_Flo Nick]] "Фло"),
	AllCapsNick = T(890000000003004, --[[ModItemUnitDataCompositeDef Jazz_Flo AllCapsNick]] "ФЛО"),
	Bio = T(890000000003005, --[[ModItemUnitDataCompositeDef Jazz_Flo Bio]] "Дочь винодела. Большую часть детства Флоренс провела в провинции Коньяк во Франции. После переезда в Питтсбург, США, стала работать бухгалтером в одной из компаний, торгующих оружием. Там она получила обширные знания по огнестрельному оружию. Сообразительна, но несколько неуверенна в себе, поэтому ей недоплачивают."),
	Nationality = "France",
	Title = T(890000000003006, --[[ModItemUnitDataCompositeDef Jazz_Flo Title]] "Безголовая курица"),
	Email = T(890000000003007, --[[ModItemUnitDataCompositeDef Jazz_Flo Email]] "Flo@merc.com"),
	snype_nick = T(890000000003008, --[[ModItemUnitDataCompositeDef Jazz_Flo snype_nick]] "mondieu"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003009, --[[ModItemUnitDataCompositeDef Jazz_Flo Text MercChatRefusal Lines ChatMessage voice:Jazz_Flo]] "Слишком много смертей. Мне и своей жизни хватит, чтобы бояться."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003010, --[[ModItemUnitDataCompositeDef Jazz_Flo Text MercChatRefusal Lines ChatMessage voice:Jazz_Flo]] "Извините, но за такие копейки я лучше дома посижу."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003011, --[[ModItemUnitDataCompositeDef Jazz_Flo Text MercChatMitigation Lines ChatMessage voice:Jazz_Flo]] "О, Бифф или Рысь уже здесь? Тогда... немного спокойнее."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Biff" or k == "Jazz_Lynx")
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
					'Text', T(890000000003012, --[[ModItemUnitDataCompositeDef Jazz_Flo Text MercChatBranch Lines ChatMessage voice:Jazz_Flo]] "Возьмите ещё Биффа — вдвоём нам не так страшно."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Biff",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003013, --[[ModItemUnitDataCompositeDef Jazz_Flo Text Offline ChatMessage voice:Jazz_Flo]] "Фло не может подойти! Пишите, перезвоню, если жива буду."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003014, --[[ModItemUnitDataCompositeDef Jazz_Flo Text GreetingAndOffer ChatMessage voice:Jazz_Flo]] "Ой! Фло слушает... Это же не боевое задание, да?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003015, --[[ModItemUnitDataCompositeDef Jazz_Flo Text ConversationRestart ChatMessage voice:Jazz_Flo]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003016, --[[ModItemUnitDataCompositeDef Jazz_Flo Text IdleLine ChatMessage voice:Jazz_Flo]] "Можно я постою сзади, пожалуйста?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003017, --[[ModItemUnitDataCompositeDef Jazz_Flo Text PartingWords ChatMessage voice:Jazz_Flo]] "Ладно, только без стрельбы... наверное."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003018, --[[ModItemUnitDataCompositeDef Jazz_Flo Text RehireIntro ChatMessage voice:Jazz_Flo]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003019, --[[ModItemUnitDataCompositeDef Jazz_Flo Text RehireOutro ChatMessage voice:Jazz_Flo]] "Остаюсь. Скидки у местных торговцев того стоят."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 500,
	SalaryIncrease = 200,
	SalaryLv1 = 200,
	SalaryMaxLv = 1800,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 48,
	Likes = {
		"Jazz_Biff",
		"Jazz_Lynx",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Flo",
		"Negotiator",
		"Scoundrel",
		"CancelShotPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Flo",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Flo",
	},
	Tier = "Regular",
	Specialization = "AllRounder",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Jazz_Flo",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
