treemon_map: MACRO
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_49,     TREEMON_SET_FOREST
	treemon_map COTTAGE_TOWN, TREEMON_SET_CITY
	db -1

RockMonMaps:
	db -1
