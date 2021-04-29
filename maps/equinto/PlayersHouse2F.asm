PlayersHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom

.InitializeRoom
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

2FPlayersHouseTownMapScript:
	jumpstd TownMapScript
	end

2FPlayersHouseShelfScript:
	jumptext ReadItAHundredTimesText

PH2F_BedScript:
	checkevent EVENT_GIFTED_LARCHS_MON
	iffalse .NoTime
	opentext
	writetext NiceBedText
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
	writetext ThatsBetterText
	waitbutton
	closetext
	end

.NoTime
	jumptext NoTimeText

PH2F_PlantScript:
	jumptext PH2F_PlantText

RadioScript:
	jumptext RadioText

2FPlayersHouseTVScript:
	jumptext CartoonPlayingText

2FPlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

PH2F_PlantText:
	text "That plant's been"
	line "on this spot since"
	cont "MOM and I moved"
	cont "in."

	para "It livens up the"
	line "air in here."
	done

NoTimeText:
	text "A nice, comfy bed!"
	line "No time to lose!"
	done

ThatsBetterText:
	text "Ah, that's better!"
	done

NiceBedText:
	text "A nice, comfy bed!"
	line "Time for a nap…"
	done

RadioText:
	text "My radio."

	para "It needs to be"
	line "repaired though."
	done

ReadItAHundredTimesText:
	text "Contains a book I"
	line "read for years."

	para "100 times to be"
	line "exact."
	done

CartoonPlayingText:
	text "A cartoon about 6"
	line "#MON is playing."

	para "The #MON are"
	line "approaching a"
	cont "forest."

	para "I better go too!"
	done

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event 4, 0, BGEVENT_READ, 2FPlayersHouseTownMapScript
	bg_event 0, 1, BGEVENT_UP, 2FPlayersHousePCScript
	bg_event 1, 1, BGEVENT_READ, RadioScript
	bg_event 2, 1, BGEVENT_READ, 2FPlayersHouseTVScript
	bg_event 3, 1, BGEVENT_READ, 2FPlayersHouseShelfScript
	bg_event 0, 4, BGEVENT_READ, PH2F_BedScript
	bg_event 3, 5, BGEVENT_READ, PH2F_PlantScript

	def_object_events