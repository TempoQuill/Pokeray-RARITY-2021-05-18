	object_const_def
	const LARCHS_HOUSE_TEACHER

LarchsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LarchWifeScript:
	jumptextfaceplayer LarchWifeText

LHBookScript:
	jumptext LHBookShelfText

LHJournalScript:
	jumptext LHJournalText

LHWindowScript1:
	jumptext LHWindow1Text

LHWindowScript2:
	jumptext LHWindow2Text

LHWindow1Text:
	text "There's somebody's"
	line "house. Who's is it?"
	done

LHWindow2Text:
	text "I can see MT."
	line "VACUUM from down"
	cont "here!"
	done

LHJournalText:
	text "Hey! A notebook!"

	para "Looks like some"
	line "sort of music"
	cont "script."

	para "And a signature!"
	
	para "WA? What's that"
	line "supposed to mean?"
	done

LHBookShelfText:
	text "Look! Extensive"
	line "books! They look"
	cont "very hard to read!"
	done

LarchWifeText:
	text "Hi, <PLAY_G>!"

	para "PROF.LARCH is at"
	line "his lab, like"
	cont "usual."
	done

LarchsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 9, COTTAGE_TOWN, 3
	warp_event 3, 9, COTTAGE_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event 3, 0, BGEVENT_READ, LHWindowScript1
	bg_event 4, 0, BGEVENT_READ, LHWindowScript2
	bg_event 1, 1, BGEVENT_READ, LHBookScript
	bg_event 6, 1, BGEVENT_READ, LHBookScript
	bg_event 7, 1, BGEVENT_READ, LHBookScript
	bg_event 8, 1, BGEVENT_READ, LHBookScript
	bg_event 5, 8, BGEVENT_READ, LHJournalScript

	def_object_events
	object_event 2, 4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, LarchWifeScript, -1