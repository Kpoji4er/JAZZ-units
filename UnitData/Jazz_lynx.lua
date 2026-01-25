UndefineClass('Jazz_Lynx')
DefineClass.Jazz_Lynx = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 81,
	Agility = 79,
	Dexterity = 86,
	Strength = 77,
	Wisdom = 82,
	Will = 76,
	Leadership = 39,
	Marksmanship = 99,
	Mechanical = 29,
	Explosives = 50,
	Medical = 34,
	Portrait = "Mod/Dv3mFVN/Images/lynxsmall.png",
	BigPortrait = "Mod/Dv3mFVN/Images/lynxbig.png",
	IsMercenary = true,
	Name = T(253932060437, --[[ModItemUnitDataCompositeDef Jazz_Lynx Name]] 'Руди "Рысь" Робертс'),
	Nick = T(590235542352, --[[ModItemUnitDataCompositeDef Jazz_Lynx Nick]] "Рысь"),
	AllCapsNick = T(962640753793, --[[ModItemUnitDataCompositeDef Jazz_Lynx AllCapsNick]] "РЫСЬ"),
	Bio = T(789208109513, --[[ModItemUnitDataCompositeDef Jazz_Lynx Bio]] '"У всех проблем одно начало - сидела женщина, скучала". Жизнь Руди Робертса до его работы в Организации была лишена каких-то потрясений и шла как по накатанной. Охота на исчезающие виды животных, немногочисленные заказы на исчезновение людей - рутина. Ну, на "Длинную милю" раз в год съездит, но и там уже почти не осталось вызовов. И так было, пока после задания на Метавире, он не закрутил роман с новобранцем организации Луизой Гарно. (Презрев древнее правило - не ешь, там где гадишь). Сюрпризом оказалось наличие у Луизы маниакально-депрессивного расстройства личности в тяжелой форме, так-то, требующего принудительного лечения в соответствующем учреждении. А лечения Луиза избегала благодаря связям своего влиятельного отца-генерала. Да и будем честны, кто в здравом уме сможет принудить Тоску к чему то, чего она сама не хочет? Так что теперь жизнь Рыси полна развлечений, в первую очередь связанных с поиском уголка Земли, в котором Тоска не сможет до него добраться.'),
	Nationality = "USA",
	Title = T(741570005839, --[[ModItemUnitDataCompositeDef Jazz_Lynx Title]] "Известен не за красивые глаза"),
	Email = T(815740499368, --[[ModItemUnitDataCompositeDef Jazz_Lynx Email]] "Lynx@aim.com"),
	snype_nick = T(494150854420, --[[ModItemUnitDataCompositeDef Jazz_Lynx snype_nick]] "Iseeyou"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(815923858149, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Слушай, я люблю рисковать - в разумных пределах. Подписать контракт с тобой это все равно, что подписать себе смертный приговор."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
			'chanceToRoll', 25,
			'Type', "rehire",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(178898076800, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Извини, эту неделю я занят в Обществе содействия пожарным. Знаешь, обычно я могу сам планировать свое расписание, но только если предупредить меня заблаговременно, угу?"),
				}),
			},
			'chanceToRoll', 5,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(283654937572, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Э-э-э... Знаешь, мы ведь как договаривались - деньги на бочку, правда? Что-то я их здесь не вижу!"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 30,
			'Type', "rehire",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(754225917996, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Нет, не пойдет. Мне такое ни к чему - ни уму, ни сердцу, ясно? Извини."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(461382179970, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Я скоро возвращаюсь домой - просто, чтобы ты об этом знал. "),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
			'chanceToRoll', 15,
			'Type', "rehire",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(893692526058, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatRefusal Lines ChatMessage voice:Jazz_Lynx]] "Нет. Работать с Тоской я не буду. Стоит отвернуться, и она всадит тебе нож в спину. Уж можешь мне поверить. От нее ничего, кроме неприятностей. Только и знает, что поливать меня грязью."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Buzz",
				}),
			},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(840672720529, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatHaggle Lines ChatMessage voice:Jazz_Lynx]] "Мне придется слегка поднять расценки. Я стал опытнее, понимаешь? Все равно это могло бы стоить и больше - просто не хочу тебя пугать."),
				}),
			},
			'chanceToRoll', 20,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(654982270798, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatMitigation Lines ChatMessage voice:Jazz_Lynx]] 'Ну что ж, это никак не назовешь "идеальными условиями", но, раз это дает шанс работать с Айсом - я иду с вами.'),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ice",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(624911492248, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text MercChatBranch Lines ChatMessage voice:Jazz_Lynx]] "Я бы предложил тебе присмотреться к Айсу Вильямсу. Он - парень, что надо."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ice",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(624356366496, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text Offline ChatMessage voice:Jazz_Lynx]] "Это Руди Робертс. Меня прозвали Рысь. Раз Вы позвонили - возможно, вы обо мне слышали. В любом случае, просто оставьте сообщение, и я с вами свяжусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(165148802231, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text GreetingAndOffer ChatMessage voice:Jazz_Lynx]] "Рысь! Что случилось?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(879205649936, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text ConversationRestart ChatMessage voice:Jazz_Lynx]] "Слушай, я ведь от времени моложе не делаюсь!"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(644672895006, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text IdleLine ChatMessage voice:Jazz_Lynx]] "Я не люблю обращаться за рекомендациями, но послушай - спроси обо мне любого из наших. Я очень надежен!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(698749684781, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text PartingWords ChatMessage voice:Jazz_Lynx]] "Окей, я в твоем распоряжении."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(326903240461, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text RehireIntro ChatMessage voice:Jazz_Lynx]] "Слушай, это было замечательно, но мой контракт кончается. Ты собираешься его продлевать? Я буду пока свободен."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(801109641915, --[[ModItemUnitDataCompositeDef Jazz_Lynx Text RehireOutro ChatMessage voice:Jazz_Lynx]] "Окей, я пока остаюсь."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 2650,
	SalaryIncrease = 200,
	SalaryLv1 = 1400,
	SalaryMaxLv = 6200,
	LegacyNotes = "",
	StartingLevel = 4,
	MaxHitPoints = 94,
	Likes = {
		"Ice",
	},
	Dislikes = {
		"Jazz_Buzz",
	},
	StartingPerks = {
		"AutoWeapons",
		"NightOps",
		"MrFixit",
		"Jazz_Perk_Lynx",
		"Pessimist",
		"Deadeye",
		"Killzone",
		"Counterfire",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Lynx",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Lynx",
	},
	Tier = "Elite",
	Specialization = "Marksmen",
	pollyvoice = "Russell",
	gender = "Male",
	VoiceResponseId = "Jazz_Lynx",
}

