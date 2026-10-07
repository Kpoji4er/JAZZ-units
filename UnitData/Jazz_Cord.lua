UndefineClass('Jazz_Cord')
DefineClass.Jazz_Cord = {
	Affiliation = "MERC",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 72,
	Agility = 61,
	Dexterity = 89,
	Strength = 68,
	Wisdom = 49,
	Will = 26,
	Leadership = 3,
	Marksmanship = 44,
	Mechanical = 82,
	Explosives = 8,
	Medical = 1,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Cord.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Cord_Big.png",
	IsMercenary = true,
	Name = T(890000000004402, --[[ModItemUnitDataCompositeDef Jazz_Cord Name]] "Даг Милтон «Кардан»"),
	Nick = T(890000000004403, --[[ModItemUnitDataCompositeDef Jazz_Cord Nick]] "Кардан"),
	AllCapsNick = T(890000000004404, --[[ModItemUnitDataCompositeDef Jazz_Cord AllCapsNick]] "КАРДАН"),
	Bio = T(890000000004405, --[[ModItemUnitDataCompositeDef Jazz_Cord Bio]] "Даг Милтон родился и вырос в Кентукки. В четвертом классе его выгнали из школы и он стал работать на автозаправке своего отца. Там он стал отличным механиком. После того, как сестра сменила его на работе, он начал шататься по стране и, в конце концов, решил стать наемником. Хобби: Стрельба по белкам и коллекционирование дорожных знаков."),
	Nationality = "USA",
	Title = T(890000000004406, "You Get What You Pay For"),
	Email = T(890000000004407, "Gusket@merc.com"),
	snype_nick = T(890000000004408, --[[ModItemUnitDataCompositeDef Jazz_Cord snype_nick]] "ilavvika"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004409, --[[ModItemUnitDataCompositeDef Jazz_Cord Text MercChatRefusal Lines ChatMessage voice:Jazz_Cord]] "Пока Иван или Игорь в отряде — я пас."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Ivan" or k == "Igor")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004410, --[[ModItemUnitDataCompositeDef Jazz_Cord Text MercChatRefusal Lines ChatMessage voice:Jazz_Cord]] "Маловато будет."),
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
					'Text', T(890000000004411, --[[ModItemUnitDataCompositeDef Jazz_Cord Text MercChatBranch Lines ChatMessage voice:Jazz_Cord]] "Отряд полон русских... ладно, но с доплатой."),
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
							if not ud or ud.Nationality ~= "Russia" then return false end
						end
						return true
					end,
				}),
			},
		}),
	},
	HaggleRehire = {},
	Mitigations = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004412, --[[ModItemUnitDataCompositeDef Jazz_Cord Text Offline ChatMessage voice:Jazz_Cord]] "Кардан... куда я дел телефон... перезвоните."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004413, --[[ModItemUnitDataCompositeDef Jazz_Cord Text GreetingAndOffer ChatMessage voice:Jazz_Cord]] "А? Кардан слушает. Что чинить?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004414, --[[ModItemUnitDataCompositeDef Jazz_Cord Text ConversationRestart ChatMessage voice:Jazz_Cord]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004415, --[[ModItemUnitDataCompositeDef Jazz_Cord Text IdleLine ChatMessage voice:Jazz_Cord]] "Что мы вообще делали?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004416, --[[ModItemUnitDataCompositeDef Jazz_Cord Text PartingWords ChatMessage voice:Jazz_Cord]] "Кажется, я согласился. Иду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004417, --[[ModItemUnitDataCompositeDef Jazz_Cord Text RehireIntro ChatMessage voice:Jazz_Cord]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004418, --[[ModItemUnitDataCompositeDef Jazz_Cord Text RehireOutro ChatMessage voice:Jazz_Cord]] "Остаюсь. Кажется."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 550,
	SalaryIncrease = 150,
	SalaryLv1 = 250,
	SalaryMaxLv = 1800,
	StartingLevel = 1,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {
		"Vicki",
	},
	Dislikes = {
		"Ivan",
		"Igor",
	},
	StartingPerks = {
		"Jazz_Perk_Cord",
		"MrFixit",
		"JackOfAllTrades",
		"Scoundrel",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Cord",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Cord",
	},
	Tier = "Regular",
	Specialization = "Mechanic",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Cord",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
