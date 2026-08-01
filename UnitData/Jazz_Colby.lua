UndefineClass('Jazz_Colby')
DefineClass.Jazz_Colby = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 96,
	Agility = 72,
	Dexterity = 95,
	Strength = 70,
	Wisdom = 97,
	Will = 80,
	Leadership = 40,
	Marksmanship = 78,
	Mechanical = 99,
	Explosives = 88,
	Medical = 20,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Colby.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Colby_Big.png",
	IsMercenary = true,
	Name = T(890000000001702, --[[ModItemUnitDataCompositeDef Jazz_Colby Name]] "Тревор Колби"),
	Nick = T(890000000001703, --[[ModItemUnitDataCompositeDef Jazz_Colby Nick]] "Колби"),
	AllCapsNick = T(890000000001704, --[[ModItemUnitDataCompositeDef Jazz_Colby AllCapsNick]] "КОЛБИ"),
	Bio = T(890000000001705, --[[ModItemUnitDataCompositeDef Jazz_Colby Bio]] "Боевой подрывник и ловушечник AIM. Жёсткие физикалы (кроме силы и подвижности), 99 механики, 88 взрывчатки. Дружит с Тором, не ладит с Фиделем; не любит американцев в отряде."),
	Nationality = "Canada",
	Title = T(890000000001706, --[[ModItemUnitDataCompositeDef Jazz_Colby Title]] "Ловушечник"),
	Email = T(890000000001707, --[[ModItemUnitDataCompositeDef Jazz_Colby Email]] "Colby@aim.com"),
	snype_nick = T(890000000001708, --[[ModItemUnitDataCompositeDef Jazz_Colby snype_nick]] "tripwire"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001709, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Извини, пацан, но я лучше буду работать в саду у мамани, чем вместе с этим падлой Фиделем."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fidel",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001710, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Угу, может, ещё и гроб заказать? Извини, подвинься!"),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001711, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Без проблем, позвоните мне, когда разбогатеете. Просто сейчас я вам не по карману."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001712, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatHaggle Lines ChatMessage voice:Jazz_Colby]] "Американцы в отряде… Ладно, но надбавка за нервы."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and ud.Nationality == "USA"
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001713, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatMitigation Lines ChatMessage voice:Jazz_Colby]] "Я немного сомневаюсь по поводу дельца, тёмное оно… Но раз Тор с вами — я согласен."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Thor",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001714, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatBranch Lines ChatMessage voice:Jazz_Colby]] "Если нужен ещё один спокойный спец — берите Тора."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Thor",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001715, --[[ModItemUnitDataCompositeDef Jazz_Colby Text Offline ChatMessage voice:Jazz_Colby]] "Как дела? Тревор и Шейла не могут подойти к телефону. Они пошли на пляж. Оставьте сообщение."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001716, --[[ModItemUnitDataCompositeDef Jazz_Colby Text GreetingAndOffer ChatMessage voice:Jazz_Colby]] "Говорит Тревор Колби. Как дела?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001717, --[[ModItemUnitDataCompositeDef Jazz_Colby Text ConversationRestart ChatMessage voice:Jazz_Colby]] "Я сказал, что…"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001718, --[[ModItemUnitDataCompositeDef Jazz_Colby Text IdleLine ChatMessage voice:Jazz_Colby]] "Если вам нужен механик, лучше меня вы не найдёте. Ну я так думаю."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001719, --[[ModItemUnitDataCompositeDef Jazz_Colby Text PartingWords ChatMessage voice:Jazz_Colby]] "Думаю, я попробую — во мне можете быть уверены."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001720, --[[ModItemUnitDataCompositeDef Jazz_Colby Text RehireIntro ChatMessage voice:Jazz_Colby]] "Спросить хотел: мы ещё на один срок подписываемся или нет? Я не прочь ещё врага покрошить."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001721, --[[ModItemUnitDataCompositeDef Jazz_Colby Text RehireOutro ChatMessage voice:Jazz_Colby]] "Принимаю. Как вы со мной, так и я с вами. Всё по-честному."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 2800,
	SalaryIncrease = 200,
	SalaryLv1 = 1200,
	SalaryMaxLv = 7000,
	StartingLevel = 5,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 96,
	Likes = {
		"Thor",
	},
	Dislikes = {
		"Fidel",
	},
	StartingPerks = {
		"Jazz_Perk_Colby",
		"MrFixit",
		"Throwing",
		"BreachAndClear",
		"HitTheDeck",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Colby",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Colby",
	},
	Tier = "Elite",
	Specialization = "ExplosiveExpert",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Colby",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
