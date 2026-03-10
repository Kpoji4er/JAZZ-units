UndefineClass('Mouse')
DefineClass.Mouse = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 83,
	Agility = 99,
	Dexterity = 95,
	Strength = 50,
	Wisdom = 75,
	Will = 60,
	Leadership = 10,
	Marksmanship = 68,
	Mechanical = 4,
	Explosives = 0,
	Medical = 50,
	Portrait = "UI/MercsPortraits/Mouse",
	BigPortrait = "UI/Mercs/Mouse",
	IsMercenary = true,
	Name = T(522606213949, --[[ModItemUnitDataCompositeDef Mouse Name]] "Анита Бахман «Мышь»"),
	Nick = T(558332461192, --[[ModItemUnitDataCompositeDef Mouse Nick]] "Мышь"),
	AllCapsNick = T(252782817625, --[[ModItemUnitDataCompositeDef Mouse AllCapsNick]] "МЫШЬ"),
	Bio = T(491873398820, --[[ModItemUnitDataCompositeDef Mouse Bio]] "Хотя Анита не раскрывает причин, подтолкнувших её вновь вернуться в ряды A.I.M., ходят слухи, что ее отношения с доктором Маргарет (Стеллой) Траммел зашли в тупик. Другие, впрочем, утверждают, что именно Стелла подослала её с секретным заданием вновь наладить связи с коллегами. Как бы там ни было, умение Мыши передвигаться совершенно незаметно делает её ценным членом любой команды."),
	Nationality = "USA",
	Title = T(660752674735, --[[ModItemUnitDataCompositeDef Mouse Title]] "Мышка серая"),
	Email = T(752477644941, --[[ModItemUnitDataCompositeDef Mouse Email]] "mouse@aim.com"),
	snype_nick = T(965473237479, --[[ModItemUnitDataCompositeDef Mouse snype_nick]] "mouse"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(891526878797, --[[ModItemUnitDataCompositeDef Mouse Text MercChatRefusal Lines ChatMessage voice:Mouse]] "Не буду я работать вместе с Лиской. От таких, как она, одни неприятности... Рано или поздно кто-нибудь из парней поплатится за её выходки."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(682431868600, --[[ModItemUnitDataCompositeDef Mouse Text MercChatRefusal Lines ChatMessage voice:Mouse]] "Не хочу оказаться рядом, когда это произойдёт. Прости."),
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
					'Text', T(841418933816, --[[ModItemUnitDataCompositeDef Mouse Text MercChatRefusal Lines ChatMessage voice:Mouse]] "Я не выношу этого клоуна Рыжего. И ты меня не заставишь. Прости, но я пас."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Red",
						}),
						PlaceObj('MercIsLikedDisliked', {
							Object = "Red",
							Relation = "Dislikes",
							TargetUnit = "Mouse",
						}),
					},
				}),
			},
			'Type', "rehire",
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(619207175584, --[[ModItemUnitDataCompositeDef Mouse Text MercChatRefusal Lines ChatMessage voice:Mouse]] "Какого хрена у тебя в команде Анаболик? С этим шовинистом я работать отказываюсь. Меня от таких, как он, тошнит. Найди ему замену - или я валю нахрен с пляжа."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckAND', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Steroid",
						}),
						PlaceObj('MercIsLikedDisliked', {
							Object = "Steroid",
							Relation = "Dislikes",
							TargetUnit = "Mouse",
						}),
					},
				}),
			},
			'Type', "rehire",
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(180090348249, --[[ModItemUnitDataCompositeDef Mouse Text MercChatHaggle Lines ChatMessage voice:Mouse]] "Фу, да у тебя в отряде одни парни. Парни тупые и не моются. Я, конечно, могу потерпеть, но тогда и денег запрошу больше."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, "HireStatus", "Hired") > 3 and table.count(gv_UnitData, function(i, ud) return ud.HireStatus == "Hired" and ud.gender == "Female" end) == 0
					end,
				}),
			},
		}),
	},
	HaggleRehire = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(640263685398, --[[ModItemUnitDataCompositeDef Mouse Text MercChatHaggle Lines ChatMessage voice:Mouse]] "Ненавижу работать с Лиской. Она вся такая... ох. Если хочешь, чтобы я с ней и дальше уживалась, предложи мне больше сыра."),
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
					'Text', T(708602087780, --[[ModItemUnitDataCompositeDef Mouse Text MercChatMitigation Lines ChatMessage voice:Mouse]] "Я уж хотела отказаться, но вижу, что у тебя в команде есть девчонки. Не так уж ты и безнадёжен, наверно."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud].gender == "Female" end) >= 3
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(882365282152, --[[ModItemUnitDataCompositeDef Mouse Text Offline ChatMessage voice:Mouse]] "Привет! Это Анита Бахман. Я сейчас супер занята. Как насчёт списаться, когда освобожусь?"),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(194998168832, --[[ModItemUnitDataCompositeDef Mouse Text GreetingAndOffer ChatMessage voice:Mouse]] "Привет, это Мышь. У тебя ко мне задание, да?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(675625901057, --[[ModItemUnitDataCompositeDef Mouse Text ConversationRestart ChatMessage voice:Mouse]] "Хе. Обычно это я исчезаю без следа. Так о чём мы говорили?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(516121446556, --[[ModItemUnitDataCompositeDef Mouse Text IdleLine ChatMessage voice:Mouse]] "Эй! Я, конечно, знаю шутку про «Доктор, меня все игнорируют», но это уже перебор."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(792755268170, --[[ModItemUnitDataCompositeDef Mouse Text PartingWords ChatMessage voice:Mouse]] "Отлично! Теперь осталось известить об этом Стеллу. Чую, будет скандал: она-то до сих пор жалеет, что ушла."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(752819054890, --[[ModItemUnitDataCompositeDef Mouse Text RehireIntro ChatMessage voice:Mouse]] "Привет. Как насчёт продлить мой контракт?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(814767561017, --[[ModItemUnitDataCompositeDef Mouse Text RehireOutro ChatMessage voice:Mouse]] "Отлично! Тогда не буду путаться у тебя под ногами."),
		}),
	},
	StartingSalary = 680,
	SalaryLv1 = 650,
	SalaryMaxLv = 4300,
	LegacyNotes = 'JA1: DG\n\n"Stella\'s friend, Anita, was a street performer throughout Europe and North Africa. Her mime act was panned in Paris, booed in Greece and stoned in Tripoli. But after meeting Miss Trammel, Mouse joined A.I.M., and brought her uncanny silence with her." - A.I.M. Dossier, Jagged Alliance: Deadly Games\n\nJA2: Alumni\n\n"Anita\'s stint with the organization was short and rather quiet.  Known for her uncanny ability to move about unnoticed, and not much else, Mouse handed in her resignation at the same time as Dr. Margaret "Stella" Trammel.  It is our understnading that they moved to the Virgin Islands together where Backman serves as nurse/receptionist at Trammel\'s newly opened medical clinic." -Jagged Alliance 2, Alumni Gallery',
	MaxHitPoints = 85,
	Dislikes = {
		"Fox",
	},
	LearnToDislike = {
		"Steroid",
		"Red",
	},
	StartingPerks = {
		"Stealthy",
		"LightStep",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Mouse",
		}),
	},
	Equipment = {
		"Mouse",
	},
	Specialization = "Stealth",
	pollyvoice = "Joanna",
	gender = "Female",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
}

