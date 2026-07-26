UndefineClass('Grunty')
DefineClass.Grunty = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 82,
	Agility = 77,
	Dexterity = 75,
	Strength = 71,
	Wisdom = 74,
	Will = 64,
	Leadership = 21,
	Marksmanship = 78,
	Mechanical = 45,
	Explosives = 28,
	Medical = 22,
	Portrait = "UI/MercsPortraits/Grunty",
	BigPortrait = "UI/Mercs/Grunty",
	IsMercenary = true,
	Name = T(509794901102, --[[ModItemUnitDataCompositeDef Grunty Name]] "Helmut \"Grunty\" Grunther"),
	Nick = T(844792410600, --[[ModItemUnitDataCompositeDef Grunty Nick]] "Grunty"),
	AllCapsNick = T(878015981670, --[[ModItemUnitDataCompositeDef Grunty AllCapsNick]] "GRUNTY"),
	Bio = T(805883834301, --[[ModItemUnitDataCompositeDef Grunty Bio]] "A mercenary rapidly approaching his prime, Grunty has become one of A.I.M.'s most popular members. A solid soldier at a reasonable price, Helmut's congeniality and positive attitude make him a joy to work with. A versatile merc that is also skilled with heavy weapons, there are few tactical situations for which he is unprepared."),
	Nationality = "Germany",
	Title = T(559710714576, --[[ModItemUnitDataCompositeDef Grunty Title]] "The Irrationally Exuberant Merc"),
	Email = T(930964299879, --[[ModItemUnitDataCompositeDef Grunty Email]] "mutti_liebling@aim.com"),
	snype_nick = T(511404631540, --[[ModItemUnitDataCompositeDef Grunty snype_nick]] "mutti_liebling"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(824665715419, --[[ModItemUnitDataCompositeDef Grunty Text MercChatRefusal Lines ChatMessage voice:Grunty]] "Hallo. You go through good soldiers as if they were a dime a dozen. I consider your proposition an unacceptable risk."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(822031561859, --[[ModItemUnitDataCompositeDef Grunty Text MercChatRefusal Lines ChatMessage voice:Grunty]] "Hallo. Unfortunately, you have no experienced mercs on your team. This is a risk that I consider unacceptable."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud]:GetLevel() > 3 end) == 0
					end,
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(577289136229, --[[ModItemUnitDataCompositeDef Grunty Text MercChatMitigation Lines ChatMessage voice:Grunty]] "I would gladly eat nails to work wherever Ivan is working. I do not mean the bicycle mercenary, Nails, of course. I would not eat him. He seems very leathery. But, back to the topic at hand, I would be delighted to join you and Ivan."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(844233838316, --[[ModItemUnitDataCompositeDef Grunty Text MercChatMitigation Lines ChatMessage voice:Grunty]] "I have a certain attraction to \"Buns\" Sondergaard. I think it is the endearing way she cocks her head to the side just before she blows a hole in an enemy's gut. Since she's with you, I am with you, too."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(383765618496, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "Ivan is my mentor - he taught me how to kill with grace and endurance. It will be really excellent if you hire him."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(393927461621, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "But that is only my good advice. Anyway, tschüss for now"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(531561579625, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "I have a certain attraction to Buns Sondergaard. If she is with you, everything will go much smoother."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(393927461621, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "But that is only my good advice. Anyway, tschüss for now"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ivan",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(330168467319, --[[ModItemUnitDataCompositeDef Grunty Text Offline ChatMessage voice:Grunty]] "Hallo. It is with great discontent that I must notify you that I am not currently available. You will be contacted when the situation changes."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(552434878051, --[[ModItemUnitDataCompositeDef Grunty Text GreetingAndOffer ChatMessage voice:Grunty]] "Hallo. das ist Grunty - Helmut Grunther. Shall we discuss employment?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(758234830840, --[[ModItemUnitDataCompositeDef Grunty Text ConversationRestart ChatMessage voice:Grunty]] "Mother always says \"Connections are easier to break than bones.\" It appears ours broke. Shall we restart our negotiations?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(479381961044, --[[ModItemUnitDataCompositeDef Grunty Text IdleLine ChatMessage voice:Grunty]] "Achtung! We are in the middle of conversation. Please pay attention."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(841092083711, --[[ModItemUnitDataCompositeDef Grunty Text PartingWords ChatMessage voice:Grunty]] "Super. Tschüssikowski for now. We shall be meeting in person soon."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(240997779233, --[[ModItemUnitDataCompositeDef Grunty Text RehireIntro ChatMessage voice:Grunty]] "It is fast approaching the end of our contract. I assume you wish to renew, ja?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(773993917152, --[[ModItemUnitDataCompositeDef Grunty Text RehireOutro ChatMessage voice:Grunty]] "You have chosen wisely."),
		}),
	},
	MedicalDeposit = "extreme",
	StartingSalary = 500,
	SalaryIncrease = 300,
	SalaryLv1 = 100,
	SalaryMaxLv = 2400,
	LegacyNotes = 'JA1: \n\n"Helmut Grunther is a young up-and-comer to the mercenary market.  Comfortable with taking the point position, he expects to make his mark in this merciless milieu in the near future.  Of course, that\'s if it doesn\'t make its mark on him!" - dossier, Jagged Alliance\n\nJA2:\n\n"Helmut has moved through the ranks of this organization quicker than any other mercenary and is now a firmly established seasoned professional. Grunty\'s attitude and approach continues to be exemplary, making him one of our most popular mercenaries. Grunther has shown a strong interest in heavy weapons and night maneuvers." - dossier, Jagged Alliance 2\n\nAdditional info:\n\nGerman accent.\nA go-getter, someone eager who takes his job seriously.\nA hint of ego, though not conceited.\nHas something to say about everything.\nVery sociable and well liked by the other AIM members, especially the Dolviches.',
	StartingLevel = 3,
	MaxHitPoints = 82,
	Likes = {
		"Igor",
		"Ivan",
		"Buns",
	},
	StartingPerks = {
		"HeavyWeaponsTraining",
		"GruntyPerk_JAZZ",
		"BeefedUp",
		"TrueGrit",
		"NightOps",
		"Optimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty",
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
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Grunty",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	gender = "Male",
}

