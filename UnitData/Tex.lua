UndefineClass('Tex')
DefineClass.Tex = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 77,
	Dexterity = 75,
	Strength = 70,
	Wisdom = 51,
	Will = 78,
	Leadership = 1,
	Marksmanship = 88,
	Mechanical = 48,
	Explosives = 1,
	Medical = 4,
	Portrait = "UI/MercsPortraits/Tex",
	BigPortrait = "UI/Mercs/Tex",
	IsMercenary = true,
	Name = T(686198945827, --[[ModItemUnitDataCompositeDef Tex Name]] "Текс Р. Колберн"),
	Nick = T(384280286220, --[[ModItemUnitDataCompositeDef Tex Nick]] "Текс"),
	AllCapsNick = T(656022978516, --[[ModItemUnitDataCompositeDef Tex AllCapsNick]] "ТЕКС"),
	Bio = T(855301635048, --[[ModItemUnitDataCompositeDef Tex Bio]] "Учитывая, что ни один из кинопродюсеров так и не захотел положить начало новой эпохе «суши-вестернов», о которой так мечтал Текс, Колберн вынужденно вернулся к ремеслу наёмника. Однако неудачный поворот кинокарьеры не смутил вечного оптимиста Текса. Он всё так же любит похвастаться друзьям-наёмникам своей стрельбой с обеих рук и искусством зрелищно крутить револьверы. \nНа поле боя вы обыкновенно можете увидеть его стоящим на фоне закатного солнца и мужественно смотрящим вдаль из-под полей ковбойской шляпы."),
	Nationality = "Japan",
	Title = T(415603758957, --[[ModItemUnitDataCompositeDef Tex Title]] "Ковбой из Страны восходящего солнца"),
	Email = T(595579036754, --[[ModItemUnitDataCompositeDef Tex Email]] "cowboydirector@aim.com"),
	snype_nick = T(568991391705, --[[ModItemUnitDataCompositeDef Tex snype_nick]] "cowboydirector"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(313041068988, --[[ModItemUnitDataCompositeDef Tex Text MercChatRefusal Lines ChatMessage voice:Tex]] "Извини, партнёр. У меня большие съёмки на носу. Очень трудный трюк. Круглые сутки репетирую. Пиши позже."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(435944476423, --[[ModItemUnitDataCompositeDef Tex Text MercChatMitigation Lines ChatMessage voice:Tex]] "У тебя там Лиска? Ей в большом кино сниматься надо, а не на маленьких войнах бегать. У неё такие таланты! Почту за честь работать с ней снова. Ради такого я даже отложу другие съёмки."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(209674255281, --[[ModItemUnitDataCompositeDef Tex Text Offline ChatMessage voice:Tex]] "Вы дозвонились до Текса Колберна - профессионального актёра, каскадёра и солдата удачи. Я сейчас занят на съёмках. Большая картина, куча спецэффектов. Свяжусь с вами позже. Может, даже автограф дам."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(454484491550, --[[ModItemUnitDataCompositeDef Tex Text GreetingAndOffer ChatMessage voice:Tex]] "Arigato. Это Текс. Ты набираешь отряд?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(699864175196, --[[ModItemUnitDataCompositeDef Tex Text ConversationRestart ChatMessage voice:Tex]] "Продолжим разговор, партнёр. Так что ты говорил?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(684216191720, --[[ModItemUnitDataCompositeDef Tex Text IdleLine ChatMessage voice:Tex]] "Партнёр, мне ещё автографы ставить. Не задерживай меня."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(478717643527, --[[ModItemUnitDataCompositeDef Tex Text PartingWords ChatMessage voice:Tex]] "По рукам, партнёр. Жди меня на своём ранчо."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(260654543464, --[[ModItemUnitDataCompositeDef Tex Text RehireIntro ChatMessage voice:Tex]] "Партнёр, я сейчас на расхват. Если хочешь, чтобы я и дальше всем отказывал, пора подписать новый контракт."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(871041368651, --[[ModItemUnitDataCompositeDef Tex Text RehireOutro ChatMessage voice:Tex]] "Мой револьвер снова к твоим услугам, партнёр. Возвращение легенды."),
		}),
	},
	StartingSalary = 1800,
	SalaryLv1 = 900,
	SalaryMaxLv = 4700,
	LegacyNotes = 'JA1:\n\n"A new member, Tex R. Colburn joins A.I.M. from the wide open ranges of Tokyo, Japan. This asian cowboy-wannabe has limited experience, but seems to pick up on things rather quickly. However, you will have to put up with some pretty annoying "B" western cliches!" \n\nJA2 Alumni:\n\n"One of our more colourful warriors, Tex Colburn, handed in his six-shooters to fulfill his dream of starring on the big screen. As a rising star of japanese westerns, he played the lead in "Much Dust, Many Bullets." and has recieved glowing reviews for his roles in the classic films "Attack of the Clydesdales" and "Have Honda, will travel.". \n\n"One of out more colourful warriors, Tex Colburn has returned to the mercenary life. As a star of japanese westerns, he played the lead in "Much Dust, Many Bullets." and has recieved glowing reviews for his roles in the classic films "Attack of the Clydesdales" and "Have Honda, Will Travel." Tex is quick with a .357 in each hand, and travels with his own stage makeup". - M.E.R.C. dossier, v1.13\n\nAfter taking leave from A.I.M. in Jagged Alliance 2, Tex appears again in Tracona, at Betty Fung Convenience Store and Video Outlet, on a celebrity tour of third-world countries to promote his latest movie, "Wild, Wild East".  Disgruntled with the life of a Hollywood celebrity and feeling nostalgic for his days as a mercenary with A.I.M., he can be easily persuaded to join forces with your mercenaries.',
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 81,
	Likes = {
		"Fox",
		"Larry",
	},
	StartingPerks = {
		"Ambidextrous",
		"CQCTraining",
		"Claustrophobic",
		"DanceForMe",
		"OpportunisticKiller",
		"HitTheDeck",
		"SteadyBreathing",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Tex",
		}),
	},
	Equipment = {
		"Tex",
	},
	Tier = "Elite",
	Specialization = "AllRounder",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Tex",
}

