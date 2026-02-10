UndefineClass('Jazz_Buzz')
DefineClass.Jazz_Buzz = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 71,
	Agility = 85,
	Dexterity = 64,
	Strength = 68,
	Wisdom = 90,
	Leadership = 13,
	Marksmanship = 96,
	Mechanical = 5,
	Explosives = 19,
	Medical = 15,
	Portrait = "Mod/Dv3mFVN/Images/buzzsmall 3.png",
	BigPortrait = "Mod/Dv3mFVN/Images/buzzbig 2.png",
	IsMercenary = true,
	Name = T(753330501613, --[[ModItemUnitDataCompositeDef Jazz_Buzz Name]] "Луиза Гарно «Тоска»"),
	Nick = T(980611805568, --[[ModItemUnitDataCompositeDef Jazz_Buzz Nick]] "Тоска"),
	AllCapsNick = T(971951422708, --[[ModItemUnitDataCompositeDef Jazz_Buzz AllCapsNick]] "ТОСКА"),
	Bio = T(499440250102, --[[ModItemUnitDataCompositeDef Jazz_Buzz Bio]] 'После скандального расставания с Робертсом "Рысью", о котором, наверное, слышали даже марсиане, Луиза ожесточилась и возненавидела, кажется, вообще всех людей. Рысь - за то что он есть, себя - за то что была к нему привязана, мужчин - за то, что Рысь - мужчина, женщин - за то, что они рожают мужчин. И быть бы беде, если б один незадачливый наниматель не пригласил их обоих в команду, нанимая AIM для освобождения заложников на нефтяной платформе, захваченной радикальным крылом зоозащитной организации. Робертс поимел ... неосторожность получить тяжелое ранение в ходе операции и это привело Тоску в состояние неописуемой ярости. Буквально - описать то, что происходило на платформе, не смог никто. Зоозащитникам понадобилось новое боевое крыло, нанимателю  - новая нефтяная платформа, а заложники были найдены в состоянии крайнего истощения через неделю на самодельном плоту в Атлантическом океане. Так или иначе, Луиза готова к выполнению заданий как никто другой, и горе тому, кто попробует ее разозлить.\n'),
	Nationality = "USA",
	Title = T(335290711519, --[[ModItemUnitDataCompositeDef Jazz_Buzz Title]] "Посмотри ей в глаза"),
	Email = T(515826095239, --[[ModItemUnitDataCompositeDef Jazz_Buzz Email]] "LouisaGarneau@aim.com"),
	snype_nick = T(229551591966, --[[ModItemUnitDataCompositeDef Jazz_Buzz snype_nick]] "lonelyandsad"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(444688786443, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "Я в этом участвовать не буду, да и тебе это на самом деле не нужно. Иначе Рысь - покойник."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Lynx",
				}),
			},
			'chanceToRoll', 30,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(786568878374, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "Ага, конечно. Как будто ты имеешь хоть малейшее представление о том, что делаешь! Иди, проветрись!"),
				}),
			},
			'chanceToRoll', 10,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(759861895798, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "Не представляю, как. Тебе наверняка придется продать свой труп на опыты, чтобы мне заплатить, а я столько ждать не собираюсь."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 20,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(247207957208, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatRefusal Lines ChatMessage voice:Jazz_Buzz]] "Ну да, я тут сижу и жду, когда ты появишься. У меня другие планы."),
				}),
			},
			'chanceToRoll', 20,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(292221319285, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "Подумай еще разок. Меня может вырвать от одной мысли, что придется опять общаться с Рысью. Я просто говорю, что меня... вырвет, именно так."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(522569897458, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "Я пойду... Только держи от меня подальше этого сукиного сына Рысь и всех остальных мужиков тоже."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Lynx",
				}),
			},
			'chanceToRoll', 30,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(554240280022, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "Подумай еще разок. Меня может вырвать от одной мысли, что придется опять общаться с Рысью. Я просто говорю, что меня... вырвет, именно так."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(983520435571, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatHaggle Lines ChatMessage voice:Jazz_Buzz]] "Что я могу сказать? Я имею полное право потребовать большего."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Lynx",
				}),
			},
			'chanceToRoll', 30,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(428218963534, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatMitigation Lines ChatMessage voice:Jazz_Buzz]] "Я бы осталась тут с Рысью еще ненадолго."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Lynx",
				}),
			},
			'chanceToRoll', 30,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(995807055541, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text MercChatBranch Lines ChatMessage voice:Jazz_Buzz]] "Если тебе нужен настоящий профи, ну, или, по крайней мере, настоящий красавчик, обратись к Рыси."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Jazz_Lynx",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(708253621531, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text Offline ChatMessage voice:Jazz_Buzz]] "Тоски Гарно сейчас нет. Скажите, что нужно. Учтите, что все лица мужского пола успеют сто раз умереть, прежде чем я им перезвоню."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(965333256165, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text GreetingAndOffer ChatMessage voice:Jazz_Buzz]] "Так к какому решению ты собираешься придти?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(500434425609, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text ConversationRestart ChatMessage voice:Jazz_Buzz]] "Слушай внимательно. Я сказала..."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(500086555472, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text IdleLine ChatMessage voice:Jazz_Buzz]] "Ты заметил, как я стреляю? Я умею обращаться с любым оружием!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(517772094687, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text PartingWords ChatMessage voice:Jazz_Buzz]] "Ладно... я так думаю."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(150639393097, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text RehireIntro ChatMessage voice:Jazz_Buzz]] "Ты хочешь, чтобы я еще осталась, или как?"),
		}),
		PlaceObj('ChatMessage', {
			'Text', T(300114486496, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text RehireIntro ChatMessage voice:Jazz_Buzz]] "Просто, чтобы ты знал - контракт почти закончен."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(713865724075, --[[ModItemUnitDataCompositeDef Jazz_Buzz Text RehireOutro ChatMessage voice:Jazz_Buzz]] "Окей, я остаюсь."),
		}),
	},
	MedicalDeposit = "large",
	Haggling = "high",
	StartingSalary = 1950,
	SalaryIncrease = 300,
	SalaryLv1 = 700,
	SalaryMaxLv = 4300,
	LegacyNotes = "",
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Jazz_Lynx",
	},
	StartingPerks = {
		"Jazz_Perk_Buzz",
		"HeavyWeaponsTraining",
		"AutoWeapons",
		"Psycho",
		"StressManagement",
		"ShockAndAwe",
		"LastWarning",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Buzz",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Buzz",
	},
	Tier = "Elite",
	Specialization = "Autoriflemen",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Jazz_Buzz",
}

