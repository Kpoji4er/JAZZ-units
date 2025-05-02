UndefineClass('Fidel')
DefineClass.Fidel = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 88,
	Agility = 83,
	Dexterity = 64,
	Strength = 83,
	Wisdom = 62,
	Will = 51,
	Leadership = 1,
	Marksmanship = 86,
	Mechanical = 6,
	Explosives = 98,
	Medical = 3,
	Portrait = "UI/MercsPortraits/Fidel",
	BigPortrait = "UI/Mercs/Fidel",
	IsMercenary = true,
	Name = T(118909675158, --[[ModItemUnitDataCompositeDef Fidel Name]] "Фидель Дахан"),
	Nick = T(489035873223, --[[ModItemUnitDataCompositeDef Fidel Nick]] "Фидель"),
	AllCapsNick = T(127950817003, --[[ModItemUnitDataCompositeDef Fidel AllCapsNick]] "ФИДЕЛЬ"),
	Bio = T(888155597181, --[[ModItemUnitDataCompositeDef Fidel Bio]] "Хотя власти Арулько так и не объявили его в розыск, мало кто сомневается, что именно Фидель взорвал пункт проката видеокассет в Альме после того, как владелец отказался пускать его в заднюю комнату магазинчика. По счастью, - правда, не на взгляд самого Фиделя - обошлось без жертв. Руководство A.I.M. допустило Фиделя к дальнейшей службе, так как специалисты-взрывотехники, равно хорошо владеющие и стрелковым оружием, всегда нарасхват."),
	Nationality = "Cuba",
	Title = T(337961143159, --[[ModItemUnitDataCompositeDef Fidel Title]] "Ходячий Карибский кризис"),
	Email = T(735301247589, --[[ModItemUnitDataCompositeDef Fidel Email]] "fidel_bomba@aim.com"),
	snype_nick = T(843991705045, --[[ModItemUnitDataCompositeDef Fidel snype_nick]] "fidel_bomba"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(601499126033, --[[ModItemUnitDataCompositeDef Fidel Text MercChatRefusal Lines ChatMessage voice:Fidel]] "Мерзкие подростки написали на двери Фиделя плохие слова. Фидель поставил растяжку и ждёт, когда бомба взорвётся. Тогда он прибьёт к двери их оторванные конечности, чтобы другим неповадно было. Так что сейчас Фидель занят. Позже?"),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(322149216469, --[[ModItemUnitDataCompositeDef Fidel Text MercChatRefusal Lines ChatMessage voice:Fidel]] "Фиделю скучно. Ты не просишь его убивать врагов. Фидель больше не хочет на тебя работать."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
			'Type', "rehire",
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(821638510526, --[[ModItemUnitDataCompositeDef Fidel Text Offline ChatMessage voice:Fidel]] "Это машина, которая говорит, как Фидель. Фидель сейчас убивает врагов. Если хочешь нанять Фиделя убивать врагов, свяжись с ним позже. Если враг - это ты, Фидель найдёт тебя и убьёт."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(400111149290, --[[ModItemUnitDataCompositeDef Fidel Text GreetingAndOffer ChatMessage voice:Fidel]] "Это машина, которая говорит, как Фидель. Ты хочешь нанять Фиделя убивать врагов? Фидель тоже хочет их убивать. Ну что, договорились?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(781594867566, --[[ModItemUnitDataCompositeDef Fidel Text ConversationRestart ChatMessage voice:Fidel]] "Тебе пришлось отвлечься, чтобы убивать врагов? Фидель понимает. Фидель тоже так делает."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(101738114840, --[[ModItemUnitDataCompositeDef Fidel Text IdleLine ChatMessage voice:Fidel]] "ГОВОРИ, МАШИНА! ГОВОРИ! ИЛИ ФИДЕЛЬ ТЕБЯ ВЗОРВЁТ!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(783316549514, --[[ModItemUnitDataCompositeDef Fidel Text PartingWords ChatMessage voice:Fidel]] "Надеюсь, там будет много врагов. Фидель заскучал."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(337330388680, --[[ModItemUnitDataCompositeDef Fidel Text RehireIntro ChatMessage voice:Fidel]] "Машина говорит, контракт Фиделя скоро кончится. У тебя ещё много врагов. Заплати Фиделю, чтобы он их убил."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(100497682392, --[[ModItemUnitDataCompositeDef Fidel Text RehireOutro ChatMessage voice:Fidel]] "Хорошо. Иду убивать."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 2000,
	SalaryLv1 = 700,
	SalaryMaxLv = 4250,
	LegacyNotes = 'JA1:\n\n"The irrepressible Fidel Dahan was bred for this business. At ease with firearms and explosives, he is wanted on a worldwide warrant for his role in the Cancun Catastrophe, but has managed to stay one step ahead of the organisations seeking his capture." - A.I.M. Dossier, Jagged Alliance\n\nJA2: \n\n"Due to numerous employee complaints concerning his refusal to follow orders, Fidel "Leave me alone, I\'m busy!" Dahan was recently suspended for a thirty-day period. Promising a changed attitude, he was returned to active duty by A.I.M. though because he is so proficient with both firearms and explosives." - A.I.M. Dossier, Jagged Alliance 2\n\nAdditional info:\n\nHas a comical ruthlessness to him. Conveyed by a short, heavy, Cuban accent.\nUsually mad about something, shows hints of a softer side but even that is tainted.\nExtremely impatient. Type of guy that would force a square into a circle while blaming the square for his frustration.\nJagged Alliance 2 has Fidel "Not being quite himself lately". There are some hints suggesting this has something to do with the disappearance of Hurl E. Cutter.\nTrivial bits of dialogue in various games suggest he may be homosexual.',
	StartingLevel = 3,
	MaxHitPoints = 88,
	LearnToLike = {
		"Flay",
	},
	StartingPerks = {
		"MeleeTraining",
		"DoubleToss",
		"Psycho",
		"BreachAndClear",
		"InstantAutopsy",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Fidel",
		}),
	},
	Equipment = {
		"Fidel",
	},
	Tier = "Veteran",
	Specialization = "ExplosiveExpert",
	gender = "Male",
	VoiceResponseId = "Fidel",
}

