	object_const_def
	const R4950G_OFFICER_1
	const R4950G_OFFICER_2

Route4950Gate_MapScripts:
	def_scene_scripts

	def_callbacks

R4950G_LapTopScript:
	readvar VAR_FACING
	ifequal RIGHT, R4950G_DragAwayScript
	jumptext R4950GText_LapTop

R4950G_DragAwayScript:
	playmusic MUSIC_OFFICER_ENCOUNTER
	showemote EMOTE_SHOCK, R4950G_OFFICER_1, 15
	applymovement R4950G_OFFICER_1, R4950GApproachMovement
	opentext
	writetext R4950GText_Caught1
	waitbutton
	closetext
	follow R4950G_OFFICER_1, PLAYER
	applymovement R4950G_OFFICER_1, R4950GReturnMovement
	stopfollow
	opentext
	writetext R4950GText_Caught2
	waitbutton
	closetext
	special RestartMapMusic
	end

R4950G_CopScriptLocation:
	scall R4950G_CopScriptStart
	writetext R4950G_LocationCopText
	waitbutton
	closetext
	end

R4950G_CopScriptTip:
	scall R4950G_CopScriptStart
	writetext R4950G_TipCopText
	waitbutton
	closetext
	end

R4950G_CopScriptStart:
	opentext
	writetext R4950GDemoGuardText
	playsound SFX_GET_BADGE
	waitsfx
	promptbutton
	end

R4950GReturnMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

R4950GApproachMovement:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step DOWN
	step_end

R4950GText_LapTop:
	text "A lap top!"
	line "Unguarded!"
	done

R4950GText_Caught1:
	text "Hey, kid! That's no"
	line "PC for you to use!"
	done

R4950GText_Caught2:
	text "Please, keep away"
	line "from the lap top."
	done

R4950GDemoGuardText:
	text "Thank you for"
	line "playing the #-"
IF DEF(_RAY)
	cont "MON Ray Version"
ELIF DEF(_SHADE)
	cont "MON Shade Version"
ENDC
	cont "demo."
	done

IF DEF(_RAY)
	db 0, 0
ENDC

R4950G_LocationCopText:
	text "By the end of de-"
	line "velopment, beyond"
	cont "this point will"
	cont "lie ROUTE 50."
	done

R4950G_TipCopText:
	text "Berry trees have"
	line "been renamed, but"
	cont "they've also kept"
	cont "their effects."

	text "PSNCURE-MEDICAL"
	line "PRZCURE-SHINY"
	cont "BURNT-SPICY"
	cont "ICE-FROSTY"
	cont "GOLD-FILLING"
	cont "MIRACLE-AUXILIARY"
	done

Route4950Gate_MapEvents:
	db 0, 0

	def_warp_events
	warp_event 3, 7, ROUTE_49, 3
	warp_event 4, 7, ROUTE_49, 3

	def_coord_events

	def_bg_events
	bg_event 1, 3, BGEVENT_READ, R4950G_LapTopScript

	def_object_events
	object_event 3, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, NPC_PAL_BLUE, OBJECTTYPE_SCRIPT, R4950G_CopScriptLocation, -1
	object_event 4, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, NPC_PAL_BLUE, OBJECTTYPE_SCRIPT, R4950G_CopScriptTip, -1
