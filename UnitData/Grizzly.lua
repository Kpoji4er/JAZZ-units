UndefineClass('Grizzly')
DefineClass.Grizzly = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Health = 94,
	Agility = 69,
	Dexterity = 51,
	Strength = 95,
	Wisdom = 72,
	Will = 83,
	Leadership = 18,
	Marksmanship = 79,
	Mechanical = 24,
	Explosives = 37,
	Medical = 8,
	Portrait = "UI/MercsPortraits/Grizzly",
	BigPortrait = "UI/Mercs/Grizzly",
	IsMercenary = true,
	Name = T(118208459244, --[[ModItemUnitDataCompositeDef Grizzly Name]] "Стив Борнелл «Гризли»"),
	Nick = T(954696021309, --[[ModItemUnitDataCompositeDef Grizzly Nick]] "Гризли"),
	AllCapsNick = T(136802932068, --[[ModItemUnitDataCompositeDef Grizzly AllCapsNick]] "ГРИЗЛИ"),
	Bio = T(163594350898, --[[ModItemUnitDataCompositeDef Grizzly Bio]] "Сказать, что Стив Борнелл крут, - это ещё ничего не сказать. В бою это ходячая машина для убийства. Если враг пеший - он может голыми руками порвать его, как тузик грелку. Если прячется в танке - разнести к чертям собачьим выстрелом из гранатомёта. И в драке, и в перестрелке за Гризли вы как за каменной стеной."),
	Nationality = "USA",
	Title = T(978696341509, --[[ModItemUnitDataCompositeDef Grizzly Title]] "Зверская сила"),
	Email = T(669497410975, --[[ModItemUnitDataCompositeDef Grizzly Email]] "grizz@aim.com"),
	snype_nick = T(158191965405, --[[ModItemUnitDataCompositeDef Grizzly snype_nick]] "grizz"),
	Refusals = {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(533291715108, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatRefusal Lines ChatMessage voice:Grizzly]] "Я с Доктором Кью не работаю и тебе не советую. Хочешь умный совет? Держись от него подальше."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "DrQ",
				}),
			},
		}),
	},
	Haggles = {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(515442003007, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatHaggle Lines ChatMessage voice:Grizzly]] "У тебя в отряде сплошь иностранцы. Что, трудно было нормальных американцев набрать? Нет, я не расист, но если хочешь, чтоб я доверил свою жизнь чёртовым иностранцам, придётся доплатить."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj)
						return table.count(gv_UnitData, "HireStatus", "Hired") > 3 and table.count(gv_UnitData, function(i, ud) return ud.HireStatus == "Hired" and ud.Nationality ~= "USA" end) >= 2
					end,
				}),
			},
		}),
	},
	Mitigations = {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(330985534421, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatMitigation Lines ChatMessage voice:Grizzly]] "Я и моя Тень? Мы с ним одной закваски. Я в деле."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Shadow",
				}),
			},
			'chanceToRoll', 100,
		}),
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(457905575962, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatMitigation Lines ChatMessage voice:Grizzly]] "У тебя тут не всё в порядке, но ради того, чтобы еще раз посмотреть, как Волк воет на луну... от такого не откажешься."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					Status = "Hired",
					TargetUnit = "Wolf",
				}),
			},
			'chanceToRoll', 100,
		}),
	},
	ExtraPartingWords = {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(360731833087, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatBranch Lines ChatMessage voice:Grizzly]] "Будет круто снова поработать с Тенью. Не хочешь и его тоже позвать? Вдвоём мы с ним - сила."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Shadow",
				}),
			},
		}),
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(467797906670, --[[ModItemUnitDataCompositeDef Grizzly Text MercChatBranch Lines ChatMessage voice:Grizzly]] "Волк мне - считай, братишка. Не хочешь и его тоже позвать? Он отличный солдат."),
				}),
			},
			'Conditions', {
				PlaceObj('UnitHireStatus', {
					TargetUnit = "Wolf",
				}),
			},
		}),
	},
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(445648002358, --[[ModItemUnitDataCompositeDef Grizzly Text Offline ChatMessage voice:Grizzly]] "Это Стив Борнелл. Я сейчас не на месте, так что вот. Попробуйте в другой раз."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(476655841150, --[[ModItemUnitDataCompositeDef Grizzly Text GreetingAndOffer ChatMessage voice:Grizzly]] "Борнелл слушает. Чего надо?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(261408286901, --[[ModItemUnitDataCompositeDef Grizzly Text ConversationRestart ChatMessage voice:Grizzly]] "Попробуем ещё разок. Может, ещё договоримся."),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(672618998313, --[[ModItemUnitDataCompositeDef Grizzly Text IdleLine ChatMessage voice:Grizzly]] "Кончай тормозить. Куй железо, пока горячо."),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(994320539737, --[[ModItemUnitDataCompositeDef Grizzly Text PartingWords ChatMessage voice:Grizzly]] "Супер! Теперь повеселимся."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(213572996234, --[[ModItemUnitDataCompositeDef Grizzly Text RehireIntro ChatMessage voice:Grizzly]] "Да, насчёт контракта. Он почти закончился. Будем продлевать или как?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(509310335150, --[[ModItemUnitDataCompositeDef Grizzly Text RehireOutro ChatMessage voice:Grizzly]] "Второй раз всегда лучше получается. Так? Так!"),
		}),
	},
	MedicalDeposit = "none",
	StartingSalary = 480,
	SalaryIncrease = 270,
	SalaryLv1 = 175,
	SalaryMaxLv = 3600,
	LegacyNotes = '"A bear of a man, Grizzly Bornell carries the big guns of battle with authority. Even though heavy weapons are his specialty, he is just as lethal when left empty-handed. He\'s a soldier\'s soldier--all guts and no need for glory. Not surprisingly, his combat exploits are almost always the talk of the plane ride home."\n\nAdditional info:\nBig and burly, a bear of a man.\nHis toughness is to such an extent it borders on comical, yet understated. No need for kickass statements, it is simply understood.\nFriendly, and without pretence, he\'s the type of guy you\'d want next to you in combat.\nVoice: Deep, warm, reassuring.\nNot a big fan of traditional medical techniques, views them as crazy.',
	StartingLevel = 2,
	CustomEquipGear = function (self, items)
		self:TryEquip(items, "Handheld A", "Firearm")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	MaxHitPoints = 94,
	Likes = {
		"Shadow",
		"Wolf",
	},
	Dislikes = {
		"DrQ",
	},
	StartingPerks = {
		"HeavyWeaponsTraining",
		"GrizzlyPerk",
		"BloodlustPerk",
		"MartialArts",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Grizzly",
			'Weight', 50,
			'GameStates', set({
	DustStorm = false,
	FireStorm = false,
	Heat = false,
}),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grizzly_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "Heat" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grizzly_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "FireStorm" ),
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Grizzly_Savana_DustStorm",
			'Weight', 50,
			'GameStates', set( "DustStorm" ),
		}),
	},
	Equipment = {
		"Grizzly",
	},
	Specialization = "HeavyWeapons",
	gender = "Male",
	blocked_spots = set( "Weaponls", "Weaponrs" ),
}

