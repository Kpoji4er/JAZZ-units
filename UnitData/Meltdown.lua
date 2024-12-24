UndefineClass('Meltdown')
DefineClass.Meltdown = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 78,
	Agility = 77,
	Dexterity = 84,
	Strength = 76,
	Wisdom = 80,
	Leadership = 24,
	Marksmanship = 83,
	Mechanical = 22,
	Explosives = 40,
	Medical = 3,
	Portrait = "UI/MercsPortraits/Meltdown",
	BigPortrait = "UI/Mercs/Meltdown",
	IsMercenary = true,
	Name = T(627005316845, --[[ModItemUnitDataCompositeDef Meltdown Name]] "Норма Джессоп «Лава»"),
	Nick = T(801416212893, --[[ModItemUnitDataCompositeDef Meltdown Nick]] "Лава"),
	AllCapsNick = T(518123328833, --[[ModItemUnitDataCompositeDef Meltdown AllCapsNick]] "ЛАВА"),
	Bio = T(973893751536, --[[ModItemUnitDataCompositeDef Meltdown Bio]] "Норма Джессоп - женщина, шутки с которой плохи. С одинаковой готовностью поливая противников матом и свинцом, Лава обожает, когда от врага остаются лишь брызги крови и висящие по кустам кишки. Хотя она в совершенстве владеет стрельбой из пистолетов по-македонски, больше всего ей по нраву тяжёлые пушки. Как она сама любит выражаться, «Не было случайных пострадавших - деньги на ветер». В местах, недавно посещённых Нормой, страховые компании отказывают пострадавшим в выплатах."),
	Nationality = "USA",
	Title = T(771770749853, --[[ModItemUnitDataCompositeDef Meltdown Title]] "Не будите во мне зверя"),
	Email = T(337960420959, --[[ModItemUnitDataCompositeDef Meltdown Email]] "lava69@aim.com"),
	snype_nick = T(672285437236, --[[ModItemUnitDataCompositeDef Meltdown snype_nick]] "lava69"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(585931569314, --[[ModItemUnitDataCompositeDef Meltdown Text MercChatRefusal Lines ChatMessage voice:Meltdown]] "Да блин! Чёртовы псы опять грызутся... Нет, стоп... Твою ж! Всё, я пошла. Соседского ушлёпка опять в больницу везти надо. НЕ ТРОЖЬТЕ МОИХ СОБАК! Для вас, дебилов, табличку повесила."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(461192928382, --[[ModItemUnitDataCompositeDef Meltdown Text MercChatRefusal Lines ChatMessage voice:Meltdown]] "Закатай губу, мальчик! У тебя репутация гробовщика. Если мне жить надоест, я лучше со своим бывшим съедусь!"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(569509023059, --[[ModItemUnitDataCompositeDef Meltdown Text MercChatHaggle Lines ChatMessage voice:Meltdown]] "Слышь, ты? Я думала, мне хоть пострелять в кого дадут. А то у меня сегодня из движухи - только то, что я на толчке полдня просидела. Я сюда не штаны протирать и глазки строить приехала. Гони ещё бабла, или я отсюда сваливаю."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionCombatParticipate', {}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(108651033026, --[[ModItemUnitDataCompositeDef Meltdown Text MercChatMitigation Lines ChatMessage voice:Meltdown]] "Я уже хотела послать тебя в жопу, но увидела, на какой куче бабла ты сидишь. Это я люблю. Надеюсь, это значит, что ты прикупишь мне новых цацек. Уломал, короче."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {
					PresetValue = ">=50",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(853843382687, --[[ModItemUnitDataCompositeDef Meltdown Text Offline ChatMessage voice:Meltdown]] "Это Лава. Кто-то хочет предложить мне работу? Тогда пусть оставит сообщение. Или катится к чёрту."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(359198286308, --[[ModItemUnitDataCompositeDef Meltdown Text GreetingAndOffer ChatMessage voice:Meltdown]] "Лава слушает. Это насчёт работы?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(805237372457, --[[ModItemUnitDataCompositeDef Meltdown Text ConversationRestart ChatMessage voice:Meltdown]] "Опять ты? Какого хрена тебе надо?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(533736630214, --[[ModItemUnitDataCompositeDef Meltdown Text IdleLine ChatMessage voice:Meltdown]] "Эй, ты там вообще? На порносайты, что ли, отвлекся? Смотри, не вздумай пробовать ту увеличивающую хрень на арахисовом масле, как мой бывший."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(221657714144, --[[ModItemUnitDataCompositeDef Meltdown Text PartingWords ChatMessage voice:Meltdown]] "Хорошо. Замётано. Готовься: надвигается ураган Норма."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(933208110208, --[[ModItemUnitDataCompositeDef Meltdown Text RehireIntro ChatMessage voice:Meltdown]] "Слышь, босс. Контрактик-то наш того и гляди протухнет. Тебе надо, чтоб я и дальше убивала врагов, или где?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(450120703239, --[[ModItemUnitDataCompositeDef Meltdown Text RehireOutro ChatMessage voice:Meltdown]] "Сойдёт. Потусуюсь тут ещё. С тебя - цели, с меня - трупы."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 1050,
	SalaryLv1 = 200,
	SalaryMaxLv = 3100,
	LegacyNotes = '"Don\'t mess with Meltdown. She may be smiling in her file photo, but that smile is certainly deceptive. This mercenary is legendary; an enemy once died at her feet from fear before Meltdown had even raised her weapon. As for her taste in weapons, the bigger, the better. In fact, Meltdown has a tendency for overkill in virtually every aspect of her life. Jessop is remarkably ambidextrous; she can easily fire two weapons simultaneously. " A.I.M Dossier\n\nAdditional info:\n\nA foul-mouthed, kickass woman who could clear a bar in no time.\nYou\'d shake in fear just looking at her.\nLoves violence and killing.\nGenerally misanthropic, and has especially little time for cowards. Admires Rothman for his ability to instill discipline, and Rothman appreciates her no-nonsense attitude.',
	StartingLevel = 3,
	MaxHitPoints = 78,
	StartingPerks = {
		"HeavyWeaponsTraining",
		"Ambidextrous",
		"Psycho",
		"BeefedUp",
		"TakeAim",
		"VengefulTemperament",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Meltdown",
		}),
	},
	Equipment = {
		"Meltdown",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	pollyvoice = "Kendra",
	gender = "Female",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Meltdown",
}

