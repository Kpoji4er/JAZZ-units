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
	Name = T(890000000001702, --[[ModItemUnitDataCompositeDef Jazz_Colby Name]] "[WIP] Тревор Колби"),
	Nick = T(890000000001703, --[[ModItemUnitDataCompositeDef Jazz_Colby Nick]] "Колби"),
	AllCapsNick = T(890000000001704, --[[ModItemUnitDataCompositeDef Jazz_Colby AllCapsNick]] "КОЛБИ"),
	Bio = T(890000000001705, --[[ModItemUnitDataCompositeDef Jazz_Colby Bio]] "work in progress"),
	Nationality = "Canada",
	Title = T(890000000001706, --[[ModItemUnitDataCompositeDef Jazz_Colby Title]] "Ловушечник"),
	Email = T(890000000001707, --[[ModItemUnitDataCompositeDef Jazz_Colby Email]] "Colby@aim.com"),
	snype_nick = T(890000000001708, --[[ModItemUnitDataCompositeDef Jazz_Colby snype_nick]] "tripwire"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000001709, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Нет. Пока Фидель на контракте — я пас. Не хочу делить периметр с психом."),
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
					'Text', T(890000000001710, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Слишком много трупов на вашем счету. Наймите кого-то другого."),
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
					'Text', T(890000000001711, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatRefusal Lines ChatMessage voice:Jazz_Colby]] "Кошелёк тонкий. Перезвоните, когда будет бюджет на нормальную зарядку."),
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
					'Text', T(890000000001713, --[[ModItemUnitDataCompositeDef Jazz_Colby Text MercChatMitigation Lines ChatMessage voice:Jazz_Colby]] "Тор уже с вами? Тогда ок. С ним я работаю."),
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
			'Text', T(890000000001715, --[[ModItemUnitDataCompositeDef Jazz_Colby Text Offline ChatMessage voice:Jazz_Colby]] "Колби. Меня нет. Оставьте сообщение — перезвоню, если не взорвусь."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001716, --[[ModItemUnitDataCompositeDef Jazz_Colby Text GreetingAndOffer ChatMessage voice:Jazz_Colby]] "Колби на линии. Что взрываем?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001717, --[[ModItemUnitDataCompositeDef Jazz_Colby Text ConversationRestart ChatMessage voice:Jazz_Colby]] "Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001718, --[[ModItemUnitDataCompositeDef Jazz_Colby Text IdleLine ChatMessage voice:Jazz_Colby]] "Время тикает."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001719, --[[ModItemUnitDataCompositeDef Jazz_Colby Text PartingWords ChatMessage voice:Jazz_Colby]] "Беру зарядку и выхожу."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001720, --[[ModItemUnitDataCompositeDef Jazz_Colby Text RehireIntro ChatMessage voice:Jazz_Colby]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000001721, --[[ModItemUnitDataCompositeDef Jazz_Colby Text RehireOutro ChatMessage voice:Jazz_Colby]] "Остаюсь."),
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
		"DesignerExplosives",
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
