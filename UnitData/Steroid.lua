UndefineClass('Steroid')
DefineClass.Steroid = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 100,
	Agility = 56,
	Dexterity = 48,
	Strength = 97,
	Wisdom = 61,
	Will = 84,
	Leadership = 9,
	Marksmanship = 89,
	Mechanical = 76,
	Explosives = 13,
	Medical = 22,
	Portrait = "UI/MercsPortraits/Steroid",
	BigPortrait = "UI/Mercs/Steroid",
	IsMercenary = true,
	Name = T(191942662733, --[[ModItemUnitDataCompositeDef Steroid Name]] 'Bobby "Steroid" Gontarski'),
	Nick = T(547412809082, --[[ModItemUnitDataCompositeDef Steroid Nick]] "Steroid"),
	AllCapsNick = T(413371651152, --[[ModItemUnitDataCompositeDef Steroid AllCapsNick]] "STEROID"),
	Bio = T(456387407873, --[[ModItemUnitDataCompositeDef Steroid Bio]] "From fighting fires in Warsaw to winning firefights in Arulco, Bobby Gontarski uses his considerable strength and endurance to bend every encounter to his will. His skills with tools and gadgets are a nice bonus to his fine marksmanship and indomitable spirit. Steroid confronts every challenge with dogged determination, using his impressive stamina to always make sure his persistence pays off."),
	Nationality = "Poland",
	Title = T(545683006311, --[[ModItemUnitDataCompositeDef Steroid Title]] "The Performance-enhanced Pole"),
	Email = T(836836892923, --[[ModItemUnitDataCompositeDef Steroid Email]] "bobby@aim.com"),
	snype_nick = T(161230893072, --[[ModItemUnitDataCompositeDef Steroid snype_nick]] "bobby"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(494152129582, --[[ModItemUnitDataCompositeDef Steroid Text MercChatRefusal Lines ChatMessage voice:Steroid]] "You have Ivan on your team? Then you DON'T want ME. I don't work with people like him."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(144466457355, --[[ModItemUnitDataCompositeDef Steroid Text MercChatRefusal Lines ChatMessage voice:Steroid]] "I do not work with Communist like Igor. I sooner work with Germans."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(139476577458, --[[ModItemUnitDataCompositeDef Steroid Text MercChatHaggle Lines ChatMessage voice:Steroid]] "Many peoples die for you. I am not a person with death wish. Perhaps you can improve offer, yes?"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(621647051327, --[[ModItemUnitDataCompositeDef Steroid Text MercChatMitigation Lines ChatMessage voice:Steroid]] "This is not ideal job, but you have Grizzly and he is good fighter and work-out partner. All right. "),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Grizzly",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(597080364679, --[[ModItemUnitDataCompositeDef Steroid Text MercChatBranch Lines ChatMessage voice:Steroid]] "I need job, so I say yes. But you must understand that I do not like Ivan Dolvich. Please keep many trees between us."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(558558300486, --[[ModItemUnitDataCompositeDef Steroid Text MercChatBranch Lines ChatMessage voice:Steroid]] "To be forced to work with Igor Dolvich does not make me happy. Please keep him and his stinky communism away from me."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Igor",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(144300816928, --[[ModItemUnitDataCompositeDef Steroid Text Offline ChatMessage voice:Steroid]] "Robert Gontarski is, umm, unavoidable right now. Maybe I get in touch with you, maybe not."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(853380302875, --[[ModItemUnitDataCompositeDef Steroid Text GreetingAndOffer ChatMessage voice:Steroid]] "This is Bobby Gontarski. Do you have business?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(369484340930, --[[ModItemUnitDataCompositeDef Steroid Text ConversationRestart ChatMessage voice:Steroid]] "Back from your work-out? Me, too. Let us eat protein bars and discuss business."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(799080241348, --[[ModItemUnitDataCompositeDef Steroid Text IdleLine ChatMessage voice:Steroid]] "Why so quiet? You getting in some reps?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(508884817963, --[[ModItemUnitDataCompositeDef Steroid Text PartingWords ChatMessage voice:Steroid]] "I thank you for, umm, giving me the business. I see you."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(818850924401, --[[ModItemUnitDataCompositeDef Steroid Text RehireIntro ChatMessage voice:Steroid]] "My contract is almost at completion. Do you want to see more of what these biceps can do?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(851247417827, --[[ModItemUnitDataCompositeDef Steroid Text RehireOutro ChatMessage voice:Steroid]] "Very good! I am excited to pummel more bad people for you."),
		}),
	},
	MedicalDeposit = "none",
	Haggling = "low",
	StartingSalary = 800,
	SalaryIncrease = 240,
	SalaryLv1 = 780,
	SalaryMaxLv = 4700,
	LegacyNotes = "The transition from fighting fires to firefights has gone rather well for this ex-fireman from Warsaw. His knowledge of mechanics kept the out- dated and under-funded Polish firehouse running. His eagle-eyed vision and pumped-up persistence, now keeps the enemy on the run.\n\nAdditional info:\n\nGontarski refuses to submit to urine testing.",
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 99,
	Likes = {
		"Larry",
		"Grizzly",
	},
	LearnToLike = {
		"Kalyna",
	},
	Dislikes = {
		"Ivan",
		"Igor",
	},
	LearnToDislike = {
		"Omryn",
	},
	StartingPerks = {
		"MrFixit",
		"SteroidPunch",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Steroid_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Steroid",
	},
	Specialization = "Mechanic",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Steroid",
}

