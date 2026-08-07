UndefineClass('Jazz_Biff')
DefineClass.Jazz_Biff = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 65,
	Dexterity = 60,
	Strength = 41,
	Wisdom = 58,
	Will = 35,
	Leadership = 13,
	Marksmanship = 57,
	Mechanical = 20,
	Explosives = 15,
	Medical = 25,
	Portrait = "UI/NPCsPortraits/Biff",
	BigPortrait = "UI/NPCs/Biff",
	IsMercenary = true,
	Name = T(890000000002802, --[[ModItemUnitDataCompositeDef Jazz_Biff Name]] "Бифф Апскотт"),
	Nick = T(890000000002803, --[[ModItemUnitDataCompositeDef Jazz_Biff Nick]] "Бифф"),
	AllCapsNick = T(890000000002804, --[[ModItemUnitDataCompositeDef Jazz_Biff AllCapsNick]] "БИФФ"),
	Bio = T(890000000002805, --[[ModItemUnitDataCompositeDef Jazz_Biff Bio]] "Статы около 70, Strength 41, Wisdom 58, Marksmanship 57, Leadership 13. Кабинетный менеджер MERC, панически боится настоящего боя, но неплохо ведёт бумажную работу отряда. Дружит с Фло и трезвым Ларри; не выносит обдолбанного Ларри. В JA2 Бифф появлялся только после отдельного побочного квеста — в JAZZ этот сюжет не реализован, поэтому найм идёт как обычный контракт MERC, а история квеста осталась только в биографии."),
	Nationality = "USA",
	Title = T(890000000002806, --[[ModItemUnitDataCompositeDef Jazz_Biff Title]] "Ссыкло MERC"),
	Email = T(890000000002807, --[[ModItemUnitDataCompositeDef Jazz_Biff Email]] "Biff@merc.com"),
	snype_nick = T(890000000002808, --[[ModItemUnitDataCompositeDef Jazz_Biff snype_nick]] "biff"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002809, --[[ModItemUnitDataCompositeDef Jazz_Biff Text MercChatRefusal Lines ChatMessage voice:Jazz_Biff]] "Пока обдолбанный Ларри в отряде — нет, увольте. Мне и так страшно."),
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
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002810, --[[ModItemUnitDataCompositeDef Jazz_Biff Text MercChatRefusal Lines ChatMessage voice:Jazz_Biff]] "Извините, но за такие деньги рисковать шкурой не готов."),
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
					'Text', T(890000000002811, --[[ModItemUnitDataCompositeDef Jazz_Biff Text MercChatMitigation Lines ChatMessage voice:Jazz_Biff]] "О, Фло или трезвый Ларри уже здесь? Тогда... наверное, не так страшно."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Flo" or k == "Larry_Clean")
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
					'Text', T(890000000002812, --[[ModItemUnitDataCompositeDef Jazz_Biff Text MercChatBranch Lines ChatMessage voice:Jazz_Biff]] "Если найдёте Фло — берите, вместе нам как-то спокойнее."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Flo",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002813, --[[ModItemUnitDataCompositeDef Jazz_Biff Text Offline ChatMessage voice:Jazz_Biff]] "Бифф... э-э... перезвоните, пожалуйста?"),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002814, --[[ModItemUnitDataCompositeDef Jazz_Biff Text GreetingAndOffer ChatMessage voice:Jazz_Biff]] "Э... Бифф на связи. Вы серьёзно насчёт боевого задания?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002815, --[[ModItemUnitDataCompositeDef Jazz_Biff Text ConversationRestart ChatMessage voice:Jazz_Biff]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002816, --[[ModItemUnitDataCompositeDef Jazz_Biff Text IdleLine ChatMessage voice:Jazz_Biff]] "Можно... без стрельбы обойтись?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002817, --[[ModItemUnitDataCompositeDef Jazz_Biff Text PartingWords ChatMessage voice:Jazz_Biff]] "Ладно... я попробую. Только пусть кто-нибудь прикроет."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002818, --[[ModItemUnitDataCompositeDef Jazz_Biff Text RehireIntro ChatMessage voice:Jazz_Biff]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002819, --[[ModItemUnitDataCompositeDef Jazz_Biff Text RehireOutro ChatMessage voice:Jazz_Biff]] "Остаюсь. Наверное."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 600,
	SalaryIncrease = 200,
	SalaryLv1 = 300,
	SalaryMaxLv = 2000,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 70,
	Likes = {
		"Jazz_Flo",
		"Larry_Clean",
	},
	Dislikes = {
		"Larry",
	},
	StartingPerks = {
		"Jazz_Perk_Biff",
		"Negotiator",
		"ShoulderToShoulder",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Biff",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Biff",
	},
	Tier = "Regular",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Biff",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
