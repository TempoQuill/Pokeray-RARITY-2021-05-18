	
	object_const_def
	const LARCHLAB_PROF_LARCH
	const LARCHLAB_AID
	const LARCHLAB_COLLEAUGE
	const LARCHLAB_POKE_BALL_1
	const LARCHLAB_POKE_BALL_2
	const LARCHLAB_POKE_BALL_3

LarchsLab_MapScripts:
	def_scene_scripts
	scene_script .MeetLarch ; SCENE_DEFAULT
	scene_script .DummyScene0 ; SCENE_LARCHSLAB_CANT_LEAVE
	scene_script .DummyScene0 ; SCENE_LARCHSLAB_NOTHING
	scene_script .DummyScene0 ; SCENE_LARCHSLAB_AIDE_GIVES_POTION

	def_callbacks

.MeetLarch:
	prioritysjump .WalkToLarch
.DummyScene0:
	end

.WalkToLarch:
	applymovement PLAYER, WalkToLarchMovement
	opentext
	writetext LabIntroText
	waitbutton
	closetext
	setscene SCENE_LARCHSLAB_CANT_LEAVE
	end

CantLeaveScene:
	turnobject LARCHLAB_PROF_LARCH, DOWN
	opentext
	writetext CantLeaveText
	waitbutton
	closetext
	applymovement CantLeaveMovement
	end

LarchScript:
	opentext
	checkevent EVENT_AIDS_POKEBALLS
	iftrue .GotBalls
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .ShowedOldAmber
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .GotOldAmber
	checkevent EVENT_AIDS_POTION
	iftrue .ChoseMon
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue .ChoseMon
	writetext LarchTalk1Text
	waitbutton
	closetext
	end
.ChoseMon:
	writetext LarchTalk2Text
	waitbutton
	closetext
	end
.GotOldAmber:
	checkitem ITEM_C0
	iffalse .ChoseMon
	writetext LarchTalk3Text
	promptbutton
	takeitem ITEM_C0
.ShowedOldAmber:
	writetext LarchTalk4Text
	waitbutton
	closetext
	end
.GotBalls:
	writetext LarchTalk5Text
	waitbutton
	closetext
	end

LabScientistScript:
	checkscene
	ifequal SCENE_LARCHSLAB_AIDE_GIVES_POTION, PotionCommon
	checkscene
	ifequal SCENE_LARCHSLAB_AIDE_GIVES_POKE_BALLS, PokeBallCommon
	checkevent EVENT_SHOWED_OLD_AMBER
	iftrue .PokeBallVar
	jumptextfaceplayer GoodLuckText
.PokeBallVar
	jumptextfaceplayer DexQuestText

PotionScene1:
	applymovement LARCHLAB_AID, ShortAidMovement
	scall PotionCommon
	applymovement LARCHLAB_AID, ShortRetMovement
	end

PotionScene2:
	applymovement LARCHLAB_AID, LongAidMovement
	scall PotionCommon
	applymovement LARCHLAB_AID, LongRetMovement
	end

PotionCommon:
	turnobject PLAYER, UP
	opentext
	writetext TakePotionText
	promptbutton
	verbosegiveitem POTION
	writetext GoodLuckText
	waitbutton
	closetext
	setscene SCENE_LARCHSLAB_NOTHING
	end

PokeBallScene1:
	applymovement LARCHLAB_AID, ShortAidMovement
	scall PokeBallCommon
	applymovement LARCHLAB_AID, ShortRetMovement
	end

PokeBallScene2:
	applymovement LARCHLAB_AID, LongAidMovement
	scall PokeBallCommon
	applymovement LARCHLAB_AID, LongRetMovement
	end

PokeBallCommon:
	turnobject PLAYER, UP
	opentext
	writetext TakePokeBallText
	promptbutton
	giveitem POKE_BALL, 5
	writetext DexQuestText
	waitbutton
	closetext
	setscene SCENE_LARCHSLAB_NOTHING
	end

ColleagueScript:
	jumptextfaceplayer ColleagueText

OrkidPokeballScript:
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue LookAtBallScript
	turnobject LARCHLAB_PROF_LARCH, UP
	refreshscreen
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext IsThisItText
	promptbutton
	writetext OrkidNameText
	yesorno
	iffalse UnsureScript
	disappear LARCHLAB_POKE_BALL_3
	setevent EVENT_GOT_ORKID
	writetext ChoseMonText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext GotMonText
	playsound SFX_1ST_PLACE
	waitsfx
	promptbutton
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement PLAYER, FromBall3Movement
	sjump GetLarchEmailScript

CruzPokeballScript:
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue LookAtBallScript
	turnobject LARCHLAB_PROF_LARCH, UP
	refreshscreen
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext IsThisItText
	promptbutton
	writetext CruzNameText
	yesorno
	iffalse UnsureScript
	disappear LARCHLAB_POKE_BALL_2
	setevent EVENT_GOT_CRUZ
	writetext ChoseMonText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext GotMonText
	playsound SFX_1ST_PLACE
	waitsfx
	promptbutton
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement PLAYER, FromBall2Movement
	sjump GetLarchEmailScript

