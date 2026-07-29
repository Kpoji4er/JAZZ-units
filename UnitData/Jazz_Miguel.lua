UndefineClass('Jazz_Miguel')
DefineClass.Jazz_Miguel = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 80,
	Agility = 75,
	Dexterity = 70,
	Strength = 75,
	Wisdom = 80,
	Will = 80,
	Leadership = 98,
	Marksmanship = 70,
	Mechanical = 30,
	Explosives = 30,
	Medical = 35,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Miguel.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Miguel_Big.png",
	IsMercenary = true,
	Name = T(890000000003202, --[[ModItemUnitDataCompositeDef Jazz_Miguel Name]] "[WIP] Мигель Кордона"),
	Nick = T(890000000003203, --[[ModItemUnitDataCompositeDef Jazz_Miguel Nick]] "Мигель"),
	AllCapsNick = T(890000000003204, --[[ModItemUnitDataCompositeDef Jazz_Miguel AllCapsNick]] "МИГЕЛЬ"),
	Bio = T(890000000003205, --[[ModItemUnitDataCompositeDef Jazz_Miguel Bio]] "work in progress"),
	Nationality = "Arulco",
	Title = T(890000000003206, --[[ModItemUnitDataCompositeDef Jazz_Miguel Title]] "Команданте"),
	Email = T(890000000003207, --[[ModItemUnitDataCompositeDef Jazz_Miguel Email]] "Miguel@arulco.reb"),
	snype_nick = T(890000000003208, --[[ModItemUnitDataCompositeDef Jazz_Miguel snype_nick]] "comandante"),
	Refusals = {},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003209, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text MercChatHaggle Lines ChatMessage voice:Jazz_Miguel]] "Отряд полон немцев... Ладно, но с доплатой — старые счёты не забываются."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and ud.Nationality == "Germany"
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
					'Text', T(890000000003210, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text MercChatMitigation Lines ChatMessage voice:Jazz_Miguel]] "Карлос, Айра или Тень уже с вами? Тогда я вам доверяю."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Ira" or k == "Shadow")
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
					'Text', T(890000000003211, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text MercChatBranch Lines ChatMessage voice:Jazz_Miguel]] "Найдёте Карлоса или Айру — берите без раздумий, это наши лучшие люди."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Ira",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003212, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text Offline ChatMessage voice:Jazz_Miguel]] "Мигель. Оставьте сообщение для дела свободы Арулько."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003213, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text GreetingAndOffer ChatMessage voice:Jazz_Miguel]] "Говорит Мигель. Слушаю."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003214, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text ConversationRestart ChatMessage voice:Jazz_Miguel]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003215, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text IdleLine ChatMessage voice:Jazz_Miguel]] "Арулько ждёт. Не задерживайся."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003216, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text PartingWords ChatMessage voice:Jazz_Miguel]] "Встаём в строй. Пора действовать."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003217, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text RehireIntro ChatMessage voice:Jazz_Miguel]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003218, --[[ModItemUnitDataCompositeDef Jazz_Miguel Text RehireOutro ChatMessage voice:Jazz_Miguel]] "Остаюсь. Освобождение ещё не закончено."),
		}),
	},
	MedicalDeposit = "standard",
	StartingSalary = 800,
	SalaryIncrease = 200,
	SalaryLv1 = 400,
	SalaryMaxLv = 3000,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 80,
	Likes = {
		"Jazz_Ira",
		"Shadow",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Miguel",
		"Teacher",
		"LeadFromTheFront",
		"NightOps",
		"MeleeTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Miguel",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Miguel",
	},
	Tier = "Veteran",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Miguel",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
