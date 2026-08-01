UndefineClass('Merc_CarolThompson')
DefineClass.Merc_CarolThompson = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",

	comment = "Merc Carol Thompson",
			object_class = "UnitData",
	Affiliation = "AIM",
			Health = 76,
			Agility = 82,
			Dexterity = 70,
			Strength = 61,
			Wisdom = 83,
			Leadership = 12,
			Marksmanship = 76,
			Mechanical = 89,
			Explosives = 25,
			Medical = 13,
			Portrait = "Mod/Dv3mFVN/MercPortraits/Carol.png",
			BigPortrait = "Mod/Dv3mFVN/MercPortraits/Carol_Big.png",
			IsMercenary = true,
			Name = T(333387953860, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Name]] "Кэрол Томпсон"),
			Nick = T(478926966328, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Nick]] "Гайка"),
			AllCapsNick = T(650483012873, --[[ModItemUnitDataCompositeDef Merc_CarolThompson AllCapsNick]] "ГАЙКА"),
			Bio = T(813818008991, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Bio]] 'Кэрол Томпсон - целеустремленная британка, чей замечательный путь начался на заляпанных маслом полах автомастерской ее отца в грязном пригороде Лондона. После окончания учебы она покинула родной город и завербовалась в британскую армию, отслужив четыре года в эскадрилье Королевского танкового полка. После завершения службы ее путь в конечном итоге привел ее к работе по контракту, и она присоединилась к AIM. Известная как "Опытный механик", она доступна для найма, когда на поле боя требуется опыт работы механиком.'),
			Nationality = "England",
			Title = T(765028851206, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Title]] "Гаечка"),
			Email = T(398446960348, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Email]] "cthompson@coldmail.com"),
			snype_nick = T(888795602514, --[[ModItemUnitDataCompositeDef Merc_CarolThompson snype_nick]] "Кэрол"),
			Haggles = {
				PlaceObj('MercChatHaggle', {
					'Lines', {
						PlaceObj('ChatMessage', {
							'Text', T(258446624568, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text MercChatHaggle Lines ChatMessage voice:Merc_CarolThompson]] "Извините, но я заметила, что вы уже наняли этого Бобби. Если вы действительно хотите, чтобы я терпела его женоненавистнические высказывания, вам придется заплатить дополнительную плату."),
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
			Offline = {
				PlaceObj('ChatMessage', {
					'Text', T(999137065414, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text Offline ChatMessage voice:Merc_CarolThompson]] "Эй! Вы дозвонились Кэрол Томпсон. Извините, но в данный момент я недоступна. Если вы оставите мне свои контактные данные, я перезвоню вам как можно скорее. Спасибо!"),
				}),
			},
			GreetingAndOffer = {
				PlaceObj('ChatMessage', {
					'Text', T(808934242004, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text GreetingAndOffer ChatMessage voice:Merc_CarolThompson]] "Вы разговариваете с Кэрол Томпсон. Скажите, чем я могу вам помочь?"),
				}),
			},
			ConversationRestart = {
				PlaceObj('ChatMessage', {
					'Text', T(943445652391, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text ConversationRestart ChatMessage voice:Merc_CarolThompson]] "Эй! Спасибо, что позвонили мне еще раз. Что я могу для вас сделать сегодня?"),
				}),
			},
			IdleLine = {
				PlaceObj('ChatMessage', {
					'Text', T(571131529692, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text IdleLine ChatMessage voice:Merc_CarolThompson]] "Эй, ты в курсе, что звонить девушкам только для того, чтобы тяжело дышать в трубку, довольно жутко?"),
				}),
			},
			PartingWords = {
				PlaceObj('ChatMessage', {
					'Text', T(814301384362, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text PartingWords ChatMessage voice:Merc_CarolThompson]] "Договорились. Я принимаю ваши условия."),
				}),
			},
			RehireIntro = {
				PlaceObj('ChatMessage', {
					'Text', T(711717669491, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text RehireIntro ChatMessage voice:Merc_CarolThompson]] "Извините, но нам нужно поговорить о нашем контракте. Он скоро заканчивается. Скажите, вы были бы заинтересованы в его продлении?"),
				}),
			},
			RehireOutro = {
				PlaceObj('ChatMessage', {
					'Text', T(236611551986, --[[ModItemUnitDataCompositeDef Merc_CarolThompson Text RehireOutro ChatMessage voice:Merc_CarolThompson]] "Спасибо вам за доверие."),
				}),
			},
			StartingSalary = 1040,
			SalaryIncrease = 200,
			Likes = {
				"Ice",
				"Wolf",
			},
			LearnToLike = {
				"Grizzly",
				"Scope",
			},
			Dislikes = {
				"Steroid",
				"Hitman",
			},
			LearnToDislike = {
				"Fox",
				"Red",
			},
			StartingPerks = {
				"Merc_CarolThompson_Perk",
				"AutoWeapons",
				"MrFixit",
				"Flanker",
				"RelentlessAdvance",
			},
			AppearancesList = {
				PlaceObj('AppearanceWeight', {
					'Preset', "Merc_CarolThompson",
				}),
			},
			Equipment = {
				"Merc_CarolThompson",
			},
			Tier = "Rookie",
			Specialization = "Mechanic",
			pollyvoice = "Amy",
			gender = "Female",
			PersistentSessionId = "Merc_CarolThompson",
			VoiceResponseId = "Merc_CarolThompson",
			FallbackMissingVR = "Ice",
			DaysUntilOnline = 3,
}
