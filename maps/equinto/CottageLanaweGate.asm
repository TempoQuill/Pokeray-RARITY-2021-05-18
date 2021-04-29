	object_const_def
	const CLG_GUARD_1_DEMO
	const CLG_GUARD_2_DEMO

CottageLanaweGate_MapScripts:
	def_scene_scripts

	def_callbacks

LaptopScript:
	jumptext LaptopText

CLG_Cop1Script:
	scall CLG_CopScriptStart
	writetext CLGCop1Text
	waitbutton
	closetext
	end

CLG_Cop2Script:
	scall CLG_CopScriptStart
	writetext CLGCop2Text
	waitbutton
	closetext
	end

CLG_CopScriptStart:
	opentext
	writetext CLGDemoGuardText
	playsound SFX_GET_BADGE
	waitsfx
	promptbutton
	end

CLGCop1Text:
	text "By the end of de-"
	line "velopment, beyond"
	cont "this point will"
	cont "lie LANAWE FOREST."
	done

CLGCop2Text:
	text "Did you check out"
	line "the kid at ROUTE"
	cont "49?"

	para "He'll tell you a"
	line "useful tip or two"
	cont "about #MON"
	cont "mechanics."
	done

CLGDemoGuardText:
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

LaptopText:
	text "Somebody's laptop!"

	para "Better leave it"
	line "alone."
	done

CottageLanaweGate_MapEvents
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 0, COTTAGE_TOWN, 5
	warp_event 4, 0, COTTAGE_TOWN, 6

	def_coord_events

	def_bg_events
	bg_event 1, 3, BG_EVENT_READ, LaptopScript

	def_object_events
	object_event 3, 7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CLG_Cop1Script, -1
	object_event 4, 7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CLG_Cop2Script, -1