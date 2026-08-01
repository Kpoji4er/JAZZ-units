UndefineClass('Merc_AnnieDubois')
DefineClass.Merc_AnnieDubois = {
	__parents = { "UnitData" },
	__generated_by_class = "ModItemUnitDataCompositeDef",


	object_class = "UnitData",
	Affiliation = "AIM",
	Health = 81,
	Agility = 74,
	Dexterity = 86,
	Strength = 53,
	Wisdom = 79,
	Leadership = 16,
	Marksmanship = 82,
	Mechanical = 5,
	Explosives = 4,
	Medical = 39,
	Portrait = "Mod/Dv3mFVN/MercPortraits/Annie.png",
	BigPortrait = "Mod/Dv3mFVN/MercPortraits/Annie_Big.png",
	IsMercenary = true,
	Name = T(507100823787, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Name]] "Annie Dubois"),
	Nick = T(831096765297, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Nick]] "Annie"),
	AllCapsNick = T(348887836359, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois AllCapsNick]] "ANNIE"),
	Bio = T(367995690645, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Bio]] "Annie Dubois was born in the heart of picturesque Romandy and is one of the latest additions to A.I.M. Ever since her early years, she held a profound fascination for the art of marksmanship. Recently, she decided to turn her passion into a full-fledged career. Contract work for A.I.M. offers her the opportunity to hone her skills to complete her transformation from the unassuming girl next door into the alluring and lethal femme fatale she's always aspired to embody. As she dedicates herself to rigorous training, she not only gains mastery over the technical facets of her discipline but also unearths the confidence that defines her new persona."),
	Nationality = "Switzerland",
	Title = T(889428915015, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Title]] "Femme Fatale"),
	Email = T(336280417337, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Email]] "annie84@coldmail.com"),
	snype_nick = T(758847900650, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois snype_nick]] "annie"),
	Offline = {
		PlaceObj('ChatMessage', {
			'Text', T(710533966677, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text Offline ChatMessage voice:Merc_AnnieDubois]] "Hello, this is Annie talking. At the moment I'm not available but if you want me to call you back, please leave your contact information."),
		}),
	},
	GreetingAndOffer = {
		PlaceObj('ChatMessage', {
			'Text', T(100830077240, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text GreetingAndOffer ChatMessage voice:Merc_AnnieDubois]] "Hello, you are talking to Annie. What can I do for you?"),
		}),
	},
	ConversationRestart = {
		PlaceObj('ChatMessage', {
			'Text', T(506916036193, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text ConversationRestart ChatMessage voice:Merc_AnnieDubois]] "Thanks for calling me again. How can I help you?"),
		}),
	},
	IdleLine = {
		PlaceObj('ChatMessage', {
			'Text', T(465347828099, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text IdleLine ChatMessage voice:Merc_AnnieDubois]] "Hey? Is anyone there?"),
		}),
	},
	PartingWords = {
		PlaceObj('ChatMessage', {
			'Text', T(384255733520, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text PartingWords ChatMessage voice:Merc_AnnieDubois]] "Sounds good to me. We have a deal."),
		}),
	},
	RehireIntro = {
		PlaceObj('ChatMessage', {
			'Text', T(117916279700, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text RehireIntro ChatMessage voice:Merc_AnnieDubois]] "Just to be sure, did you notice that my contract is coming to an end soon? Would you like to discuss an extension?"),
		}),
	},
	RehireOutro = {
		PlaceObj('ChatMessage', {
			'Text', T(124414156966, --[[ModItemUnitDataCompositeDef Merc_AnnieDubois Text RehireOutro ChatMessage voice:Merc_AnnieDubois]] "Merci beaucoup."),
		}),
	},
	StartingSalary = 590,
	SalaryIncrease = 150,
	Likes = {
		"Buns",
		"MD",
	},
	LearnToLike = {
		"Steroid",
		"Mouse",
	},
	Dislikes = {
		"Grunty",
		"Meltdown",
	},
	LearnToDislike = {
		"Fox",
		"Hitman",
	},
	StartingPerks = {
		"Merc_AnnieDubois_Perk",
		"NightOps",
		"Deadeye",
	},
	AppearancesList = {
		PlaceObj('AppearanceWeight', {
			'Preset', "Merc_AnnieDubois",
		}),
	},
	Equipment = {
		"Merc_AnnieDubois",
	},
	Specialization = "Marksmen",
	pollyvoice = "Amy",
	gender = "Female",
	PersistentSessionId = "Merc_AnnieDubois",
	VoiceResponseId = "Merc_AnnieDubois",
	FallbackMissingVR = "Ice",
	DaysUntilOnline = 3,
}

