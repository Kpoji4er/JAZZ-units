UndefineClass('Raven')
DefineClass.Raven = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 85,
	Agility = 76,
	Dexterity = 93,
	Strength = 68,
	Wisdom = 78,
	Will = 78,
	Leadership = 19,
	Marksmanship = 94,
	Mechanical = 5,
	Explosives = 5,
	Medical = 17,
	Portrait = "UI/MercsPortraits/Raven",
	BigPortrait = "UI/Mercs/Raven",
	IsMercenary = true,
	Name = T(861196503875, --[[ModItemUnitDataCompositeDef Raven Name]] "Charlene \"Raven\" Higgens"),
	Nick = T(273069265497, --[[ModItemUnitDataCompositeDef Raven Nick]] "Raven"),
	AllCapsNick = T(830280514307, --[[ModItemUnitDataCompositeDef Raven AllCapsNick]] "RAVEN"),
	Bio = T(615837234228, --[[ModItemUnitDataCompositeDef Raven Bio]] "While husband Ron and others kept Somali pirates attempting to board their cruise ship pinned down, Raven used the cover of night to systematically kill one after another using controlled bursts from a captured automatic rifle. A formidable markswoman with nerves of steel, Raven prefers to work alongside her husband but is an asset to any team that is looking to maintain a high standard of excellence and esprit de corps."),
	Nationality = "USA",
	Title = T(374351690992, --[[ModItemUnitDataCompositeDef Raven Title]] "Never More Badass"),
	Email = T(215342188748, --[[ModItemUnitDataCompositeDef Raven Email]] "nevermore@aim.com"),
	snype_nick = T(838938896346, --[[ModItemUnitDataCompositeDef Raven snype_nick]] "nevermore"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(235009774120, --[[ModItemUnitDataCompositeDef Raven Text MercChatRefusal Lines ChatMessage voice:Raven]] "I don't think I'm up to anything after Ron's death. Sorry, I need time to spend with my dogs and to grieve. Don't contact me again."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Raider",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(821677606255, --[[ModItemUnitDataCompositeDef Raven Text MercChatRefusal Lines ChatMessage voice:Raven]] "Your bank statement looks... lacking. I need to be sure I will get paid. I'm not in this just for the thrills, you know."),
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
					'Text', T(707170466268, --[[ModItemUnitDataCompositeDef Raven Text MercChatHaggle Lines ChatMessage voice:Raven]] "I don't know much about you. In fact, I don't know anything about you. "),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(985051500493, --[[ModItemUnitDataCompositeDef Raven Text MercChatHaggle Lines ChatMessage voice:Raven]] "This means I must charge you a higher fee in case you turn out to be incompetent. "),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionRehire', {}),
			},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(803743956491, --[[ModItemUnitDataCompositeDef Raven Text MercChatMitigation Lines ChatMessage voice:Raven]] "If my husband will work for you, so will I."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(669225827490, --[[ModItemUnitDataCompositeDef Raven Text MercChatMitigation Lines ChatMessage voice:Raven]] "Let's do it."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Raider",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(543496909776, --[[ModItemUnitDataCompositeDef Raven Text MercChatMitigation Lines ChatMessage voice:Raven]] "Честно говоря, мне это все не очень нравится, но в команде - доктор  Хьюстон, Паук. Она - то, что надо! Так что я согласна."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Spider",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(222829981265, --[[ModItemUnitDataCompositeDef Raven Text MercChatBranch Lines ChatMessage voice:Raven]] "I feel bad about leaving Ron alone at home. Honestly, he mopes around the house more than the dogs when I'm gone."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(239121158866, --[[ModItemUnitDataCompositeDef Raven Text MercChatBranch Lines ChatMessage voice:Raven]] "Why don't you give him a call? He's pretty good - not as good as me, but then again few are."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Raider",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(646426109683, --[[ModItemUnitDataCompositeDef Raven Text Offline ChatMessage voice:Raven]] "Hi, this is Charlene Higgens. I'm out and about. How about we postpone this for another time?"),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(190805596706, --[[ModItemUnitDataCompositeDef Raven Text GreetingAndOffer ChatMessage voice:Raven]] "Hi, this is Charlene Higgens. I understand you have a mission I could be interested in."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(262640626809, --[[ModItemUnitDataCompositeDef Raven Text ConversationRestart ChatMessage voice:Raven]] "OK. Let's try this again."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(885107977144, --[[ModItemUnitDataCompositeDef Raven Text IdleLine ChatMessage voice:Raven]] "I'm good at night ops stuff and shooting stuff and being a badass in general. Just something to keep in mind while you're pondering."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(523902854972, --[[ModItemUnitDataCompositeDef Raven Text PartingWords ChatMessage voice:Raven]] "Great. Can't wait to start. Just need to find a dog sitter."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(473763278790, --[[ModItemUnitDataCompositeDef Raven Text RehireIntro ChatMessage voice:Raven]] "My contract's about up for renewal. I'm interested, if you are."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(512849572301, --[[ModItemUnitDataCompositeDef Raven Text RehireOutro ChatMessage voice:Raven]] "Good. I like this arrangement."),
		}),
	},
	StartingSalary = 1850,
	SalaryIncrease = 230,
	SalaryLv1 = 1200,
	SalaryMaxLv = 7500,
	LegacyNotes = '"Former L.A.P.D. SWAT team sharpshooter, Sgt. Charlene Higgens left the force for A.I.M. so she could work alongside her husband, Ron Higgens. They prefer to take assignments together since operate with the precision of a solitary unit. If you listen to them though, you\'d never realize they\'re married; they rarely acknowledge their personal lives during work. Raven is qualified in night operations." - A.I.M. dossier\n\nAdditional info:\n\nA female version of her husband. They belong together. Also good friends with Donna who is their unofficial go to doctor for treating injuries.\nLess obsessive about being in charge.\nA consummate professional that gets on well with everyone.\nLighter, more prone to humor\nMore open and outgoing.',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 85,
	Likes = {
		"Raider",
		"Jazz_Spider",
	},
	StartingPerks = {
		"AutoWeapons",
		"Spotter",
		"Deadeye",
		"NightOps",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raven_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
	},
	Equipment = {
		"Raven",
	},
	Tier = "Veteran",
	Specialization = "Autoriflemen",
	pollyvoice = "Emma",
	gender = "Female",
	VoiceResponseId = "Raven",
}

