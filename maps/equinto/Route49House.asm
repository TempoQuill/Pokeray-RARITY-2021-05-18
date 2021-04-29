	object_const_def
	const ROUTE49HOUSE_EEVEE
	const ROUTE49HOUSE_GENTLEMAN

Route49House_MapScripts:
	def_scene_scripts
	scene_script .InitialEntrance ; SCENE_DEFAULT
	scene_script .Dummy ; SCENE_FINISHED

.Dummy:
	end

.InitialEntrance:
	turnobject ROUTE49HOUSE_GENTLEMAN, DOWN
	showemote EMOTE_SHOCK, ROUTE49HOUSE_GENTLEMAN, 15
	opentext
	writetext InitialEntranceText1
	promptbutton
	cry EEVEE
	closetext
	applymovement PLAYER, ApproachPhilMovement
	opentext
	writetext InitialEntranceText2
	playsound SFX_KEY_ITEM
	giveitem ITEM_C0
	setevent EVENT_GOT_OLD_AMBER
	writetext InitialEntranceText3
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_MAGNET_TRAIN
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext InitialEntranceText4
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ROUTE49HOUSE_EEVEE, 15
	applymovement ROUTE49HOUSE_EEVEE, ApproachPlayerMovement
	cry EEVEE
	opentext
	writetext EeveeGaveDexText
	setflag ENGINE_POKEDEX
	waitbutton
	closetext
	cry EEVEE
	applymovement ROUTE49HOUSE_EEVEE, ReturnMovement
	end

R49H_MapScript:
	jumpstd TownMapScript
	end

R49H_WindowScript:
	jumptext R49HText_Window

R49H_PCScript:
	jumptext R49HText_PC

R49H_TVScript:
	jumptext R49HText_TV

R49H_ShelfScript1:
	checkvar VAR_FACING
	ifequal RIGHT, R49H_WrongSideScript
R49H_ShelfScript2:
	jumpstd DifficultBookshelfScript
	end

R49H_WrongSideScript:
	jumpstd WrongSideScript
	end

R49H_PlantScript:
	jumptext R49HText_Plant

R49H_PhilScript:
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .AfterShow
	jumptextfaceplayer InitialEntranceText4
.AfterShow:
	jumptextfaceplayer PhilReichText1

R49H_IggyScript:
	faceplayer
	cry EEVEE
	wait 10
	turnobject ROUTE49HOUSE_EEVEE, RIGHT
	end

ReturnMovement:
	step UP
	step UP
	step RIGHT
	step_end

ApproachPlayerMovement:
	step LEFT
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

ApproachPhilMovement:
	step UP
	step UP
	step_end

EeveeGaveDexText:
	text "EEVEE gave you a"
	line "#DEX!"
	sound_dex_fanfare_80_109
	done

InitialEntranceText1:
	text "Ah! <PLAYER>!"
	line "Welcome!"
	done

InitialEntranceText2:
	text "I have an old item"
	line "for PROF.LARCH to"
	cont "look over."

	text "PHIL gave <PLAYER>"
	line "an OLD AMBER!"
	done

InitialEntranceText3:
	text "There's a few other"
	line "items that've been"
	cont "resurfaced, but"

	para "this sample should"
	line "plenty do."

	para "PROF.LARCH should"
	line "know where to re-"
	cont "vive this fossil."

	para "Thanks for your"
	line "company, <PLAYER>."

	para "In return, let's"
	line "rest your #MON!"
	done

InitialEntranceText4:
	text "You'd best be"
	line "going, <PLAYER>."
	cont "Break a leg!"
	done

PhilReichText1:
	text "So, you talked to"
	line "PROF.LARCH, huh?"

	para "That's neat. So,"
	line "what did he say?"
	done

R49HText_Window:
	text "MT. VACUUM is dead"
	line "ahead from here."
	done

R49HText_PC:
	text "PHIL's PC! Lots of"
	line "EEVEE photos here!"
	done

R49HText_TV:
	text "A PIDGEOT was set-"
	line "ing up a banner!"

	para "Lots of slapstick"
	line "is going on on TV!"
	done

R49HText_Plant:
	text "Oooh! Pretty"
	line "plants!"
	done

Route49House_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, ROUTE_49, 1
	warp_event 3, 7, ROUTE_49, 1

	def_coord_events

	def_bg_events
	bg_event 3, 0, BGEVENT_READ, R49H_MapScript
	bg_event 4, 0, BGEVENT_READ, R49H_WindowScript
	bg_event 1, 1, BGEVENT_READ, R49H_PCScript
	bg_event 2, 1, BGEVENT_READ, R49H_TVScript
	bg_event 6, 1, BGEVENT_READ, R49H_ShelfScript1
	bg_event 7, 1, BGEVENT_READ, R49H_ShelfScript2
	bg_event 0, 3, BGEVENT_READ, R49H_PlantScript
	bg_event 0, 5, BGEVENT_READ, R49H_PlantScript
	bg_event 7, 5, BGEVENT_READ, R49H_PlantScript
	bg_event 0, 7, BGEVENT_READ, R49H_PlantScript
	bg_event 7, 5, BGEVENT_READ, R49H_PlantScript

	def_object_events
	object_event 2, 3, SPRITE_GROWLITHE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R49H_IggyScript, -1
	object_event 2, 4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R49H_PhilScript, -1
