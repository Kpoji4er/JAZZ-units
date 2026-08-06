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
	Name = T(890000000002602, --[[ModItemUnitDataCompositeDef Jazz_Quinten Name]] "Доктор Дэниел «Дэнни» Квинтен"),
	Nick = T(890000000002603, --[[ModItemUnitDataCompositeDef Jazz_Quinten Nick]] "Дэнни"),
	AllCapsNick = T(890000000002604, --[[ModItemUnitDataCompositeDef Jazz_Quinten AllCapsNick]] "ДЭННИ"),
	Bio = T(890000000002605, --[[ModItemUnitDataCompositeDef Jazz_Quinten Bio]] "99 Health, 99 Agility, около 80 Strength/Dexterity, Wisdom 91, Medical 88, Marksmanship 61. Одиночка, стреляет и лечит одинаково хорошо обеими руками. Не любит Стероида, Мясо и Биффа — считает их всех безответственными в поле."),
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
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002612, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text Offline ChatMessage voice:Jazz_Quinten]] "Это доктор Дэниел Квинтен. Пожалуйста, оставьте сообщение. Если нужна срочная медицинская помощь — звоните ещё."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002613, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text GreetingAndOffer ChatMessage voice:Jazz_Quinten]] "Да, это доктор Квинтен."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002614, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text ConversationRestart ChatMessage voice:Jazz_Quinten]] "Пожалуйста, обратите внимание, я сказал..."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002615, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text IdleLine ChatMessage voice:Jazz_Quinten]] "Как вы, наверно, знаете, моя специальность — оказание медицинской помощи в полевых условиях."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002616, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text PartingWords ChatMessage voice:Jazz_Quinten]] "Я буду очень рад подписать этот контракт. Спасибо."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002617, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text RehireIntro ChatMessage voice:Jazz_Quinten]] "Ты собираешься продлевать мой контракт? Сообщи поскорее, если хочешь, чтобы я к тому моменту был свободен."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002618, --[[ModItemUnitDataCompositeDef Jazz_Quinten Text RehireOutro ChatMessage voice:Jazz_Quinten]] "Это вполне приемлемо. Спасибо."),
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
