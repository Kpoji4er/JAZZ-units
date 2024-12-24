UndefineClass('Grunty')
DefineClass.Grunty = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 82,
	Agility = 77,
	Dexterity = 75,
	Strength = 71,
	Wisdom = 74,
	Leadership = 21,
	Marksmanship = 78,
	Mechanical = 45,
	Explosives = 28,
	Medical = 22,
	Portrait = "UI/MercsPortraits/Grunty",
	BigPortrait = "UI/Mercs/Grunty",
	IsMercenary = true,
	Name = T(509794901102, --[[ModItemUnitDataCompositeDef Grunty Name]] "Гельмут Грунтер «Грунти»"),
	Nick = T(844792410600, --[[ModItemUnitDataCompositeDef Grunty Nick]] "Грунти"),
	AllCapsNick = T(878015981670, --[[ModItemUnitDataCompositeDef Grunty AllCapsNick]] "ГРУНТИ"),
	Bio = T(805883834301, --[[ModItemUnitDataCompositeDef Grunty Bio]] "Боец, стремительно взлетающий к вершинам карьеры наёмника, Хряп пользуется большой популярностью среди клиентов A.I.M. Гельмут - отличный солдат с умеренными денежными запросами, а дружелюбная матера общения и оптимизм делают его прекрасным товарищем по команде. Хряп - универсал, умеющий отлично обращаться с тяжелым оружием, так что едва ли найдётся тактическая задача, из которой он не вышел бы с победой."),
	Nationality = "Germany",
	Title = T(559710714576, --[[ModItemUnitDataCompositeDef Grunty Title]] "Наёмник хоть куда. В самом расцвете лет"),
	Email = T(930964299879, --[[ModItemUnitDataCompositeDef Grunty Email]] "mamin_lubimez@aim.com"),
	snype_nick = T(511404631540, --[[ModItemUnitDataCompositeDef Grunty snype_nick]] "mamin_lubimez"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(824665715419, --[[ModItemUnitDataCompositeDef Grunty Text MercChatRefusal Lines ChatMessage voice:Grunty]] "Hallo. Ты разбрасываешься хорошими солдатами, будто они у тебя на пятачок пучок! Я рассматриваю принятие твоего предложения как недопустимый риск."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "2+",
				}),
			},
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(822031561859, --[[ModItemUnitDataCompositeDef Grunty Text MercChatRefusal Lines ChatMessage voice:Grunty]] "Hallo. Извини, но в твоей команде одни салаги. Это для меня недопустимый риск."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(ud) return gv_UnitData[ud].HireStatus == "Hired" and gv_UnitData[ud]:GetLevel() > 3 end) == 0
					end,
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(577289136229, --[[ModItemUnitDataCompositeDef Grunty Text MercChatMitigation Lines ChatMessage voice:Grunty]] "Да я бы гвозди ел, лишь бы работать с Иваном. Я о железных гвоздях, не о Гвозде. Его бы я есть не стал, сплошная кожа. В общем, я счастлив присоединиться к вам с Иваном."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Ivan",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(844233838316, --[[ModItemUnitDataCompositeDef Grunty Text MercChatMitigation Lines ChatMessage voice:Grunty]] "У меня некоторая слабость к Сдобе Зондергад. Я думаю, все дело в том, как прелестно она склоняет головку перед тем, как проделать дырку у врага в брюхе. Раз она идёт с тобой, я иду тоже."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Buns",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(383765618496, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "Иван был моим учителем. Он научил меня убивать с достоинством и терпением. Я буду очень рад, если ты наймёшь и его тоже."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(393927461621, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "Но это просто рекомендация. Ладно, tschüss."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ivan",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(531561579625, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "У меня некоторая слабость к Сдобе Зондергад. Если она тоже будет в твоей команде, дело заладится."),
				}),
				PlaceObj('ChatMessage', {
					'Text', T(393927461621, --[[ModItemUnitDataCompositeDef Grunty Text MercChatBranch Lines ChatMessage voice:Grunty]] "Но это просто рекомендация. Ладно, tschüss."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Ivan",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(330168467319, --[[ModItemUnitDataCompositeDef Grunty Text Offline ChatMessage voice:Grunty]] "Hallo. С большим сожалением извещаю вас, что в данный момент я недоступен. Я свяжусь с вами, когда ситуация поменяется."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(552434878051, --[[ModItemUnitDataCompositeDef Grunty Text GreetingAndOffer ChatMessage voice:Grunty]] "Hallo, das ist Грунти, Гельмут Грунтер. Желаешь предложить мне работу?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(758234830840, --[[ModItemUnitDataCompositeDef Grunty Text ConversationRestart ChatMessage voice:Grunty]] "Мама всегда говорила: «Связь рвётся легче сухожилий». Похоже, что наша разорвалась. Не желаешь ли продолжить переговоры?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(479381961044, --[[ModItemUnitDataCompositeDef Grunty Text IdleLine ChatMessage voice:Grunty]] "Achtung! Мы ведь беседуем. Пожалуйста, не отвлекайся."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(841092083711, --[[ModItemUnitDataCompositeDef Grunty Text PartingWords ChatMessage voice:Grunty]] "Супер. Тогда tschüssikowski: до скорой личной встречи."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(240997779233, --[[ModItemUnitDataCompositeDef Grunty Text RehireIntro ChatMessage voice:Grunty]] "Конец нашего контракта всё ближе. Как я понимаю, ты бы хотел продлить его, ja?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(773993917152, --[[ModItemUnitDataCompositeDef Grunty Text RehireOutro ChatMessage voice:Grunty]] "Ты сделал мудрый выбор."),
		}),
	},
	MedicalDeposit = "extreme",
	StartingSalary = 500,
	SalaryIncrease = 300,
	SalaryLv1 = 100,
	SalaryMaxLv = 2400,
	LegacyNotes = 'JA1: \n\n"Helmut Grunther is a young up-and-comer to the mercenary market.  Comfortable with taking the point position, he expects to make his mark in this merciless milieu in the near future.  Of course, that\'s if it doesn\'t make its mark on him!" - dossier, Jagged Alliance\n\nJA2:\n\n"Helmut has moved through the ranks of this organization quicker than any other mercenary and is now a firmly established seasoned professional. Grunty\'s attitude and approach continues to be exemplary, making him one of our most popular mercenaries. Grunther has shown a strong interest in heavy weapons and night maneuvers." - dossier, Jagged Alliance 2\n\nAdditional info:\n\nGerman accent.\nA go-getter, someone eager who takes his job seriously.\nA hint of ego, though not conceited.\nHas something to say about everything.\nVery sociable and well liked by the other AIM members, especially the Dolviches.',
	StartingLevel = 3,
	MaxHitPoints = 82,
	Likes = {
		"Igor",
		"Ivan",
		"Buns",
	},
	StartingPerks = {
		"HeavyWeaponsTraining",
		"GruntyPerk",
		"BeefedUp",
		"TrueGrit",
		"NightOps",
		"Optimist",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty",
			'Weight', 50,
			'GameStates', set({
	CursedForest = false,
	DustStorm = false,
	FireStorm = false,
	Heat = false,
	Jungle = false,
	Marshlands = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "Jungle" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "Marshlands" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Jungle",
			'Weight', 50,
			'GameStates', set( "CursedForest" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grunty_Savana",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Grunty",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	gender = "Male",
}

