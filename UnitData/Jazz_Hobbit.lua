UndefineClass('Jazz_Hobbit')
DefineClass.Jazz_Hobbit = {
	Affiliation = "MERC",
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 67,
	Agility = 45,
	Dexterity = 67,
	Strength = 70,
	Wisdom = 94,
	Will = 25,
	Leadership = 11,
	Marksmanship = 44,
	Mechanical = 1,
	Explosives = 56,
	Medical = 9,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Hobbit.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Hobbit_Big.png",
	IsMercenary = true,
	Name = T(890000000004502, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Name]] "Тим Хиллман «Хоббит»"),
	Nick = T(890000000004503, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Nick]] "Хоббит"),
	AllCapsNick = T(890000000004504, --[[ModItemUnitDataCompositeDef Jazz_Hobbit AllCapsNick]] "ХОББИТ"),
	Bio = T(890000000004505, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Bio]] "Тим отлично разбирается во взрывчатке и быстро всему учится. Следует помнить, однако, что у саперов не может быть ошибок. Хиллман наверняка мог бы остаться в Гарварде и заниматься своим дипломом по электромагнитным полям, если бы не ужасная депрессия, вероятно, вызванная электромагнитным излучением. Из-за своей аллергии Тим предпочитает работать в странах с холодным климатом. Но кто ж его спрашивает. "),
	Nationality = "USA",
	Title = T(890000000004506, "I Can Sweep the Minefield for You"),
	Email = T(890000000004507, "Gumpy@merc.com"),
	snype_nick = T(890000000004508, --[[ModItemUnitDataCompositeDef Jazz_Hobbit snype_nick]] "Coolguy"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004509, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text MercChatRefusal Lines ChatMessage voice:Jazz_Hobbit]] "Маловато. Такими темпами всё плохо кончится."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {}),
			},
			'chanceToRoll', 25,
		}),
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000004510, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text MercChatRefusal Lines ChatMessage voice:Jazz_Hobbit]] "Слишком много смертей — я предупреждал."),
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
	Mitigations = {},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004511, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text Offline ChatMessage voice:Jazz_Hobbit]] "Хоббит недоступен. Наверное, к лучшему."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004512, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text GreetingAndOffer ChatMessage voice:Jazz_Hobbit]] "Хоббит на связи. Я не Фродо, если что."),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004513, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text ConversationRestart ChatMessage voice:Jazz_Hobbit]] "Связь прервалась. Вернёмся к делу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004514, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text IdleLine ChatMessage voice:Jazz_Hobbit]] "Жарко. Всё равно ничем хорошим не кончится."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004515, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text PartingWords ChatMessage voice:Jazz_Hobbit]] "Ладно, могу и понести вас, если что."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004516, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text RehireIntro ChatMessage voice:Jazz_Hobbit]] "Контракт заканчивается. Продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000004517, --[[ModItemUnitDataCompositeDef Jazz_Hobbit Text RehireOutro ChatMessage voice:Jazz_Hobbit]] "Остаюсь. Всё равно хуже уже не будет."),
		}),
	},
	MedicalDeposit = "small",
	StartingSalary = 700,
	SalaryIncrease = 150,
	SalaryLv1 = 300,
	SalaryMaxLv = 2200,
	StartingLevel = 1,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
	end,
	MaxHitPoints = 65,
	Likes = {},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Hobbit",
		"Pessimist",
		"BreachAndClear",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Hobbit",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Hobbit",
	},
	Tier = "Regular",
	Specialization = "ExplosiveExpert",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Hobbit",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