FlambearPokeballScript:
	checkevent EVENT_GIFTED_LARCHS_MON
	iftrue LookAtBallScript
	turnobject LARCHLAB_PROF_LARCH, UP
	refreshscreen
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext IsThisItText
	promptbutton
	writetext FlambearNameText
	yesorno
	iffalse UnsureScript
	disappear LARCHLAB_POKE_BALL_1
	setevent EVENT_GOT_FLAMBEAR
	writetext ChoseMonText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext GotMonText
	playsound SFX_1ST_PLACE
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, SpecialMovement
	applymovement PLAYER, FromBall1Movement
	sjump GetLarchEmailScript

SpecialMovement:
	applymovement PLAYER, LongAidMovement
	sjump GetLarchEmailScript

LookAtBallScript:
	jumptext PokemonInBallText

UnsureScript:
	writetext ThinkCarefullyText
	waitbutton
	closetext
	end

GetLarchEmailScript:
	opentext
	writetext GetEmailText
	addmailaddr EMAIL_LARCH
	playsound SFX_REGISTER_EMAIL
	setevent EVENT_GIFTED_LARCHS_MON
	setevent EVENT_LARCHS_EMAIL
	setscene SCENE_LARCHSLAB_AIDE_GIVES_POTION
	setmapscene COTTAGE_TOWN, SCENE_FINISHED
	end

WindowCloseScript:
	jumptext WindowCloseText

WindowOpenScript:
	jumptext WindowOpenText

LabMachineScript:
	checkevent EVENT_GIFTED_LARCHS_MON
	iffalse .Curious
	opentext
	writetext LabOfferHealText
	yesorno
	iffalse .Fallthrough
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_LARCHS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
.Fallthrough:
	closetext
	end
.Curious:
	jumptext CuriousText

RightEndShelfScript:
	readvar VAR_FACING
	ifequal LEFT, NotFacingFront
	sjump NormalShelfScript

LeftEndShelfScript:
	readvar VAR_FACING
	ifequal RIGHT, NotFacingFront
NormalShelfScript:
	jumptext DifficultBooksText

NotFacingFront:
	jumptext LL_WrongSideText

ThisIsATrashScript:
	checkevent EVENT_GOT_OLD_AMBER
	iffalse .TrashBranch
	jumptext ThisIsTrashText

.TrashBranch:
	jumptext ThisIsMoreTrashText

WalkToLarchMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end

CantLeaveMovement:
	step LEFT
	step_end

ShortAidMovement:
	step LEFT
	turn_head DOWN
	step_end

LongRetMovement:
	step UP
	step RIGHT
ShortRetMovement:
	step RIGHT
	turn_head LEFT
	step_end

LongAidMovement:
	step LEFT
	step LEFT
	step DOWN
	step_end

FromBall3Movement:
	step LEFT
FromBall2Movement:
	step LEFT
FromBall1Movement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

ThisIsTrashText:
	text "A wrapper for a"
	line "bundle of pens!"

	para "Neat!"
	done

ThisIsMoreTrashText:
	text "I don't see that"
	line "wrapper anymore!"

	para "I guess the can"
	line "got refreshed."
	done

LL_WrongSideText:
	text "Oops! This is the"
	line "wrong side!"
	done

DifficultBooksText:
	text "Crammed with"
	line "difficult books!"
	done

LabOfferHealText:
	text "Heal your #MON?"
	done

CuriousText:
	text "What's this? A"
	line "healing machine?"
	done

WindowCloseText:
	text "My reflection!"
	line "Hey! Not bad!"
	done

WindowOpenText:
	text "Smells like an"
	line "EEVEE's been around"
	cont "here!"
	done

GetEmailText:
	text "Out of COTTAGE"
	line "TOWN limits, there"
	cont "should be a house"

	para "right next to the"
	line "gate to MT VACUUM."

	para "Heal your #MON"
	line "on that machine"
	cont "behind you if it's"
	cont "tired or hurt."

	para "Oh, here's my e-"
	line "mail in case any-"
	cont "thing comes up."

	para "PROF.LARCH gave"
	line "<PLAYER> his e-mail"
	cont "address!"
	done

ThinkCarefullyText:
	text "Think over it"
	line "carefully. Your"
	cont "partner is very"
	cont "important."
	done

ChoseMonText:
	text "Ah! A fine choice!"
	done

GotMonText:
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

IsThisItText:
	text "Is this the #-"
	line "MON you want?"
	done

FlambearNameText:
	text "CYNDAQUIL?"
	done

CruzNameText:
	text "TOTODILE?"
	done

OrkidNameText:
	text "CHIKORITA?"
	done

PokemonInBallText:
	text "A #MON that"
	line "PROF.LARCH caught!"
	done

LarchTalk1Text:
	text "Go on, now. Which"
	line "#MON would you"
	cont "like to choose?"
	done

LarchTalk2Text:
	text "If you see a wild"
	line "#MON, use yours"
	cont "to battle it!"
	done

