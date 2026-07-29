UndefineClass('Jazz_Mike')
DefineClass.Jazz_Mike = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 90,
	Agility = 85,
	Dexterity = 85,
	Strength = 85,
	Wisdom = 80,
	Will = 85,
	Leadership = 50,
	Marksmanship = 90,
	Mechanical = 40,
	Explosives = 40,
	Medical = 40,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Mike.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Mike_Big.png",
	IsMercenary = true,
	Name = T(890000000002302, --[[ModItemUnitDataCompositeDef Jazz_Mike Name]] "[WIP] Майк"),
	Nick = T(890000000002303, --[[ModItemUnitDataCompositeDef Jazz_Mike Nick]] "Майк"),
	AllCapsNick = T(890000000002304, --[[ModItemUnitDataCompositeDef Jazz_Mike AllCapsNick]] "МАЙК"),
	Bio = T(890000000002305, --[[ModItemUnitDataCompositeDef Jazz_Mike Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000002306, --[[ModItemUnitDataCompositeDef Jazz_Mike Title]] "Старый друг"),
	Email = T(890000000002307, --[[ModItemUnitDataCompositeDef Jazz_Mike Email]] "Mike@aim.com"),
	snype_nick = T(890000000002308, --[[ModItemUnitDataCompositeDef Jazz_Mike snype_nick]] "oldfriend"),
	Refusals = {},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002309, --[[ModItemUnitDataCompositeDef Jazz_Mike Text MercChatMitigation Lines ChatMessage voice:Jazz_Mike]] "Стероид уже в отряде? Тогда ладно, с ним сработаемся."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Steroid",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002310, --[[ModItemUnitDataCompositeDef Jazz_Mike Text MercChatBranch Lines ChatMessage voice:Jazz_Mike]] "Если нужен ещё один надёжный ствол — зовите Стероида."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Steroid",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002311, --[[ModItemUnitDataCompositeDef Jazz_Mike Text Offline ChatMessage voice:Jazz_Mike]] "Майк. Перезвоните — если срочно, я перезвоню первым."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002312, --[[ModItemUnitDataCompositeDef Jazz_Mike Text GreetingAndOffer ChatMessage voice:Jazz_Mike]] "Старый друг на линии. Ну, что у тебя за дело?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002313, --[[ModItemUnitDataCompositeDef Jazz_Mike Text ConversationRestart ChatMessage voice:Jazz_Mike]] "Пропала связь. Ладно, продолжаем — я никуда не спешу."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002314, --[[ModItemUnitDataCompositeDef Jazz_Mike Text IdleLine ChatMessage voice:Jazz_Mike]] "Говори. Я слушаю, но недолго."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002315, --[[ModItemUnitDataCompositeDef Jazz_Mike Text PartingWords ChatMessage voice:Jazz_Mike]] "Как в старые добрые. Я в деле."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002316, --[[ModItemUnitDataCompositeDef Jazz_Mike Text RehireIntro ChatMessage voice:Jazz_Mike]] "Контракт заканчивается. Обычно я ухожу тихо — но спрошу: продлеваем?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002317, --[[ModItemUnitDataCompositeDef Jazz_Mike Text RehireOutro ChatMessage voice:Jazz_Mike]] "Остаюсь. Одному веселее, но и тут ничего."),
		}),
	},
	MedicalDeposit = "large",
	StartingSalary = 4000,
	SalaryIncrease = 200,
	SalaryLv1 = 2000,
	SalaryMaxLv = 9000,
	StartingLevel = 6,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "Firearm")
	end,
	MaxHitPoints = 90,
	Likes = {
		"Steroid",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Mike",
		"Loner",
		"NightOps",
		"AutoWeapons",
		"TakeAim",
		"Counterfire",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Mike",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Mike",
	},
	Tier = "Elite",
	Specialization = "AllRounder",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Mike",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
