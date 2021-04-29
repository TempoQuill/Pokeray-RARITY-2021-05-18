; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const BRIGHTPOWDER ; 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const TOWN_MAP     ; 06
	const BICYCLE      ; 07
	const MOON_STONE   ; 08
	const ANTIDOTE     ; 09
	const BURN_HEAL    ; 0a
	const ICE_HEAL     ; 0b
	const AWAKENING    ; 0c
	const PARALYZEHEAL ; 0d
	const FULL_RESTORE ; 0e
	const MAX_POTION   ; 0f
	const HYPER_POTION ; 10
	const SUPER_POTION ; 11
	const POTION       ; 12
	const ESCAPE_ROPE  ; 13
	const REPEL        ; 14
	const MAX_ELIXER   ; 15
	const FIRE_STONE   ; 16
	const THUNDERSTONE ; 17
	const WATER_STONE  ; 18
	const ITEM_19      ; 19
	const HP_UP        ; 1a
	const PROTEIN      ; 1b
	const IRON         ; 1c
	const CARBOS       ; 1d
	const LUCKY_PUNCH  ; 1e
	const CALCIUM      ; 1f
	const RARE_CANDY   ; 20
	const X_ACCURACY   ; 21
	const LEAF_STONE   ; 22
	const METAL_POWDER ; 23
	const NUGGET       ; 24
	const POKE_DOLL    ; 25
	const FULL_HEAL    ; 26
	const REVIVE       ; 27
	const MAX_REVIVE   ; 28
	const GUARD_SPEC   ; 29
	const SUPER_REPEL  ; 2a
	const MAX_REPEL    ; 2b
	const DIRE_HIT     ; 2c
	const ITEM_2D      ; 2d
	const FRESH_WATER  ; 2e
	const SODA_POP     ; 2f
	const LEMONADE     ; 30
	const X_ATTACK     ; 31
	const ITEM_32      ; 32
	const X_DEFEND     ; 33
	const X_SPEED      ; 34
	const X_SPECIAL    ; 35
	const COIN_CASE    ; 36
	const ITEMFINDER   ; 37
	const POKE_FLUTE   ; 38
	const EXP_SHARE    ; 39
	const OLD_ROD      ; 3a
	const GOOD_ROD     ; 3b
	const SILVER_LEAF  ; 3c
	const SUPER_ROD    ; 3d
	const PP_UP        ; 3e
	const ETHER        ; 3f
	const MAX_ETHER    ; 40
	const ELIXER       ; 41
	const RED_SCALE    ; 42
	const SECRETPOTION ; 43
	const S_S_TICKET   ; 44
	const MYSTERY_EGG  ; 45
	const ITEM_46      ; 46
	const SILVER_WING  ; 47
	const MOOMOO_MILK  ; 48
	const QUICK_CLAW   ; 49
	const MEDICALBERRY ; 4a
	const GOLD_LEAF    ; 4b
	const SOFT_SAND    ; 4c
	const SHARP_BEAK   ; 4d
	const SHINY_BERRY  ; 4e
	const SPICY_BERRY  ; 4f
	const FROSTY_BERRY ; 50
	const POISON_BARB  ; 51
	const ROYAL_ROCK   ; 52
	const BITTER_BERRY ; 53
	const MINT_BERRY   ; 54
	const RED_APRICORN ; 55
	const MUSHROOM     ; 56
	const BIG_MUSHROOM ; 57
	const SILVERPOWDER ; 58
	const BLUEAPRICORN ; 59
	const ITEM_5A      ; 5a
	const AMULET_COIN  ; 5b
	const YLW_APRICORN ; 5c
	const GR_APRICORN  ; 5d
	const CLEANSE_TAG  ; 5e
	const MYSTIC_WATER ; 5f
	const TWISTEDSPOON ; 60
	const WT_APRICORN  ; 61
	const BLACKBELT_I  ; 62
	const BK_APRICORN  ; 63
	const ITEM_64      ; 64
	const PINKAPRICORN ; 65
	const BLACKGLASSES ; 66
	const SLOWPOKETAIL ; 67
	const PINK_BOW     ; 68
	const STICK        ; 69
	const SMOKE_BALL   ; 6a
	const NEVERMELTICE ; 6b
	const MAGNET       ; 6c
	const AUX_BERRY    ; 6d
	const PEARL        ; 6e
	const SILVER_PEARL ; 6f
	const EVERSTONE    ; 70
	const SPELL_TAG    ; 71
	const RAGECANDYBAR ; 72
	const ITEM_73      ; 73
	const ITEM_74      ; 74
	const MIRACLE_SEED ; 75
	const THICK_CLUB   ; 76
	const FOCUS_BAND   ; 77
	const ITEM_78      ; 78
	const ENERGYPOWDER ; 79
	const ENERGY_ROOT  ; 7a
	const HEAL_POWDER  ; 7b
	const REVIVAL_HERB ; 7c
	const HARD_STONE   ; 7d
	const LUCKY_EGG    ; 7e
	const CARD_KEY     ; 7f
	const MACHINE_PART ; 80
	const ITEM_81      ; 81
	const LOST_ITEM    ; 82
	const STARDUST     ; 83
	const STAR_PIECE   ; 84
	const BASEMENT_KEY ; 85
	const PASS         ; 86
	const ITEM_87      ; 87
	const ITEM_88      ; 88
	const ITEM_89      ; 89
	const CHARCOAL     ; 8a
	const BERRY_JUICE  ; 8b
	const SCOPE_LENS   ; 8c
	const ITEM_8D      ; 8d
	const ITEM_8E      ; 8e
	const METAL_COAT   ; 8f
	const DRAGON_FANG  ; 90
	const ITEM_91      ; 91
	const LEFTOVERS    ; 92
	const ITEM_93      ; 93
	const ITEM_94      ; 94
	const ITEM_95      ; 95
	const MYSTERYBERRY ; 96
	const DRAGON_SCALE ; 97
	const BERSERK_GENE ; 98
	const ITEM_99      ; 99
	const ITEM_9A      ; 9a
	const ITEM_9B      ; 9b
	const SACRED_ASH   ; 9c
	const HEAVY_BALL   ; 9d
	const FLOWER_MAIL  ; 9e
	const LEVEL_BALL   ; 9f
	const LURE_BALL    ; a0
	const FAST_BALL    ; a1
	const ITEM_A2      ; a2
	const LIGHT_BALL   ; a3
	const FRIEND_BALL  ; a4
	const MOON_BALL    ; a5
	const LOVE_BALL    ; a6
	const NORMAL_BOX   ; a7
	const GORGEOUS_BOX ; a8
	const SUN_STONE    ; a9
	const POLKADOT_BOW ; aa
	const ITEM_AB      ; ab
	const UP_GRADE     ; ac
	const BERRY        ; ad
	const FILLINGBERRY ; ae
	const SQUIRTBOTTLE ; af
	const ITEM_B0      ; b0
	const PARK_BALL    ; b1
	const RAINBOW_WING ; b2
	const ITEM_B3      ; b3
	const BRICK_PIECE  ; b4
	const SURF_MAIL    ; b5
	const LITEBLUEMAIL ; b6
	const PORTRAITMAIL ; b7
	const LOVELY_MAIL  ; b8
	const EON_MAIL     ; b9
	const MORPH_MAIL   ; ba
	const BLUESKY_MAIL ; bb
	const MUSIC_MAIL   ; bc
	const MIRAGE_MAIL  ; bd
	const ITEM_BE      ; be
	const ITEM_BF      ; bf
	const ITEM_C0      ; c0
	const ITEM_C1      ; c1
	const ITEM_C2      ; c2
	const ITEM_C3      ; c3
	const ITEM_C4      ; c4
	const ITEM_C5      ; c5
	const ITEM_C6      ; c6
	const ITEM_C7      ; c7

