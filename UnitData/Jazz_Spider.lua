UndefineClass('Jazz_Spider')
DefineClass.Jazz_Spider = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 76,
	Dexterity = 56,
	Strength = 68,
	Wisdom = 90,
	Leadership = 16,
	Marksmanship = 70,
	Mechanical = 0,
	Explosives = 0,
	Medical = 94,
	Portrait = "Mod/Dv3mFVN/Images/raw copy2Small.png",
	BigPortrait = "Mod/Dv3mFVN/Images/raw copy2.png",
	IsMercenary = true,
	Name = T(473405123801, --[[ModItemUnitDataCompositeDef Jazz_Spider Name]] "Доктор Донна «Паук» Хьюстон"),
	Nick = T(640915905655, --[[ModItemUnitDataCompositeDef Jazz_Spider Nick]] "Паук"),
	AllCapsNick = T(334919557586, --[[ModItemUnitDataCompositeDef Jazz_Spider AllCapsNick]] "ПАУК"),
	Bio = T(413054323111, --[[ModItemUnitDataCompositeDef Jazz_Spider Bio]] "A woman whose skills extend far beyond just firearms and medicine, Monica's resumé reads like she's applying for a lifetime achievement award. She recently produced a series of instructional videos called \"Be Better\" where she teaches the viewer the best ways to home school, perform CPR, shoot automatic weapons, maintain cardiovascular health and lift yourself out of depression through rigorous self-improvement. \n\nAlthough many wonder what she could possibly want from the mercenary life, most fellow A.I.M. members appreciate her expertise and thorough - if priggish - tutoring style."),
	Nationality = "USA",
	Title = T(212508535115, --[[ModItemUnitDataCompositeDef Jazz_Spider Title]] "Spider"),
	Email = T(909543167512, --[[ModItemUnitDataCompositeDef Jazz_Spider Email]] "Spider@aim.com"),
	snype_nick = T(942325356772, --[[ModItemUnitDataCompositeDef Jazz_Spider snype_nick]] "Spider"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(821279777478, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "You've got Fox on your team. Obviously, you're more interested in the sizzle than the steak. Call me when you're looking for something more than a pretty face."),
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
					'Text', T(696989880464, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatRefusal Lines ChatMessage voice:Jazz_Spider]] "You have a man on your team called Reaper. He's a seriously disturbed individual. Some other time, perhaps."),
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
					'Text', T(225860032044, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatHaggle Lines ChatMessage voice:Jazz_Spider]] "I have not worked with you before. It is prudent to require some additional financial guarantees when that is the case."),
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
					'Text', T(541271599319, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatHaggle Lines ChatMessage voice:Jazz_Spider]] "You hired that creep Reaper. There is something really, really wrong with him. If you want to keep me on, I will require extra compensation for the risks involved when working with such an individual."),
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
					'Text', T(461566149527, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatHaggle Lines ChatMessage voice:Jazz_Spider]] "I don't know what possessed you to hire that useless swimsuit model, Fox. Her head is as empty as her breasts. I'm sure they're fake. Pretty sure. Anyway, I'll need more money if I am to tolerate her presence."),
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
					'Text', T(456946406060, --[[ModItemUnitDataCompositeDef Jazz_Spider Text MercChatMitigation Lines ChatMessage voice:Jazz_Spider]] "This is an offer I would normally refuse, but having Sidney on the team makes me feel like perhaps you know what you are doing. I'm in."),
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
			'Text', T(924338138228, --[[ModItemUnitDataCompositeDef Jazz_Spider Text Offline ChatMessage voice:Jazz_Spider]] "This is Monica Sondergaard. You have naturally been drawn to my superior skills and neat and efficient manner. I am currently unavailable. Please contact me at another time. "),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(960164746944, --[[ModItemUnitDataCompositeDef Jazz_Spider Text GreetingAndOffer ChatMessage voice:Jazz_Spider]] "Hello. This is Monica Sondergaard. It is a pleasure to meet you. I assume this is about a job and you were drawn to my superior skills and overall neatness."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(409216589716, --[[ModItemUnitDataCompositeDef Jazz_Spider Text ConversationRestart ChatMessage voice:Jazz_Spider]] "It is rude to end conversations abruptly but I will forgive you. Let us proceed."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(926700611223, --[[ModItemUnitDataCompositeDef Jazz_Spider Text IdleLine ChatMessage voice:Jazz_Spider]] "I do not tolerate time-wasting but I will make an exception. Benevolence is one of my many virtues. Now, let us continue."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(761489747842, --[[ModItemUnitDataCompositeDef Jazz_Spider Text PartingWords ChatMessage voice:Jazz_Spider]] "Very well. I look forward to working with you."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(969064377190, --[[ModItemUnitDataCompositeDef Jazz_Spider Text RehireIntro ChatMessage voice:Jazz_Spider]] "Hello. My contract is expiring. The team will suffer without my superior skill set so I am willing to continue our arrangement."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(332091324607, --[[ModItemUnitDataCompositeDef Jazz_Spider Text RehireOutro ChatMessage voice:Jazz_Spider]] "Good. I am pleased we could come to an agreement to continue our contract."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 800,
	SalaryIncrease = 200,
	SalaryLv1 = 400,
	SalaryMaxLv = 4300,
	LegacyNotes = '"The prim and proper Monica Sondergaard may seem to be an unlikely candidate for the rough and tumble mercenary life, but she more than meets the minimum requirements. Before settling on A.I.M., Buns explored a number of careers: kindergarten teacher, geriatric nurse, Danish sharpshooter at the Atlanta Olympic games, and professional soldier."\n\nAdditional info:\n\nA prim and proper prude, her uptightedness goes hand-in-hand with her professionalism and skill.\nBelieves herself better than anyone else.\nHas a sense of superiority. She\'s a merc because she wants to, not because she has to.\nPuts her feelings before logic.\nTo a Danish person her dialect sounds German or Russian. (To a person with knowledge of the russian language and accent she definitely doesn\'t sound any russian at all. Ivan Dolvich has classic russian accent)',
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Vicki",
		"Raven",
	},
	Dislikes = {
		"Buns",
	},
	StartingPerks = {
		"Jazz_Perk_Spider",
		"NightOps",
		"Stealthy",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Spider",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Spider",
	},
	Specialization = "Doctor",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Buns",
}

