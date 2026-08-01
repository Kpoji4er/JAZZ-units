UndefineClass('Jazz_Madman')
DefineClass.Jazz_Madman = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 92,
	Agility = 90,
	Dexterity = 88,
	Strength = 91,
	Wisdom = 56,
	Will = 50,
	Leadership = 15,
	Marksmanship = 70,
	Mechanical = 68,
	Explosives = 20,
	Medical = 10,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Madman.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Madman_Big.png",
	IsMercenary = true,
	Name = T(890000000002102, --[[ModItemUnitDataCompositeDef Jazz_Madman Name]] "[WIP] Кевин «Бешеный» Камерон"),
	Nick = T(890000000002103, --[[ModItemUnitDataCompositeDef Jazz_Madman Nick]] "Бешеный"),
	AllCapsNick = T(890000000002104, --[[ModItemUnitDataCompositeDef Jazz_Madman AllCapsNick]] "БЕШЕНЫЙ"),
	Bio = T(890000000002105, --[[ModItemUnitDataCompositeDef Jazz_Madman Bio]] "work in progress"),
	Nationality = "USA",
	Title = T(890000000002106, --[[ModItemUnitDataCompositeDef Jazz_Madman Title]] "Ржавый бампер"),
	Email = T(890000000002107, --[[ModItemUnitDataCompositeDef Jazz_Madman Email]] "Madman@merc.com"),
	snype_nick = T(890000000002108, --[[ModItemUnitDataCompositeDef Jazz_Madman snype_nick]] "bumper"),
	Refusals = {},
	Haggles = {},
	HaggleRehire = {},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002109, --[[ModItemUnitDataCompositeDef Jazz_Madman Text MercChatMitigation Lines ChatMessage voice:Jazz_Madman]] "О, Лиска с вами? Ну тогда я точно остаюсь, хе-хе."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(890000000002110, --[[ModItemUnitDataCompositeDef Jazz_Madman Text MercChatBranch Lines ChatMessage voice:Jazz_Madman]] "Если увидите Лиску — скажите, что Бешеный спрашивал."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Fox",
					Negate = true,
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002111, --[[ModItemUnitDataCompositeDef Jazz_Madman Text Offline ChatMessage voice:Jazz_Madman]] "Бешеный не берёт трубку — он ею бьёт. Перезвони, если не боишься."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002112, --[[ModItemUnitDataCompositeDef Jazz_Madman Text GreetingAndOffer ChatMessage voice:Jazz_Madman]] "Да я лучше бампером всех перемочу! Ну, есть дело или как?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002113, --[[ModItemUnitDataCompositeDef Jazz_Madman Text ConversationRestart ChatMessage voice:Jazz_Madman]] "Ты пропал, а я тут заскучал. Продолжай давай."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002114, --[[ModItemUnitDataCompositeDef Jazz_Madman Text IdleLine ChatMessage voice:Jazz_Madman]] "Ну где драка? Мне бы уже кого-то стукнуть."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002115, --[[ModItemUnitDataCompositeDef Jazz_Madman Text PartingWords ChatMessage voice:Jazz_Madman]] "Ха! Поехали крушить. Дёшево и сердито — лишь бы весело было."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002116, --[[ModItemUnitDataCompositeDef Jazz_Madman Text RehireIntro ChatMessage voice:Jazz_Madman]] "Контракт заканчивается — продлеваем, или сам пойду кого-нибудь чинить?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(890000000002117, --[[ModItemUnitDataCompositeDef Jazz_Madman Text RehireOutro ChatMessage voice:Jazz_Madman]] "Остаюсь. Тут ещё есть что чинить и кого бить."),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 900,
	SalaryIncrease = 200,
	SalaryLv1 = 400,
	SalaryMaxLv = 2500,
	StartingLevel = 4,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Melee")
		self:TryEquip(items, "Handheld B", "Melee")
	end,
	MaxHitPoints = 92,
	Likes = {
		"Fox",
	},
	Dislikes = {},
	StartingPerks = {
		"Jazz_Perk_Madman",
		"Psycho",
		"MrFixit",
		"MeleeTraining",
		"CQCTraining",
		"Ironclad",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Madman",
		}),
	},
	Equipment = {
		"Loot_JAZZ_Madman",
	},
	Tier = "Veteran",
	Specialization = "Mechanic",
	pollyvoice = "Matthew",
	gender = "Male",
	VoiceResponseId = "Jazz_Madman",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 0,
}
