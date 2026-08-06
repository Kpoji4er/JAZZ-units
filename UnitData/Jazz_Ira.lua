UndefineClass('Jazz_Ira')
DefineClass.Jazz_Ira = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 65,
	Agility = 60,
	Dexterity = 55,
	Strength = 50,
	Wisdom = 70,
	Will = 70,
	Leadership = 14,
	Marksmanship = 55,
	Mechanical = 20,
	Explosives = 10,
	Medical = 40,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Ira.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Ira_Big.png",
	IsMercenary = true,
	Name = T(890000000001902, --[[ModItemUnitDataCompositeDef Jazz_Ira Name]] "Айра Смит"),
	Nick = T(890000000001903, --[[ModItemUnitDataCompositeDef Jazz_Ira Nick]] "Айра"),
	AllCapsNick = T(890000000001904, --[[ModItemUnitDataCompositeDef Jazz_Ira AllCapsNick]] "АЙРА"),
	Bio = T(890000000001905, --[[ModItemUnitDataCompositeDef Jazz_Ira Bio]] "Слабые боевые статы и меткость 55, но для ополченцев Арулько — живой бог: любой встреченный ею новобранец учится быстрее. Leadership низкий на старте, компенсируется именным перком и статусом Locals. Дружит с Мигелем, Карлосом и Димитрием (местное сопротивление); не любит Злобного; не умеет плавать (флейвор, без игровой механики)."),
	Nationality = "USA",
	Title = T(890000000001906, --[[ModItemUnitDataCompositeDef Jazz_Ira Title]] "Царица ополчения"),
	Email = T(890000000001907, --[[ModItemUnitDataCompositeDef Jazz_Ira Email]] "Ira@arulco.reb"),
	snype_nick = T(890000000001908, --[[ModItemUnitDataCompositeDef Jazz_Ira snype_nick]] "givegun"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001909, --[[ModItemUnitDataCompositeDef Jazz_Ira Text MercChatRefusal Lines ChatMessage voice:Jazz_Ira]] "Пока Злобный у вас — я в отряд не пойду. Он моих людей пугает."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Vicious",
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
					'Text', T(890000000001910, --[[ModItemUnitDataCompositeDef Jazz_Ira Text MercChatMitigation Lines ChatMessage voice:Jazz_Ira]] "Раз кто-то из наших уже с вами — значит, вам можно доверять. Согласна."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Miguel" or k == "Jazz_Carlos" or k == "Jazz_Dimitri")
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
					'Text', T(890000000001911, --[[ModItemUnitDataCompositeDef Jazz_Ira Text MercChatBranch Lines ChatMessage voice:Jazz_Ira]] "Найдёте Мигеля, Карлоса или Димитрия — берите не думая, это наши лучшие люди."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Miguel" or k == "Jazz_Carlos" or k == "Jazz_Dimitri")
						end) < 1
					end,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001912, --[[ModItemUnitDataCompositeDef Jazz_Ira Text Offline ChatMessage voice:Jazz_Ira]] "Айра. Если это про пулемёт для ребят — говорите после сигнала."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001913, --[[ModItemUnitDataCompositeDef Jazz_Ira Text GreetingAndOffer ChatMessage voice:Jazz_Ira]] "Ну? Пулемёта дашь или опять только советы?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001914, --[[ModItemUnitDataCompositeDef Jazz_Ira Text ConversationRestart ChatMessage voice:Jazz_Ira]] "Связь прервалась. Ополчение ждать не будет — давай к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001915, --[[ModItemUnitDataCompositeDef Jazz_Ira Text IdleLine ChatMessage voice:Jazz_Ira]] "Война идёт — не мешкай, у меня люди на позициях."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001916, --[[ModItemUnitDataCompositeDef Jazz_Ira Text PartingWords ChatMessage voice:Jazz_Ira]] "Беру своих ребят и иду. Только скажи, где стрелять."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001917, --[[ModItemUnitDataCompositeDef Jazz_Ira Text RehireIntro ChatMessage voice:Jazz_Ira]] "Контракт заканчивается. Сектор ещё не спокоен — продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001918, --[[ModItemUnitDataCompositeDef Jazz_Ira Text RehireOutro ChatMessage voice:Jazz_Ira]] "Остаюсь. Мои люди меня одну не отпустят."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 400,
	SalaryIncrease = 200,
	SalaryLv1 = 200,
	SalaryMaxLv = 1500,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {
		"Jazz_Miguel",
		"Jazz_Carlos",
		"Jazz_Dimitri",
	},
	Dislikes = {
		"Jazz_Vicious",
	},
	StartingPerks = {
		"Jazz_Perk_Ira",
		"Teacher",
		"ShoulderToShoulder",
		"MinFreeMove",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Ira",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Ira",
	},
	Tier = "Regular",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Female",
	VoiceResponseId = "Jazz_Ira",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
