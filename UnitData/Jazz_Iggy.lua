UndefineClass('Jazz_Iggy')
DefineClass.Jazz_Iggy = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 88,
	Agility = 81,
	Dexterity = 79,
	Strength = 85,
	Wisdom = 71,
	Will = 72,
	Leadership = 15,
	Marksmanship = 87,
	Mechanical = 42,
	Explosives = 21,
	Medical = 33,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Iggy.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Iggy_Big.png",
	IsMercenary = true,
	Name = T(890000000004827, --[[ModItemUnitDataCompositeDef Jazz_Iggy Name]] "Игмус «Игги» Палков"),
	Nick = T(890000000004828, --[[ModItemUnitDataCompositeDef Jazz_Iggy Nick]] "Игги"),
	AllCapsNick = T(890000000004829, --[[ModItemUnitDataCompositeDef Jazz_Iggy AllCapsNick]] "ИГГИ"),
	Bio = T(890000000004830, --[[ModItemUnitDataCompositeDef Jazz_Iggy Bio]] "Русский наёмник, которого королева Дейдранна наняла в армию под командованием Майка ($2000/день). После убийства Майка и осознания режима Дейдранны дезертировал с совестью; позже сидит в баре и нанимается за $1950/день. Гордость и мораль сильные; мечтает о «Великой России». Эксперт тяжёлого оружия. Дружит с Иваном; Конрад его ценит; ненавидит Фиделя."),
	Nationality = "Russia",
	Title = T(890000000004831, --[[ModItemUnitDataCompositeDef Jazz_Iggy Title]] "Тяжеловес из Сан-Моны"),
	Email = T(890000000004832, --[[ModItemUnitDataCompositeDef Jazz_Iggy Email]] "Iggy@palkov.ru"),
	snype_nick = T(890000000004833, --[[ModItemUnitDataCompositeDef Jazz_Iggy snype_nick]] "iggy"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004834, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text MercChatRefusal Lines ChatMessage voice:Jazz_Iggy]] "Пока Фидель у вас — нет. С ним я не служу."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fidel",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004835, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text MercChatMitigation Lines ChatMessage voice:Jazz_Iggy]] "Иван уже здесь? Тогда своих не бросаю."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and k == "Ivan"
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
					'Text', T(890000000004836, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text MercChatBranch Lines ChatMessage voice:Jazz_Iggy]] "Возьмите Ивана, если найдёте — свой человек."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and k == "Ivan"
						end) < 1
					end,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004837, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text Offline ChatMessage voice:Jazz_Iggy]] "Палков. Позже — сейчас не у бара."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004838, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text GreetingAndOffer ChatMessage voice:Jazz_Iggy]] "Игги. Служил у Дейдранны — больше нет. Тысяча девятьсот пятьдесят в день, и я ваш."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004839, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text ConversationRestart ChatMessage voice:Jazz_Iggy]] "Связь пропала. Говорите."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004840, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text IdleLine ChatMessage voice:Jazz_Iggy]] "Почему люди не могут быть как я? А?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004841, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text PartingWords ChatMessage voice:Jazz_Iggy]] "Тяжёлое оружие со мной. Идём."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004842, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text RehireIntro ChatMessage voice:Jazz_Iggy]] "Контракт кончается. Продлеваем — те же тысяча девятьсот пятьдесят?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004843, --[[ModItemUnitDataCompositeDef Jazz_Iggy Text RehireOutro ChatMessage voice:Jazz_Iggy]] "Остаюсь. Совесть уже чище, чем при королеве."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 1950,
	SalaryIncrease = 200,
	SalaryLv1 = 1950,
	SalaryMaxLv = 4500,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 88,
	Likes = {
		"Ivan",
	},
	Dislikes = {
		"Fidel",
	},
	StartingPerks = {
		"Jazz_Perk_Iggy",
		"HeavyWeaponsTraining",
		"Throwing",
		"Hardened",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Iggy",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Iggy",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Iggy",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
