UndefineClass('Shadow')
DefineClass.Shadow = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 95,
	Agility = 96,
	Dexterity = 85,
	Strength = 89,
	Wisdom = 77,
	Will = 85,
	Leadership = 35,
	Marksmanship = 90,
	Mechanical = 12,
	Explosives = 22,
	Medical = 30,
	Portrait = "UI/MercsPortraits/Shadow",
	BigPortrait = "UI/Mercs/Shadow",
	IsMercenary = true,
	Name = T(760643490639, --[[ModItemUnitDataCompositeDef Shadow Name]] "Кайл Симмонс «Тень»"),
	Nick = T(716325832691, --[[ModItemUnitDataCompositeDef Shadow Nick]] "Тень"),
	AllCapsNick = T(409225247825, --[[ModItemUnitDataCompositeDef Shadow AllCapsNick]] "ТЕНЬ"),
	Bio = T(501671952366, --[[ModItemUnitDataCompositeDef Shadow Bio]] "Симмонса можно назвать американской копией Стрелки: он в совершенстве умеет незаметно пересечь поле боя, чтобы сделать выстрел с идеальной позиции. Но если Стрелка специализируется на бое в городских условиях, Тень - неразговорчивый одиночка, предпочитающий в качестве поля боя леса и болота. То, с каким мастерством он маскируется, незаметно поджидая жертву, стоит запрашиваемого им гонорара. Кайл недавно прошёл трёхнедельный курс подготовки под названием «Щель и пропасть: искусство маскировки под естественные впадины» и готов к новым заданиям."),
	Nationality = "USA",
	Title = T(449003441115, --[[ModItemUnitDataCompositeDef Shadow Title]] "Нельзя убить невидимку"),
	Email = T(642342715921, --[[ModItemUnitDataCompositeDef Shadow Email]] "ten@aim.com"),
	snype_nick = T(790007421865, --[[ModItemUnitDataCompositeDef Shadow snype_nick]] "ten'"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(773704481235, --[[ModItemUnitDataCompositeDef Shadow Text MercChatRefusal Lines ChatMessage voice:Shadow]] "Я буду занят. Считай, что я навещаю больного друга."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(721179969282, --[[ModItemUnitDataCompositeDef Shadow Text MercChatRefusal Lines ChatMessage voice:Shadow]] "Не люблю нянчиться с чёртовыми салагами. Обязательно кто-нибудь подставится под пулю, придётся всё время следить, чтоб это оказался не я. Короче, ищи кого-нибудь другого."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud]:GetLevel() <= 3 end) > 0
					end,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(780554763122, --[[ModItemUnitDataCompositeDef Shadow Text Offline ChatMessage voice:Shadow]] "Если вы слушаете данное сообщение, возможно, я недоступен. Оставьте свои координаты, если хотите со мной поговорить."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(921194090361, --[[ModItemUnitDataCompositeDef Shadow Text GreetingAndOffer ChatMessage voice:Shadow]] "Да?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(565187982425, --[[ModItemUnitDataCompositeDef Shadow Text ConversationRestart ChatMessage voice:Shadow]] "Ненавижу терять время на разговоры. Давай уже или договоримся, или ты не будешь меня отвлекать."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(280147332060, --[[ModItemUnitDataCompositeDef Shadow Text IdleLine ChatMessage voice:Shadow]] "Давай шустрее. Мне ещё нужно подготовить сюрприз студентам на занятии по городскому камуфляжу."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(951928325936, --[[ModItemUnitDataCompositeDef Shadow Text PartingWords ChatMessage voice:Shadow]] "Ага, сначала посмотрим, как мы работаем вместе. Если что-нибудь не понравится тебе или мне, то когда срок контракта истечёт, пожмём друг другу руки и разойдёмся в разные стороны."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(604777995574, --[[ModItemUnitDataCompositeDef Shadow Text RehireIntro ChatMessage voice:Shadow]] "На случай, если ты забыл, - наш контракт подходит к концу. Я могу пойти тебе навстречу, если ты захочешь его продлить."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(307984690371, --[[ModItemUnitDataCompositeDef Shadow Text RehireOutro ChatMessage voice:Shadow]] "Отлично. Я остаюсь."),
		}),
	},
	DurationDiscount = "none",
	StartingSalary = 2800,
	SalaryIncrease = 220,
	SalaryMaxLv = 4500,
	LegacyNotes = "This ex-Ranger and sniper has turned stalking into an art form. The Shadow could be lurking about right next to you and chances are you'd never know it. That snow drift, sand dune, or piece of shrubbery could be him. Kyle Simmons has made it his business to blend into any environment for any length of time. The Shadow brings his own camouflage supplies and he wishes to make it known up-front that he doesn't share.\"\n\nAdditional info:\n\nQuiet, loner, low-key professional.\nComments are usually made to himself rather than as conversation.\nA matter-of-fact type of guy, who doesn't draw attention to himself.\nVoice: a confident sniper's whisper.",
	StartingLevel = 5,
	MaxHitPoints = 95,
	StartingPerks = {
		"Stealthy",
		"Loner",
		"FleetingShadow",
		"Untraceable",
		"Infiltrator",
		"SwiftStrike",
		"LightningReaction",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Shadow",
			'Weight', 50,
			'GameStates', set({
	Savanna = false,
	Wastelands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Shadow_Savanna",
			'Weight', 50,
			'GameStates', set( "Savanna" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Shadow_Savanna",
			'Weight', 50,
			'GameStates', set( "Wastelands" ),
		}),
	},
	Equipment = {
		"Shadow",
	},
	Tier = "Legendary",
	Specialization = "Stealth",
	gender = "Male",
}

