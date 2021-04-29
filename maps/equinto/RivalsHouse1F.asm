	object_const_def
	const RIVALSHOUSE1F_MOM

RivalsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

RH1f_TVScript:
	readvar VAR_FACING
	ifequal RIGHT, .WrongSide
	jumptext RH1FText_TV
.WrongSide:
	jumptext RH1FWrongSideText

RH1f_DresserScript:
	jumptext RH1FText_Dresser

RH1f_StoveScript:
	checkevent EVENT_GOT_OLD_AMBER
	iffalse .FirstLook
	jumptext RH1FText_Stove2
.FirstLook:
	jumptext RH1FText_Stove1

RH1f_SinkScript:
	jumptext RH1FText_Sink

RH1f_FridgeScript:
	jumptext RH1FText_Fridge

RH1F_MomScript:
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .RivalLeft
	jumptextfaceplayer RH1FText_Mom1
.RivalLeft:
	jumptextfaceplayer RH1FText_Mom2

RH1FText_Mom1:
	text "Oh! Hi, <PLAYER>!"

	para "<RIVAL>'s upstairs"
	line "if you're looking"
	cont "for him."
	done

RH1FText_Mom2:
	text "Oh! <PLAYER>!"
	line "What brings you"
	cont "here?"

	para "<RIVAL>'s on his"
	line "way out of town if"
	cont "you're looking for"
	cont "him."
	done

RH1FText_Fridge:
	text "Mmm, lots of"
	line "goodies inside!"
	done

RH1FText_Sink:
	text "This sink sparkles"
	line "more than Mom's!"
	done

RH1FText_TV:
	text "An entire town is"
	line "fighting over a"
	cont "# DOLL!"

	text "Makes me want to"
	line "engage in a #-"
	cont "MON battle!"
	done

RH1FWrongSideText:
	text "Uh oh! Wrong side!"
	done

RH1FText_Dresser:
	text "Hey! This one's"
	line "just like the one"
	cont "at home!"
	done

RH1FText_Stove1:
	text "Mmmmm! Somebody's"
	line "steaming some"
	cont "vegetables!"

	para "Smells really"
	line "good!"
	done

RH1FText_Stove2:
	text "Hmm… do they steam"
	line "those veggies for"
	cont "that EEVEE?"
	done

RivalsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6, 7, COTTAGE_TOWN, 2
	warp_event 7, 7, COTTAGE_TOWN, 2
	warp_event 0, 0, RIVALS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event 2, 1, BGEVENT_READ, RH1f_TVScript
	bg_event 3, 1, BGEVENT_READ, RH1f_DresserScript
	bg_event 4, 1, BGEVENT_READ, RH1f_StoveScript
	bg_event 5, 1, BGEVENT_READ, RH1f_SinkScript
	bg_event 6, 1, BGEVENT_READ, RH1f_FridgeScript

	def_object_events
	object_event 5, 5, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RH1F_MomScript, -1
