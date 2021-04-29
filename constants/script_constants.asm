; person constants
PLAYER      EQU  0
LAST_TALKED EQU -2

; string buffer constants
	const_def
	const STRING_BUFFER_3 ; use wStringBuffer3
	const STRING_BUFFER_4 ; use wStringBuffer4
	const STRING_BUFFER_5 ; use wStringBuffer5
NUM_STRING_BUFFERS EQU const_value

; checkmoney/takemoney accounts
	const_def
	const YOUR_MONEY ; 0
	const MOMS_MONEY ; 1

; checkmoney/checkcoins return values
	const_def
	const HAVE_MORE   ; 0
	const HAVE_AMOUNT ; 1
	const HAVE_LESS   ; 2

; checkpokemail return values
	const_def
	const POKEMAIL_WRONG_MAIL ; 0
	const POKEMAIL_CORRECT    ; 1
	const POKEMAIL_REFUSED    ; 2
	const POKEMAIL_NO_MAIL    ; 3
	const POKEMAIL_LAST_MON   ; 4

; askforemailaddr return values
	const_def
	const EMAIL_CONTACT_GOT     ; 0
	const EMAIL_CONTACTS_FULL   ; 1
	const EMAIL_CONTACT_REFUSED ; 2

; trainertext arguments
	const_def
	const TRAINERTEXT_SEEN
	const TRAINERTEXT_WIN
	const TRAINERTEXT_LOSS

; readvar/writevar/loadvar arguments
; _GetVarAction.VarActionTable indexes (see engine/overworld/variables.asm)
	const_def
	const VAR_STRINGBUFFER2    ; 00
	const VAR_PARTYCOUNT       ; 01
	const VAR_BATTLERESULT     ; 02
	const VAR_BATTLETYPE       ; 03
	const VAR_TIMEOFDAY        ; 04
	const VAR_DEXCAUGHT        ; 05
	const VAR_DEXSEEN          ; 06
	const VAR_BADGES           ; 07
	const VAR_MOVEMENT         ; 08
	const VAR_FACING           ; 09
	const VAR_HOUR             ; 0a
	const VAR_WEEKDAY          ; 0b
	const VAR_MAPGROUP         ; 0c
	const VAR_MAPNUMBER        ; 0d
	const VAR_UNOWNCOUNT       ; 0e
	const VAR_ROOFPALETTE      ; 0f
	const VAR_BOXSPACE         ; 10
	const VAR_CONTESTMINUTES   ; 11
	const VAR_XCOORD           ; 12
	const VAR_YCOORD           ; 13
	const VAR_SPECIALPHONECALL ; 14
NUM_VARS EQU const_value       ; 15

; variable action types
RETVAR_STRBUF2 EQU (0 << 6)
RETVAR_ADDR_DE EQU (1 << 6)
RETVAR_EXECUTE EQU (2 << 6)

; PlayerEventScriptPointers indexes (see engine/overworld/events.asm)
	const_def -1
	const PLAYEREVENT_MAPSCRIPT
	const PLAYEREVENT_NONE
	const PLAYEREVENT_SEENBYTRAINER
	const PLAYEREVENT_TALKTOTRAINER
	const PLAYEREVENT_ITEMBALL
	const PLAYEREVENT_CONNECTION
	const PLAYEREVENT_WARP
	const PLAYEREVENT_FALL
	const PLAYEREVENT_WHITEOUT
	const PLAYEREVENT_HATCH
	const PLAYEREVENT_JOYCHANGEFACING
NUM_PLAYER_EVENTS EQU const_value

; PlayerMovement.pointers indexes (see engine/overworld/events.asm)
	const_def
	const PLAYERMOVEMENT_NORMAL
	const PLAYERMOVEMENT_WARP
	const PLAYERMOVEMENT_TURN
	const PLAYERMOVEMENT_FORCE_TURN
	const PLAYERMOVEMENT_FINISH
	const PLAYERMOVEMENT_CONTINUE
	const PLAYERMOVEMENT_EXIT_WATER
	const PLAYERMOVEMENT_JUMP

; script data sizes (see macros/scripts/maps.asm)
SCENE_SCRIPT_SIZE EQU 4 ; scene_script
CALLBACK_SIZE     EQU 3 ; callback
WARP_EVENT_SIZE   EQU 5 ; warp_event
COORD_EVENT_SIZE  EQU 8 ; coord_event
BG_EVENT_SIZE     EQU 5 ; bg_event
OBJECT_EVENT_SIZE EQU 13 ; object_event

; bg_event types
; TryBGEvent arguments (see engine/overworld/events.asm)
	const_def
	const BGEVENT_READ
	const BGEVENT_UP
	const BGEVENT_DOWN
	const BGEVENT_RIGHT
	const BGEVENT_LEFT
	const BGEVENT_IFSET
	const BGEVENT_IFNOTSET
	const BGEVENT_ITEM
	const BGEVENT_COPY

