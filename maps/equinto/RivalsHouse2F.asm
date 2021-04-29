	object_const_def
	const RIVALS_HOUSE_2F_RIVAL

RivalsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

RH2f_RivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	writetext
	waitbutton RH2fText_Rival
	closetext
	turnobject RIVALS_HOUSE_2F_RIVAL, UP
	special RestartMapMusic
	end

RH2f_ConsoleScript:
	jumptext RH2fText_Console

RH2f_RadioScript:
	readvar VAR_FACING
	ifequal RIGHT, RH2f_WrongSide
	jumptext RH2fText_Radio

RH2f_PCScript:
	readvar VAR_FACING
	ifequal LEFT, RH2f_WrongSide
	jumptext RH2fText_PC

RH2f_WrongSide:
	jumptext RH2fText_WrongSide

RH2f_BedScript:
	jumptext RH2fText_Bed

RH2fText_Rival:
	text "Who're you?!?"

	para "<PLAYER>? Well,"
	line "I'm busy with my"
	cont "PC!"

	para "Can't you give me a"
	line "little privacy?"
	done

RH2fText_WrongSide:
	text "Oh no! Wrong side!"
	done

RH2fText_Bed:
	text "<RIVAL>'s bed!"

	para "I have my own!"
	line "Better get going!"
	done

RH2fText_Console:
	text "An N64!"

	para "Oh right, this is"
	line "<RIVAL>'s."

	para "Better get going!"
	done

RH2fText_PC:
	text "It's <RIVAL>'s PC!"
	line "Better leave it."
	done

RH2fText_Radio:
	text "Wow! His radio's in"
	line "worse shape than"
	cont "mine!"
	done

RivalsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 0, 0, RIVALS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event 2, 1, BGEVENT_READ, RH2f_RadioScript
	bg_event 3, 1, BGEVENT_READ, RH2f_PCScript
	bg_event 5, 1, BGEVENT_READ, RH2f_WrongSide
	bg_event 5, 2, BGEVENT_READ, RH2f_ConsoleScript
	bg_event 0, 4, BGEVENT_READ, RH2f_BedScript
	bg_event 1, 4, BGEVENT_READ, RH2f_BedScript

	def_object_events
	object_event 3, 2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RH2f_RivalScript, EVENT_GOT_OLD_AMBER