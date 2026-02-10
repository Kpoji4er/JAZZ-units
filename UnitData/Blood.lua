UndefineClass('Blood')
DefineClass.Blood = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 84,
	Agility = 94,
	Dexterity = 88,
	Strength = 83,
	Wisdom = 73,
	Will = 76,
	Leadership = 6,
	Marksmanship = 78,
	Mechanical = 23,
	Explosives = 31,
	Medical = 51,
	Portrait = "UI/MercsPortraits/Blood",
	BigPortrait = "UI/Mercs/Blood",
	IsMercenary = true,
	Name = T(341095663210, --[[ModItemUnitDataCompositeDef Blood Name]] "Кит Гансон «Блад»"),
	Nick = T(697027342093, --[[ModItemUnitDataCompositeDef Blood Nick]] "Блад"),
	AllCapsNick = T(941246151451, --[[ModItemUnitDataCompositeDef Blood AllCapsNick]] "БЛАД"),
	Bio = T(879797808599, --[[ModItemUnitDataCompositeDef Blood Bio]] "Не обманывайтесь дружелюбием Блада: этот боец знает тридцать способов, как убить человека одними только голыми руками (хотя сам предпочитает делать это метательными ножами). Как бывший член Африканского национального конгресса, Кит пристрастен к тиранам и эксплуататорам - и обычно выражает своё отношение к ним исключительными по своей агрессивности методами."),
	Nationality = "SouthAfrica",
	Title = T(656795996276, --[[ModItemUnitDataCompositeDef Blood Title]] "И будет кровь"),
	Email = T(672490755828, --[[ModItemUnitDataCompositeDef Blood Email]] "gurman@aim.com"),
	snype_nick = T(240898156196, --[[ModItemUnitDataCompositeDef Blood snype_nick]] "gurman"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(426442139990, --[[ModItemUnitDataCompositeDef Blood Text MercChatRefusal Lines ChatMessage voice:Blood]] "Знаешь, мне ведь придётся платить, а твой бумажник что-то отощал, как я посмотрю."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(475250829783, --[[ModItemUnitDataCompositeDef Blood Text MercChatHaggle Lines ChatMessage voice:Blood]] "Я тебя не знаю. С незнакомцами я обычно дел не имею, но если надбавишь деньжат - могу сделать исключение."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionRehire', {}),
			},
			'chanceToRoll', 20,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(588114353209, --[[ModItemUnitDataCompositeDef Blood Text MercChatHaggle Lines ChatMessage voice:Blood]] "Я надеялся, что командировка будет посодержательнее. Хочешь, чтоб я тусовался в лагере и харчи готовил - без проблем. Но я не хочу помирать со скуки, штампуя бургеры. Мне меню поинтересней нужно, может, накинешь немного на него?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(205066005249, --[[ModItemUnitDataCompositeDef Blood Text MercChatMitigation Lines ChatMessage voice:Blood]] "Если ты сумел заполучить в свою команду Мага Уолкера, значит, не лыком шит. Так что меня ты тоже заполучил."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Magic",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(267868205180, --[[ModItemUnitDataCompositeDef Blood Text Offline ChatMessage voice:Blood]] "Нифига себе, чудо техники эти ваши автоответчики! Ништяк! Хе-хе-хе! XXI Век на дворе! Оставьте сообщение, и я с вами свяжусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(199682617046, --[[ModItemUnitDataCompositeDef Blood Text GreetingAndOffer ChatMessage voice:Blood]] "Да, это Блад. Что там такое?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(277793194502, --[[ModItemUnitDataCompositeDef Blood Text ConversationRestart ChatMessage voice:Blood]] "На чем мы остановились?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(905505064939, --[[ModItemUnitDataCompositeDef Blood Text IdleLine ChatMessage voice:Blood]] "Шевелись, дружище. У меня курятина подгорает."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(303024294883, --[[ModItemUnitDataCompositeDef Blood Text PartingWords ChatMessage voice:Blood]] "Отлично! Теперь отожжём!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(408648943422, --[[ModItemUnitDataCompositeDef Blood Text RehireIntro ChatMessage voice:Blood]] "Печально это говорить, дружище, но у меня контракт тут почти истек. Как поступим, а?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(729529774361, --[[ModItemUnitDataCompositeDef Blood Text RehireOutro ChatMessage voice:Blood]] "Отлично! Продолжим смаковать местные блюда и мочить всяких гадов!"),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 770,
	SalaryLv1 = 350,
	SalaryMaxLv = 3000,
	LegacyNotes = '"Whether it\'s jungle warfare or close-quartered combat, Blood Hanson is your man for the assignment. Trained in the martial arts, his ability to fling a combat knife into an enemy\'s neck is a sight to behold: it seems to come out of nowhere, sails an impossibly large distance, then slices through it\'s target with unerring accuracy.\n\nAdditional info: Keith Hanson is a former member of the ANC." - A.I.M. Dossier',
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 84,
	Likes = {
		"Magic",
	},
	StartingPerks = {
		"MartialArts",
		"HundredKnives",
		"BreachAndClear",
		"OptimalPerformance",
		"Throwing",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Blood",
			'GameStates', set({
	Savanna = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Blood_Savana",
			'GameStates', set( "Savanna" ),
		}),
	},
	Equipment = {
		"Blood",
	},
	Tier = "Veteran",
	Specialization = "AllRounder",
	gender = "Male",
}

