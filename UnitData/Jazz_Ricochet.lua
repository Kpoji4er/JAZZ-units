UndefineClass('Jazz_Ricochet')
DefineClass.Jazz_Ricochet = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 60,
	Dexterity = 70,
	Strength = 75,
	Wisdom = 55,
	Will = 45,
	Leadership = 15,
	Marksmanship = 88,
	Mechanical = 15,
	Explosives = 15,
	Medical = 10,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Ricochet.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Ricochet_Big.png",
	IsMercenary = true,
	Name = T(890000000004602, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Name]] "[WIP] Тим «Рикошет» Саттонн"),
	Nick = T(890000000004603, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Nick]] "Рикошет"),
	AllCapsNick = T(890000000004604, --[[ModItemUnitDataCompositeDef Jazz_Ricochet AllCapsNick]] "РИКОШЕТ"),
	Bio = T(890000000004605, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000004606, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Title]] "Ближник"),
	Email = T(890000000004607, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Email]] "Ricochet@merc.com"),
	snype_nick = T(890000000004608, --[[ModItemUnitDataCompositeDef Jazz_Ricochet snype_nick]] "ricochet"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004609, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text MercChatRefusal Lines ChatMessage voice:Jazz_Ricochet]] "Пока Сидни или Вики в отряде — я пас."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Sidney" or k == "Vicki")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004610, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text MercChatRefusal Lines ChatMessage voice:Jazz_Ricochet]] "Маловато для моих ножей."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004611, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text MercChatBranch Lines ChatMessage voice:Jazz_Ricochet]] "Отряд полон британцев... ладно, но с доплатой."),
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
							if not ud or ud.Nationality ~= "Britain" then return false end
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
					'Text', T(890000000004612, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text MercChatMitigation Lines ChatMessage voice:Jazz_Ricochet]] "О, Злобный уже здесь? Тогда я в деле."),
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
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004613, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text MercChatBranch Lines ChatMessage voice:Jazz_Ricochet]] "Если нужен ещё один клинок — зовите Злобного."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Vicious",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004614, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text Offline ChatMessage voice:Jazz_Ricochet]] "Рикошет вне игры."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004615, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text GreetingAndOffer ChatMessage voice:Jazz_Ricochet]] "Рикошет слушает. Кого метать?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004616, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text ConversationRestart ChatMessage voice:Jazz_Ricochet]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004617, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text IdleLine ChatMessage voice:Jazz_Ricochet]] "Жду цель."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004618, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text PartingWords ChatMessage voice:Jazz_Ricochet]] "Ножи наточены. Иду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004619, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text RehireIntro ChatMessage voice:Jazz_Ricochet]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004620, --[[ModItemUnitDataCompositeDef Jazz_Ricochet Text RehireOutro ChatMessage voice:Jazz_Ricochet]] "Остаюсь."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 800,
	SalaryIncrease = 150,
	SalaryLv1 = 350,
	SalaryMaxLv = 2400,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
	end,
	MaxHitPoints = 70,
	Likes = {
		"Jazz_Vicious",
	},
	Dislikes = {
		"Sidney",
		"Vicki",
	},
	StartingPerks = {
		"Jazz_Perk_Ricochet",
		"Loner",
		"Throwing",
		"MeleeTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Ricochet",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Ricochet",
	},
	Tier = "Regular",
	Specialization = "Melee",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Ricochet",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
