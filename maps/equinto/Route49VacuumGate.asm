	object_const_def
	const R49VG_OFFICER_1
	const R49VG_OFFICER_2

Route49VacuumGate_MapScripts:
	def_scene_scripts

	def_callbacks

R49VG_LapTopScript:
	readvar VAR_FACING
	ifequal RIGHT, R49VG_DragAwayScript
	jumptext R49VGText_LapTop

R49VG_DragAwayScript:
	playmusic MUSIC_OFFICER_ENCOUNTER
	showemote EMOTE_SHOCK, R49VG_OFFICER_1, 15
	applymovement R49VG_OFFICER_1, R49VGApproachMovement
	opentext
	writetext R49VGText_Caught1
	waitbutton
	closetext
	follow R49VG_OFFICER_1, PLAYER
	applymovement R49VG_OFFICER_1, R49VGReturnMovement
	stopfollow
	opentext
	writetext R49VGText_Caught2
	waitbutton
	closetext
	special RestartMapMusic
	end

R49VG_CopScriptLocation:
	scall R49VG_CopScriptStart
	writetext R49VG_LocationCopText
	waitbutton
	closetext
	end

R49VG_CopScriptTip:
	scall R49VG_CopScriptStart
	writetext R49VG_TipCopText
	waitbutton
	closetext
	end

R49VG_CopScriptStart:
	opentext
	writetext R49VGDemoGuardText
	playsound SFX_GET_BADGE
	waitsfx
	promptbutton
	end

R49VGReturnMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

R49VGApproachMovement:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step DOWN
	step_end

R49VGText_LapTop:
	text "A lap top!"
	line "Unguarded!"
	done

R49VGText_Caught1:
	text "Hey, kid! That's no"
	line "PC for you to use!"
	done

R49VGText_Caught2:
	text "Please, keep away"
	line "from the lap top."
	done

R49VGDemoGuardText:
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

R49VG_LocationCopText:
	text "By the end of de-"
	line "velopment, beyond"
	cont "this point will"
	cont "lie MT VACUUM."
	done

R49VG_TipCopText:
	text "New held items"
	line "exist now."

	para "Some double stat"
	line "boosts while other"
	cont "items can inflict"
	cont "status problems."
	done

Route49VacuumGate_MapEvents:
	db 0, 0

	def_warp_events
	warp_event 3, 7, ROUTE_49, 2
	warp_event 4, 7, ROUTE_49, 2

	def_coord_events

	def_bg_events
	bg_event 1, 3, BGEVENT_READ, R49VG_LapTopScript

	def_object_events
	object_event 3, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, NPC_PAL_BLUE, OBJECTTYPE_SCRIPT, R49VG_CopScriptLocation, -1
	object_event 4, 1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, NPC_PAL_BLUE, OBJECTTYPE_SCRIPT, R49VG_CopScriptTip, -1
