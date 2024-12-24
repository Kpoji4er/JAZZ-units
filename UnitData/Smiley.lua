UndefineClass('Smiley')
DefineClass.Smiley = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 82,
	Agility = 78,
	Dexterity = 56,
	Strength = 73,
	Wisdom = 55,
	Leadership = 54,
	Marksmanship = 77,
	Mechanical = 5,
	Explosives = 5,
	Medical = 36,
	Portrait = "UI/MercsPortraits/Smiley",
	BigPortrait = "UI/Mercs/Smiley",
	IsMercenary = true,
	Name = T(265124333973, --[[ModItemUnitDataCompositeDef Smiley Name]] "Алехандро Диас «Смайли»"),
	Nick = T(497463417100, --[[ModItemUnitDataCompositeDef Smiley Nick]] "Смайли"),
	AllCapsNick = T(915909334833, --[[ModItemUnitDataCompositeDef Smiley AllCapsNick]] "СМАЙЛИ"),
	Affiliation = "Secret",
	HireStatus = "NotMet",
	Bio = T(693462541945, --[[ModItemUnitDataCompositeDef Smiley Bio]] "Алехандро Диас по прозвищу «Смайли» прибыл в Гран-Шьен вместе с отрядом каких-то иностранных наёмников (который, впрочем, был разбит Майором в пух и прах ещё за несколько недель до вашего появления в стране). Уроженец Арулько, Смайли готов примкнуть к вам благодаря тому уважению, которым пользуется A.I.M. у него на родине."),
	Nationality = "Arulco",
	Title = T(769691360269, --[[ModItemUnitDataCompositeDef Smiley Title]] "Ромео с автоматом"),
	SalaryLv1 = 0,
	SalaryMaxLv = 0,
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "SubmachineGun")
		self:TryEquip(items, "Handheld B", "SniperRifle")
	end,
	MaxHitPoints = 85,
	LearnToLike = {
		"Kalyna",
		"Fox",
		"Buns",
	},
	StartingPerks = {
		"AutoWeapons",
		"Optimist",
		"RecklessAssault",
		"BeefedUp",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Smiley",
		}),
	},
	Equipment = {
		"Smiley",
	},
	AdditionalGroups = {
		PlaceObj('AdditionalGroup', {
			'Name', "SmileyNPC",
		}),
	},
	Specialization = "AllRounder",
	gender = "Male",
	VoiceResponseId = "Smiley",
}

