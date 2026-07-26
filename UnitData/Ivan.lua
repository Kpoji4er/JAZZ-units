UndefineClass('Ivan')
DefineClass.Ivan = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 94,
	Agility = 91,
	Dexterity = 95,
	Strength = 87,
	Wisdom = 82,
	Will = 86,
	Leadership = 44,
	Marksmanship = 92,
	Mechanical = 14,
	Explosives = 55,
	Medical = 15,
	Portrait = "UI/MercsPortraits/IvanPortrait",
	BigPortrait = "UI/Mercs/Ivan",
	IsMercenary = true,
	Name = T(748830427164, --[[ModItemUnitDataCompositeDef Ivan Name]] "Ivan Dolvich"),
	Nick = T(493354712045, --[[ModItemUnitDataCompositeDef Ivan Nick]] "Ivan"),
	AllCapsNick = T(857448797342, --[[ModItemUnitDataCompositeDef Ivan AllCapsNick]] "IVAN"),
	Bio = T(631392006133, --[[ModItemUnitDataCompositeDef Ivan Bio]] "Once a Major in the Red Army, Ivan took his combat skills to the free market after the collapse of the Soviet Union. Although he still struggles to put anything more than the simplest of phrases into English, his enormous martial talents have only grown during his membership with A.I.M. His feats are so legendary, Hollywood tried to make a movie about him, but since he insisted on starring in it and only using live ammunition the project was canceled."),
	Nationality = "Russia",
	Title = T(659068379440, --[[ModItemUnitDataCompositeDef Ivan Title]] "The Russian Juggernaut"),
	Email = T(435235065061, --[[ModItemUnitDataCompositeDef Ivan Email]] "ivan@aim.com"),
	snype_nick = T(306981357442, --[[ModItemUnitDataCompositeDef Ivan snype_nick]] "иван"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(801318908726, --[[ModItemUnitDataCompositeDef Ivan Text MercChatRefusal Lines ChatMessage voice:Ivan]] "Игорь погиб, потому что связался с кретинами вроде тебя. I will not accept. You are bad commander and let Igor die."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Igor",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(385900044934, --[[ModItemUnitDataCompositeDef Ivan Text MercChatRefusal Lines ChatMessage voice:Ivan]] "Nyet! Problems, money. Я устал от дураков без денег, за которыми мне потом подтирать."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(405562095128, --[[ModItemUnitDataCompositeDef Ivan Text MercChatMitigation Lines ChatMessage voice:Ivan]] "This is stupid mission but I will accept. Igor is family and I keep watch on him. Сколько раз мне из-за Игоря еще придется с такими идиотами работать..."),
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
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(166369730019, --[[ModItemUnitDataCompositeDef Ivan Text MercChatBranch Lines ChatMessage voice:Ivan]] "You should hire nephew. Он, конечно, говна бесполезного кусок, но так он хоть какое-то время пить не будет."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Negate = true,
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(152187545209, --[[ModItemUnitDataCompositeDef Ivan Text MercChatBranch Lines ChatMessage voice:Ivan]] "Я слышал, Грунти ищет работу. Грунти - хороший солдат. Найми его."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Grunty",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(638867606061, --[[ModItemUnitDataCompositeDef Ivan Text Offline ChatMessage voice:Ivan]] "This is Ivan Dolvich. I am on mission. I will contact later. Если ты дурак, больше не звони."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(618731597504, --[[ModItemUnitDataCompositeDef Ivan Text GreetingAndOffer ChatMessage voice:Ivan]] "This is Ivan Dolvich. You want to go on mission? Очередной дебил хочет меня нанять. Надеюсь, хотя бы у этого деньги будут."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(163444722395, --[[ModItemUnitDataCompositeDef Ivan Text ConversationRestart ChatMessage voice:Ivan]] "Where did you go? Идиоты, тратят мое время..."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(191528611145, --[[ModItemUnitDataCompositeDef Ivan Text IdleLine ChatMessage voice:Ivan]] "Ты здесь, идиотина? Ivan is busy. No time for wasting."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(370387628463, --[[ModItemUnitDataCompositeDef Ivan Text PartingWords ChatMessage voice:Ivan]] "Good. We have agreement. I will go to this Grand Chien place."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(429789494124, --[[ModItemUnitDataCompositeDef Ivan Text RehireIntro ChatMessage voice:Ivan]] "Ivan contract expires soon. Let us renegotiate. Ты что, совсем дурак - остаться без Ивана?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(231732374331, --[[ModItemUnitDataCompositeDef Ivan Text RehireOutro ChatMessage voice:Ivan]] "Good. Этот, похоже, не настолько дурак, как все остальные, раз хочет со мной работать."),
		}),
	},
	StartingSalary = 4500,
	SalaryIncrease = 200,
	SalaryLv1 = 2100,
	SalaryMaxLv = 8000,
	LegacyNotes = 'JA1\n\n"A new member and a onetime decorated Major in the Red Army, Ivan Dolvich has, like his country, switched from killing for Lenin to dying for Lincolns. However, unlike his homeland, Ivan actually appears to be good at it." \n\nJA2\n\n"Ivan, a former highly decorated Red Army Major, joined the organization over three years ago on a freelance assignment. Despite serious difficulties communicating in English, he took the mercenary world by storm, breaking all kill-rate records and tallying up the kind of stats that perhaps only he himself is capable of breaking. Ivan himself says it best, \'gun, all gun, like finger on hand.\' In order to improve his relationship with commanders, Ivan has enrolled in an "English as a second language" course."\n\nSkills - Auto Weapons; Heavy Weapons',
	StartingLevel = 4,
	MaxHitPoints = 94,
	Likes = {
		"Igor",
		"Grunty",
	},
	StartingPerks = {
		"YouSeeIgor",
		"AutoWeapons",
		"Flanker",
		"BeefedUp",
		"TakeAim",
		"TrueGrit",
		"HeavyWeaponsTraining",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Ivan",
			'Weight', 50,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Ivan_Hot",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Ivan",
	},
	Tier = "Elite",
	Specialization = "Autoriflemen",
	pollyvoice = "Russell",
	gender = "Male",
	VoiceResponseId = "Ivan",
}