__tmhm_value__ = 1

add_tm: MACRO
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines TM01 as the first TM item id.
if !DEF(TM01)
TM01 EQU const_value
endc
if __tmhm_value__ < 10
MOVE_FOR_TM EQUS "TM0{d:__tmhm_value__}_MOVE"
else
MOVE_FOR_TM EQUS "TM{d:__tmhm_value__}_MOVE"
endc
MOVE_FOR_TM = \1
PURGE MOVE_FOR_TM
	const TM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

; see data/moves/tmhm_moves.asm for moves
	add_tm DYNAMICPUNCH ; c8
	add_tm HEADBUTT     ; c9
	add_tm CURSE        ; ca
	add_tm ROLLOUT      ; cb
	add_tm ROAR         ; cc
	add_tm TOXIC        ; cd
	add_tm ZAP_CANNON   ; ce
	add_tm ROCK_SMASH   ; cf
	add_tm PSYCH_UP     ; d0
	add_tm HIDDEN_POWER ; d1
	add_tm SUNNY_DAY    ; d2
	add_tm SWEET_SCENT  ; d3
	add_tm SNORE        ; d4
	add_tm BLIZZARD     ; d5
	add_tm HYPER_BEAM   ; d6
	add_tm ICY_WIND     ; d7
	add_tm PROTECT      ; d8
	add_tm RAIN_DANCE   ; d9
	add_tm GIGA_DRAIN   ; da
	add_tm ENDURE       ; db
	add_tm FRUSTRATION  ; dc
	add_tm SOLARBEAM    ; dd
	add_tm IRON_TAIL    ; de
	add_tm DRAGONBREATH ; df
	add_tm THUNDER      ; e0
	add_tm EARTHQUAKE   ; e1
	add_tm RETURN       ; e2
	add_tm DIG          ; e3
	add_tm PSYCHIC_M    ; e4
	add_tm SHADOW_BALL  ; e5
	add_tm MUD_SLAP     ; e6
	add_tm DOUBLE_TEAM  ; e7
	add_tm ICE_PUNCH    ; e8
	add_tm SWAGGER      ; e9
	add_tm SLEEP_TALK   ; ea
	add_tm SLUDGE_BOMB  ; eb
	add_tm SANDSTORM    ; ec
	add_tm FIRE_BLAST   ; ed
	add_tm SWIFT        ; ee
	add_tm DEFENSE_CURL ; ef
	add_tm THUNDERPUNCH ; f0
	add_tm DREAM_EATER  ; f1
	add_tm DETECT       ; f2
	add_tm REST         ; f3
	add_tm ATTRACT      ; f4
	add_tm THIEF        ; f5
	add_tm STEEL_WING   ; f6
	add_tm FIRE_PUNCH   ; f7
	add_tm FURY_CUTTER  ; f8
	add_tm NIGHTMARE    ; f9
NUM_TMS EQU __tmhm_value__ - 1

add_hm: MACRO
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines HM01 as the first TM item id.
if !DEF(HM01)
HM01 EQU const_value
endc
HM_VALUE EQU __tmhm_value__ - NUM_TMS
if HM_VALUE < 10
MOVE_FOR_HM EQUS "HM0{d:HM_VALUE}_MOVE"
else
MOVE_FOR_HM EQUS "HM{d:HM_VALUE}_MOVE"
endc
MOVE_FOR_HM = \1
PURGE MOVE_FOR_HM
PURGE HM_VALUE
	const HM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

	add_hm CUT          ; fa
	add_hm FLY          ; fb
	add_hm SURF         ; fc
	add_hm STRENGTH     ; fd
	add_hm FLASH        ; fe
NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

NUM_TM_HM EQU __tmhm_value__ - 1

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ff

; leftover items from Pokemon Gold
RED_SCALE    EQU $42
MYSTERY_EGG  EQU $45
SILVER_WING  EQU $47
PARK_BALL    EQU $b1
RAINBOW_WING EQU $b2
HM_WHIRLPOOL EQU $fd
HM_WATERFALL EQU $fe
