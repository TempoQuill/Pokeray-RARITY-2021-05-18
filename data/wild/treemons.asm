TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_None
	dw TreeMonSet_Forest
	dw TreeMonSet_Canyon
	dw TreeMonSet_Rock
	dw TreeMonSet_Unused
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

treemon_set: MACRO
	db \1
	dw \2
	db \3
ENDM

treemon_ret: MACRO
	db \1
ENDM

TreeMonSet_None:
TreeMonSet_Unused:
TreeMonSet_City:
; common
	treemon_set 50, VENONAT,    15
	treemon_set 30, VENONAT,    15
	treemon_set 10, ABRA,       15
	treemon_set  5, ABRA,       15
	treemon_set  5, VENOMOTH,   15
	treemon_ret
; rare
	treemon_set 50, VENONAT,    15
	treemon_set 30, MAGNEMITE,  15
	treemon_set 10, ABRA,       15
	treemon_set  5, ABRA,       15
	treemon_set  5, VENOMOTH,   15
	treemon_ret

TreeMonSet_Forest:

; common
	treemon_set 50, CATERPIE,   10
	treemon_set 15, CATERPIE,   10
	treemon_set 15, METAPOD,    10
	treemon_set 10, EXEGGCUTE,  10
	treemon_set  5, EXEGGCUTE,  10
	treemon_set  5, BUTTERFREE, 10
	treemon_ret
; rare
	treemon_set 50, CATERPIE,   10
	treemon_set 15, PINECO,     10
	treemon_set 15, PINECO,     10
	treemon_set 10, EXEGGCUTE,  10
	treemon_set  5, EXEGGCUTE,  10
	treemon_set  5, BUTTERFREE, 10
	treemon_ret

TreeMonSet_Canyon:
; common
	treemon_set 50, SPEAROW,    10
	treemon_set 15, SPEAROW,    10
	treemon_set 15, SPEAROW,    10
	treemon_set 10, AIPOM,      10
	treemon_set  5, AIPOM,      10
	treemon_set  5, AIPOM,      10
	treemon_ret
; rare
	treemon_set 50, SPEAROW,    10
	treemon_set 15, HERACROSS,  10
	treemon_set 15, HERACROSS,  10
	treemon_set 10, AIPOM,      10
	treemon_set  5, AIPOM,      10
	treemon_set  5, AIPOM,      10
	treemon_ret

TreeMonSet_Rock:
	treemon_set 90, KRABBY,     15
	treemon_set 10, SHUCKLE,    15
	treemon_ret
