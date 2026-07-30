UndefineClass('Jazz_Static')
DefineClass.Jazz_Static = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 75,
	Dexterity = 95,
	Strength = 59,
	Wisdom = 60,
	Will = 50,
	Leadership = 20,
	Marksmanship = 55,
	Mechanical = 99,
	Explosives = 20,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Static.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Static_Big.png",
	IsMercenary = true,
	Name = T(890000000004102, --[[ModItemUnitDataCompositeDef Jazz_Static Name]] "[WIP] Кирк «Статик» Стивенсон"),
	Nick = T(890000000004103, --[[ModItemUnitDataCompositeDef Jazz_Static Nick]] "Статик"),
	AllCapsNick = T(890000000004104, --[[ModItemUnitDataCompositeDef Jazz_Static AllCapsNick]] "СТАТИК"),
	Bio = T(890000000004105, --[[ModItemUnitDataCompositeDef Jazz_Static Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000004106, --[[ModItemUnitDataCompositeDef Jazz_Static Title]] "Хиппи-механик"),
	Email = T(890000000004107, --[[ModItemUnitDataCompositeDef Jazz_Static Email]] "Static@aim.com"),
	snype_nick = T(890000000004108, --[[ModItemUnitDataCompositeDef Jazz_Static snype_nick]] "static"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004109, --[[ModItemUnitDataCompositeDef Jazz_Static Text MercChatRefusal Lines ChatMessage voice:Jazz_Static]] "Пока Ротман, Блэйд или трезвый Ларри у вас в отряде — я пас. Не моя вибрация."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Rothman" or k == "Jazz_Blade" or k == "Larry_Clean")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004110, --[[ModItemUnitDataCompositeDef Jazz_Static Text MercChatRefusal Lines ChatMessage voice:Jazz_Static]] "Слишком много трупов вокруг вас. Не моя карма."),
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
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004111, --[[ModItemUnitDataCompositeDef Jazz_Static Text MercChatBranch Lines ChatMessage voice:Jazz_Static]] "Отряд из одних швейцарцев? Ладно, но накинь сверху."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						local squad = obj and obj.Squad
						if not squad then return false end
						local units = GetSquadUnits and GetSquadUnits(squad) or {}
						if #units == 0 then return false end
						for _, u in ipairs(units) do
							local ud = gv_UnitData[u]
							if not ud or ud.Nationality ~= "Switzerland" then return false end
						end
						return true
					end,
				}),
			},
		}),
	},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004112, --[[ModItemUnitDataCompositeDef Jazz_Static Text MercChatMitigation Lines ChatMessage voice:Jazz_Static]] "О, Паук (или обдолбанный Ларри) уже здесь? Тогда я точно в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Spider" or k == "Larry")
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
					'Text', T(890000000004113, --[[ModItemUnitDataCompositeDef Jazz_Static Text MercChatBranch Lines ChatMessage voice:Jazz_Static]] "Если нужен ещё один спец по железу — зовите Паука."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Spider",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004114, --[[ModItemUnitDataCompositeDef Jazz_Static Text Offline ChatMessage voice:Jazz_Static]] "Статик в отключке. Позвоните позже."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004115, --[[ModItemUnitDataCompositeDef Jazz_Static Text GreetingAndOffer ChatMessage voice:Jazz_Static]] "Йо, Статик на проводе. Что чинить?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004116, --[[ModItemUnitDataCompositeDef Jazz_Static Text ConversationRestart ChatMessage voice:Jazz_Static]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004117, --[[ModItemUnitDataCompositeDef Jazz_Static Text IdleLine ChatMessage voice:Jazz_Static]] "Мир... и гайки, чувак."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004118, --[[ModItemUnitDataCompositeDef Jazz_Static Text PartingWords ChatMessage voice:Jazz_Static]] "Окей, собираю чемодан с инструментами."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004119, --[[ModItemUnitDataCompositeDef Jazz_Static Text RehireIntro ChatMessage voice:Jazz_Static]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004120, --[[ModItemUnitDataCompositeDef Jazz_Static Text RehireOutro ChatMessage voice:Jazz_Static]] "Остаюсь. Тут ещё есть что чинить."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 1400,
	SalaryIncrease = 150,
	SalaryLv1 = 600,
	SalaryMaxLv = 3500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 70,
	Likes = {
		"Jazz_Spider",
		"Larry",
	},
	Dislikes = {
		"Jazz_Rothman",
		"Jazz_Blade",
		"Larry_Clean",
	},
	StartingPerks = {
		"Jazz_Perk_Static",
		"MrFixit",
		"JackOfAllTrades",
		"Scoundrel",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Static",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Static",
	},
	Tier = "Veteran",
	Specialization = "Mechanic",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Static",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
