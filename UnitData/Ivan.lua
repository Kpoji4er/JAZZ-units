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
	Name = T(748830427164, --[[ModItemUnitDataCompositeDef Ivan Name]] "Иван Долвич"),
	Nick = T(493354712045, --[[ModItemUnitDataCompositeDef Ivan Nick]] "Иван"),
	AllCapsNick = T(857448797342, --[[ModItemUnitDataCompositeDef Ivan AllCapsNick]] "ИВАН"),
	Bio = T(631392006133, --[[ModItemUnitDataCompositeDef Ivan Bio]] "После развала Советского Союза Иван, в прошлом майор Советской Армии, решил попытать удачи на рынке капиталистических стран. Хотя разговорный английский по-прежнему дается ему с трудом, время, проведенное в A.I.M., лишь отточило его и без того выдающиеся навыки бойца. Иван настолько прославился своими подвигами, что в Голливуде даже решили снять о нем фильм. Однако проект пришлось отменить, поскольку Иван настаивал, что главную роль будет играть он сам, а все перестрелки в фильме должны вестись с применением боевого оружия."),
	Nationality = "Russia",
	Title = T(659068379440, --[[ModItemUnitDataCompositeDef Ivan Title]] "Русский медведь"),
	Email = T(435235065061, --[[ModItemUnitDataCompositeDef Ivan Email]] "иван@aim.com"),
	snype_nick = T(306981357442, --[[ModItemUnitDataCompositeDef Ivan snype_nick]] "иван"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(801318908726, --[[ModItemUnitDataCompositeDef Ivan Text MercChatRefusal Lines ChatMessage voice:Ivan]] "Игорь работал на кретинов, вроде тебя, и погиб. Шваль ты, а не командир. Так что иди-ка нахер."),
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
					'Text', T(385900044934, --[[ModItemUnitDataCompositeDef Ivan Text MercChatRefusal Lines ChatMessage voice:Ivan]] "Отставить! У тебя с деньгами проблемы, голубчик. А я устал от дураков без денег, за которыми потом мне подтирать приходится."),
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
					'Text', T(405562095128, --[[ModItemUnitDataCompositeDef Ivan Text MercChatMitigation Lines ChatMessage voice:Ivan]] "Все это плохо пахнет, но я соглашусь. За Игорьком глаз да глаз нужен, пригляжу за ним.  Сколько раз еще из-за племяша придется с идиотами работать, а? "),
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
					'Text', T(166369730019, --[[ModItemUnitDataCompositeDef Ivan Text MercChatBranch Lines ChatMessage voice:Ivan]] "Племяшку моего возьми тоже, Игорька. Он, конечно, говна бесполезного кусок, но так хоть от бутылки оторвется. Как к сиське мамкиной прилип."),
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
					'Text', T(152187545209, --[[ModItemUnitDataCompositeDef Ivan Text MercChatBranch Lines ChatMessage voice:Ivan]] "Я слышал, Хряп ищет работу. Мы с ним хорошо сработались, возьми его тоже. "),
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
			'Text', T(638867606061, --[[ModItemUnitDataCompositeDef Ivan Text Offline ChatMessage voice:Ivan]] "Это Иван Долвич. Я сейчас на задании, свяжусь с тобой позже. Не названивай мне, как последний осел."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(618731597504, --[[ModItemUnitDataCompositeDef Ivan Text GreetingAndOffer ChatMessage voice:Ivan]] "Это Иван Долвич. Хочешь предложить мне работу? Надеюсь, деньги у тебя есть. Эти ослы думают, что можно просто позвонить в AIM и спросить Ивана."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(163444722395, --[[ModItemUnitDataCompositeDef Ivan Text ConversationRestart ChatMessage voice:Ivan]] "Алё, куда пропал там? Идиоты всякие названивают…"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(191528611145, --[[ModItemUnitDataCompositeDef Ivan Text IdleLine ChatMessage voice:Ivan]] "Ты здесь, идиотина? У меня дела есть вообще-то. Шевели шестеренками!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(370387628463, --[[ModItemUnitDataCompositeDef Ivan Text PartingWords ChatMessage voice:Ivan]] "Хорошо, договорились. Поеду я в этот ваш Гранд-Шьен"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(429789494124, --[[ModItemUnitDataCompositeDef Ivan Text RehireIntro ChatMessage voice:Ivan]] "Мой контракт скоро закончится. Продлевать будем, или глазками хлопать? Останешься без Ивана, ослик!"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(231732374331, --[[ModItemUnitDataCompositeDef Ivan Text RehireOutro ChatMessage voice:Ivan]] "Согласен. Командира бы поумнее, но работаем с тем, что есть."),
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

