UndefineClass('Jazz_Gamos')
DefineClass.Jazz_Gamos = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 65,
	Agility = 70,
	Dexterity = 65,
	Strength = 65,
	Wisdom = 35,
	Will = 55,
	Leadership = 20,
	Marksmanship = 78,
	Mechanical = 15,
	Explosives = 10,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Gamos.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Gamos_Big.png",
	IsMercenary = true,
	Name = T(890000000003302, --[[ModItemUnitDataCompositeDef Jazz_Gamos Name]] "Гамос"),
	Nick = T(890000000003303, --[[ModItemUnitDataCompositeDef Jazz_Gamos Nick]] "Гамос"),
	AllCapsNick = T(890000000003304, --[[ModItemUnitDataCompositeDef Jazz_Gamos AllCapsNick]] "ГАМОС"),
	Bio = T(890000000003305, --[[ModItemUnitDataCompositeDef Jazz_Gamos Bio]] "Статы 60–70, Wisdom 35, Marksmanship 78. Простой и дружелюбный местный проводник, исходивший джунгли Арулько вдоль и поперёк. Нейтрален к остальному отряду, дёшев в найме."),
	Nationality = "Arulco",
	Title = T(890000000003306, --[[ModItemUnitDataCompositeDef Jazz_Gamos Title]] "Я много путешествовать"),
	Email = T(890000000003307, --[[ModItemUnitDataCompositeDef Jazz_Gamos Email]] "Gamos@arulco.reb"),
	snype_nick = T(890000000003308, --[[ModItemUnitDataCompositeDef Jazz_Gamos snype_nick]] "travelmuch"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003309, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text MercChatRefusal Lines ChatMessage voice:Jazz_Gamos]] "Много люди умирать с вами. Гамос не хотеть так."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003310, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text MercChatRefusal Lines ChatMessage voice:Jazz_Gamos]] "Мало денег. Гамос семью кормить надо."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003311, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text Offline ChatMessage voice:Jazz_Gamos]] "Гамос много путешествовать — сейчас нет тут. Потом."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003312, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text GreetingAndOffer ChatMessage voice:Jazz_Gamos]] "Гамос тут. Куда идти надо?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003313, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text ConversationRestart ChatMessage voice:Jazz_Gamos]] "Связь пропадать. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003314, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text IdleLine ChatMessage voice:Jazz_Gamos]] "Идём? Гамос знать дорогу."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003315, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text PartingWords ChatMessage voice:Jazz_Gamos]] "Хорошо, Гамос идёт. Джунгли не страшны."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003316, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text RehireIntro ChatMessage voice:Jazz_Gamos]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003317, --[[ModItemUnitDataCompositeDef Jazz_Gamos Text RehireOutro ChatMessage voice:Jazz_Gamos]] "Гамос остаётся. Есть ещё тропы показать."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 250,
	SalaryIncrease = 200,
	SalaryLv1 = 100,
	SalaryMaxLv = 1000,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Gamos",
		"Stealthy",
		"Flanker",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Gamos",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Gamos",
	},
	Tier = "Regular",
	Specialization = "Stealth",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Gamos",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
