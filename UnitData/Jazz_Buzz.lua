UndefineClass('Jazz_Buzz')
DefineClass.Jazz_Buzz = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 71,
	Agility = 84,
	Dexterity = 47,
	Strength = 68,
	Wisdom = 90,
	Leadership = 13,
	Marksmanship = 96,
	Mechanical = 5,
	Explosives = 19,
	Medical = 0,
	Portrait = "Mod/Dv3mFVN/Images/buzzsmall 3.png",
	BigPortrait = "Mod/Dv3mFVN/Images/buzzbig 2.png",
	IsMercenary = true,
	Name = T(753330501613, --[[ModItemUnitDataCompositeDef Jazz_Buzz Name]] 'Луиза "Тоска" Гарно'),
	Nick = T(980611805568, --[[ModItemUnitDataCompositeDef Jazz_Buzz Nick]] "Тоска"),
	AllCapsNick = T(971951422708, --[[ModItemUnitDataCompositeDef Jazz_Buzz AllCapsNick]] "ТОСКА"),
	Bio = T(499440250102, --[[ModItemUnitDataCompositeDef Jazz_Buzz Bio]] "A woman whose skills extend far beyond just firearms and medicine, Monica's resumé reads like she's applying for a lifetime achievement award. She recently produced a series of instructional videos called \"Be Better\" where she teaches the viewer the best ways to home school, perform CPR, shoot automatic weapons, maintain cardiovascular health and lift yourself out of depression through rigorous self-improvement. \n\nAlthough many wonder what she could possibly want from the mercenary life, most fellow A.I.M. members appreciate her expertise and thorough - if priggish - tutoring style."),
	Nationality = "Denmark",
	Title = T(335290711519, --[[ModItemUnitDataCompositeDef Jazz_Buzz Title]] "Buns Will Teach You"),
	Email = T(515826095239, --[[ModItemUnitDataCompositeDef Jazz_Buzz Email]] "MonicaSondergaard@aim.com"),
	snype_nick = T(229551591966, --[[ModItemUnitDataCompositeDef Jazz_Buzz snype_nick]] "MonicaSondergaard"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(982241068756, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "You've got Fox on your team. Obviously, you're more interested in the sizzle than the steak. Call me when you're looking for something more than a pretty face."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(805740776486, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "You have a man on your team called Reaper. He's a seriously disturbed individual. Some other time, perhaps."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Reaper",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(494807403174, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "I have not worked with you before. It is prudent to require some additional financial guarantees when that is the case."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionRehire', {}),
			},
			'chanceToRoll', 20,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(103790630999, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "You hired that creep Reaper. There is something really, really wrong with him. If you want to keep me on, I will require extra compensation for the risks involved when working with such an individual."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Reaper",
				}),
			},
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(528516598797, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "I don't know what possessed you to hire that useless swimsuit model, Fox. Her head is as empty as her breasts. I'm sure they're fake. Pretty sure. Anyway, I'll need more money if I am to tolerate her presence."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(954566012855, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatMitigation Lines ChatMessage voice:Jazz_Buzz]] "This is an offer I would normally refuse, but having Sidney on the team makes me feel like perhaps you know what you are doing. I'm in."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Sidney",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(989297701636, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text Offline ChatMessage voice:Jazz_Buzz]] "This is Monica Sondergaard. You have naturally been drawn to my superior skills and neat and efficient manner. I am currently unavailable. Please contact me at another time. "),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(717722918473, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text GreetingAndOffer ChatMessage voice:Jazz_Buzz]] "Hello. This is Monica Sondergaard. It is a pleasure to meet you. I assume this is about a job and you were drawn to my superior skills and overall neatness."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(807010058203, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text ConversationRestart ChatMessage voice:Jazz_Buzz]] "It is rude to end conversations abruptly but I will forgive you. Let us proceed."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(967496388609, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text IdleLine ChatMessage voice:Jazz_Buzz]] "I do not tolerate time-wasting but I will make an exception. Benevolence is one of my many virtues. Now, let us continue."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(301863070084, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text PartingWords ChatMessage voice:Jazz_Buzz]] "Very well. I look forward to working with you."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(545215268578, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text RehireIntro ChatMessage voice:Jazz_Buzz]] "Hello. My contract is expiring. The team will suffer without my superior skill set so I am willing to continue our arrangement."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(464662860223, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text RehireOutro ChatMessage voice:Jazz_Buzz]] "Good. I am pleased we could come to an agreement to continue our contract."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 655,
	SalaryIncrease = 260,
	SalaryLv1 = 400,
	SalaryMaxLv = 4300,
	LegacyNotes = '"The prim and proper Monica Sondergaard may seem to be an unlikely candidate for the rough and tumble mercenary life, but she more than meets the minimum requirements. Before settling on A.I.M., Buns explored a number of careers: kindergarten teacher, geriatric nurse, Danish sharpshooter at the Atlanta Olympic games, and professional soldier."\n\nAdditional info:\n\nA prim and proper prude, her uptightedness goes hand-in-hand with her professionalism and skill.\nBelieves herself better than anyone else.\nHas a sense of superiority. She\'s a merc because she wants to, not because she has to.\nPuts her feelings before logic.\nTo a Danish person her dialect sounds German or Russian. (To a person with knowledge of the russian language and accent she definitely doesn\'t sound any russian at all. Ivan Dolvich has classic russian accent)',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Sidney",
	},
	Dislikes = {
		"Fox",
		"Reaper",
	},
	StartingPerks = {
		"Jazz_Buzz_Perk",
		"HeavyWeaponsTraining",
		"AutoWeapons",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Buzz",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Buzz",
	},
	Tier = "Veteran",
	Specialization = "Marksmen",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Buns",
}

