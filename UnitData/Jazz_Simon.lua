UndefineClass('Jazz_Simon')
DefineClass.Jazz_Simon = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",

	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 85,
	Agility = 84,
	Dexterity = 81,
	Strength = 80,
	Wisdom = 83,
	Will = 75,
	Leadership = 26,
	Marksmanship = 100,
	Mechanical = 35,
	Explosives = 39,
	Medical = 57,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Simon.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Simon_Big.png",
	IsMercenary = true,
	Name = T(890000000006650, --[[ModItemUnitDataCompositeDef Jazz_Simon Name]] "Саймон Грандье"),
	Nick = T(890000000006651, --[[ModItemUnitDataCompositeDef Jazz_Simon Nick]] "Саймон"),
	AllCapsNick = T(890000000006652, --[[ModItemUnitDataCompositeDef Jazz_Simon AllCapsNick]] "САЙМОН"),
	Bio = T(890000000006653, --[[ModItemUnitDataCompositeDef Jazz_Simon Bio]] "work in progress"),
	Nationality = "France",
	Title = T(890000000006654, --[[ModItemUnitDataCompositeDef Jazz_Simon Title]] "Снайпер с Халифа"),
	Email = T(890000000006655, --[[ModItemUnitDataCompositeDef Jazz_Simon Email]] "Simon@khalif.sj"),
	snype_nick = T(890000000006656, --[[ModItemUnitDataCompositeDef Jazz_Simon snype_nick]] "simon"),
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006657, --[[ModItemUnitDataCompositeDef Jazz_Simon Text Offline ChatMessage voice:Jazz_Simon]] "Грандье недоступен."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006658, --[[ModItemUnitDataCompositeDef Jazz_Simon Text GreetingAndOffer ChatMessage voice:Jazz_Simon]] "Саймон Грандье. Слушаю."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006659, --[[ModItemUnitDataCompositeDef Jazz_Simon Text ConversationRestart ChatMessage voice:Jazz_Simon]] "Связь прервалась."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006660, --[[ModItemUnitDataCompositeDef Jazz_Simon Text IdleLine ChatMessage voice:Jazz_Simon]] "Жду."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006661, --[[ModItemUnitDataCompositeDef Jazz_Simon Text PartingWords ChatMessage voice:Jazz_Simon]] "Идём."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006662, --[[ModItemUnitDataCompositeDef Jazz_Simon Text RehireIntro ChatMessage voice:Jazz_Simon]] "Контракт заканчивается?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000006663, --[[ModItemUnitDataCompositeDef Jazz_Simon Text RehireOutro ChatMessage voice:Jazz_Simon]] "Остаюсь."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 3500,
	SalaryIncrease = 200,
	SalaryLv1 = 1400,
	SalaryMaxLv = 7000,
	StartingLevel = 9,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Jazz_Benny",
		"Reaper",
	},
	Dislikes = {},
	StartingPerks = {
		"Stealthy",
		"SteadyBreathing",
		"Deadeye",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Shadow",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Ira",
	},
	Tier = "Elite",
	Specialization = "Marksmen",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Simon",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
