
convert_ray: MACRO
	db MON_\1, GOLDMON_\1
ENDM

convert_back_move: MACRO
	db MON_\1,     GOLDMON_\1
	db MON_\1 + 1, GOLDMON_\1 + 1
	db MON_\1 + 2, GOLDMON_\1 + 2
	db MON_\1 + 3, GOLDMON_\1 + 3
ENDM

convert_back_val: MACRO
	db MON_HP_\1,  GOLDMON_HP_\2
	db MON_ATK_\1, GOLDMON_ATK_\2
	db MON_DEF_\1, GOLDMON_DEF_\2
	db MON_SPD_\1, GOLDMON_SPD_\2
	db MON_SPC_\1, GOLDMON_SPC_\2
ENDM

convert_back_stat: MACRO
	db MON_\1,     GOLDMON_\1
	db MON_\1 + 1, GOLDMON_\1 + 1
ENDM

convert_back: MACRO
	db MON_\1, GOLDMON_\2
ENDM

convert_end:
	db -1
ENDM

RayToGoldConverter:
	convert_ray       SPECIES                    ; redundant
	convert_ray       ITEM
	convert_back_move MOVES
	convert_ray       ID
	convert_back_val  EV,              EXP + 1
	convert_back_stat DVS
	convert_back_move PP
	convert_ray       HAPPINESS
	convert_ray       PKRUS
	convert_back      BUILD,           UNKNOWN_2
	convert_back      QUALITY_OF_LIFE, UNKNOWN_1
	convert_ray       LEVEL
	convert_ray       STATUS
	convert_back_stat HP
	convert_back_stat MAX_HP
	convert_back_stat ATK
	convert_back_stat DEF
	convert_back_stat SPD
	convert_back_stat SAT
	convert_back_stat SDF
	convert_end

convert_gold: MACRO
	db GOLDMON_\1, MON_\1
ENDM

convert_for_stat: MACRO
	db GOLDMON_\1,     MON_\1
	db GOLDMON_\1 + 1, MON_\1 + 1
ENDM

convert_for_move: MACRO
	db GOLDMON_\1,     MON_\1
	db GOLDMON_\1 + 1, MON_\1 + 1
	db GOLDMON_\1 + 2, MON_\1 + 2
	db GOLDMON_\1 + 3, MON_\1 + 3
ENDM

convert_for_val: MACRO
	db GOLDMON_HP_\1,  MON_HP_\2
	db GOLDMON_ATK_\1, MON_ATK_\2
	db GOLDMON_DEF_\1, MON_DEF_\2
	db GOLDMON_SPD_\1, MON_SPD_\2
	db GOLDMON_SPC_\1, MON_SPC_\2
ENDM

convert_for: MACRO
	db GOLDMON_\1, MON_\2
ENDM

GoldToRayConverter:
	convert_gold     SPECIES                    ; redundant
	convert_gold     ITEM
	convert_for_move MOVES
	convert_gold     ID
	convert_for_val  EXP + 1,   EV
	convert_for_stat DVS
	convert_for_move PP
	convert_gold     HAPPINESS
	convert_gold     PKRUS
	convert_for      UNKNOWN_2, BUILD
	convert_for      UNKNOWN_1, QUALITY_OF_LIFE
	convert_gold     LEVEL
	convert_gold     STATUS
	convert_for_stat HP
	convert_for_stat MAX_HP
	convert_for_stat ATK
	convert_for_stat DEF
	convert_for_stat SPD
	convert_for_stat SAT
	convert_for_stat SDF
	convert_end