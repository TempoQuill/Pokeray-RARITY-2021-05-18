	object_const_def
	const COTTAGETOWN_YOUNGSTER
	const COTTAGETOWN_COOLTRAINER_F

CottageTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .HelpSet ; SCENE_ON_JOURNEY_HELP
	scene_script .DummyScene0 ; SCENE_CT_DONE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.HelpSet: ; sets up a scene in Player's house
	setscene SCENE_ON_JOURNEY
.DummyScene0:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_COTTAGE
	endcallback

YounsterCatchesYouSceneNorth:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	turnobject COTTAGETOWN_YOUNGSTER, RIGHT
	showemote EMOTE_SHOCK, COTTAGETOWN_YOUNGSTER, 15
	opentext
	writetext PlayerStopText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext BigRushText
	waitbutton
	closetext
	applymovement PLAYER, RuntoYoungsterNorth
	opentext
	writetext SpeculationText
	waitbutton
	closetext
	special RestartMapMusic
	end

YounsterCatchesYouSceneSouth:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	turnobject COTTAGETOWN_YOUNGSTER, RIGHT
	showemote EMOTE_SHOCK, COTTAGETOWN_YOUNGSTER, 15
	opentext
	writetext PlayerStopText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext BigRushText
	waitbutton
	closetext
	applymovement PLAYER, RuntoYoungsterSouth
	opentext
	writetext SpeculationText
	waitbutton
	closetext
	special RestartMapMusic
	end

RivalsHouseSign:
	jumptext RivalHouseText

PlayersHouseSign:
	jumptext PlayerHouseText

LarchsLabSign:
	jumptext LabSignText

CottageTownSign:
	jumptext CTDescText

CottageCTFScript:
	jumptextfaceplayer CottageCTFText

CottageYScript:
	faceplayer
	opentext
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .DexGush
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .AmberGush
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue .MonGush
	writetext GearGushText
	waitbutton
	closetext
	end

.MonGush:
	writetext MonGushText
	waitbutton
	closetext
	end

.AmberGush:
	writetext AmberGushText
	waitbutton
	closetext
	end

.DexGush:
	writetext DexGushText
	waitbutton
	closetext
	end

RuntoYoungsterSouth:
	step UP
RuntoYoungsterNorth:
	step LEFT
	step LEFT
	step LEFT
	step_end

GearGushText:
	text "That #GEAR!"

	para "You must be well"
	line "off here!"

	para "Who got that for"
	line "you?"
	done

MonGushText:
	text "That #MON!"

	para "I want one too!"

	para "Can I talk to"
	line "PROF.LARCH about"
	cont "getting one?"
	done

AmberGushText:
	text "Is that an OLD"
	line "AMBER?"

	para "I thought that"
	line "item was lost"
	cont "years ago!"
	done

DexGushText:
	text "Wait, is that a"
	line "#DEX?"

	para "I never noticed"
	line "before you re-"
	cont "turned to the lab!"
	done

CottageCTFText:
	text "Hi <PLAYER>! What"
	line "do you think of"
	cont "the EQUINTO region?"
	done

CTDescText:
	text "COTTAGE TOWN"
	
	para "The hub for new"
	line "journeys."
	done

LabSignText:
	text "PROFESSOR LARCH's"
	line "#MON Lab"
	done

PlayerStopText:
	text "<PLAYER>'s house"
	done

RivalHouseText:
	text "<RIVAL>'s house"
	done

PlayerStopText:
	text "<PLAYER>! Wait up!"
	done

BigRushText:
	text "What's the big"
	line "rush?"
	done

SpeculationText:
	text "Did you forget to"
	line "talk to PROFESSOR"
	cont "LARCH?"

	para "You don't even have"
	line "a starter yet!"
	done

CottageTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, PLAYERS_HOUSE_1F, 1
	warp_event  1,  3, RIVALS_HOUSE_1F, 1
	warp_event  1,  9, LARCHS_HOUSE, 1
	warp_event  8,  9, LARCHS_LAB, 1
	warp_event  0, 12, COTTAGE_ROUTE_55_GATE, 1
	warp_event  0, 13, COTTAGE_ROUTE_55_GATE, 2
	warp_event  7, 15, COTTAGE_LANAWE_GATE, 1
	warp_event  8, 15, COTTAGE_LANAWE_GATE, 2

	def_coord_events
	coord_event 16, 12, SCENE_DEFAULT, YounsterCatchesYouSceneNorth
	coord_event 16, 13, SCENE_DEFAULT, YounsterCatchesYouSceneSouth

	def_bg_events
	bg_event  2,  4, BGEVENT_READ, RivalsHouseSign
	bg_event 13,  3, BGEVENT_READ, PlayersHouseSign
	bg_event  3, 11, BGEVENT_READ, CottageTownSign
	bg_event  7, 11, BGEVENT_READ, LarchsLabSign

	def_object_events
	object_event 12, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CottageYScript, -1
	object_event  9,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CottageCTFScript, -1
