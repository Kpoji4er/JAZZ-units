UndefineClass('Merc_JerrySinclair')
DefineClass.Merc_JerrySinclair = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Merc Jerry Sinclair",
	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 54,
	Agility = 45,
	Dexterity = 68,
	Strength = 85,
	Wisdom = 76,
	Leadership = 40,
	Marksmanship = 67,
	Mechanical = 84,
	Explosives = 50,
	Medical = 8,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Jerry.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Jerry_Big.png",
	IsMercenary = true,
	Name = T(655197624468, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Name]] "Jerry Sinclair"),
	Nick = T(960482787288, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Nick]] "Jerry"),
	AllCapsNick = T(155143671088, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair AllCapsNick]] "JERRY"),
	Bio = T(284492916688, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Bio]] "Jerry Sinclair worked for many years as a lead engineer for a weapon manufacturer and joined AIM after getting divorced from his wife last year. Apart from some agility limitations and slightly higher body weight, his brilliance in mechanics makes him a valuable member whenever vital technical real-time support during missions is required. Though new to AIM, he has quickly gained respect for his technical prowess. He is definitely not your typical frontline mercenary, but he can repair any kind of broken equipment and is capable of modifying almost all weapons on-the-fly."),
	Nationality = "Canada",
	Title = T(827634011036, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Title]] "Weapon Engineer"),
	Email = T(744642112649, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Email]] "sinclair68@coldmail.com"),
	snype_nick = T(130253012440, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair snype_nick]] "jerry"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(492954200051, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text MercChatHaggle Lines ChatMessage voice:Merc_JerrySinclair]] "I already worked with that drinking russian. Let me tell you - this wasn't the most pleasure thing. But i guess with some extra money, we'll come together."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(352332137969, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text Offline ChatMessage voice:Merc_JerrySinclair]] "You have reached Jerry Sinclair. Unfortunately, I can't answer the phone right now, but please leave me a message, and I'll get back to you promptly."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(162045764185, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text GreetingAndOffer ChatMessage voice:Merc_JerrySinclair]] "You're talking to Jerry Sinclair. Are you in need of mechanical assistance?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(105486838898, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text ConversationRestart ChatMessage voice:Merc_JerrySinclair]] "I knew you would call me back. I'm the best mechanic you can get for your bucks."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(172029544435, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text IdleLine ChatMessage voice:Merc_JerrySinclair]] "Oh come on, i really need to go to a walk with my dog. Tell me what you want, or hang up already."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(857370343482, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text PartingWords ChatMessage voice:Merc_JerrySinclair]] "Okay, this sounds like a good deal. I'll be on my way immediately."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(120667680807, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text RehireIntro ChatMessage voice:Merc_JerrySinclair]] "Jerry here. We need to talk about my contract. Are you interested in a renewal?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(940539384341, --[[ModItemUnitDataCompositeDef Merc_JerrySinclair Text RehireOutro ChatMessage voice:Merc_JerrySinclair]] "Thanks a lot for your trust. You will not regret it."),
		}),
	},
	StartingSalary = 480,
	SalaryIncrease = 150,
	Likes = {
		"Scully",
		"Livewire",
	},
	LearnToLike = {
		"Mouse",
		"Larry_Clean",
	},
	Dislikes = {
		"Ivan",
		"Igor",
	},
	LearnToDislike = {
		"Omryn",
		"Smiley",
	},
	StartingPerks = {
		"Merc_JerrySinclair_Perk",
		"MrFixit",
		"Claustrophobic",
		"Optimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Merc_JerrySinclair",
		}),
	},
	Equipment = {
		"Merc_JerrySinclair",
	},
	Specialization = "Mechanic",
	gender = "Male",
	PersistentSessionId = "Merc_JerrySinclair",
	VoiceResponseId = "Merc_JerrySinclair",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 3,
}

