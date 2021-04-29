
newgroup: MACRO
const_value = const_value + 1
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ = __map_value__ + 1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/demo/maps.asm)
; - MapGroupRoofs (see data/maps/demo/roofs.asm)
; - OutdoorSprites (see data/maps/demo/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/demo/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/demo/attributes.asm)
; - blocks (see data/maps/demo/blocks.asm)
; - scripts and events (see data/maps/demo/scripts.asm)
	const_def

	newgroup                        ; 1

	map_const COTTAGE_TOWN          9,  10 ; 1
	map_const PLAYERS_HOUSE_1F      4,   4 ; 2
	map_const PLAYERS_HOUSE_2F      3,   3 ; 3
	map_const RIVALS_HOUSE_1F       4,   4 ; 4
	map_const RIVALS_HOUSE_2F       3,   3 ; 5
	map_const LARCHS_LAB            6,   6 ; 6
	map_const LARCHS_HOUSE          5,   5 ; 7
	map_const ROUTE_49              15,  9 ; 8
	map_const ROUTE_49_HOUSE        4,   4 ; 9
	map_const COTTAGE_LANAWE_GATE   4,   4 ; a
	map_const ROUTE_49_50_GATE      4,   4 ; b
	map_const ROUTE_49_VACUUM_GATE  4,   4 ; c
	map_const ROUTE_49_51_GATE      4,   4 ; d
	map_const COTTAGE_ROUTE_55_GATE 4,   4 ; e
