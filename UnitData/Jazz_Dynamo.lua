UndefineClass('Jazz_Dynamo')
DefineClass.Jazz_Dynamo = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 60,
	Agility = 60,
	Dexterity = 55,
	Strength = 65,
	Wisdom = 78,
	Will = 45,
	Leadership = 20,
	Marksmanship = 68,
	Mechanical = 67,
	Explosives = 20,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Dynamo.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Dynamo_Big.png",
	IsMercenary = true,
	Name = T(890000000003402, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Name]] "[WIP] Грег «Динамо» Дункан"),
	Nick = T(890000000003403, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Nick]] "Динамо"),
	AllCapsNick = T(890000000003404, --[[ModItemUnitDataCompositeDef Jazz_Dynamo AllCapsNick]] "ДИНАМО"),
	Bio = T(890000000003405, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Bio]] "work in progress"),
	Nationality = "Hungary",
	Title = T(890000000003406, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Title]] "Зек-механик"),
	Email = T(890000000003407, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Email]] "Dynamo@merc.com"),
	snype_nick = T(890000000003408, --[[ModItemUnitDataCompositeDef Jazz_Dynamo snype_nick]] "dynamo"),
	Refusals = {},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003409, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text MercChatMitigation Lines ChatMessage voice:Jazz_Dynamo]] "Кровь уже здесь? Тогда ладно, повеселимся."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Blood",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003410, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text Offline ChatMessage voice:Jazz_Dynamo]] "Динамо вне зоны — наверно чинит что-то. Пиши."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003411, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text GreetingAndOffer ChatMessage voice:Jazz_Dynamo]] "Динамо. Чо надо?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003412, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text ConversationRestart ChatMessage voice:Jazz_Dynamo]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003413, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text IdleLine ChatMessage voice:Jazz_Dynamo]] "Давай уже, время не резиновое."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003414, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text PartingWords ChatMessage voice:Jazz_Dynamo]] "За идею пойду — или за полтинник. Разницы нет."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003415, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text RehireIntro ChatMessage voice:Jazz_Dynamo]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003416, --[[ModItemUnitDataCompositeDef Jazz_Dynamo Text RehireOutro ChatMessage voice:Jazz_Dynamo]] "Остаюсь. Тут ещё есть что чинить и кого пугать."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 50,
	SalaryIncrease = 200,
	SalaryLv1 = 0,
	SalaryMaxLv = 800,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
		self:TryEquip(items, "Handheld B", "Melee")
	end,
	MaxHitPoints = 60,
	Likes = {
		"Blood",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Dynamo",
		"MrFixit",
		"Psycho",
		"OptimalPerformance",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Dynamo",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Dynamo",
	},
	Tier = "Regular",
	Specialization = "Mechanic",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Dynamo",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
