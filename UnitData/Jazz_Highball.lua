UndefineClass('Jazz_Highball')
DefineClass.Jazz_Highball = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 55,
	Agility = 50,
	Dexterity = 55,
	Strength = 55,
	Wisdom = 87,
	Will = 40,
	Leadership = 20,
	Marksmanship = 84,
	Mechanical = 10,
	Explosives = 10,
	Medical = 84,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Highball.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Highball_Big.png",
	IsMercenary = true,
	Name = T(890000000004202, --[[ModItemUnitDataCompositeDef Jazz_Highball Name]] "[WIP] Клиффорд «Скала» Хайбол"),
	Nick = T(890000000004203, --[[ModItemUnitDataCompositeDef Jazz_Highball Nick]] "Скала"),
	AllCapsNick = T(890000000004204, --[[ModItemUnitDataCompositeDef Jazz_Highball AllCapsNick]] "СКАЛА"),
	Bio = T(890000000004205, --[[ModItemUnitDataCompositeDef Jazz_Highball Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000004206, --[[ModItemUnitDataCompositeDef Jazz_Highball Title]] "Старый алкаш"),
	Email = T(890000000004207, --[[ModItemUnitDataCompositeDef Jazz_Highball Email]] "Highball@aim.com"),
	snype_nick = T(890000000004208, --[[ModItemUnitDataCompositeDef Jazz_Highball snype_nick]] "highball"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004209, --[[ModItemUnitDataCompositeDef Jazz_Highball Text MercChatRefusal Lines ChatMessage voice:Jazz_Highball]] "На такие деньги даже фляжку не наполнишь."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004210, --[[ModItemUnitDataCompositeDef Jazz_Highball Text MercChatRefusal Lines ChatMessage voice:Jazz_Highball]] "Слишком много крови для старого доктора."),
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
	Mitigations = {},
	ExtraPartingWords = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004211, --[[ModItemUnitDataCompositeDef Jazz_Highball Text Offline ChatMessage voice:Jazz_Highball]] "Хайбол... икает... позже перезвонит."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004212, --[[ModItemUnitDataCompositeDef Jazz_Highball Text GreetingAndOffer ChatMessage voice:Jazz_Highball]] "Скала на линии. Ик. Что там у вас?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004213, --[[ModItemUnitDataCompositeDef Jazz_Highball Text ConversationRestart ChatMessage voice:Jazz_Highball]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004214, --[[ModItemUnitDataCompositeDef Jazz_Highball Text IdleLine ChatMessage voice:Jazz_Highball]] "Ещё по одной — и я весь ваш."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004215, --[[ModItemUnitDataCompositeDef Jazz_Highball Text PartingWords ChatMessage voice:Jazz_Highball]] "Ладно... фляжку с собой, и иду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004216, --[[ModItemUnitDataCompositeDef Jazz_Highball Text RehireIntro ChatMessage voice:Jazz_Highball]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004217, --[[ModItemUnitDataCompositeDef Jazz_Highball Text RehireOutro ChatMessage voice:Jazz_Highball]] "Остаюсь. Тут веселее, чем дома."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 900,
	SalaryIncrease = 150,
	SalaryLv1 = 400,
	SalaryMaxLv = 2500,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 55,
	Likes = {},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Highball",
		"Savior",
		"OldDog",
		"JackOfAllTrades",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Highball",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Highball",
	},
	Tier = "Regular",
	Specialization = "Doctor",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Highball",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
