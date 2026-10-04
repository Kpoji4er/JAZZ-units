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
	Name = T(607241134056, --[[ModItemUnitDataCompositeDef Smiley Name]] 'Алехандро Диас «Смайли»'),
	Nick = T(623933115537, --[[ModItemUnitDataCompositeDef Smiley Nick]] "Смайли"),
	AllCapsNick = T(904548406102, --[[ModItemUnitDataCompositeDef Smiley AllCapsNick]] "СМАЙЛИ"),
	Affiliation = "MERC",
	HireStatus = "NotMet",
	Bio = T(660209893656, --[[ModItemUnitDataCompositeDef Smiley Bio]] 'Алехандро Диас по прозвищу «Смайли» прибыл в Гран-Шьен вместе с отрядом каких-то иностранных наёмников (который, впрочем, был разбит Майором в пух и прах ещё за несколько недель до вашего появления в стране). Уроженец Арулько, Смайли готов примкнуть к вам благодаря тому уважению, которым пользуется A.I.M. у него на родине.'),
	Nationality = "Arulco",
	Title = T(599631305679, --[[ModItemUnitDataCompositeDef Smiley Title]] "Romeo in Combat Fatigues"),
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

