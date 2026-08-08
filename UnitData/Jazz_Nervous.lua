UndefineClass('Jazz_Nervous')
DefineClass.Jazz_Nervous = {
	Affiliation = "MERC",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 65,
	Agility = 70,
	Dexterity = 60,
	Strength = 60,
	Wisdom = 58,
	Will = 30,
	Leadership = 15,
	Marksmanship = 48,
	Mechanical = 20,
	Explosives = 31,
	Medical = 10,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Nervous.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Nervous_Big.png",
	IsMercenary = true,
	Name = T(890000000002902, --[[ModItemUnitDataCompositeDef Jazz_Nervous Name]] "Фрэнки «Нервный» Гордон"),
	Nick = T(890000000002903, --[[ModItemUnitDataCompositeDef Jazz_Nervous Nick]] "Нервный"),
	AllCapsNick = T(890000000002904, --[[ModItemUnitDataCompositeDef Jazz_Nervous AllCapsNick]] "НЕРВНЫЙ"),
	Bio = T(890000000002905, --[[ModItemUnitDataCompositeDef Jazz_Nervous Bio]] "Статы 60–70, Wisdom 58, Marksmanship 48, Explosives 31. Псих на постоянном взводе, стреляет длинными очередями и не умеет по-другому. Дружит с Бритвой и Рикошетом (родственные безумцы); терпеть не может Биффа за трусость."),
	Nationality = "USA",
	Title = T(890000000002906, --[[ModItemUnitDataCompositeDef Jazz_Nervous Title]] "Суперочередь"),
	Email = T(890000000002907, --[[ModItemUnitDataCompositeDef Jazz_Nervous Email]] "Nervous@merc.com"),
	snype_nick = T(890000000002908, --[[ModItemUnitDataCompositeDef Jazz_Nervous snype_nick]] "twitchy"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002909, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text MercChatRefusal Lines ChatMessage voice:Jazz_Nervous]] "Пока трусливый Бифф в отряде — нет! Он меня ещё больше нервирует!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Biff",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002910, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text MercChatRefusal Lines ChatMessage voice:Jazz_Nervous]] "Слишком много наших полегло! Я и так на нервах!"),
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
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002911, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text MercChatMitigation Lines ChatMessage voice:Jazz_Nervous]] "О, Бритва уже тут? Тогда ладно, веселее будет!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Blade",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002912, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text Offline ChatMessage voice:Jazz_Nervous]] "Нервный... занят... пиши, перезвоню, может."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002913, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text GreetingAndOffer ChatMessage voice:Jazz_Nervous]] "Ч-чё надо? Стрелять будем?!"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002914, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text ConversationRestart ChatMessage voice:Jazz_Nervous]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002915, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text IdleLine ChatMessage voice:Jazz_Nervous]] "Где враги, где враги, где враги..."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002916, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text PartingWords ChatMessage voice:Jazz_Nervous]] "Уже бегу, уже бегу! Патроны есть, всё нормально!"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002917, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text RehireIntro ChatMessage voice:Jazz_Nervous]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002918, --[[ModItemUnitDataCompositeDef Jazz_Nervous Text RehireOutro ChatMessage voice:Jazz_Nervous]] "Остаюсь! Ещё патроны не кончились!"),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 700,
	SalaryIncrease = 200,
	SalaryLv1 = 350,
	SalaryMaxLv = 2200,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {
		"Jazz_Blade",
	},
	Dislikes = {
		"Jazz_Biff",
	},
	StartingPerks = {
		"Jazz_Perk_Nervous",
		"Psycho",
		"AutoWeapons",
		"Flanker",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Nervous",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Nervous",
	},
	Tier = "Regular",
	Specialization = "Autoriflemen",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Nervous",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
