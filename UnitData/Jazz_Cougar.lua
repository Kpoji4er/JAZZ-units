UndefineClass('Jazz_Cougar')
DefineClass.Jazz_Cougar = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 85,
	Agility = 88,
	Dexterity = 80,
	Strength = 80,
	Wisdom = 70,
	Will = 70,
	Leadership = 30,
	Marksmanship = 93,
	Mechanical = 58,
	Explosives = 45,
	Medical = 33,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Cougar.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Cougar_Big.png",
	IsMercenary = true,
	Name = T(890000000003102, --[[ModItemUnitDataCompositeDef Jazz_Cougar Name]] "[WIP] Джим «Пума» Уоллесс"),
	Nick = T(890000000003103, --[[ModItemUnitDataCompositeDef Jazz_Cougar Nick]] "Пума"),
	AllCapsNick = T(890000000003104, --[[ModItemUnitDataCompositeDef Jazz_Cougar AllCapsNick]] "ПУМА"),
	Bio = T(890000000003105, --[[ModItemUnitDataCompositeDef Jazz_Cougar Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000003106, --[[ModItemUnitDataCompositeDef Jazz_Cougar Title]] "Тихий автоматчик"),
	Email = T(890000000003107, --[[ModItemUnitDataCompositeDef Jazz_Cougar Email]] "Cougar@merc.com"),
	snype_nick = T(890000000003108, --[[ModItemUnitDataCompositeDef Jazz_Cougar snype_nick]] "puma"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003109, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text MercChatRefusal Lines ChatMessage voice:Jazz_Cougar]] "Слишком много шума вокруг вашего отряда в последнее время. Мне такое не по пути."),
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
					'Text', T(890000000003110, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text MercChatRefusal Lines ChatMessage voice:Jazz_Cougar]] "За такую сумму я лучше отсижусь в тени."),
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
					'Text', T(890000000003111, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text MercChatMitigation Lines ChatMessage voice:Jazz_Cougar]] "Вульф или Лен уже здесь? Тогда я спокоен, иду."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Wolf" or k == "Len")
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
					'Text', T(890000000003112, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text MercChatBranch Lines ChatMessage voice:Jazz_Cougar]] "Наймите ещё Лена — с ним работать тихо и надёжно."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Len",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003113, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text Offline ChatMessage voice:Jazz_Cougar]] "Пума вне зоны действия. Пишите."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003114, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text GreetingAndOffer ChatMessage voice:Jazz_Cougar]] "Пума. Говори тихо, если можешь."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003115, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text ConversationRestart ChatMessage voice:Jazz_Cougar]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003116, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text IdleLine ChatMessage voice:Jazz_Cougar]] "..."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003117, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text PartingWords ChatMessage voice:Jazz_Cougar]] "Уже в тени. Иду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003118, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text RehireIntro ChatMessage voice:Jazz_Cougar]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003119, --[[ModItemUnitDataCompositeDef Jazz_Cougar Text RehireOutro ChatMessage voice:Jazz_Cougar]] "Остаюсь. Тихо, но остаюсь."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 1600,
	SalaryIncrease = 200,
	SalaryLv1 = 700,
	SalaryMaxLv = 4000,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Wolf",
		"Len",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Cougar",
		"Stealthy",
		"AutoWeapons",
		"Flanker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Cougar",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Cougar",
	},
	Tier = "Veteran",
	Specialization = "Stealth",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Cougar",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
