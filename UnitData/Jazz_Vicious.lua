UndefineClass('Jazz_Vicious')
DefineClass.Jazz_Vicious = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 83,
	Agility = 81,
	Dexterity = 97,
	Strength = 89,
	Wisdom = 55,
	Will = 74,
	Leadership = 13,
	Marksmanship = 83,
	Mechanical = 14,
	Explosives = 16,
	Medical = 12,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Vicious.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Vicious_Big.png",
	IsMercenary = true,
	Name = T(890000000002702, --[[ModItemUnitDataCompositeDef Jazz_Vicious Name]] "Жан-Пьер Вио «Злобный»"),
	Nick = T(890000000002703, --[[ModItemUnitDataCompositeDef Jazz_Vicious Nick]] "Злобный"),
	AllCapsNick = T(890000000002704, --[[ModItemUnitDataCompositeDef Jazz_Vicious AllCapsNick]] "ЗЛОБНЫЙ"),
	Bio = T(890000000002705, --[[ModItemUnitDataCompositeDef Jazz_Vicious Bio]] "Грубоватый, но романтичный парень из французской Канады. В прошлом начинал еще вышибалой в ночном клубе, с тех пор продолжает прогрессировать на поприще контактного боя. В общевойсковых операциях с танками и авиацией ему делать нечего, но вот вышибить кому-нибудь мозги в рукопашной или на дистанции выстрела из дробовика - в этом Злобному равных нет."),
	Nationality = "France",
	Title = T(890000000002706, "Hide Your Girls"),
	Email = T(890000000002707, "Pierre.Jan-Pierre@aim.com"),
	snype_nick = T(890000000002708, --[[ModItemUnitDataCompositeDef Jazz_Vicious snype_nick]] "lamalice"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002710, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text MercChatRefusal Lines ChatMessage voice:Jazz_Vicious]] "Мой шарм стоит дороже, чем ты предлагаешь."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002709, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text MercChatHaggle Lines ChatMessage voice:Jazz_Vicious]] "Отряд полон англичан... Ладно, но за такие муки полагается надбавка."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and ud.Nationality == "UK"
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
					'Text', T(890000000002711, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text MercChatMitigation Lines ChatMessage voice:Jazz_Vicious]] "О, Лиска или Паук уже здесь? Тогда я определённо в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Fox" or k == "Jazz_Spider")
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
					'Text', T(890000000002712, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text MercChatBranch Lines ChatMessage voice:Jazz_Vicious]] "Если ищете ещё одну прекрасную даму в отряд — зовите Лиску."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002713, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text Offline ChatMessage voice:Jazz_Vicious]] "Злобный занят дамами. Пишите — если повезёт, отвечу."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002714, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text GreetingAndOffer ChatMessage voice:Jazz_Vicious]] "Oui? Жан-Пьер слушает. Дело срочное?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002715, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text ConversationRestart ChatMessage voice:Jazz_Vicious]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002716, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text IdleLine ChatMessage voice:Jazz_Vicious]] "Ну же, командирша. Время не ждёт."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002717, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text PartingWords ChatMessage voice:Jazz_Vicious]] "Я уже еду — и, конечно, красиво."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002718, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text RehireIntro ChatMessage voice:Jazz_Vicious]] "Контракт заканчивается. Продлеваем, chérie?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002719, --[[ModItemUnitDataCompositeDef Jazz_Vicious Text RehireOutro ChatMessage voice:Jazz_Vicious]] "Остаюсь. Здесь веселее, чем дома."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 800,
	SalaryIncrease = 200,
	SalaryLv1 = 700,
	SalaryMaxLv = 4500,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
		self:TryEquip(items, "Handheld B", "Melee")
	end,
	MaxHitPoints = 88,
	Likes = {
					"Fox",
					"Jazz_Spider",
					"Meltdown",
				},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Vicious",
		"MeleeTraining",
		"CQCTraining",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Vicious",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Vicious",
	},
	Tier = "Veteran",
	Specialization = "AllRounder",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Vicious",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
