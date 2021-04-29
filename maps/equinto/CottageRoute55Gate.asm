	object_const_def
	const CR55G_GUARD_1_DEMO
	const CR55G_GUARD_2_DEMO

CottageRoute55Gate_MapScripts:
	def_scene_scripts

	def_callbacks

CR55G_Cop1Script:
	scall CR55G_CopScriptStart
	writetext CR55GCop1Text
	waitbutton
	closetext
	end

CR55G_Cop2Script:
	scall CR55G_CopScriptStart
	writetext CR55GCop2Text
	waitbutton
	closetext
	end

CR55G_CopScriptStart:
	opentext
	writetext CR55GDemoGuardText
	playsound SFX_GET_BADGE
	waitsfx
	promptbutton
	end

CR55GCop1Text:
	text "By the end of de-"
	line "velopment, beyond"
	cont "this point will"
	cont "lie ROUTE 55."
	done

CR55GCop2Text:
	text "Look for litter on"
	line "the ground. You'll"
	cont "find useful items"
	cont "pretty easily."

	para "Non-trainers will"
	line "find no use for"
	cont "POTIONS or ANTI-"
	cont "DOTES."
	done

CR55GDemoGuardText:
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

CottageRoute55Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 4, COTTAGE_TOWN, 7
	warp_event 7, 5, COTTAGE_TOWN, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 0, 4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CR55G_Cop1Script, -1
	object_event 0, 5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CR55G_Cop2Script, -1