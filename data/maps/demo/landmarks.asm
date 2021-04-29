
landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/demo/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark  56,  72, CottageTownName
	landmark  56,  80, LanaweForestName
	landmark  68,  72, Route49Name
	landmark  84,  64, Route50Name
	landmark  96,  64, TraversalCityName
	landmark  88,  80, Route51Name
	landmark 104,  80, FoliageCityName
	landmark  64,  64, MtVacuumBaseName
	landmark  64,  48, MtVacuumName
	landmark  56,  48, SolarLeagueName
	landmark  72,  40, Route52Name
	landmark  84,  32, Route54Name
	landmark  96,  36, UnknownName
	landmark  92,  48, Route53Name
	landmark 112,  48, PortiteCityName
	landmark  44,  72, Route55Name
	landmark  28,  80, Route57Name
	landmark  24,  88, HypercoinCityName
	landmark  40,  88, Route56Name
	landmark  40,  96, OddishFarmName
	landmark  52,  96, Route59Name
	landmark  64,  96, StampTownName
	landmark  76,  96, Route60Name
	landmark  88,  96, SaunaTownName
	landmark  96,  96, SunkernSwampName
	landmark  24,  56, Route58Name
	landmark  16,  40, BreweryCityName
	landmark  32,  40, Route61Name
	landmark  48,  40, EverestCityName
	landmark  32,  24, Route62Name
	landmark  56,  16, NorgeoTownName
	landmark  80,  16, Route63Name
	landmark 104,  16, PastelTownName
	landmark 128,  16, Route64Name
	landmark 144,  24, EastCoastStopName
	landmark 144,  40, Route65Name
	landmark 144,  56, TabletHarborName
	landmark 144,  84, Route66Name
	landmark 144, 112, MtSaberName

MtSaberName:		db "MT SABER@"
Route66Name:		db "ROUTE 66@"
TabletHarborName:	db "TABLET¯HARBOR@"
Route65Name:		db "ROUTE 65@"
EastCoastStopName:	db "EAST COAST¯STOP@"
Route64Name:		db "ROUTE 64@"
PastelTownName:		db "PASTEL TOWN@"
Route63Name:		db "ROUTE 63@"
NorgeoTownName:		db "NORGEO TOWN@"
Route62Name:		db "ROUTE 62@"
EverestCityName:	db "EVEREST¯CITY@"
Route61Name:		db "ROUTE 61@"
BreweryCityName:	db "BREWERY¯CITY@"
Route58Name:		db "ROUTE 58@"
SunkernSwampName:	db "SUNKERN¯SWAMP@"
SaunaTownName:		db "SAUNA TOWN@"
Route60Name:		db "ROUTE 60@"
SolarLeagueName:	db "STAMP TOWN@"
Route59Name:		db "ROUTE 59@"
OddishFarmName:		db "ODDISH FARM@"
Route56Name:		db "ROUTE 56@"
HypercoinCityName:	db "HYPERCOIN¯CITY@"
Route57Name:		db "ROUTE 57@"
Route55Name:		db "ROUTE 55@"
PortiteCityName:	db "PORTITE¯CITY@"
Route53Name:		db "ROUTE 53@"
Route54Name:		db "ROUTE 54@"
Route52Name:		db "ROUTE 52@"
SolarLeagueName:	db "SOLAR¯LEAGUE@"
MtVacuumName:		db "MT VACUUM@"
MtVacuumBaseName:	db "MT VACUUM¯BASE@"
FoliageCityName:	db "FOLIAGE¯CITY@"
Route51Name:		db "ROUTE 51@"
TraversalCityName:	db "TRAVERSAL¯CITY@"
Route50Name:		db "ROUTE 50@"
Route49Name:		db "ROUTE 49@"
LanaweForestName:	db "LANAWE¯FOREST@"
CottageTownName:	db "COTTAGE¯TOWN@"
UnknownName:
SpecialMapName:		db "???@"
