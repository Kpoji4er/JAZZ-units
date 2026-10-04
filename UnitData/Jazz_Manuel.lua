UndefineClass('Jazz_Manuel')
DefineClass.Jazz_Manuel = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 76,
	Agility = 72,
	Dexterity = 91,
	Strength = 76,
	Wisdom = 83,
	Will = 80,
	Leadership = 45,
	Marksmanship = 78,
	Mechanical = 8,
	Explosives = 22,
	Medical = 40,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Manuel.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Manuel_Big.png",
	IsMercenary = true,
	Name = T(890000000003702, --[[ModItemUnitDataCompositeDef Jazz_Manuel Name]] "Мануэль"),
	Nick = T(890000000003703, --[[ModItemUnitDataCompositeDef Jazz_Manuel Nick]] "Мануэль"),
	AllCapsNick = T(890000000003704, --[[ModItemUnitDataCompositeDef Jazz_Manuel AllCapsNick]] "МАНУЭЛЬ"),
	Bio = T(890000000003705, --[[ModItemUnitDataCompositeDef Jazz_Manuel Bio]] "Муж Фатимы, отец Пакоса. Внедрился в армию Арулько по заданию Мигеля, дослужился до сержанта, но был раскрыт преступным боссом Кингпином и бежал в соседнюю страну Тракону. Где и был завербован наемниками Организации в ходе миссии Неоконченное дело. Несмотря на конец войны, решил не возвращаться к мирной жизни, так как убежден, что в рядах Организации принесет больше пользы. Ну а мы и не возражаем - по части маскировки и разведки с ним мало кто может потягаться."),
	Nationality = "Arulco",
	Title = T(890000000003706, --[[ModItemUnitDataCompositeDef Jazz_Manuel Title]] "Муж Фатимы"),
	Email = T(890000000003707, --[[ModItemUnitDataCompositeDef Jazz_Manuel Email]] "Manuel@arulco.reb"),
	snype_nick = T(890000000003708, --[[ModItemUnitDataCompositeDef Jazz_Manuel snype_nick]] "manuel"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003709, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text MercChatRefusal Lines ChatMessage voice:Jazz_Manuel]] "Слишком много смертей. Мануэль уже видел, чем это кончается."),
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
					'Text', T(890000000003710, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text MercChatRefusal Lines ChatMessage voice:Jazz_Manuel]] "Мало денег. У Мануэля семья — Фатима и Пако."),
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
					'Text', T(890000000003711, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text MercChatMitigation Lines ChatMessage voice:Jazz_Manuel]] "Мигель уже здесь? Тогда ладно — он мне ещё должен объяснение."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Miguel",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003712, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text MercChatBranch Lines ChatMessage voice:Jazz_Manuel]] "Если встретите Мигеля — скажите, Мануэль его не забыл."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Miguel",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003713, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text Offline ChatMessage voice:Jazz_Manuel]] "Мануэль... сейчас нет связи. Позже."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003714, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text GreetingAndOffer ChatMessage voice:Jazz_Manuel]] "Это Мануэль. Слушаю."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003715, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text ConversationRestart ChatMessage voice:Jazz_Manuel]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003716, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text IdleLine ChatMessage voice:Jazz_Manuel]] "Тише. Мануэль слушает лес."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003717, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text PartingWords ChatMessage voice:Jazz_Manuel]] "Иду с вами. Фатима поймёт."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003718, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text RehireIntro ChatMessage voice:Jazz_Manuel]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003719, --[[ModItemUnitDataCompositeDef Jazz_Manuel Text RehireOutro ChatMessage voice:Jazz_Manuel]] "Остаюсь. Лес подождёт."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 600,
	SalaryIncrease = 200,
	SalaryLv1 = 300,
	SalaryMaxLv = 2000,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 72,
	Likes = {
		"Jazz_Miguel",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Manuel",
		"Stealthy",
		"Loner",
		"Flanker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Manuel",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Manuel",
	},
	Tier = "Regular",
	Specialization = "Stealth",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Manuel",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
