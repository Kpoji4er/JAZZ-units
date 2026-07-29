UndefineClass('Jazz_Quinten')
DefineClass.Jazz_Quinten = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 99,
	Agility = 99,
	Dexterity = 80,
	Strength = 80,
	Wisdom = 91,
	Will = 85,
	Leadership = 20,
	Marksmanship = 61,
	Mechanical = 10,
	Explosives = 10,
	Medical = 88,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Quinten.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Quinten_Big.png",
	IsMercenary = true,
	Name = T(890000000002602, --[[ModItemUnitDataCompositeDef Jazz_Quinten Name]] "[WIP] Доктор Дэниел «Дэнни» Квинтен"),
	Nick = T(890000000002603, --[[ModItemUnitDataCompositeDef Jazz_Quinten Nick]] "Дэнни"),
	AllCapsNick = T(890000000002604, --[[ModItemUnitDataCompositeDef Jazz_Quinten AllCapsNick]] "ДЭННИ"),
	Bio = T(890000000002605, --[[ModItemUnitDataCompositeDef Jazz_Quinten Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000002606, --[[ModItemUnitDataCompositeDef Jazz_Quinten Title]] "Машина, не человек"),
	Email = T(890000000002607, --[[ModItemUnitDataCompositeDef Jazz_Quinten Email]] "Quinten@aim.com"),
	snype_nick = T(890000000002608, --[[ModItemUnitDataCompositeDef Jazz_Quinten snype_nick]] "parkourmd"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002609, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text MercChatRefusal Lines ChatMessage voice:Jazz_Quinten]] "Пока Стероид, Мясо или Бифф в отряде — нет. Слишком безответственно для моей практики."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Steroid" or k == "Jazz_Biff")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002610, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text MercChatRefusal Lines ChatMessage voice:Jazz_Quinten]] "Слишком много раненых и погибших на вашем счету. Я предпочитаю пациентов, которые выживают."),
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
					'Text', T(890000000002611, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text MercChatRefusal Lines ChatMessage voice:Jazz_Quinten]] "Мой гонорар не обсуждается по дешёвке."),
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
	Mitigations = {},
	ExtraPartingWords = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002612, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text Offline ChatMessage voice:Jazz_Quinten]] "Доктор Квинтен недоступен. Оставьте сообщение."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002613, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text GreetingAndOffer ChatMessage voice:Jazz_Quinten]] "Квинтен на связи. Сколько бежать и кого латать?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002614, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text ConversationRestart ChatMessage voice:Jazz_Quinten]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002615, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text IdleLine ChatMessage voice:Jazz_Quinten]] "Пульс ровный. У тебя — не проверял."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002616, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text PartingWords ChatMessage voice:Jazz_Quinten]] "Аптечка собрана, обе руки заряжены. Выхожу."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002617, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text RehireIntro ChatMessage voice:Jazz_Quinten]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002618, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text RehireOutro ChatMessage voice:Jazz_Quinten]] "Остаюсь. Кому-то же надо следить, чтобы вы не поубивали друг друга."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 3000,
	SalaryIncrease = 200,
	SalaryLv1 = 1500,
	SalaryMaxLv = 7500,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 99,
	Likes = {},
	Dislikes = {
		"Steroid",
		"Jazz_Biff",
	},
	StartingPerks = {
		"Jazz_Perk_Quinten",
		"Loner",
		"Ambidextrous",
		"Savior",
		"StressManagement",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Quinten",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Quinten",
	},
	Tier = "Elite",
	Specialization = "Doctor",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Quinten",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
