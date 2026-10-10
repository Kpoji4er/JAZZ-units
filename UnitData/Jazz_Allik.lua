UndefineClass('Jazz_Allik')
DefineClass.Jazz_Allik = {
	DurationDiscount = "long only",
	Haggling = "low",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 94,
	Agility = 81,
	Dexterity = 79,
	Strength = 94,
	Wisdom = 88,
	Will = 61,
	Leadership = 38,
	Marksmanship = 78,
	Mechanical = 76,
	Explosives = 43,
	Medical = 28,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Allik.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Allik_Big.png",
	IsMercenary = true,
	Name = T(890000000003902, --[[ModItemUnitDataCompositeDef Jazz_Allik Name]] "Янно Аллик «Знаток»"),
	Nick = T(890000000003903, --[[ModItemUnitDataCompositeDef Jazz_Allik Nick]] "Знаток"),
	AllCapsNick = T(890000000003904, --[[ModItemUnitDataCompositeDef Jazz_Allik AllCapsNick]] "ЗНАТОК"),
	Bio = T(890000000003905, --[[ModItemUnitDataCompositeDef Jazz_Allik Bio]] "Янно родился в Эстонии, мать - немка. Долгое время служил в Советской армии. Любит готовить для друзей и наслаждаться жизнью. Но главное увлечение этого человека-медведя - это тяжелое оружие. Кроме того, замки не являются для него ни проблемой, ни препятствием. Предпочитает работать с Вильде, земляком-эстонцем, с которым он познакомился, когда служил в Восточной Германии."),
	Nationality = "Estonia",
	Title = T(890000000003906, "The Human Multitool"),
	Email = T(890000000003907, --[[ModItemUnitDataCompositeDef Jazz_Allik Email]] "Allik@aim.com"),
	snype_nick = T(890000000003908, --[[ModItemUnitDataCompositeDef Jazz_Allik snype_nick]] "znatok"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003909, --[[ModItemUnitDataCompositeDef Jazz_Allik Text MercChatRefusal Lines ChatMessage voice:Jazz_Allik]] "Лучше поищи другого наемника. Такого, которому понравится работать со свиньей-англичанином!"),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Sidney" or k == "DrQ")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003910, --[[ModItemUnitDataCompositeDef Jazz_Allik Text MercChatRefusal Lines ChatMessage voice:Jazz_Allik]] "Я наемник, потому что я так решил, но это еще не значит, что я люблю смерть."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionDeathToll', {
					PresetValue = "1",
				}),
			},
			'chanceToRoll', 40,
		}),
	},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003911, --[[ModItemUnitDataCompositeDef Jazz_Allik Text MercChatMitigation Lines ChatMessage voice:Jazz_Allik]] "У меня тревожные предчувствия, но если с вами Грейс Джирелли... Я согласен."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, function(k, ud)
							return IsKindOf(ud, "UnitData") and ud.HireStatus == "Hired" and (k == "Jazz_Vilde" or k == "Jazz_Grace")
						end) >= 1
					end,
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000003912, --[[ModItemUnitDataCompositeDef Jazz_Allik Text MercChatBranch Lines ChatMessage voice:Jazz_Allik]] "Она мне нравится. Обычно американки такие... Ну... Но только не Грейс. В ней чувствуется итальянская кровь, а итальянцы знают толк в хорошей еде."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Jazz_Vilde",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003913, --[[ModItemUnitDataCompositeDef Jazz_Allik Text Offline ChatMessage voice:Jazz_Allik]] "Янно Аллик на связи. Если у вас есть для меня важные новости, пожалуйста, говорите."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003914, --[[ModItemUnitDataCompositeDef Jazz_Allik Text GreetingAndOffer ChatMessage voice:Jazz_Allik]] "Привет..."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003915, --[[ModItemUnitDataCompositeDef Jazz_Allik Text ConversationRestart ChatMessage voice:Jazz_Allik]] "Я сказал..."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003916, --[[ModItemUnitDataCompositeDef Jazz_Allik Text IdleLine ChatMessage voice:Jazz_Allik]] "Я бы не отказался сейчас от сочного бифштекса с картофелем и подливкой. Ха!"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003917, --[[ModItemUnitDataCompositeDef Jazz_Allik Text PartingWords ChatMessage voice:Jazz_Allik]] "Выхожу. Будет интересно."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003918, --[[ModItemUnitDataCompositeDef Jazz_Allik Text RehireIntro ChatMessage voice:Jazz_Allik]] "Я бы не отказался поработать на вас еще, если это входит в ваши планы."),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000003919, --[[ModItemUnitDataCompositeDef Jazz_Allik Text RehireOutro ChatMessage voice:Jazz_Allik]] "Gut. Должно быть, вам понравились мои успехи."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 1300,
	SalaryIncrease = 230,
	SalaryLv1 = 1100,
	SalaryMaxLv = 6000,
	StartingLevel = 3,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 88,
	Likes = {
		"Jazz_Vilde",
		"Jazz_Grace",
	},
	Dislikes = {
					"Sidney",
					"Reaper",
				},
	StartingPerks = {
		"Jazz_Perk_Allik",
		"MrFixit",
		"TrueGrit",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Allik",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Allik",
	},
	Tier = "Veteran",
	Specialization = "HeavyWeapons",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Allik",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
