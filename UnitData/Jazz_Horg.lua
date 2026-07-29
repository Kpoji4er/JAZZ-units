UndefineClass('Jazz_Horg')
DefineClass.Jazz_Horg = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Affiliation = "MERC",
	Health = 98,
	Agility = 78,
	Dexterity = 75,
	Strength = 94,
	Wisdom = 77,
	Will = 60,
	Leadership = 35,
	Marksmanship = 89,
	Mechanical = 74,
	Explosives = 50,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Horg.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Horg_Big.png",
	IsMercenary = true,
	Name = T(890000000003602, --[[ModItemUnitDataCompositeDef Jazz_Horg Name]] "[WIP] Лейтенант Хорг «Сигара»"),
	Nick = T(890000000003603, --[[ModItemUnitDataCompositeDef Jazz_Horg Nick]] "Сигара"),
	AllCapsNick = T(890000000003604, --[[ModItemUnitDataCompositeDef Jazz_Horg AllCapsNick]] "СИГАРА"),
	Bio = T(890000000003605, --[[ModItemUnitDataCompositeDef Jazz_Horg Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000003606, --[[ModItemUnitDataCompositeDef Jazz_Horg Title]] "Сигара"),
	Email = T(890000000003607, --[[ModItemUnitDataCompositeDef Jazz_Horg Email]] "Horg@merc.com"),
	snype_nick = T(890000000003608, --[[ModItemUnitDataCompositeDef Jazz_Horg snype_nick]] "cigar"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003609, --[[ModItemUnitDataCompositeDef Jazz_Horg Text MercChatRefusal Lines ChatMessage voice:Jazz_Horg]] "Пока Колби в отряде — нет. Не выношу этого типа."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Colby",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003610, --[[ModItemUnitDataCompositeDef Jazz_Horg Text MercChatRefusal Lines ChatMessage voice:Jazz_Horg]] "Слишком много наших полегло. Мне это не нравится."),
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
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003611, --[[ModItemUnitDataCompositeDef Jazz_Horg Text MercChatMitigation Lines ChatMessage voice:Jazz_Horg]] "Бык, Гас или Бифф уже здесь? Тогда я точно в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Bull" or k == "Gus" or k == "Jazz_Biff")
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
					'Text', T(890000000003612, --[[ModItemUnitDataCompositeDef Jazz_Horg Text MercChatBranch Lines ChatMessage voice:Jazz_Horg]] "Возьмите ещё Гаса — с ним и потяжелее груз не проблема."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Gus",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003613, --[[ModItemUnitDataCompositeDef Jazz_Horg Text Offline ChatMessage voice:Jazz_Horg]] "Сигара курит — не мешать. Пиши, отвечу позже."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003614, --[[ModItemUnitDataCompositeDef Jazz_Horg Text GreetingAndOffer ChatMessage voice:Jazz_Horg]] "Хорг. Говори, что надо."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003615, --[[ModItemUnitDataCompositeDef Jazz_Horg Text ConversationRestart ChatMessage voice:Jazz_Horg]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003616, --[[ModItemUnitDataCompositeDef Jazz_Horg Text IdleLine ChatMessage voice:Jazz_Horg]] "Ну? Сигара сама себя не докурит."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003617, --[[ModItemUnitDataCompositeDef Jazz_Horg Text PartingWords ChatMessage voice:Jazz_Horg]] "Беру тяжёлое и еду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003618, --[[ModItemUnitDataCompositeDef Jazz_Horg Text RehireIntro ChatMessage voice:Jazz_Horg]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003619, --[[ModItemUnitDataCompositeDef Jazz_Horg Text RehireOutro ChatMessage voice:Jazz_Horg]] "Остаюсь. Ещё есть, что взрывать."),
		}),
	},
	MedicalDeposit = "standard",
	StartingSalary = 2700,
	SalaryIncrease = 200,
	SalaryLv1 = 1100,
	SalaryMaxLv = 6500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 98,
	Likes = {
		"Jazz_Bull",
		"Gus",
		"Jazz_Biff",
	},
	Dislikes = {
		"Jazz_Colby",
	},
	StartingPerks = {
		"Jazz_Perk_Horg",
		"HeavyWeaponsTraining",
		"Hardened",
		"ShoulderToShoulder",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Horg",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Horg",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Horg",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
