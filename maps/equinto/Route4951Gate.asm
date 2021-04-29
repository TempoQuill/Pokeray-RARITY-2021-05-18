	object_const_def
	const R4951G_GUARD_1_DEMO
	const R4951G_GUARD_2_DEMO

Route4951Gate_MapScripts:
	def_scene_scripts

	def_callbacks

R4951G_CopScriptLocation:
	scall R4951G_CopScriptStart
	writetext R4951G_LocationCopText
	waitbutton
	closetext
	end

R4951G_CopScriptTip:
	scall R4951G_CopScriptStart
	writetext R4951G_TipCopText
	waitbutton
	closetext
	end

R4951G_CopScriptStart:
	opentext
	writetext R4951GDemoGuardText
	playsound SFX_GET_BADGE
	waitsfx
	promptbutton
	end

R4951GDemoGuardText:
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

R4951G_LocationCopText:
	text "By the end of de-"
	line "velopment, beyond"
	cont "this point will"
	cont "lie ROUTE 51."
	done

R4951G_TipCopText:
	text "In the final re-"
	line "lease, you'll be"
	cont "able to assemble"
	cont "your own #MON!"

	para "Just look for it"
	line "in your main menu."
	done

Route4951Gate_MapEvents:
	db 0, 0

	def_warp_events
	warp_event 0, 4, ROUTE_49, 4
	warp_event 0, 5, ROUTE_49, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R4951G_CopScriptLocation, -1
	object_event 4, 7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R4951G_CopScriptTip, -1