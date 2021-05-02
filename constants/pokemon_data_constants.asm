; base data struct members (see data/pokemon/base_stats/*.asm)
	const_def
	const BASE_DEX_NO
	const_skip
BASE_STATS EQU const_value ; 2
; these will also be used for EV's
; the two highest bits represent the corresponding EV's
; some pokemon won't give any EV's (caterpie, weedle)
	const BASE_HP
	const BASE_ATK
	const BASE_DEF
	const BASE_SPD
	const BASE_SAT
	const BASE_SDF
BASE_TYPES EQU const_value
	const BASE_TYPE_1
	const BASE_TYPE_2
	const BASE_CATCH_RATE
; (BASE_EXP * level / 7)
; * trainer (1.5 or 0)
; * trade (1.5 or 0)
; * lucky egg (1.5 or 0)
; * University TM (2, 1.5 or 0)
; = exp gain
	const BASE_EXP
BASE_ITEMS EQU const_value
	const BASE_ITEM_1
	const BASE_ITEM_2
	const BASE_GENDER
	const BASE_UNKNOWN_1
	const BASE_EGG_STEPS
	const BASE_UNKNOWN_2
	const BASE_PIC_SIZE
	const BASE_FRONTPIC
	const_skip
	const BASE_BACKPIC
	const_skip
	const BASE_GROWTH_RATE
	const BASE_EGG_GROUPS
	const BASE_TMHM
; BASE_TMHM is 7 bytes long with 55 entries total (7 * 8 = 56)
	const_skip 6
BASE_DATA_SIZE EQU const_value


; gender ratio constants
GENDER_F0      EQU   0 percent
GENDER_F12_5   EQU  12 percent + 1
GENDER_F25     EQU  25 percent
GENDER_F50     EQU  50 percent
GENDER_F75     EQU  75 percent
GENDER_F100    EQU 100 percent - 1
GENDER_UNKNOWN EQU -1

; wBaseGrowthRate values
; GrowthRates indexes (see data/growth_rates.asm)
	const_def
	const GROWTH_MEDIUM_FAST
	const GROWTH_SLIGHTLY_FAST
	const GROWTH_SLIGHTLY_SLOW
	const GROWTH_MEDIUM_SLOW
	const GROWTH_FAST
	const GROWTH_SLOW

; wBaseEggGroups values
	const_def 1
	const EGG_MONSTER       ; 1
	const EGG_WATER_1       ; 2 (Amphibian)
	const EGG_BUG           ; 3
	const EGG_FLYING        ; 4
	const EGG_GROUND        ; 5 (Field)
	const EGG_FAIRY         ; 6
	const EGG_PLANT         ; 7 (Grass)
	const EGG_HUMANSHAPE    ; 8 (Human-Like)
	const EGG_WATER_3       ; 9 (Invertebrate)
	const EGG_MINERAL       ; a
	const EGG_INDETERMINATE ; b (Amorphous)
	const EGG_WATER_2       ; c (Fish)
	const EGG_DITTO         ; d
	const EGG_DRAGON        ; e
	const EGG_NONE          ; f (Undiscovered)

; party_struct members (see macros/wram.asm)
	const_def
	const MON_SPECIES         ; 0
	const_skip
	const MON_ITEM            ; 2
	const MON_MOVES           ; 3
	const_skip 3
	const MON_ID              ; 7
	const_skip
	const MON_EXP             ; 9
	const_skip 2
MON_STAT_EV EQU const_value
	const MON_HP_EV           ; 12
	const MON_ATK_EV          ; 13
	const MON_DEF_EV          ; 14
	const MON_SPD_EV          ; 15
	const MON_SPC_EV          ; 16
	const MON_DVS             ; 17
	const_skip
	const MON_PP              ; 19
	const_skip 3
	const MON_HAPPINESS       ; 23
	const MON_PKRUS           ; 24
	const MON_BUILD           ; 25
	const MON_QUALITY_OF_LIFE ; 26
	const MON_CAUGHT_ITEM     ; 27
	const MON_LEVEL           ; 28
BOXMON_STRUCT_LENGTH EQU const_value
	const MON_STATUS          ; 29
	const MON_HP              ; 30
	const_skip
	const MON_MAX_HP          ; 32
	const_skip
	const MON_ATK             ; 34
	const_skip
	const MON_DEF             ; 36
	const_skip
	const MON_SPD             ; 38
	const_skip
	const MON_SAT             ; 40
	const_skip
	const MON_SDF             ; 42
	const_skip
PARTYMON_STRUCT_LENGTH EQU const_value

NICKNAMED_MON_STRUCT_LENGTH EQUS "(PARTYMON_STRUCT_LENGTH + MON_NAME_LENGTH)"

	const_def
	const GOLDMON_SPECIES   ; 0
	const GOLDMON_ITEM      ; 1
	const GOLDMON_MOVES     ; 2
	const_skip 3
	const GOLDMON_ID        ; 6
	const_skip
	const GOLDMON_EXP       ; 8
	const_skip 2
GOLDMON_STAT_EXP EQU const_value
	const GOLDMON_HP_EXP    ; 11
	const_skip
	const GOLDMON_ATK_EXP   ; 13
	const_skip
	const GOLDMON_DEF_EXP   ; 15
	const_skip
	const GOLDMON_SPD_EXP   ; 17
	const_skip
	const GOLDMON_SPC_EXP   ; 19
	const_skip
	const GOLDMON_DVS       ; 21
	const_skip
	const GOLDMON_PP        ; 23
	const_skip 3
	const GOLDMON_HAPPINESS ; 27
	const GOLDMON_PKRUS     ; 28
	const GOLDMON_UNKNOWN_1 ; 29
	const GOLDMON_UNKNOWN_2 ; 30
	const GOLDMON_LEVEL     ; 31
GOLD_BOXMON_STRUCT_LENGTH EQU const_value
	const GOLDMON_STATUS    ; 32
	const GOLDMON_UNUSED    ; 33
	const GOLDMON_HP        ; 34
	const_skip
	const GOLDMON_MAX_HP    ; 36
	const_skip
	const GOLDMON_ATK       ; 38
	const_skip
	const GOLDMON_DEF       ; 40
	const_skip
	const GOLDMON_SPD       ; 42
	const_skip
	const GOLDMON_SAT       ; 44
	const_skip
	const GOLDMON_SDF       ; 46
	const_skip
GOLDMON_STRUCT_LENGTH EQU const_value
REDMON_STRUCT_LENGTH EQU 44

; maximum number of party pokemon
PARTY_LENGTH EQU 6

; boxes
MONS_PER_BOX EQU 20
NUM_BOXES    EQU 21
NUM_BOXES_JAPANESE EQU 9

; hall of fame
HOF_MON_LENGTH EQU 1 + 2 + 2 + 1 + (MON_NAME_LENGTH - 1) ; species, id, dvs, level, nick
HOF_LENGTH EQU 1 + HOF_MON_LENGTH * PARTY_LENGTH + 1 ; win count, party, terminator
NUM_HOF_TEAMS EQU 30

; evolution types (used in data/pokemon/evos_attacks.asm)
	const_def 1
	const EVOLVE_LEVEL
	const EVOLVE_ITEM
	const EVOLVE_TRADE
	const EVOLVE_HAPPINESS
	const EVOLVE_STAT
	const EVOLVE_HELD
	const EVOLVE_QUALITY_OF_LIFE
	const EVOLVE_ASM

; EVOLVE_HAPPINESS triggers
	const_def 1
	const TR_ANYTIME
	const TR_MORNDAY
	const TR_NITE

; EVOLVE_STAT triggers
	const_def 1
	const ATK_GT_DEF
	const ATK_LT_DEF
	const ATK_EQ_DEF

; build stats
NAT EQU 0
ASM EQU 1

MON_MALE   EQU 1
MON_FEMALE EQU 0

; wild data

NUM_GRASSMON EQU 7 ; data/wild/*_grass.asm table size
NUM_WATERMON EQU 3 ; data/wild/*_water.asm table size

GRASS_WILDDATA_LENGTH EQU 2 + (1 + NUM_GRASSMON * 2) * 3
WATER_WILDDATA_LENGTH EQU 2 + (1 + NUM_WATERMON * 2) * 1
FISHGROUP_DATA_LENGTH EQU 1 + 2 * 3

NUM_ROAMMON_MAPS EQU 0 ; RoamMaps table size (see data/wild/roammon_maps.asm)

; treemon sets
; TreeMons indexes (see data/wild/treemons.asm)
	const_def
	const TREEMON_SET_NONE
	const TREEMON_SET_FOREST
	const TREEMON_SET_CANYON
	const TREEMON_SET_ROCK
NUM_TREEMON_SETS EQU const_value
; last 2 are unused/ignored
	const TREEMON_SET_UNUSED
	const TREEMON_SET_CITY

; treemon scores
	const_def
	const TREEMON_SCORE_BAD  ; 0
	const TREEMON_SCORE_GOOD ; 1
	const TREEMON_SCORE_RARE ; 2

; ChangeHappiness arguments (see data/happiness_changes.asm)
const_value = 1
	const HAPPINESS_GAINLEVEL         ; 01
	const HAPPINESS_USEDITEM          ; 02
	const HAPPINESS_USEDXITEM         ; 03
	const HAPPINESS_GYMBATTLE         ; 04
	const HAPPINESS_LEARNMOVE         ; 05
	const HAPPINESS_FAINTED           ; 06
	const HAPPINESS_POISONFAINT       ; 07
	const HAPPINESS_BEATENBYSTRONGFOE ; 08
	const HAPPINESS_OLDERCUT1         ; 09
	const HAPPINESS_OLDERCUT2         ; 0a
	const HAPPINESS_OLDERCUT3         ; 0b
	const HAPPINESS_YOUNGCUT1         ; 0c
	const HAPPINESS_YOUNGCUT2         ; 0d
	const HAPPINESS_YOUNGCUT3         ; 0e
	const HAPPINESS_BITTERPOWDER      ; 0f
	const HAPPINESS_ENERGYROOT        ; 10
	const HAPPINESS_REVIVALHERB       ; 11
	const HAPPINESS_GROOMING          ; 12
	const HAPPINESS_GAINLEVELATHOME   ; 13

	const_def 1
	const QUALITY_OF_LIFE_LEVEL_UP          ; 01
	const QUALITY_OF_LIFE_ITEM              ; 02
	const QUALITY_OF_LIFE_REVIVE            ; 03
	const QUALITY_OF_LIFE_X_ITEM            ; 04
	const QUALITY_OF_LIFE_GYM_VICTORY       ; 05
	const QUALITY_OF_LIFE_LEARN_MOVE        ; 06
	const QUALITY_OF_LIFE_FAINT             ; 07
	const QUALITY_OF_LIFE_BODY              ; 08
	const QUALITY_OF_LIFE_POISON_FAINT      ; 09
	const QUALITY_OF_LIFE_STATUS            ; 0a
	const QUALITY_OF_LIFE_CONFUSION         ; 0b
	const QUALITY_OF_LIFE_LOVE              ; 0c
	const QUALITY_OF_LIFE_DOMESTIC_LEVEL_UP ; 0d

; significant happiness values
BASE_HAPPINESS        EQU 70
FRIEND_BALL_HAPPINESS EQU 200
HAPPINESS_TO_EVOLVE   EQU 220
HAPPINESS_THRESHOLD_1 EQU 100
HAPPINESS_THRESHOLD_2 EQU FRIEND_BALL_HAPPINESS

BASE_QUALITY_OF_LIFE        EQU BASE_HAPPINESS             ; 70
COMFY_BALL_QUALITY_OF_LIFE  EQU FRIEND_BALL_HAPPINESS      ; 200
QUALITY_OF_LIFE_TO_EVOLVE   EQU COMFY_BALL_QUALITY_OF_LIFE ; 200
QUALITY_OF_LIFE_THREShOLD_1 EQU HAPPINESS_THRESHOLD_1      ; 100
QUALITY_OF_LIFE_THREShOLD_2 EQU COMFY_BALL_QUALITY_OF_LIFE ; 200

BASE_EV_MASK  EQU %11000000
BASE_STAT_XOR EQU %00111111

; PP
PP_UP_MASK EQU %11000000
PP_UP_ONE  EQU %01000000
PP_MASK    EQU %00111111
