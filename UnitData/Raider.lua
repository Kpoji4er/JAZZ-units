UndefineClass('Raider')
DefineClass.Raider = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 80,
	Agility = 71,
	Dexterity = 78,
	Strength = 80,
	Wisdom = 76,
	Will = 90,
	Leadership = 91,
	Marksmanship = 84,
	Mechanical = 12,
	Explosives = 20,
	Medical = 11,
	Portrait = "UI/MercsPortraits/Raider",
	BigPortrait = "UI/Mercs/Raider",
	IsMercenary = true,
	Name = T(931473807439, --[[ModItemUnitDataCompositeDef Raider Name]] "Рон Хиггенс «Рейдер»"),
	Nick = T(730316817764, --[[ModItemUnitDataCompositeDef Raider Nick]] "Рейдер"),
	AllCapsNick = T(627615371784, --[[ModItemUnitDataCompositeDef Raider AllCapsNick]] "РЕЙДЕР"),
	Bio = T(153322253794, --[[ModItemUnitDataCompositeDef Raider Bio]] "Успешно поучаствовав в освобождении Арулько, Рон вместе со своей супругой Шарлен решил взять отпуск, отправившись в круиз по Красному морю. Правда, на их лайнер напали сомалийские пираты - с весьма прискорбным для последних исходом. Используя свои навыки командира спецназа полиции Лос-Анджелеса, Рон быстро обучил нескольких младших помощников повара, как стрелять из пистолета, после чего отразил все попытки взять их судно на абордаж. По природе хладнокровный и спокойный человек, Рон готов к любым заданиям - особенно вместе с супругой."),
	Nationality = "USA",
	Title = T(435483333529, --[[ModItemUnitDataCompositeDef Raider Title]] "Коп до мозга костей"),
	Email = T(699223544963, --[[ModItemUnitDataCompositeDef Raider Email]] "ron_higgens@aim.com"),
	snype_nick = T(477901286663, --[[ModItemUnitDataCompositeDef Raider snype_nick]] "ron_higgens"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(461295796241, --[[ModItemUnitDataCompositeDef Raider Text MercChatRefusal Lines ChatMessage voice:Raider]] "Извини, но ответ: «нет». Ты нанял это ничтожество Хеннеси. А я с ним работать отказываюсь."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Hitman",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(500784963638, --[[ModItemUnitDataCompositeDef Raider Text MercChatRefusal Lines ChatMessage voice:Raider]] "Не могу сейчас говорить. Мне нужно оправиться после... Просто нужно оправиться, ясно?! Оставь меня в покое!"),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(152229577577, --[[ModItemUnitDataCompositeDef Raider Text MercChatRefusal Lines ChatMessage voice:Raider]] "Думаю, мы сможем договориться, но я тебя не знаю. Потребуется дополнительная страховка на случай, если всё пойдёт не по плану."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Dead",
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
			'Type', "rehire",
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(152229577577, --[[ModItemUnitDataCompositeDef Raider Text MercChatRefusal Lines ChatMessage voice:Raider]] "Думаю, мы сможем договориться, но я тебя не знаю. Потребуется дополнительная страховка на случай, если всё пойдёт не по плану."),
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
					'Text', T(607540753610, --[[ModItemUnitDataCompositeDef Raider Text MercChatHaggle Lines ChatMessage voice:Raider]] "Давай начистоту: против тебя я ничего не имею. Но этот Хеннеси меня уже достал. Я, конечно, могу и дальше его терпеть, но за отдельную плату."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Hitman",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(784584870498, --[[ModItemUnitDataCompositeDef Raider Text MercChatMitigation Lines ChatMessage voice:Raider]] "Я на такое обычно не соглашаюсь, но мы с Совой - одна команда. Где она - там и я."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(346994478220, --[[ModItemUnitDataCompositeDef Raider Text MercChatBranch Lines ChatMessage voice:Raider]] "Рад буду снова работать в команде. Кстати, почему бы тебе не нанять и Сову? Ей вредно подолгу сидеть дома одной. Не ровён час, начнёт со скуки на соседей охотиться."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(762507617971, --[[ModItemUnitDataCompositeDef Raider Text MercChatBranch Lines ChatMessage voice:Raider]] "С радостью пойду на дело вместе с Совой. Только имей в виду: это ничтожество Стрелок Хеннеси положил глаз на мою жену. Я это терпеть не намерен. Если хочешь, чтобы в отряде не было разборок, не нанимай эту свинью."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							TargetUnit = "Hitman",
						}),
					},
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(969430937663, --[[ModItemUnitDataCompositeDef Raider Text MercChatBranch Lines ChatMessage voice:Raider]] "С радостью буду в команде, где есть Сова."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Raven",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(293660560234, --[[ModItemUnitDataCompositeDef Raider Text MercChatBranch Lines ChatMessage voice:Raider]] "Спасибо. Неудобно, конечно, будет работать, когда в отряде и Сова, и Стрелок. Надеюсь, мне не придётся слишком часто с ним пересекаться. Но если это ничтожество вздумает к ней подкатывать..."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(663569190804, --[[ModItemUnitDataCompositeDef Raider Text MercChatBranch Lines ChatMessage voice:Raider]] "Скажем так: я с радостью буду в команде, где есть Сова."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Hitman",
						}),
					},
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(327572518181, --[[ModItemUnitDataCompositeDef Raider Text Offline ChatMessage voice:Raider]] "Здорово. Это Рон Хиггенс. Скорее всего, я на охоте. Возможно, не на животных. И почти наверняка вместе с Совой. Я был лучшим среди копов. Теперь солдат удачи. Нужны мои услуги - зовите."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(209759364976, --[[ModItemUnitDataCompositeDef Raider Text GreetingAndOffer ChatMessage voice:Raider]] "Здорово. Это Рон. Ты хочешь предложить мне работу? Тогда я слушаю."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(809685478401, --[[ModItemUnitDataCompositeDef Raider Text ConversationRestart ChatMessage voice:Raider]] "Срочные дела отвлекли? Ладно, о чём мы там?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(817195692149, --[[ModItemUnitDataCompositeDef Raider Text IdleLine ChatMessage voice:Raider]] "Не люблю попусту тратить время. Давай уже."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(787993971305, --[[ModItemUnitDataCompositeDef Raider Text PartingWords ChatMessage voice:Raider]] "Рад снова работать в команде. До встречи."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(925115055169, --[[ModItemUnitDataCompositeDef Raider Text RehireIntro ChatMessage voice:Raider]] "Мой контракт пора продлить."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(826231578564, --[[ModItemUnitDataCompositeDef Raider Text RehireOutro ChatMessage voice:Raider]] "Вот и договорились. А теперь за дело."),
		}),
	},
	StartingSalary = 1800,
	SalaryIncrease = 220,
	SalaryLv1 = 760,
	SalaryMaxLv = 4200,
	LegacyNotes = '"Lt. Ron Higgens is a former commander of the Los Angeles SWAT team. When he fell in love with his ace sniper, Sgt. Charlene Higgens, they managed to keep their relationship a secret up until a year ago. When they decided to marry, the L.A.P.D. refused to allow them to continue working together, so they joined A.I.M. He\'s organized, experienced, and decisive. Raider is a natural leader. "',
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 80,
	Likes = {
		"Raven",
	},
	Dislikes = {
		"Hitman",
	},
	StartingPerks = {
		"Negotiator",
		"Teacher",
		"TagTeam",
		"Flanker",
		"HitTheDeck",
		"Shatterhand",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Raider",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raider_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raider_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Raider_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Raider",
	},
	Tier = "Elite",
	Specialization = "Leader",
	pollyvoice = "Matthew",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
	VoiceResponseId = "Raider",
}

