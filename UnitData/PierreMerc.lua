UndefineClass('PierreMerc')
DefineClass.PierreMerc = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 72,
	Dexterity = 68,
	Strength = 78,
	Wisdom = 56,
	Will = 85,
	Leadership = 39,
	Marksmanship = 77,
	Mechanical = 5,
	Explosives = 15,
	Medical = 12,
	Portrait = "UI/MercsPortraits/Pierre",
	BigPortrait = "UI/Mercs/Pierre",
	IsMercenary = true,
	Name = T(467627576439, --[[ModItemUnitDataCompositeDef PierreMerc Name]] "Пьер Лоран"),
	Nick = T(867886112201, --[[ModItemUnitDataCompositeDef PierreMerc Nick]] "Пьер"),
	AllCapsNick = T(582684186341, --[[ModItemUnitDataCompositeDef PierreMerc AllCapsNick]] "ПЬЕР"),
	Affiliation = "Secret",
	Nationality = "GrandChien",
	Title = T(900264083109, --[[ModItemUnitDataCompositeDef PierreMerc Title]] "Добро пожаловать в джунгли"),
	SalaryLv1 = 0,
	SalaryMaxLv = 0,
	LegacyNotes = "A local boy who joined the Legion years ago in a pursuit of adventure, and grew up to become a Legion warlord. He recently returned to Ernie with a band of raiders, only to rob his home town and break the heart of his father. \nYet he is as a person who lives by his own code – he dislikes unneeded violence and did restrain his Legion thugs from doing too much mischief.",
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	LearnToLike = {
		"Flay",
	},
	LearnToDislike = {
		"Grizzly",
	},
	StartingPerks = {
		"AutoWeapons",
		"GloryHog",
		"OptimalPerformance",
		"BloodlustPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Pierre",
		}),
	},
	Equipment = {
		"Pierre",
	},
	Specialization = "Leader",
	gender = "Male",
	PersistentSessionId = "NPC_Pierre",
}

