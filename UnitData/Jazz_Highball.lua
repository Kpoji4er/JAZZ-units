UndefineClass('Jazz_Highball')
DefineClass.Jazz_Highball = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 82,
	Agility = 50,
	Dexterity = 55,
	Strength = 64,
	Wisdom = 87,
	Will = 38,
	Leadership = 33,
	Marksmanship = 84,
	Mechanical = 4,
	Explosives = 31,
	Medical = 84,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Highball.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Highball_Big.png",
	IsMercenary = true,
	Name = T(890000000004202, --[[ModItemUnitDataCompositeDef Jazz_Highball Name]] "Доктор Клиффорд Хайбол"),
	Nick = T(890000000004203, --[[ModItemUnitDataCompositeDef Jazz_Highball Nick]] "Скала"),
	AllCapsNick = T(890000000004204, --[[ModItemUnitDataCompositeDef Jazz_Highball AllCapsNick]] "СКАЛА"),
	Bio = T(890000000004205, --[[ModItemUnitDataCompositeDef Jazz_Highball Bio]] "Доктор Хайбол с переменным успехом то берет себя в руки, то накладывает себе в них же. Клифф обладает огромным опытом полевой хирургии и травматологии, но в отсутствие коллег, с которыми можно подискутировать, ему быстро становится скучно. Тем не менее, мастерство, как говорится, не пропьешь."),
	Nationality = "USA",
	Title = T(890000000004206, --[[ModItemUnitDataCompositeDef Jazz_Highball Title]] "Старый алкаш"),
	Email = T(890000000004207, --[[ModItemUnitDataCompositeDef Jazz_Highball Email]] "Highball@aim.com"),
	snype_nick = T(890000000004208, --[[ModItemUnitDataCompositeDef Jazz_Highball snype_nick]] "Kliffyndor"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004209, --[[ModItemUnitDataCompositeDef Jazz_Highball Text MercChatRefusal Lines ChatMessage voice:Jazz_Highball]] "На такие деньги даже фляжку не наполнишь."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004210, --[[ModItemUnitDataCompositeDef Jazz_Highball Text MercChatRefusal Lines ChatMessage voice:Jazz_Highball]] "Слишком много крови для старого доктора."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004211, --[[ModItemUnitDataCompositeDef Jazz_Highball Text Offline ChatMessage voice:Jazz_Highball]] "Это доктор Клиффорд Хайбол, спасибо за звонок. Сейчас я не могу с вами разговаривать — оставьте своё имя и номер."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004212, --[[ModItemUnitDataCompositeDef Jazz_Highball Text GreetingAndOffer ChatMessage voice:Jazz_Highball]] "Доктор Клиффорд Хайбол."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004213, --[[ModItemUnitDataCompositeDef Jazz_Highball Text ConversationRestart ChatMessage voice:Jazz_Highball]] "Пожалуйста, внимание — я сказал."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004214, --[[ModItemUnitDataCompositeDef Jazz_Highball Text IdleLine ChatMessage voice:Jazz_Highball]] "Немногие бойцы способны причинять или облегчать боль так, как я могу."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004215, --[[ModItemUnitDataCompositeDef Jazz_Highball Text PartingWords ChatMessage voice:Jazz_Highball]] "В следующий раз мы будем разговаривать уже в Арулько."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004216, --[[ModItemUnitDataCompositeDef Jazz_Highball Text RehireIntro ChatMessage voice:Jazz_Highball]] "Мой контракт почти закончен. Следует ли мне понимать вашу незаинтересованность как свидетельство того, что продления не будет?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004217, --[[ModItemUnitDataCompositeDef Jazz_Highball Text RehireOutro ChatMessage voice:Jazz_Highball]] "Отлично! Это место начинает мне нравиться!"),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 900,
	SalaryIncrease = 150,
	SalaryLv1 = 400,
	SalaryMaxLv = 2500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 55,
	Likes = {},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Highball",
		"Savior",
		"OldDog",
		"JackOfAllTrades",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Highball",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Highball",
	},
	Tier = "Regular",
	Specialization = "Doctor",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Highball",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