; object_event types
; TryObjectEvent arguments (see engine/overworld/events.asm)
	const_def
	const OBJECTTYPE_SCRIPT
	const OBJECTTYPE_ITEMBALL
	const OBJECTTYPE_TRAINER
	const OBJECTTYPE_3
	const OBJECTTYPE_4
	const OBJECTTYPE_5
	const OBJECTTYPE_6

; command queue members
CMDQUEUE_TYPE  EQU 0
CMDQUEUE_ADDR  EQU 1
CMDQUEUE_02    EQU 2
CMDQUEUE_03    EQU 3
CMDQUEUE_04    EQU 4
CMDQUEUE_05    EQU 5
CMDQUEUE_ENTRY_SIZE EQU 6
CMDQUEUE_CAPACITY EQU 4

; HandleQueuedCommand.Jumptable indexes (see engine/overworld/events.asm)
	const_def
	const CMDQUEUE_NULL
	const CMDQUEUE_TYPE1
	const CMDQUEUE_STONETABLE
	const CMDQUEUE_TYPE3
	const CMDQUEUE_TYPE4
NUM_CMDQUEUE_TYPES EQU const_value

; elevfloor macro values
; ElevatorFloorNames indexes (see data/events/elevator_floors.asm)
	const_def
	const FLOOR_B4F
	const FLOOR_B3F
	const FLOOR_B2F
	const FLOOR_B1F
	const FLOOR_1F
	const FLOOR_2F
	const FLOOR_3F
	const FLOOR_4F
	const FLOOR_5F
	const FLOOR_6F
	const FLOOR_7F
	const FLOOR_8F
	const FLOOR_9F
	const FLOOR_10F
	const FLOOR_11F
	const FLOOR_ROOF

; showemote arguments
; Emotes indexes (see data/sprites/emotes.asm)
	const_def
	const EMOTE_SHOCK ; 0
	const EMOTE_QUESTION ; 1
	const EMOTE_HAPPY ; 2
	const EMOTE_SAD ; 3
	const EMOTE_HEART ; 4
	const EMOTE_BOLT ; 5
	const EMOTE_SLEEP ; 6
	const EMOTE_FISH ; 7
	const EMOTE_SHADOW ; 8
	const EMOTE_ROD ; 9
	const EMOTE_BOULDER_DUST ; 10
	const EMOTE_GRASS_RUSTLE ; 11
EMOTE_FROM_MEM EQU -1

; fruittree arguments
; FruitTreeItems indexes (see data/items/fruit_trees.asm)
	const_def 1
	const FRUITTREE_ROUTE_49_1    ; 01
	const FRUITTREE_ROUTE_49_2    ; 02
NUM_FRUIT_TREES EQU const_value - 1

; describedecoration arguments
; DescribeDecoration.JumpTable indexes (see engine/overworld/decorations.asm)
	const_def
	const DECODESC_POSTER     ; 0
	const DECODESC_LEFT_DOLL  ; 1
	const DECODESC_RIGHT_DOLL ; 2
	const DECODESC_BIG_DOLL   ; 3
	const DECODESC_CONSOLE    ; 4

; ActivateFishingSwarm setval arguments
	const_def
	const FISHSWARM_NONE     ; 0
	const FISHSWARM_QWILFISH ; 1
	const FISHSWARM_REMORAID ; 2

; SpecialGameboyCheck return values
	const_def
	const GBCHECK_GB  ; 0
	const GBCHECK_SGB ; 1
	const GBCHECK_CGB ; 2

; SpecialReturnShuckle return values
	const_def
	const SHUCKIE_WRONG_MON ; 0
	const SHUCKIE_REFUSED   ; 1
	const SHUCKIE_RETURNED  ; 2
	const SHUCKIE_HAPPY     ; 3
	const SHUCKIE_FAINTED   ; 4

; HealMachineAnim setval arguments
; HealMachineAnim.Pointers indexes (see engine/events/heal_machine_anim.asm)
	const_def
	const HEALMACHINE_POKECENTER   ; 0
	const HEALMACHINE_LARCHS_LAB     ; 1
	const HEALMACHINE_HALL_OF_FAME ; 2

; UnownPuzzle setval arguments
; LoadUnownPuzzlePiecesGFX.LZPointers indexes (see engine/games/unown_puzzle.asm)
	const_def
	const UNOWNPUZZLE_KABUTO     ; 0
	const UNOWNPUZZLE_OMANYTE    ; 1
	const UNOWNPUZZLE_AERODACTYL ; 2
	const UNOWNPUZZLE_HO_OH      ; 3
NUM_UNOWN_PUZZLES EQU const_value