LarchTalk3Text:
	text "Oh! What'd you get?"

	para "An OLD AMBER?!?"

	para "I last saw this way"
	line "back 7 years ago!"

	para "<PLAYER>, I think"
	line "you have what it"
	cont "takes to succeed"
	cont "in training #-"
	cont "MON!"

	para "Take the gym chal-"
	line "lenge here. I know"
	cont "one day, you'll be-"
	cont "come a champion."
	done

LarchTalk4Text:
	text "Make sure you talk"
	line "to your Mom before"
	cont "leave, okay?"

	para "I'm counting on"
	line "you!"
	done

LabIntroText:
	text "<PLAYER>! There you"
	line "are! I have you an"
	cont "errand to run."

	para "#MON items have"
	line "been getting re-"
	cont "discovered lately."

	para "Can you help look"
	line "into it?"

	para "I have a colleague"
	line "out of town who"
	cont "may have one."

	para "I'll give you a"
	line "#MON for the"
	cont "occasion."
	done

CantLeaveText:
	text "Hold on, <PLAYER>!"
	line "You gotta choose"
	cont "your starter #-"
	cont "MON first."
	done

TakePotionText:
	text "<PLAYER>! Take this"
	line "with you on your"
	cont "errand."
	done

GoodLuckText:
	text "Good luck. ROUTE"
	line "49 should be an"
	cont "almost direct path"
	cont "from here."
	done

TakePokeBallText:
	text "<PLAYER>! Use these"
	line "to fill out your"
	cont "#DEX!"
	done

DexQuestText:
	text "To fill out the"
	line "#DEX, you need"
	cont "to travel the"

	para "whole region by"
	line "every method out"
	cont "in the world!"

	para "Good luck!"
	done

ColleagueText:
	text "There's just a few"
	line "of us, so we can"
	cont "only get so much"
	cont "help around here."
	done

LarchsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 6, COTTAGE_TOWN, 4
	warp_event 11, 7, COTTAGE_TOWN, 4

	def_coord_events
	coord_event 5, 6, SCENE_LARCHSLAB_CANT_LEAVE, CantLeaveScene
	coord_event 5, 7, SCENE_LARCHSLAB_CANT_LEAVE, CantLeaveScene
	coord_event 8, 7, SCENE_LARCHSLAB_AIDE_GIVES_POTION, PotionScene1
	coord_event 9, 6, SCENE_LARCHSLAB_AIDE_GIVES_POTION, PotionScene2
	coord_event 8, 7, SCENE_LARCHSLAB_AIDE_GIVES_POKE_BALLS, PokeBallScene1
	coord_event 9, 6, SCENE_LARCHSLAB_AIDE_GIVES_POKE_BALLS, PokeBallScene2

	def_bg_events
	bg_event  4, 0, BGEVENT_READ, WindowCloseScript
	bg_event  5, 0, BGEVENT_READ, WindowOpenScript
	bg_event  2, 1, BGEVENT_READ, LabMachineScript
	bg_event  6, 1, BGEVENT_READ, LeftEndShelfScript
	bg_event  7, 1, BGEVENT_READ, NormalShelfScript
	bg_event  8, 1, BGEVENT_READ, NormalShelfScript
	bg_event  9, 1, BGEVENT_READ, NormalShelfScript
	bg_event 10, 1, BGEVENT_READ, NormalShelfScript
	bg_event 11, 1, BGEVENT_READ, NormalShelfScript
	bg_event  9, 3, BGEVENT_READ, ThisIsATrashScript
	bg_event  4, 5, BGEVENT_READ, LeftEndShelfScript
	bg_event  5, 5, BGEVENT_READ, NormalShelfScript
	bg_event  6, 5, BGEVENT_READ, NormalShelfScript
	bg_event  7, 5, BGEVENT_READ, NormalShelfScript
	bg_event  8, 5, BGEVENT_READ, NormalShelfScript
	bg_event  9, 5, BGEVENT_READ, NormalShelfScript
	bg_event 10, 5, BGEVENT_READ, NormalShelfScript
	bg_event 11, 5, BGEVENT_READ, NormalShelfScript
	bg_event  0, 9, BGEVENT_READ, NormalShelfScript
	bg_event  1, 9, BGEVENT_READ, NormalShelfScript
	bg_event  2, 9, BGEVENT_READ, NormalShelfScript
	bg_event  3, 9, BGEVENT_READ, NormalShelfScript
	bg_event  4, 9, BGEVENT_READ, NormalShelfScript
	bg_event  5, 9, BGEVENT_READ, RightEndShelfScript
	bg_event  8, 9, BGEVENT_READ, LeftEndShelfScript
	bg_event  9, 9, BGEVENT_READ, NormalShelfScript
	bg_event 10, 9, BGEVENT_READ, NormalShelfScript
	bg_event 11, 9, BGEVENT_READ, NormalShelfScript

	def_object_events
	object_event 3,  5, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LarchScript, -1
	object_event 8,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LabScientistScript, -1
	object_event 2, 10, SPRITE_DAISY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ColleagueScript, -1
	object_event 6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlambearPokeballScript, EVENT_BALL_FLAMBEAR
	object_event 7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CruzPokeballScript, EVENT_BALL_CRUZ
	object_event 8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrkidNameText, EVENT_BALL_ORKID
