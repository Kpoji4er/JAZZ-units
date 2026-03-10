UndefineClass('MD')
DefineClass.MD = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 72,
	Agility = 62,
	Dexterity = 78,
	Strength = 76,
	Wisdom = 94,
	Will = 68,
	Leadership = 4,
	Marksmanship = 68,
	Mechanical = 7,
	Explosives = 0,
	Medical = 81,
	Portrait = "UI/MercsPortraits/MD",
	BigPortrait = "UI/Mercs/MD",
	IsMercenary = true,
	Name = T(686612112398, --[[ModItemUnitDataCompositeDef MD Name]] "Др. Майкл Доусон «ЭмДи»"),
	Nick = T(484352976943, --[[ModItemUnitDataCompositeDef MD Nick]] "ЭмДи"),
	AllCapsNick = T(640628882023, --[[ModItemUnitDataCompositeDef MD AllCapsNick]] "ЭМДИ"),
	Bio = T(186460451002, --[[ModItemUnitDataCompositeDef MD Bio]] "Закончив мединститут, Майкл отказался от перспективной карьеры врача и подался в наёмники. Сам он на этот счёт отвечает уклончиво, но многие подозревают, что Доусон вступал в A.I.M. в полной уверенности, что имеет дело с отделением «Врачей без границ». Как бы то ни было, впервые нюхнув пороху в Арулько, ЭмДи нашёл, что солдатская жизнь ему по вкусу. Ловкость, с которой он обращается со скальпелем, пригождается ему и в бою, и в импровизированной операционной, а неистребимый оптимизм побуждает других учиться на его примере."),
	Nationality = "Canada",
	Title = T(892027636726, --[[ModItemUnitDataCompositeDef MD Title]] "Синдром самозванца и неувядающий оптимизм"),
	Email = T(853992834316, --[[ModItemUnitDataCompositeDef MD Email]] "md@aim.com"),
	snype_nick = T(894034021981, --[[ModItemUnitDataCompositeDef MD snype_nick]] "md"),
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(589316307933, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "М-м-м... У вас в команде Анаболик. Нет, я против него лично ничего не имею, но... он до меня вечно докапывается. Говорит, что я «слабак и баба»."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(377316958854, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Нет, он в чём-то, может быть, и прав. Но мне потребуются средства на посещение психолога."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Steroid",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(255971337240, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Всё бы ничего, но мы с Лавой не слишком ладим. Она вечно шутит, что я напоминаю ей какашку, которую как-то сожрал один из её псов."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(706928440131, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Ну, то есть, может, так оно и есть. Я же её не видел. Вдруг между нами и впрямь есть некоторое сходство... Но это всё несколько расшатывает моё психологическое здоровье. Будет здорово, если вы оплатите мне психологическую реабилитацию."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Meltdown",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(133732872963, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Ой. У вас там будет Гвоздь, да? Он как-то наехал на меня своим мотоциклом. Потом развернулся и ещё раз наехал. А потом ещё накричал, что я испачкал ему колёса кровью."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(812957826017, --[[ModItemUnitDataCompositeDef MD Text MercChatHaggle Lines ChatMessage voice:MD]] "Ну, то есть я, конечно, тоже виноват, что не успел отпрыгнуть. В общем, он так любит мне об этом напоминать, что мне потребуются дополнительные деньги, чтобы восстановиться от ПТСР."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Nails",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(232520855092, --[[ModItemUnitDataCompositeDef MD Text Offline ChatMessage voice:MD]] "Привет! Это доктор Майкл Доусон, и я не на месте. Если вы напишете мне ещё раз... Хотя кого я обманываю? Никто мне не пишет ещё раз. Все идут и нанимают настоящих, дорогих профессионалов вроде Сиднея или Доктора Кью."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(844200702211, --[[ModItemUnitDataCompositeDef MD Text GreetingAndOffer ChatMessage voice:MD]] "Привет! Это точно не розыгрыш? А то в прошлый раз кто-то из коллег позвонил мне, представился чужим именем и заманил на две недели в Камбоджу. Так вы точно настоящий наниматель?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(156327251175, --[[ModItemUnitDataCompositeDef MD Text ConversationRestart ChatMessage voice:MD]] "Ох, слава богу! Я уже думал, что вам не подхожу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(514838144823, --[[ModItemUnitDataCompositeDef MD Text IdleLine ChatMessage voice:MD]] "М-м-м... вы там, надеюсь, не передумали? Ведь не передумали же?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(204072676737, --[[ModItemUnitDataCompositeDef MD Text PartingWords ChatMessage voice:MD]] "Ух ты. Я уже и не надеялся. Вы... вы уверены, что хотите меня нанять?"),
		}),
		PlaceObj('ChatMessage', {
			'Text', T(248975416845, --[[ModItemUnitDataCompositeDef MD Text PartingWords ChatMessage voice:MD]] "Ну то есть да, конечно же, вы уверены. Как глупо с моей стороны. Простите. Так куда мы отправляемся? В Африку? Пойду упакую шорты."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(141535236983, --[[ModItemUnitDataCompositeDef MD Text RehireIntro ChatMessage voice:MD]] "М-м-м... Даже и не знаю, как сказать, но... мой м-м-м... контракт. Он, знаете ли... скоро заканчивается. Может быть, я мог бы продолжить работать на вас?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(169241431651, --[[ModItemUnitDataCompositeDef MD Text RehireOutro ChatMessage voice:MD]] "Это... ух ты. Спасибо вам! Ну, тогда я продолжу м-м-м... делать то, что делал всё это время?"),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 450,
	SalaryIncrease = 270,
	SalaryLv1 = 525,
	SalaryMaxLv = 3500,
	LegacyNotes = '"Fresh out of med school, Doctor Dawson eagerly awaits his first assignment. Although his innocent and youthful appearance has prevented others from taking him seriously but rest assured, once he saves a couple of lives, he\'ll be shown the kind of respect he deserves. For a man who just completed his internship, he can certainly wield a mean scalpel."\n\nAdditional info:\n\nYoung, inexperienced, a little chattier than most of the others.\nUses some scientific terminology.\nEnthusiastic and somewhat brash.\nSurprises himself on occasion as he feels his way through combat.\nMD has an excellent wisdom score, so you can easily train up his marksmanship',
	MaxHitPoints = 72,
	LearnToDislike = {
		"Flay",
	},
	StartingPerks = {
		"Teacher",
		"Optimist",
		"Zoophobic",
		"BuildingConfidence",
		"MartialArts",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "MD",
			'Weight', 50,
			'GameStates', set({
	CursedForest = false,
	Jungle = false,
	Marshlands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "MD_Savana",
			'Weight', 50,
			'GameStates', set({
	FireStorm = true,
	Heat = false,
}),
		}),
	},
	Equipment = {
		"MD",
	},
	Specialization = "Doctor",
	gender = "Male",
	VoiceResponseId = "MD",
}

