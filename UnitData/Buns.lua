UndefineClass('Buns')
DefineClass.Buns = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 79,
	Agility = 79,
	Dexterity = 87,
	Strength = 56,
	Wisdom = 93,
	Will = 75,
	Leadership = 24,
	Marksmanship = 86,
	Mechanical = 8,
	Explosives = 4,
	Medical = 49,
	Portrait = "UI/MercsPortraits/Buns",
	BigPortrait = "UI/Mercs/Buns",
	IsMercenary = true,
	Name = T(956763701762, --[[ModItemUnitDataCompositeDef Buns Name]] "Моника Зондергад «Сдоба»"),
	Nick = T(730486601047, --[[ModItemUnitDataCompositeDef Buns Nick]] "Сдоба"),
	AllCapsNick = T(355208859292, --[[ModItemUnitDataCompositeDef Buns AllCapsNick]] "СДОБА"),
	Bio = T(777309152047, --[[ModItemUnitDataCompositeDef Buns Bio]] "Резюме Моники Зондергад, кажется, специально написано для того, чтобы вызывать у читающих острый приступ синдрома самозванца: стрелок-олимпиец, медицинская сестра, автор видеоуроков по семейной форме обучения, технике искусственного дыхания, стрельбе из автоматического оружия, здоровому образу жизни и борьбе с депрессией посредством последовательного самосовершенствования.\n\nМногие могут спросить себя: разве может жизнь наёмника предложить такой женщине что-но новое? Тем не менее, коллеги по A.I.M. высоко ценят Монику как умелого специалиста и хорошего - пусть и въедливого - учителя."),
	Nationality = "Denmark",
	Title = T(852578438925, --[[ModItemUnitDataCompositeDef Buns Title]] "Начинаем урок"),
	Email = T(199610516408, --[[ModItemUnitDataCompositeDef Buns Email]] "MonicaSondergaard@aim.com"),
	snype_nick = T(154054560014, --[[ModItemUnitDataCompositeDef Buns snype_nick]] "MonicaSondergaard"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(226180244539, --[[ModItemUnitDataCompositeDef Buns Text MercChatRefusal Lines ChatMessage voice:Buns]] "У вас в команде Лиска. Очевидно, упаковка вас интересует куда больше, чем товар. Свяжитесь со мной, когда вам потребуется нечто большее, чем смазливая мордашка."),
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
					'Text', T(236123461893, --[[ModItemUnitDataCompositeDef Buns Text MercChatRefusal Lines ChatMessage voice:Buns]] "У вас в команде человек по прозвищу «Жнец». У него серьёзные проблемы с психикой. Может быть, в другой раз."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Reaper",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(993128152189, --[[ModItemUnitDataCompositeDef Buns Text MercChatHaggle Lines ChatMessage voice:Buns]] "Это первое наше сотрудничество. Будет разумным заручиться дополнительными финансовыми гарантиями."),
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
					'Text', T(574540805848, --[[ModItemUnitDataCompositeDef Buns Text MercChatHaggle Lines ChatMessage voice:Buns]] "Вы наняли этого ненормального «Жнеца». Это очень, очень больной человек. Если хотите, чтобы я продолжила наше сотрудничество, вам придётся заплатить. Считайте это компенсацией за неблагоприятные условия работы."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Reaper",
				}),
			},
		}),
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(998763690178, --[[ModItemUnitDataCompositeDef Buns Text MercChatHaggle Lines ChatMessage voice:Buns]] "Не знаю, что побудило вас нанять эту бестолковую фотомодель Лиску. Готова поспорить, у неё даже бюст ненастоящий. Да-да. Так или иначе, терпеть её присутствие без доплаты я не намерена."),
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
					'Text', T(691020141104, --[[ModItemUnitDataCompositeDef Buns Text MercChatMitigation Lines ChatMessage voice:Buns]] "Обычно я не соглашаюсь на такие предложения. Но коль скоро на вас работает Сидней, возможно, вы не совсем бездарь. Я в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Sidney",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(545257109553, --[[ModItemUnitDataCompositeDef Buns Text Offline ChatMessage voice:Buns]] "Это Моника Зондергад. Полагаю, вам рекомендовали меня как образцового, чистоплотного и исполнительного сотрудника. В данный момент я отсутствую. Свяжитесь со мной в другое время."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(852499190735, --[[ModItemUnitDataCompositeDef Buns Text GreetingAndOffer ChatMessage voice:Buns]] "Приветствую. Моника Зондергад. Рада знакомству. Полагаю, вам требуются работники, и вы не смогли устоять перед моими образцовыми навыками и общей чистоплотностью."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(698087255368, --[[ModItemUnitDataCompositeDef Buns Text ConversationRestart ChatMessage voice:Buns]] "Невежливо обрывать разговор, но я вас прощаю. Продолжим."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(180203089731, --[[ModItemUnitDataCompositeDef Buns Text IdleLine ChatMessage voice:Buns]] "Я не терплю тех, кто впустую тратит моё время, но для вас готова сделать исключение. Терпимость - одно из многих моих достоинств. Итак, продолжим."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(906674942216, --[[ModItemUnitDataCompositeDef Buns Text PartingWords ChatMessage voice:Buns]] "Очень хорошо. Буду ждать начала нашего сотрудничества."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(918365695405, --[[ModItemUnitDataCompositeDef Buns Text RehireIntro ChatMessage voice:Buns]] "Добрый день. Наш контракт подходит к концу. Моё отсутствие станет большим ударом для всей команды, так что я готова продлить его действие."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(558845485811, --[[ModItemUnitDataCompositeDef Buns Text RehireOutro ChatMessage voice:Buns]] "Отлично. Я рада, что мы смогли прийти к соглашению и продолжить сотрудничество."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 855,
	SalaryIncrease = 260,
	SalaryLv1 = 500,
	SalaryMaxLv = 4500,
	LegacyNotes = '"The prim and proper Monica Sondergaard may seem to be an unlikely candidate for the rough and tumble mercenary life, but she more than meets the minimum requirements. Before settling on A.I.M., Buns explored a number of careers: kindergarten teacher, geriatric nurse, Danish sharpshooter at the Atlanta Olympic games, and professional soldier."\n\nAdditional info:\n\nA prim and proper prude, her uptightedness goes hand-in-hand with her professionalism and skill.\nBelieves herself better than anyone else.\nHas a sense of superiority. She\'s a merc because she wants to, not because she has to.\nPuts her feelings before logic.\nTo a Danish person her dialect sounds German or Russian. (To a person with knowledge of the russian language and accent she definitely doesn\'t sound any russian at all. Ivan Dolvich has classic russian accent)',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 79,
	Likes = {
		"Sidney",
	},
	Dislikes = {
		"Fox",
		"Reaper",
	},
	StartingPerks = {
		"BunsPerk",
		"Negotiator",
		"Teacher",
		"CancelShotPerk",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Buns",
			'GameStates', set({
	RainAny = false,
	Savanna = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Buns_Savana",
			'GameStates', set( "RainAny" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Buns_Savana",
			'GameStates', set( "Savanna" ),
		}),
	},
	Equipment = {
		"Buns",
	},
	Tier = "Veteran",
	Specialization = "Marksmen",
	pollyvoice = "Amy",
	gender = "Female",
	VoiceResponseId = "Buns",
}

