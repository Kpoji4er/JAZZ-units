UndefineClass('Merc_HectorSanchez')
DefineClass.Merc_HectorSanchez = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	comment = "Merc Hector Sanchez",
	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 75,
	Agility = 68,
	Dexterity = 70,
	Strength = 83,
	Wisdom = 62,
	Leadership = 70,
	Marksmanship = 74,
	Mechanical = 14,
	Explosives = 28,
	Medical = 5,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Hector.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Hector_Big.png",
	IsMercenary = true,
	Name = T(159655801607, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Name]] "Hector Sanchez"),
	Nick = T(461692696454, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Nick]] "Hector"),
	AllCapsNick = T(647844374455, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez AllCapsNick]] "HECTOR"),
	Bio = T(284492843123, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Bio]] "Hector Sanchez's combat expertise stems from the tumultuous past of Cuba's drug cartel wars, shaping him into a battle-tested mercenary. He accepted his first contract job for A.I.M. about six months ago. Although he struggles with various anger management issues, they have also shaped his propensity for raising his voice against others - a valuable trait that substantiates his exceptional leadership and militia training abilities. However, it's important to note that not everyone can handle his fiery temperament and boisterous demeanor. Nevertheless, his commitment to the craft makes him a complex yet highly effective asset for A.I.M."),
	Nationality = "Cuba",
	Title = T(374176510481, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Title]] "Militia Instructor"),
	Email = T(785968581776, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Email]] "hectorsanchez@coldmail.com"),
	snype_nick = T(695742505682, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez snype_nick]] "hector"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(321599305977, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text MercChatHaggle Lines ChatMessage voice:Merc_HectorSanchez]] "Hector does not like to fight with kid like MD. Hector wants more money!"),
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
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(833514297742, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text MercChatMitigation Lines ChatMessage voice:Merc_HectorSanchez]] "Hector heard that Fidel is hired too. Hector likes Fidel, and looks forward to join team with him."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fidel",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(730561750335, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text Offline ChatMessage voice:Merc_HectorSanchez]] "You called Hector Sanchez. Hector not here. Leave phone number after Beep and Hector will call back later."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(135993321037, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text GreetingAndOffer ChatMessage voice:Merc_HectorSanchez]] "You talking to Hector Sanchez. Hector not good english. What you want?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(523627989001, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text ConversationRestart ChatMessage voice:Merc_HectorSanchez]] "This is Hector. What you want?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(411154719819, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text IdleLine ChatMessage voice:Merc_HectorSanchez]] "Hello... Hello? - Hector not likes prank calls... Talk to Hector!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(313244239742, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text PartingWords ChatMessage voice:Merc_HectorSanchez]] "Hector is happy with conditions. We have deal."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(573437956087, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text RehireIntro ChatMessage voice:Merc_HectorSanchez]] "Hector is happy and wants to stay. Hector needs new contract. We make deal?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(406968238869, --[[ModItemUnitDataCompositeDef Merc_HectorSanchez Text RehireOutro ChatMessage voice:Merc_HectorSanchez]] "Splendid! Hector will pay for next round of beer!"),
		}),
	},
	StartingSalary = 660,
	SalaryIncrease = 150,
	unitPowerModifier = 300,
	Likes = {
		"Fidel",
		"Meltdown",
	},
	LearnToLike = {
		"Larry_Clean",
		"Barry",
	},
	Dislikes = {
		"MD",
		"Fox",
	},
	LearnToDislike = {
		"Smiley",
		"Buns",
	},
	StartingPerks = {
		"Merc_HectorSanchez_Perk",
		"Teacher",
		"Psycho",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Merc_HectorSanchez",
		}),
	},
	Equipment = {
		"Merc_HectorSanchez",
	},
	Specialization = "Leader",
	gender = "Male",
	PersistentSessionId = "Merc_HectorSanchez",
	VoiceResponseId = "Merc_HectorSanchez",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 3,
}

