	object_const_def
	const ROUTE49_COOLTRAINER_M
	const ROUTE49_FRUIT_TREE1
	const ROUTE49_FRUIT_TREE2
	const ROUTE49_POKE_BALL1
	const ROUTE49_POKE_BALL2

Route49_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_DEBUG
	return

CoolTrainerCatchItemOffer:
	playmusic MUSIC_SHOW_ME_AROUND
	faceplayer
	opentext
	writetext Text_OfferCatchAdvice
	yesorno
	iffalse .AlternativeAdvice
	writetext Text_CatchAdvice
	waitbutton
	closetext
	restartmapmusic
	end
.AlternativeAdvice
	writetext Text_OfferItemAdvice
	yesorno
	iffalse .Refuse
	writetext Text_ItemAdvice
	waitbutton
	closetext
	restartmapmusic
	end
.Refuse
	writetext Text_CheckLater
	waitbutton
	closetext
	restartmapmusic
	end

Route49_Signpost:
	jumptext Text_Route49

Route49_HouseSign:
	jumptext Text_HouseSign

Route49_VacuumSign:
	jumptext Text_VacuumSign

Route49_FruitTree1:
	fruittree FRUITTREE_ROUTE_49_1

Route49_FruitTree2:
	fruittree FRUITTREE_ROUTE_49_2

Route49_Item1:
	itemball POTION

Route49_Item2:
	itemball ANTIDOTE

Text_VacuumSign:
	text "MT. VACUUM"
	line "south entrance"
	done

Text_HouseSign:
	text "PHILLIP REICH's"
	line "house"
	done

Text_Route49:
	text "ROUTE 49"

	para "East - ROUTE's"
	line "50 and 51"

	para "West - COTTAGE"
	line "TOWN"

	para "North - MT VACUUM"
	done

Text_ItemAdvice:
	text "There's a wide"
	line "variety of items"
	cont "to look out for."

	para "#MON can hold"
	line "certain items for"

	para "one of many"
	line "battle effects."

	para "You can also use"
	line "items straight"
	cont "out of your bag."

	para "Use items. Your"
	line "#MON will thank"
	cont "you later."
	done

Text_CatchAdvice:
	text "All #MON have a"
	line "catch rate, which"

	para "says how likely it"
	line "will be to catch a"
	cont "#MON."

	para "The ball you use"
	line "to catch will be"

	para "visible on your"
	line "#MON's stats"
	cont "screen."

	para "Now go get 'em!"
	done

Text_CheckLater:
	text "Okay. Just check"
	line "later if you need"
	cont "some advice."
	done

Text_OfferItemAdvice:
	text "Oh? How about some"
	line "for items?"
	done

Text_OfferCatchAdvice:
	text "Hi! Come to me for"
	line "advice on catching"
	cont "#MON?"
	done

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  1, ROUTE_49_HOUSE, 1
	warp_event  9,  3, ROUTE_49_VACUUM_GATE, 1
	warp_event 25,  3, ROUTE_49_50_GATE, 1
	warp_event 25, 16, ROUTE_49_51_GATE, 1
	warp_event 25, 17, ROUTE_49_51_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 3, 3, BGEVENT_READ, Route49_Signpost
	bg_event 4, 2, BGEVENT_READ, Route49_HouseSign
	bg_event 7, 3, BGEVENT_READ, Route49_VacuumSign

	def_object_events
	object_event 13, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CoolTrainerCatchItemOffer, -1
	object_event  8,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49_FruitTree1, -1
	object_event  9,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49_FruitTree2, -1
	object_event 12,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49_Item1, EVENT_ROUTE_49_POTION
	object_event 17,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49_Item2, EVENT_ROUTE_49_ANTIDOTE