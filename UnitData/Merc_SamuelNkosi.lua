UndefineClass('Merc_SamuelNkosi')
DefineClass.Merc_SamuelNkosi = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 89,
	Agility = 78,
	Dexterity = 62,
	Strength = 86,
	Wisdom = 74,
	Leadership = 14,
	Marksmanship = 76,
	Mechanical = 18,
	Explosives = 21,
	Medical = 13,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Samuel.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Samuel_Big.png",
	IsMercenary = true,
	Name = T(178040309808, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Name]] "Samuel Nkosi"),
	Nick = T(141954478311, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Nick]] "Samuel"),
	AllCapsNick = T(269001057081, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi AllCapsNick]] "SAMUEL"),
	Bio = T(460131279969, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Bio]] "Samuel Nkosi joined the South African National Defence Forces shortly after they were founded and served for four years as a heavy weapons gunner in the infantry. After his contract ended, he was looking for new opportunities and was finally attracted by A.I.M.'s regular paychecks. Some former clients report that not only did his menacing gaze and physical appearance behind a mounted machine gun help to resolve tense situations during missions, but he is also a very affable guy - at least as long as you're standing on the same side of his gun's muzzle."),
	Nationality = "SouthAfrica",
	Title = T(633217646966, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Title]] "Former Military Infantryman"),
	Email = T(641240197638, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Email]] "sam81@coldmail.com"),
	snype_nick = T(916782653082, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi snype_nick]] "sam"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(813014999872, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text MercChatHaggle Lines ChatMessage voice:Merc_SamuelNkosi]] "I'm not keen on working with that german named Grunty. But we can come to an agreement if you add some money on top of my salary for any inconveniences he might cause."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Grunty",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(979669120158, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text Offline ChatMessage voice:Merc_SamuelNkosi]] "Hi, you've reached Samuel Nkosi. Sorry, I missed your call. I'm especially busy right now, but if you leave me your phone number and a brief message, I'll get back to you as soon as possible."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(592681872481, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text GreetingAndOffer ChatMessage voice:Merc_SamuelNkosi]] "You're talking to Samuel Nkosi. How can I help you?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(399892814797, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text ConversationRestart ChatMessage voice:Merc_SamuelNkosi]] "Hi, it's good to talk to you again."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(518273598044, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text IdleLine ChatMessage voice:Merc_SamuelNkosi]] "Hey, I don't have all day. Why did you call me?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(462159909484, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text PartingWords ChatMessage voice:Merc_SamuelNkosi]] "Your conditions sound fair. I will accept."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(852151262223, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text RehireIntro ChatMessage voice:Merc_SamuelNkosi]] "Hey, we need to talk about my contract. I hope we will come to an agreement again."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(734949798117, --[[ModItemUnitDataCompositeDef Merc_SamuelNkosi Text RehireOutro ChatMessage voice:Merc_SamuelNkosi]] "That's a solid offer. I will accept."),
		}),
	},
	StartingSalary = 580,
	SalaryIncrease = 150,
	Likes = {
		"Blood",
		"Vicki",
	},
	LearnToLike = {
		"Ice",
		"Len",
	},
	Dislikes = {
		"Grizzly",
		"Grunty",
	},
	LearnToDislike = {
		"Fidel",
		"Reaper",
	},
	StartingPerks = {
		"Merc_SamuelNkosi_Perk",
		"HeavyWeaponsTraining",
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Merc_SamuelNkosi",
		}),
	},
	Equipment = {
		"Merc_SamuelNkosi",
	},
	Specialization = "HeavyWeapons",
	gender = "Male",
	PersistentSessionId = "Merc_SamuelNkosi",
	VoiceResponseId = "Merc_SamuelNkosi",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 3,
}

