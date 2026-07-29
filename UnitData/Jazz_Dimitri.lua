UndefineClass('Jazz_Dimitri')
DefineClass.Jazz_Dimitri = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 70,
	Agility = 50,
	Dexterity = 65,
	Strength = 70,
	Wisdom = 56,
	Will = 60,
	Leadership = 30,
	Marksmanship = 60,
	Mechanical = 71,
	Explosives = 40,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Dimitri.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Dimitri_Big.png",
	IsMercenary = true,
	Name = T(890000000002002, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Name]] "[WIP] Димитрий Газзо"),
	Nick = T(890000000002003, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Nick]] "Димитрий"),
	AllCapsNick = T(890000000002004, --[[ModItemUnitDataCompositeDef Jazz_Dimitri AllCapsNick]] "ДИМИТРИЙ"),
	Bio = T(890000000002005, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Bio]] "work in progress"),
	Nationality = "Russia",
	Title = T(890000000002006, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Title]] "Я забыл опять"),
	Email = T(890000000002007, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Email]] "Dima@arulco.reb"),
	snype_nick = T(890000000002008, --[[ModItemUnitDataCompositeDef Jazz_Dimitri snype_nick]] "forgotagain"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002009, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text MercChatRefusal Lines ChatMessage voice:Jazz_Dimitri]] "Пока Ротман у вас — извини, нет. Он на местных смотрит свысока."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Rothman",
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
					'Text', T(890000000002010, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text MercChatMitigation Lines ChatMessage voice:Jazz_Dimitri]] "О, Мигель или Карлос уже здесь? Тогда я спокоен, иду."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Miguel" or k == "Jazz_Carlos")
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
					'Text', T(890000000002011, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text MercChatBranch Lines ChatMessage voice:Jazz_Dimitri]] "Если найдёте Мигеля или Карлоса — берите. С ними я работаю лучше."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Miguel" or k == "Jazz_Carlos")
						end) < 1
					end,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002012, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text Offline ChatMessage voice:Jazz_Dimitri]] "Дима... э-э... перезвоните. Я забыл, зачем мне телефон."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002013, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text GreetingAndOffer ChatMessage voice:Jazz_Dimitri]] "А? Это я. Димитрий. Кажется. Работа есть?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002014, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text ConversationRestart ChatMessage voice:Jazz_Dimitri]] "Стоп, о чём мы говорили? А, точно — вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002015, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text IdleLine ChatMessage voice:Jazz_Dimitri]] "Стой... куда я шёл? А, точно, помогать тебе."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002016, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text PartingWords ChatMessage voice:Jazz_Dimitri]] "Так, ножи с собой... вроде все. Иду."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002017, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text RehireIntro ChatMessage voice:Jazz_Dimitri]] "Контракт заканчивается. Продлеваем, или я опять забуду, где мои ножи?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002018, --[[ModItemUnitDataCompositeDef Jazz_Dimitri Text RehireOutro ChatMessage voice:Jazz_Dimitri]] "Остаюсь. Ножи точить веселее, когда есть цель."),
		}),
	},
	MedicalDeposit = "standard",
	StartingSalary = 500,
	SalaryIncrease = 200,
	SalaryLv1 = 250,
	SalaryMaxLv = 1800,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
		self:TryEquip(items, "Handheld B", "Melee")
	end,
	MaxHitPoints = 70,
	Likes = {
		"Jazz_Miguel",
		"Jazz_Carlos",
	},
	Dislikes = {
		"Jazz_Rothman",
	},
	StartingPerks = {
		"Jazz_Perk_Dimitri",
		"Throwing",
		"MrFixit",
		"CQCTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Dimitri",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Dimitri",
	},
	Tier = "Regular",
	Specialization = "ExplosiveExpert",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Dimitri",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
