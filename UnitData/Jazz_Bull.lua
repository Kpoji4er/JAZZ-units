UndefineClass('Jazz_Bull')
DefineClass.Jazz_Bull = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 96,
	Agility = 50,
	Dexterity = 50,
	Strength = 98,
	Wisdom = 64,
	Will = 45,
	Leadership = 15,
	Marksmanship = 72,
	Mechanical = 5,
	Explosives = 5,
	Medical = 5,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Bull.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Bull_Big.png",
	IsMercenary = true,
	Name = T(890000000004302, --[[ModItemUnitDataCompositeDef Jazz_Bull Name]] "[WIP] Джон «Бык» Питерс"),
	Nick = T(890000000004303, --[[ModItemUnitDataCompositeDef Jazz_Bull Nick]] "Бык"),
	AllCapsNick = T(890000000004304, --[[ModItemUnitDataCompositeDef Jazz_Bull AllCapsNick]] "БЫК"),
	Bio = T(890000000004305, --[[ModItemUnitDataCompositeDef Jazz_Bull Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000004306, --[[ModItemUnitDataCompositeDef Jazz_Bull Title]] "Дешёвый танк"),
	Email = T(890000000004307, --[[ModItemUnitDataCompositeDef Jazz_Bull Email]] "Bull@aim.com"),
	snype_nick = T(890000000004308, --[[ModItemUnitDataCompositeDef Jazz_Bull snype_nick]] "bull"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004309, --[[ModItemUnitDataCompositeDef Jazz_Bull Text MercChatRefusal Lines ChatMessage voice:Jazz_Bull]] "Пока Бифф в отряде — я пас. Он мне не нравится."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Biff",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004310, --[[ModItemUnitDataCompositeDef Jazz_Bull Text MercChatRefusal Lines ChatMessage voice:Jazz_Bull]] "Мало. Бык дёшево, но не бесплатно."),
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
					'Text', T(890000000004311, --[[ModItemUnitDataCompositeDef Jazz_Bull Text MercChatMitigation Lines ChatMessage voice:Jazz_Bull]] "О, Нейлс уже тут? Тогда порядок."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Nails",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004312, --[[ModItemUnitDataCompositeDef Jazz_Bull Text MercChatBranch Lines ChatMessage voice:Jazz_Bull]] "Если нужен ещё крепкий парень — берите Нейлса."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Nails",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004313, --[[ModItemUnitDataCompositeDef Jazz_Bull Text Offline ChatMessage voice:Jazz_Bull]] "Бык спит. Не будить."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004314, --[[ModItemUnitDataCompositeDef Jazz_Bull Text GreetingAndOffer ChatMessage voice:Jazz_Bull]] "Бык! Чо, бить будем?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004315, --[[ModItemUnitDataCompositeDef Jazz_Bull Text ConversationRestart ChatMessage voice:Jazz_Bull]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004316, --[[ModItemUnitDataCompositeDef Jazz_Bull Text IdleLine ChatMessage voice:Jazz_Bull]] "Где враги? Хочу бить."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004317, --[[ModItemUnitDataCompositeDef Jazz_Bull Text PartingWords ChatMessage voice:Jazz_Bull]] "Угх. Иду бить."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004318, --[[ModItemUnitDataCompositeDef Jazz_Bull Text RehireIntro ChatMessage voice:Jazz_Bull]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004319, --[[ModItemUnitDataCompositeDef Jazz_Bull Text RehireOutro ChatMessage voice:Jazz_Bull]] "Остаюсь. Тут есть кого бить."),
		}),
	},
	MedicalDeposit = "standard",
	StartingSalary = 400,
	SalaryIncrease = 150,
	SalaryLv1 = 200,
	SalaryMaxLv = 1500,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
	end,
	MaxHitPoints = 96,
	Likes = {
		"Nails",
	},
	Dislikes = {
		"Jazz_Biff",
	},
	StartingPerks = {
		"Jazz_Perk_Bull",
		"MeleeTraining",
		"CQCTraining",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Bull",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Bull",
	},
	Tier = "Regular",
	Specialization = "Melee",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Bull",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
