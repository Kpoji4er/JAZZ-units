UndefineClass('Scully')
DefineClass.Scully = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 88,
	Dexterity = 95,
	Strength = 87,
	Wisdom = 93,
	Leadership = 70,
	Marksmanship = 92,
	Mechanical = 61,
	Explosives = 66,
	Medical = 36,
	Portrait = "UI/MercsPortraits/Scully",
	BigPortrait = "UI/Mercs/Scully",
	IsMercenary = true,
	Name = T(357879375429, --[[ModItemUnitDataCompositeDef Scully Name]] "Роберт Джеймс Салливан"),
	Nick = T(639079993068, --[[ModItemUnitDataCompositeDef Scully Nick]] "Лысый"),
	AllCapsNick = T(250215016589, --[[ModItemUnitDataCompositeDef Scully AllCapsNick]] "ЛЫСЫЙ"),
	Bio = T(953273652898, --[[ModItemUnitDataCompositeDef Scully Bio]] "Хотя Салливан и родился в Англии, годы, проведённые им за катанием по волнам у берегов Австралии, сделали его неотличимым от урождённых жителей этой страны. Многие бойцы считают Лысого едва ли не лучшим наёмником A.I.M. - наверняка отчасти благодаря его врождённому дружелюбию. Как бы там ни было, трудно найти такое задание, с которым он не справился бы на ура. Салливан превосходно работает холодным оружием, но уверенно обращается и с огнестрельным и взрывчаткой, а также инструментами и аптечкой."),
	Nationality = "England",
	Title = T(167544469426, --[[ModItemUnitDataCompositeDef Scully Title]] "Серийный холостяк"),
	Email = T(681435230668, --[[ModItemUnitDataCompositeDef Scully Email]] "surfer@aim.com"),
	snype_nick = T(160407166740, --[[ModItemUnitDataCompositeDef Scully snype_nick]] "surfer"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(745877789753, --[[ModItemUnitDataCompositeDef Scully Text MercChatRefusal Lines ChatMessage voice:Scully]] "Никаких шансов, приятель. Я бы с удовольствием, но надо ещё на жизнь зарабатывать - а у тебя, похоже, с деньгами туго."),
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
					'Text', T(818027287856, --[[ModItemUnitDataCompositeDef Scully Text MercChatHaggle Lines ChatMessage voice:Scully]] "Приятель, ты не представляешь, сколько у меня бывших жен. И все хотят алименты. Ты уж подкинь денег, чтоб мне было чем с ними расплачиваться."),
				}),
			},
			'Conditions', {},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(912379028022, --[[ModItemUnitDataCompositeDef Scully Text MercChatHaggle Lines ChatMessage voice:Scully]] "Мне нужно собрать ребёнка в школу. Или в колледж. Или в садик. Я в этих детях и сам уже путаюсь. Короче, нужны ещё деньги. Выручишь меня, а?"),
				}),
			},
			'Conditions', {},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(856479969152, --[[ModItemUnitDataCompositeDef Scully Text Offline ChatMessage voice:Scully]] "Это Роберт Джеймс Салливан. Меня нет дома, приятель. Я дам знать, когда вернусь, - если только это не по поводу алиментов. Если да - катитесь к чёрту."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(216691834397, --[[ModItemUnitDataCompositeDef Scully Text GreetingAndOffer ChatMessage voice:Scully]] "Здорово, приятель. Хочешь предложить мне работу?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(315006940630, --[[ModItemUnitDataCompositeDef Scully Text ConversationRestart ChatMessage voice:Scully]] "Здорово, приятель. Рад тебя снова слышать."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(724445502375, --[[ModItemUnitDataCompositeDef Scully Text IdleLine ChatMessage voice:Scully]] "Время - деньги, приятель, а мне надо платить алименты. Так что давай ускоримся."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(460394638505, --[[ModItemUnitDataCompositeDef Scully Text PartingWords ChatMessage voice:Scully]] "Отлично! Мне уже порядком надоело здесь прохлаждаться."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(491402142223, --[[ModItemUnitDataCompositeDef Scully Text RehireIntro ChatMessage voice:Scully]] "Часики тикают, приятель. Скоро истекает срок контракта. Мы работаем дальше или что?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(376480401551, --[[ModItemUnitDataCompositeDef Scully Text RehireOutro ChatMessage voice:Scully]] "Отлично, приятель. За дело."),
		}),
	},
	Haggling = "low",
	StartingSalary = 4300,
	SalaryIncrease = 200,
	SalaryLv1 = 1900,
	SalaryMaxLv = 6800,
	LegacyNotes = 'JA1:\n\n"Robert James Sullivan is a distinguished member of A.I.M. and is known in the business as a fearless "finisher". When the chips are down and the enemy\'s jugular is exposed, there\'s no better man with a knife in his hand than "Scully"."\n\nJA2:\n\n"The amiable Scully Sullivan is a long-time A.I.M. member. He\'s one of our most distinguished mercenaries and perhaps the most respected among his peers. Scully holds the A.I.M. record for the highest number of combat engagements in almost as many different countries. Need someone to snap the last breath from an enemy? Then Sullivan\'s your man. Scully is well-known for his skills with a bladed weapon."\n\nAdditional info:\n\nScully is a super friendly guy. He\'s been married eight times and has twenty one kids.\nThough British, he has a out-going demeanor easily mistaken for Australian. His cockney accent, tanned complexion and propensity to call people "mate" doesn\'t help.\nDeadly, yet exhibits no fascination for gore.\nWe are told, over and over, that Scully is well known for his skill with blades.\nHe likely holds the record for combat engagements in Jagged Alliance 2 now due to the departure of his old friend Mike.',
	StartingLevel = 5,
	MaxHitPoints = 90,
	StartingPerks = {
		"MeleeTraining",
		"Optimist",
		"ShoulderToShoulder",
		"BeefedUp",
		"TrueGrit",
		"HoldPosition",
		"Deadeye",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully",
			'Weight', 50,
			'GameStates', set({
	CursedForest = false,
	DustStorm = false,
	FireStorm = false,
	Heat = false,
	Jungle = false,
	Marshlands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Forest",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Forest",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Forest",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Savana",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Scully_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Scully",
	},
	Tier = "Legendary",
	Specialization = "Leader",
	gender = "Male",
}

