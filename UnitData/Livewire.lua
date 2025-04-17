UndefineClass('Livewire')
DefineClass.Livewire = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 55,
	Agility = 74,
	Dexterity = 80,
	Strength = 44,
	Wisdom = 94,
	Leadership = 24,
	Marksmanship = 62,
	Mechanical = 85,
	Explosives = 22,
	Medical = 50,
	Portrait = "UI/MercsPortraits/Livewire",
	BigPortrait = "UI/Mercs/Livewire",
	IsMercenary = true,
	Name = T(644364224049, --[[ModItemUnitDataCompositeDef Livewire Name]] "Лейли Идриси «Фаза»"),
	Nick = T(242623587127, --[[ModItemUnitDataCompositeDef Livewire Nick]] "Фаза"),
	AllCapsNick = T(218487408008, --[[ModItemUnitDataCompositeDef Livewire AllCapsNick]] "ФАЗА"),
	Bio = T(937077578267, --[[ModItemUnitDataCompositeDef Livewire Bio]] "Лейли родилась в подконтрольной Индии части Кашмира в семье беженцев. Детство её выдалось непростым: бесспорно талантливая ученица (девочка получила именную стипендию от Делийского университета), она вечно вращалась в неподходящей компании. Учась в университете, она параллельно увлекалась вскрытием замков; изучая криптографию, по ночам взламывала закрытые базы данных. С рождения одинаково хорошо владея и правой, и левой руками, «Фаза» вечно занималась сразу несколькими делами одновременно. В конце концов её криминальные шалости привлекли к себе внимание, и Лейли пришлось спешно покинуть альма-матер. Что именно там произошло, она не говорит, а мы в A.I.M. уважаем частную жизнь своих бойцов."),
	Nationality = "Pakistan",
	Title = T(452434978236, --[[ModItemUnitDataCompositeDef Livewire Title]] "Добрая, пушистая и ни разу не хакерша"),
	Email = T(885737105013, --[[ModItemUnitDataCompositeDef Livewire Email]] "fantastic_faza@aim.com"),
	snype_nick = T(893845971026, --[[ModItemUnitDataCompositeDef Livewire snype_nick]] "fantastic_faza"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(891302754132, --[[ModItemUnitDataCompositeDef Livewire Text MercChatRefusal Lines ChatMessage voice:Livewire]] "О-о-о нет. Я вижу у тебя в команде копа, а я не могу гарантировать, что не нарушила недавно никаких международных законов. Сразу несколько. Так что или ты отложишь кругленькую сумму на внесудебные расходы, или я вынуждена буду ответить отказом."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raider",
						}),
					},
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(853961975144, --[[ModItemUnitDataCompositeDef Livewire Text MercChatHaggle Lines ChatMessage voice:Livewire]] "Я бы с радостью, но отец говорит, если я не найду себе достойную высокооплачиваемую работу, я подведу всю нашу семью. Так что мне нужно больше денег."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(907585450261, --[[ModItemUnitDataCompositeDef Livewire Text MercChatHaggle Lines ChatMessage voice:Livewire]] "Слыхал о финансовых пирамидах? Я хочу организовать такую, но мне нужен стартовый капитал. Так что если хочешь, чтобы я на тебя работала, заплати мне больше."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(796072420069, --[[ModItemUnitDataCompositeDef Livewire Text MercChatMitigation Lines ChatMessage voice:Livewire]] "Что ж, не всё в твоём предложении мне нравится, но, глядя на состояние твоего банковского счёта, трудно отказаться."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {
					PresetValue = ">=50",
				}),
			},
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(995636499514, --[[ModItemUnitDataCompositeDef Livewire Text MercChatBranch Lines ChatMessage voice:Livewire]] "Мне нужно потренироваться выглядеть законопослушно. Работать в одной команде с копом - не сахар. Кстати - можно я возьму на задание сладостей?"),
				}),
			},
			'Conditions', {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raider",
						}),
					},
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(590321913792, --[[ModItemUnitDataCompositeDef Livewire Text Offline ChatMessage voice:Livewire]] "Это Лейли. Я сейчас не на месте, но с радостью поговорю с вами позже. Если только речь не о расследовании факта взлома баз данных ряда финансовых корпораций."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(925998306991, --[[ModItemUnitDataCompositeDef Livewire Text GreetingAndOffer ChatMessage voice:Livewire]] "Привет! Тебе нужен специалист?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(401939093914, --[[ModItemUnitDataCompositeDef Livewire Text ConversationRestart ChatMessage voice:Livewire]] "Так вот, мы отвлеклись. Со мной это тоже бывает. Но редко. Вот как сейчас, например."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(722670829257, --[[ModItemUnitDataCompositeDef Livewire Text IdleLine ChatMessage voice:Livewire]] "У тебя проблемы со связью? Я могла бы помочь тебе настроить роутер, но моё время денег стоит."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(567592147488, --[[ModItemUnitDataCompositeDef Livewire Text PartingWords ChatMessage voice:Livewire]] "Потрясно. Когда начинаем? Куда летим? Конфеты там будут, или надо свои везти?"),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(112715570591, --[[ModItemUnitDataCompositeDef Livewire Text RehireIntro ChatMessage voice:Livewire]] "Привет! Знаешь, местные сладости оказались не так уж и плохи. Ах, да: мой контракт пора продлевать. Ну так как?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(114700880214, --[[ModItemUnitDataCompositeDef Livewire Text RehireOutro ChatMessage voice:Livewire]] "Очень, очень рада продолжить наше сотрудничество."),
		}),
	},
	MedicalDeposit = "large",
	Haggling = "high",
	StartingSalary = 550,
	SalaryIncrease = 270,
	SalaryLv1 = 600,
	SalaryMaxLv = 4200,
	MaxHitPoints = 55,
	LearnToLike = {
		"Len",
	},
	Dislikes = {
		"Raider",
		"Raven",
	},
	LearnToDislike = {
		"Len",
	},
	StartingPerks = {
		"Scoundrel",
		"MrFixit",
		"Optimist",
		"InnerInfo_JAZZ",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Livewire",
		}),
	},
	Equipment = {
		"Livewire",
	},
	Specialization = "Mechanic",
	pollyvoice = "Kendra",
	gender = "Female",
}

