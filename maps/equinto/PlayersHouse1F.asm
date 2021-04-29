	object_const_def
	const MOM_DEFAULT
	const MOM_NITE
	const MOM_MORN
	const MOM_DAY

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script .FirstComeDownScript ; SCENE_DEFAULT
	scene_script .Dummy ; SCENE_ON_JOURNEY
	scene_script .Dummy ; SCENE_PH1F_DONE

	def_callbacks

.Dummy:
	end

.FirstComeDownScript:
	applymovement PLAYER, EntranceMovement
	playmusic MUSIC_SHOW_ME_AROUND
	special NameRival
	special SetDayOfWeek
	turnobject MOM_DEFAULT, UP
	showemote EMOTE_SHOCK, MOM_DEFAULT, 15
	opentext
	writetext MomGreetText
	waitbutton
	closetext
	applymovement MOM_DEFAULT, ApproachPlayerMovement
	opentext
	writetext RivalDonatedGearText
	setflag ENGINE_POKEGEAR
	setflag ENGINE_EMAIL_CARD
	setflag ENGINE_MAP_CARD
	addmailaddr EMAIL_MOM
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext NoNeedToExplainThisText
	waitbutton
	closetext
	applymovement MOM_DEFAULT, ReturnToTableMovement
	special RestartMapMusic
	end

MomScript:
	checkscene SCENE_ON_JOURNEY
	iftrue .Mom6
	checkevent EVENT_MOM_KNOWS_ABOUT_JOURNEY
	iftrue .Mom5
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .Mom4
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .Mom3
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue .Mom2
	jumptextfaceplayer DontBeLongText

.Mom2:
	jumptextfaceplayer CuriousAboutErrandText

.Mom3:
	jumptextfaceplayer ShowOldAmberText

.Mom4:
	setevent EVENT_MOM_KNOWS_ABOUT_JOURNEY
	opentext
	writetext ShowPokemonText
	promptbutton
	scall .JumpstdReceiveItem
	verbosegiveitem POTION
	iffalse .BagFull
	writetext ExploreItselfText
	waitbutton
.BagFull:
	setscene SCENE_ON_JOURNEY_HELP
	closetext
	end

.JumpstdReceiveItem
	jumpstd recieveitem

.Mom5:
	jumptextfaceplayer WelcomeHomeText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText

TVScript:
	jumptext MomTVText

DresserScript:
	readvar VAR_FACING
	ifequal LEFT, .WrongSide
	ifequal RIGHT, .WrongSide
	ifequal DOWN, .WrongSide
	jumptext DresserText
.WrongSide
	jumpstd WrongSideScript

ApproachPlayerMovement:
	step RIGHT
	step UP
	step UP
	step_end

ReturnToTableMovement:
	step LEFT
	step DOWN
EntranceMovement:
	step DOWN
	step_end

DresserText:
	text "Lots of personal"
	line "items."

	para "better leave 'em"
	line "alone."
	done

MomTVText:
	text "A grainy movie is"
	line "playing on the TV."

	para "Oh! It's being"
	line "played on a VHS."
	done

FridgeText:
	text "Packed with all"
	line "kinds of food and"
	cont "drinks!"
	done

SinkText:
	text "The sink's so spot-"
	line "less, I can see"
	cont "myself!"

	para "Ooh, I look funny"
	line "through the sink!"
	done

StoveText:
	text "Mmm… MOM's signa-"
	line "ture SABERBURGERS!"
	done

WelcomeHomeText:
	text "Welcome home,"
	line "<PLAYER>! Trying"
	cont "very hard I see."

	para "I've kept your room"
	line "just the way you"
	cont "like it."

	para "Check it out if"
	line "you want."
	done

ExploreItselfText:
	text "Well, EQUINTO isn't"
	line "going to explore"
	cont "itself. Go on."
	done

ShowPokemonText:
	text "Aww… what a cute"
	line "#MON! Did LARCH"
	cont "give it to you?"

	para "I guess that means"
	line "you're leaving…"

	para "But don't worry,"
	line "<PLAYER>. I'm behind"
	cont "you 100 percent."

	para "In fact…"
	done

ShowOldAmberText:
	text "Hey <PLAYER>, what's"
	line "that you have?"

	para "An OLD AMBER?"

	para "Must be one of the"
	line "rediscovered items"
	cont "I heard about."

	para "Show it to LARCH."
	line "He'll know what to"
	cont "do with that."
	done

CuriousAboutErrandText:
	text "So, what's your er-"
	line "rand from LARCH?"

	para "…"

	para "Okay! I think I"
	line "know who you're"
	cont "talking about."
	
	para "You should be very"
	line "proud about being"
	cont "a reliable child."
	done

DontBeLongText:
	text "Don't be long; you"
	line "don't want to be"
	cont "late, <PLAYER>."
	done

MomGreetText:
	text "Ah! <PLAY_G>!"
	done

RivalDonatedGearText:
	text "You came down just"
	line "in time! <RIVAL>"
	cont "donated this #-"
	cont "MON GEAR for you!"

	para "Here you go!"

	para "<PLAYER> recieved"
	line "the #GEAR!"
	sound_dex_fanfare_20_49
	done

NoNeedToExplainThisText:
	text "I see the day's"
	line "already been set."

	para "Well, looks like"
	line "there's nothing"
	cont "left to set up."

	para "Off you go, then."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 7, COTTAGE_TOWN, 2
	warp_event 4, 7, COTTAGE_TOWN, 2
	warp_event 7, 0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event 0, 1, BGEVENT_READ, StoveScript
	bg_event 1, 1, BGEVENT_READ, SinkScript
	bg_event 2, 1, BGEVENT_READ, FridgeScript
	bg_event 5, 1, BGEVENT_READ, TVScript
	bg_event 6, 1, BGEVENT_READ, DresserScript

	def_object_events
	object_event 6, 3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event 0, 2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event 2, 3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event 6, 4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2