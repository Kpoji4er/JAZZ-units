UndefineClass('Jazz_Benny')
DefineClass.Jazz_Benny = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",

	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 91,
	Agility = 87,
	Dexterity = 100,
	Strength = 56,
	Wisdom = 99,
	Will = 70,
	Leadership = 14,
	Marksmanship = 73,
	Mechanical = 99,
	Explosives = 95,
	Medical = 28,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Benny.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Benny_Big.png",
	IsMercenary = true,
	Name = T(890000000006624, --[[ModItemUnitDataCompositeDef Jazz_Benny Name]] "[WIP] Александра «Бенни» Бенедикт"),
	Nick = T(890000000006625, --[[ModItemUnitDataCompositeDef Jazz_Benny Nick]] "Бенни"),
	AllCapsNick = T(890000000006626, --[[ModItemUnitDataCompositeDef Jazz_Benny AllCapsNick]] "БЕННИ"),
	Bio = T(890000000006627, --[[ModItemUnitDataCompositeDef Jazz_Benny Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000006628, --[[ModItemUnitDataCompositeDef Jazz_Benny Title]] "Взломщица с Халифа"),
	Email = T(890000000006629, --[[ModItemUnitDataCompositeDef Jazz_Benny Email]] "Benny@khalif.sj"),
	snype_nick = T(890000000006630, --[[ModItemUnitDataCompositeDef Jazz_Benny snype_nick]] "benny"),
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006631, --[[ModItemUnitDataCompositeDef Jazz_Benny Text Offline ChatMessage voice:Jazz_Benny]] "Бенни на линии позже."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006632, --[[ModItemUnitDataCompositeDef Jazz_Benny Text GreetingAndOffer ChatMessage voice:Jazz_Benny]] "Бенедикт. Говорите."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006633, --[[ModItemUnitDataCompositeDef Jazz_Benny Text ConversationRestart ChatMessage voice:Jazz_Benny]] "Связь прервалась."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006634, --[[ModItemUnitDataCompositeDef Jazz_Benny Text IdleLine ChatMessage voice:Jazz_Benny]] "Жду."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006635, --[[ModItemUnitDataCompositeDef Jazz_Benny Text PartingWords ChatMessage voice:Jazz_Benny]] "Идём."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006636, --[[ModItemUnitDataCompositeDef Jazz_Benny Text RehireIntro ChatMessage voice:Jazz_Benny]] "Контракт заканчивается?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006637, --[[ModItemUnitDataCompositeDef Jazz_Benny Text RehireOutro ChatMessage voice:Jazz_Benny]] "Остаюсь."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 2200,
	SalaryIncrease = 200,
	SalaryLv1 = 900,
	SalaryMaxLv = 5000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 91,
	Likes = {
		"Jazz_Simon",
		"Jazz_Lynx",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Benny",
		"Stealthy",
		"MrFixit",
		"Throwing",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Benny",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Ira",
	},
	Tier = "Veteran",
	Specialization = "ExplosiveExpert",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Jazz_Benny",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
