UndefineClass('Jazz_Spider')
DefineClass.Jazz_Spider = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 76,
	Dexterity = 56,
	Strength = 68,
	Wisdom = 90,
	Will = 62,
	Leadership = 16,
	Marksmanship = 70,
	Mechanical = 0,
	Explosives = 0,
	Medical = 94,
	Portrait = "Mod/Dv3mFVN/Images/raw copy2Small.png",
	BigPortrait = "Mod/Dv3mFVN/Images/raw copy2.png",
	IsMercenary = true,
	Name = T(513131038337, --[[ModItemUnitDataCompositeDef Jazz_Spider Name]] "Доктор Донна «Паук» Хьюстон"),
	Nick = T(234064899192, --[[ModItemUnitDataCompositeDef Jazz_Spider Nick]] "Паук"),
	AllCapsNick = T(641563680463, --[[ModItemUnitDataCompositeDef Jazz_Spider AllCapsNick]] "ПАУК"),
	Bio = "",
	Nationality = "USA",
	Title = T(717418830781, --[[ModItemUnitDataCompositeDef Jazz_Spider Title]] "Алмазная Донна полевой хирургии."),
	Email = T(923960576868, --[[ModItemUnitDataCompositeDef Jazz_Spider Email]] "HoustonMD@aim.com"),
	snype_nick = T(481545511185, --[[ModItemUnitDataCompositeDef Jazz_Spider snype_nick]] "HoustonMD"),
	Refusals = {},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {},
	Offline = {},
	GreetingAndOffer = {},
	ConversationRestart = {},
	IdleLine = {},
	PartingWords = {},
	RehireIntro = {},
	RehireOutro = {},
	MedicalDeposit = "large",
	StartingSalary = 800,
	SalaryIncrease = 200,
	SalaryLv1 = 400,
	SalaryMaxLv = 4300,
	LegacyNotes = "",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Vicki",
		"Raven",
	},
	Dislikes = {
		"Buns",
	},
	StartingPerks = {
		"Jazz_Perk_Spider",
		"NightOps",
		"Stealthy",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Spider",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Spider",
	},
	Specialization = "Doctor",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Jazz_Spider",
}

