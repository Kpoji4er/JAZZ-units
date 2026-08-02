UndefineClass('Jazz_Monk')
DefineClass.Jazz_Monk = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 88,
	Agility = 85,
	Dexterity = 80,
	Strength = 80,
	Wisdom = 70,
	Will = 75,
	Leadership = 25,
	Marksmanship = 94,
	Mechanical = 25,
	Explosives = 25,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Monk.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Monk_Big.png",
	IsMercenary = true,
	Name = T(890000000003802, --[[ModItemUnitDataCompositeDef Jazz_Monk Name]] "[WIP] Виктор «Монк» Колесников"),
	Nick = T(890000000003803, --[[ModItemUnitDataCompositeDef Jazz_Monk Nick]] "Монк"),
	AllCapsNick = T(890000000003804, --[[ModItemUnitDataCompositeDef Jazz_Monk AllCapsNick]] "МОНК"),
	Bio = T(890000000003805, --[[ModItemUnitDataCompositeDef Jazz_Monk Bio]] "work in progress"),
	Nationality = "Russia",
	Title = T(890000000003806, --[[ModItemUnitDataCompositeDef Jazz_Monk Title]] "Чеченский след"),
	Email = T(890000000003807, --[[ModItemUnitDataCompositeDef Jazz_Monk Email]] "Monk@aim.com"),
	snype_nick = T(890000000003808, --[[ModItemUnitDataCompositeDef Jazz_Monk snype_nick]] "monk"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003809, --[[ModItemUnitDataCompositeDef Jazz_Monk Text MercChatRefusal Lines ChatMessage voice:Jazz_Monk]] "Я слышал, вы наняли Ивана... Да чтобы я с ним работал? Нет. Ищите кого-нибудь другого..."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Ivan" or k == "Jazz_Conrad")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003810, --[[ModItemUnitDataCompositeDef Jazz_Monk Text MercChatRefusal Lines ChatMessage voice:Jazz_Monk]] "Слишком уж смертность у тебя высокая... Это неправильно."),
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
					'Text', T(890000000003811, --[[ModItemUnitDataCompositeDef Jazz_Monk Text MercChatMitigation Lines ChatMessage voice:Jazz_Monk]] "Эта операция не очень хорошая, но если в команде доктор Лора... то Виктор тоже в команде."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Laura",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003812, --[[ModItemUnitDataCompositeDef Jazz_Monk Text MercChatBranch Lines ChatMessage voice:Jazz_Monk]] "Доктор Лора - сильная женщина. Сильная... и симпатичная."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Laura",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003813, --[[ModItemUnitDataCompositeDef Jazz_Monk Text Offline ChatMessage voice:Jazz_Monk]] "Это Виктор Колесников. Оставьте сообщение на автоответчике. Я свяжусь с вами."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003814, --[[ModItemUnitDataCompositeDef Jazz_Monk Text GreetingAndOffer ChatMessage voice:Jazz_Monk]] "Виктор Колесников."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003815, --[[ModItemUnitDataCompositeDef Jazz_Monk Text ConversationRestart ChatMessage voice:Jazz_Monk]] "Еще раз."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003816, --[[ModItemUnitDataCompositeDef Jazz_Monk Text IdleLine ChatMessage voice:Jazz_Monk]] "Я наемник от Бога."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003817, --[[ModItemUnitDataCompositeDef Jazz_Monk Text PartingWords ChatMessage voice:Jazz_Monk]] "Хорошо. Иду один, как всегда."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003818, --[[ModItemUnitDataCompositeDef Jazz_Monk Text RehireIntro ChatMessage voice:Jazz_Monk]] "Контракт скоро заканчивается... Виктор тебе еще нужен?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003819, --[[ModItemUnitDataCompositeDef Jazz_Monk Text RehireOutro ChatMessage voice:Jazz_Monk]] "Хорошо... Очень хорошо."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 2400,
	SalaryIncrease = 200,
	SalaryLv1 = 1000,
	SalaryMaxLv = 5500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 88,
	Likes = {
		"Jazz_Laura",
	},
	Dislikes = {
		"Ivan",
		"Jazz_Conrad",
	},
	StartingPerks = {
		"Jazz_Perk_Monk",
		"Stealthy",
		"Loner",
		"NightOps",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Monk",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Monk",
	},
	Tier = "Veteran",
	Specialization = "Stealth",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Monk",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
