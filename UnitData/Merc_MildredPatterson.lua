UndefineClass('Merc_MildredPatterson')
DefineClass.Merc_MildredPatterson = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Merc Mildred Patterson",
	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 51,
	Agility = 48,
	Dexterity = 74,
	Strength = 38,
	Wisdom = 78,
	Leadership = 50,
	Marksmanship = 55,
	Mechanical = 5,
	Explosives = 2,
	Medical = 90,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Mildred.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Mildred_Big.png",
	IsMercenary = true,
	Name = T(462218224500, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Name]] "Mildred Patterson"),
	Nick = T(935430007794, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Nick]] "Mildred"),
	AllCapsNick = T(569943501775, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson AllCapsNick]] "MILDRED"),
	Bio = T(869724839921, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Bio]] "Mildred Patterson worked for decades as a senior paramedic in Greater Manchester. Well-deserved, she retired from her job about two years ago. Nevertheless, finding Sunday's coffee parties and retirement too dull, she sought a new purpose in life and began to supplement her pension by doing some contract work for A.I.M. as a combat medic. Whether it's lacerations, burns, or gunshot wounds, Mildred draws from a broad knowledge of treating all kinds of injuries. Her journey from a regular professional life to an adventurous retiree is a strong testament to her ingenuity and determination."),
	Nationality = "England",
	Title = T(926908188084, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Title]] "Senior Paramedic"),
	Email = T(798410832443, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Email]] "patterson@coldmail.com"),
	snype_nick = T(114339865811, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson snype_nick]] "milly"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(755241659656, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text MercChatHaggle Lines ChatMessage voice:Merc_MildredPatterson]] 'I am terribly sorry, but I am not very keen about working with Mr, "Quack" Dawson. Nevertheless, a minor compensation might help to change my mind about him, for the moment.'),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "MD",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(169750321810, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text Offline ChatMessage voice:Merc_MildredPatterson]] "You have reached Mildred Patterson. Thanks for your call. Please leave a brief message and I will get back to you as quickly as my time allows."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(641341334949, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text GreetingAndOffer ChatMessage voice:Merc_MildredPatterson]] "Good morning, this is Mildred Patterson talking. Please explain the matter of your call."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(971375804811, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text ConversationRestart ChatMessage voice:Merc_MildredPatterson]] "This is Mildred Patterson speaking. Please tell me, how can I help you?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(482117704614, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text IdleLine ChatMessage voice:Merc_MildredPatterson]] "Excuse me, would you please tell me now, what is the reason for your call?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(118276112116, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text PartingWords ChatMessage voice:Merc_MildredPatterson]] "I can agree on that contract conditions. It's been a pleasure speaking to you. We will meet on site."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(110729622402, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text RehireIntro ChatMessage voice:Merc_MildredPatterson]] "We need to negotiate a new contract. How do you think about an extension?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(584882121239, --[[ModItemUnitDataCompositeDef Merc_MildredPatterson Text RehireOutro ChatMessage voice:Merc_MildredPatterson]] "I am glad we came to a new agreement."),
		}),
	},
	StartingSalary = 390,
	SalaryIncrease = 150,
	Likes = {
		"Gus",
		"Len",
	},
	LearnToLike = {
		"Raider",
		"Raven",
	},
	Dislikes = {
		"MD",
		"DrQ",
	},
	LearnToDislike = {
		"Larry",
		"PierreMerc",
	},
	StartingPerks = {
		"Merc_MildredPatterson_Bookworm",
		"Teacher",
		"OldDog",
		"Optimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Merc_MildredPatterson",
		}),
	},
	Equipment = {
		"Merc_MildredPatterson",
	},
	Specialization = "Doctor",
	pollyvoice = "Amy",
	gender = "Female",
	PersistentSessionId = "Merc_MildredPatterson",
	VoiceResponseId = "Merc_MildredPatterson",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 3,
}

