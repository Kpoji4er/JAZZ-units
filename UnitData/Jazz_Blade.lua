UndefineClass('Jazz_Blade')
DefineClass.Jazz_Blade = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 88,
	Agility = 90,
	Dexterity = 85,
	Strength = 80,
	Wisdom = 53,
	Will = 55,
	Leadership = 20,
	Marksmanship = 50,
	Mechanical = 0,
	Explosives = 5,
	Medical = 5,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Blade.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Blade_Big.png",
	IsMercenary = true,
	Name = T(890000000001802, --[[ModItemUnitDataCompositeDef Jazz_Blade Name]] "[WIP] Билл «Бритва» Ламонт"),
	Nick = T(890000000001803, --[[ModItemUnitDataCompositeDef Jazz_Blade Nick]] "Бритва"),
	AllCapsNick = T(890000000001804, --[[ModItemUnitDataCompositeDef Jazz_Blade AllCapsNick]] "БРИТВА"),
	Bio = T(890000000001805, --[[ModItemUnitDataCompositeDef Jazz_Blade Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000001806, --[[ModItemUnitDataCompositeDef Jazz_Blade Title]] "Нож не кончается"),
	Email = T(890000000001807, --[[ModItemUnitDataCompositeDef Jazz_Blade Email]] "Blade@merc.com"),
	snype_nick = T(890000000001808, --[[ModItemUnitDataCompositeDef Jazz_Blade snype_nick]] "sharpstuff"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001809, --[[ModItemUnitDataCompositeDef Jazz_Blade Text MercChatRefusal Lines ChatMessage voice:Jazz_Blade]] "Слишком много наших полегло. Даже мне это не по вкусу."),
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
					'Text', T(890000000001810, --[[ModItemUnitDataCompositeDef Jazz_Blade Text MercChatRefusal Lines ChatMessage voice:Jazz_Blade]] "За такие копейки я лучше дома ножи точить буду."),
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
					'Text', T(890000000001811, --[[ModItemUnitDataCompositeDef Jazz_Blade Text MercChatHaggle Lines ChatMessage voice:Jazz_Blade]] "У тебя тут одни местные. Скучно и опасно — доплати."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (not ud.Nationality or ud.Nationality == "" or ud.Nationality == "Arulco")
						end) >= 2
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
					'Text', T(890000000001812, --[[ModItemUnitDataCompositeDef Jazz_Blade Text MercChatMitigation Lines ChatMessage voice:Jazz_Blade]] "О, Нервный/Фидель уже здесь? Тогда не откажусь, будет весело."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Nervous" or k == "Fidel")
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
					'Text', T(890000000001813, --[[ModItemUnitDataCompositeDef Jazz_Blade Text MercChatBranch Lines ChatMessage voice:Jazz_Blade]] "Хочешь ещё психа в команду — зови Фиделя."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fidel",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001814, --[[ModItemUnitDataCompositeDef Jazz_Blade Text Offline ChatMessage voice:Jazz_Blade]] "Бритва занят — режет. Оставь сообщение, если жить надоело."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001815, --[[ModItemUnitDataCompositeDef Jazz_Blade Text GreetingAndOffer ChatMessage voice:Jazz_Blade]] "Чо надо? Резать будем?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001816, --[[ModItemUnitDataCompositeDef Jazz_Blade Text ConversationRestart ChatMessage voice:Jazz_Blade]] "Связь прервалась. Ну, продолжай, а то нож стынет."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001817, --[[ModItemUnitDataCompositeDef Jazz_Blade Text IdleLine ChatMessage voice:Jazz_Blade]] "Ножницы тупые — ножи нет. Двигай давай."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001818, --[[ModItemUnitDataCompositeDef Jazz_Blade Text PartingWords ChatMessage voice:Jazz_Blade]] "Я уже в пути, хе-хе. Кто-то там не доживёт до утра."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001819, --[[ModItemUnitDataCompositeDef Jazz_Blade Text RehireIntro ChatMessage voice:Jazz_Blade]] "Контракт горит. Продлеваем или мне точить нож на кого-то другого?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001820, --[[ModItemUnitDataCompositeDef Jazz_Blade Text RehireOutro ChatMessage voice:Jazz_Blade]] "Остаюсь. Ещё не всех порезал."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 900,
	SalaryIncrease = 200,
	SalaryLv1 = 400,
	SalaryMaxLv = 2500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
		self:TryEquip(items, "Handheld B", "Melee")
	end,
	MaxHitPoints = 88,
	Likes = {
		"Jazz_Nervous",
		"Fidel",
	},
	Dislikes = {
		"Jazz_Biff",
		"Jazz_Flo",
	},
	StartingPerks = {
		"Jazz_Perk_Blade",
		"Psycho",
		"MeleeTraining",
		"CQCTraining",
		"Berserker",
		"Hotblood",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Blade",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Blade",
	},
	Tier = "Veteran",
	Specialization = "Melee",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Blade",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
