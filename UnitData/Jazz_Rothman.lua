UndefineClass('Jazz_Rothman')
DefineClass.Jazz_Rothman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 97,
	Agility = 71,
	Dexterity = 78,
	Strength = 80,
	Wisdom = 94,
	Will = 59,
	Leadership = 59,
	Marksmanship = 82,
	Mechanical = 15,
	Explosives = 66,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Rothman.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Rothman_Big.png",
	IsMercenary = true,
	Name = T(890000000002433, --[[ModItemUnitDataCompositeDef Jazz_Rothman Name]] "Стефан Ротман"),
	Nick = T(890000000002434, --[[ModItemUnitDataCompositeDef Jazz_Rothman Nick]] "Стефан"),
	AllCapsNick = T(890000000002435, --[[ModItemUnitDataCompositeDef Jazz_Rothman AllCapsNick]] "СТЕФАН"),
	Bio = T(890000000002436, --[[ModItemUnitDataCompositeDef Jazz_Rothman Bio]] "Мы как то и вовсе позабыли, что одним из предыдущих мест работы Стефана как раз была организация безопасности на алмазных рудниках в южной Африке. Само собой, текущая конъюнктура рынка ему не известна, но общее положение дел в Гранд Чиене для него тайной не является. Человек варился на этой кухне несколько лет и отказываться от его опыта было бы не разумно."),
	Nationality = "SouthAfrica",
	Title = T(890000000002437, "Seen One Mine, Seen Them All"),
	Email = T(890000000002438, --[[ModItemUnitDataCompositeDef Jazz_Rothman Email]] "Rothman@aim.com"),
	snype_nick = T(890000000002439, --[[ModItemUnitDataCompositeDef Jazz_Rothman snype_nick]] "mineboss"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002440, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text MercChatRefusal Lines ChatMessage voice:Jazz_Rothman]] "Пока Статик, Гвоздь или обдолбанный Ларри у вас — я не подписываюсь. Не тот уровень дисциплины."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Static" or k == "Nails" or k == "Larry")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002441, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text MercChatRefusal Lines ChatMessage voice:Jazz_Rothman]] "Слишком много трупов на вашем счету для нормального контракта."),
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
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002442, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text MercChatHaggle Lines ChatMessage voice:Jazz_Rothman]] "Отряд из одних американцев... Ладно, но с доплатой."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and ud.Nationality == "USA"
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	HaggleRehire = {},
	Mitigations = {},
	ExtraPartingWords = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002444, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text Offline ChatMessage voice:Jazz_Rothman]] "Ротман. Занят на объекте. Перезвоните."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002445, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text GreetingAndOffer ChatMessage voice:Jazz_Rothman]] "Ротман слушает. Контракт по делу?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002446, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text ConversationRestart ChatMessage voice:Jazz_Rothman]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002447, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text IdleLine ChatMessage voice:Jazz_Rothman]] "Время — деньги, а у меня их и так немного."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002448, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text PartingWords ChatMessage voice:Jazz_Rothman]] "Договорились. Беру людей и выхожу."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002449, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text RehireIntro ChatMessage voice:Jazz_Rothman]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002450, --[[ModItemUnitDataCompositeDef Jazz_Rothman Text RehireOutro ChatMessage voice:Jazz_Rothman]] "Остаюсь. Работа ещё не закончена."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 1450,
	SalaryIncrease = 232,
	SalaryLv1 = 900,
	SalaryMaxLv = 5500,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 97,
	Likes = {
					"Meltdown",
				},
	Dislikes = {
		"Jazz_Static",
		"Nails",
		"Larry",
	},
	StartingPerks = {
		"Jazz_Perk_Rothman",
		"Teacher",
		"ShoulderToShoulder",
		"HoldPosition",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Rothman",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Rothman",
	},
	Tier = "Veteran",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Rothman",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
