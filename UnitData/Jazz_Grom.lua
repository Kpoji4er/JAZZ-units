UndefineClass('Jazz_Grom')
DefineClass.Jazz_Grom = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 85,
	Agility = 75,
	Dexterity = 75,
	Strength = 85,
	Wisdom = 70,
	Will = 80,
	Leadership = 45,
	Marksmanship = 75,
	Mechanical = 67,
	Explosives = 47,
	Medical = 25,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Grom.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Grom_Big.png",
	IsMercenary = true,
	Name = T(890000000002402, --[[ModItemUnitDataCompositeDef Jazz_Grom Name]] "Майор Сергей «Гром» Громов"),
	Nick = T(890000000002403, --[[ModItemUnitDataCompositeDef Jazz_Grom Nick]] "Гром"),
	AllCapsNick = T(890000000002404, --[[ModItemUnitDataCompositeDef Jazz_Grom AllCapsNick]] "ГРОМ"),
	Bio = T(890000000002405, --[[ModItemUnitDataCompositeDef Jazz_Grom Bio]] "Сослуживец Ивана по Afghan war. Shady Job переводит его в Night Ops. Найм: захват аэропорта и подавление местной ПВО — после этого он сам ждёт вербовщиков на лётном поле. Приходит с собственным гранатомётом. Дружит с Иваном, Игорем и Игги; недолюбливает Скоупа за манеру критиковать чужую наводку."),
	Nationality = "Russia",
	Title = T(890000000002406, --[[ModItemUnitDataCompositeDef Jazz_Grom Title]] "Афганец"),
	Email = T(890000000002407, --[[ModItemUnitDataCompositeDef Jazz_Grom Email]] "Grom@vvs.ru"),
	snype_nick = T(890000000002408, --[[ModItemUnitDataCompositeDef Jazz_Grom snype_nick]] "gromov"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002409, --[[ModItemUnitDataCompositeDef Jazz_Grom Text MercChatRefusal Lines ChatMessage voice:Jazz_Grom]] "Пока Скоуп у вас — нет. Он вечно критикует чужую наводку, а я его слышать не хочу."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Scope",
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
					'Text', T(890000000002410, --[[ModItemUnitDataCompositeDef Jazz_Grom Text MercChatMitigation Lines ChatMessage voice:Jazz_Grom]] "Иван, Игорь или Игги уже здесь? Тогда своих не бросаю."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Ivan" or k == "Igor" or k == "Jazz_Iggy")
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
					'Text', T(890000000002411, --[[ModItemUnitDataCompositeDef Jazz_Grom Text MercChatBranch Lines ChatMessage voice:Jazz_Grom]] "Найдёте Ивана или Игоря — берите без раздумий, проверенные бойцы."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Ivan" or k == "Igor")
						end) < 1
					end,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002412, --[[ModItemUnitDataCompositeDef Jazz_Grom Text Offline ChatMessage voice:Jazz_Grom]] "Громов. Связь позже — сейчас занят проверкой боекомплекта."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002413, --[[ModItemUnitDataCompositeDef Jazz_Grom Text GreetingAndOffer ChatMessage voice:Jazz_Grom]] "Майор Громов. Аэродром ваш — значит, и я ваш."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002414, --[[ModItemUnitDataCompositeDef Jazz_Grom Text ConversationRestart ChatMessage voice:Jazz_Grom]] "Связь прервалась. Продолжайте, товарищ."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002415, --[[ModItemUnitDataCompositeDef Jazz_Grom Text IdleLine ChatMessage voice:Jazz_Grom]] "Жду приказа. Гранатомёт заряжен."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002416, --[[ModItemUnitDataCompositeDef Jazz_Grom Text PartingWords ChatMessage voice:Jazz_Grom]] "Гранатомёт с собой. Идём."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002417, --[[ModItemUnitDataCompositeDef Jazz_Grom Text RehireIntro ChatMessage voice:Jazz_Grom]] "Контракт заканчивается. Продлеваем службу, или мне искать другой аэродром?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002418, --[[ModItemUnitDataCompositeDef Jazz_Grom Text RehireOutro ChatMessage voice:Jazz_Grom]] "Остаюсь. Служба есть служба."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 2500,
	SalaryIncrease = 200,
	SalaryLv1 = 1000,
	SalaryMaxLv = 6000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Ivan",
		"Igor",
		"Jazz_Iggy",
	},
	Dislikes = {
		"Scope",
	},
	StartingPerks = {
		"Jazz_Perk_Grom",
		"HeavyWeaponsTraining",
		"Throwing",
		"Hardened",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Grom",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Grom",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Grom",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
