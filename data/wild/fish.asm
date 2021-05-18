time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

fishslot: MACRO
	db \1 ; chance
	dw \2 ; species
	db \3 ; level
ENDM

fishtime: MACRO
	dbw \1, \2 ; day   - species, level
	dbw \3, \4 ; night - species, level
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     KRABBY,     10
.Shore_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     KRABBY,     20
	fishslot  90 percent + 1, KRABBY,     20
	fishslot 100 percent,     time_group 0
.Shore_Super:
	fishslot  40 percent,     KRABBY,     40
	fishslot  70 percent,     time_group 1
	fishslot  90 percent + 1, KRABBY,     40
	fishslot 100 percent,     KINGLER,    40

.Ocean_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     TENTACOOL,  10
.Ocean_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     TENTACOOL,  20
	fishslot  90 percent + 1, CHINCHOU,   20
	fishslot 100 percent,     time_group 2
.Ocean_Super:
	fishslot  40 percent,     CHINCHOU,   40
	fishslot  70 percent,     time_group 3
	fishslot  90 percent + 1, TENTACRUEL, 40
	fishslot 100 percent,     LANTURN,    40

.Lake_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     GOLDEEN,    10
.Lake_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     GOLDEEN,    20
	fishslot  90 percent + 1, GOLDEEN,    20
	fishslot 100 percent,     time_group 4
.Lake_Super:
	fishslot  40 percent,     GOLDEEN,    40
	fishslot  70 percent,     time_group 5
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     SEAKING,    40

.Pond_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     POLIWAG,    10
.Pond_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     POLIWAG,    20
	fishslot  90 percent + 1, POLIWAG,    20
	fishslot 100 percent,     time_group 6
.Pond_Super:
	fishslot  40 percent,     POLIWAG,    40
	fishslot  70 percent,     time_group 7
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     POLIWAG,    40

.Dratini_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     MAGIKARP,   10
.Dratini_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     MAGIKARP,   20
	fishslot  90 percent + 1, MAGIKARP,   20
	fishslot 100 percent,     time_group 8
.Dratini_Super:
	fishslot  40 percent,     MAGIKARP,   40
	fishslot  70 percent,     time_group 9
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     DRAGONAIR,  40

.Qwilfish_Swarm_Old:
	fishslot  70 percent + 1, MAGIKARP,   5
	fishslot  85 percent + 1, MAGIKARP,   5
	fishslot 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     QWILFISH,   20
	fishslot  90 percent + 1, QWILFISH,   20
	fishslot 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	fishslot  40 percent,     QWILFISH,   40
	fishslot  70 percent,     time_group 11
	fishslot  90 percent + 1, QWILFISH,   40
	fishslot 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     REMORAID,   20
	fishslot  90 percent + 1, REMORAID,   20
	fishslot 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	fishslot  40 percent,     REMORAID,   40
	fishslot  70 percent,     time_group 13
	fishslot  90 percent + 1, REMORAID,   40
	fishslot 100 percent,     REMORAID,   40

.Gyarados_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     MAGIKARP,   20
	fishslot  90 percent + 1, MAGIKARP,   20
	fishslot 100 percent,     time_group 14
.Gyarados_Super:
	fishslot  40 percent,     MAGIKARP,   40
	fishslot  70 percent,     time_group 15
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     MAGIKARP,   40

.Dratini_2_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	fishslot  35 percent,     MAGIKARP,   10
	fishslot  70 percent,     MAGIKARP,   10
	fishslot  90 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     time_group 16
.Dratini_2_Super:
	fishslot  40 percent,     MAGIKARP,   10
	fishslot  70 percent,     time_group 17
	fishslot  90 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     DRAGONAIR,  10

.WhirlIslands_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     KRABBY,     10
.WhirlIslands_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     KRABBY,     20
	fishslot  90 percent + 1, KRABBY,     20
	fishslot 100 percent,     time_group 18
.WhirlIslands_Super:
	fishslot  40 percent,     KRABBY,     40
	fishslot  70 percent,     time_group 19
	fishslot  90 percent + 1, KINGLER,    40
	fishslot 100 percent,     SEADRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     TENTACOOL,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     TENTACOOL,  20
	fishslot  90 percent + 1, TENTACOOL,  20
	fishslot 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	fishslot  40 percent,     TENTACOOL,  40
	fishslot  70 percent,     time_group 21
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     QWILFISH,   40

.Remoraid_Old:
	fishslot  70 percent + 1, MAGIKARP,   10
	fishslot  85 percent + 1, MAGIKARP,   10
	fishslot 100 percent,     POLIWAG,    10
.Remoraid_Good:
	fishslot  35 percent,     MAGIKARP,   20
	fishslot  70 percent,     POLIWAG,    20
	fishslot  90 percent + 1, POLIWAG,    20
	fishslot 100 percent,     time_group 6
.Remoraid_Super:
	fishslot  40 percent,     POLIWAG,    40
	db  70 percent,     time_group 7
	fishslot  90 percent + 1, MAGIKARP,   40
	fishslot 100 percent,     REMORAID,   40

TimeFishGroups:
	;  day              nite
	fishtime CORSOLA,    20,  STARYU,     20 ; 0
	fishtime CORSOLA,    40,  STARYU,     40 ; 1
	fishtime SHELLDER,   20,  SHELLDER,   20 ; 2
	fishtime SHELLDER,   40,  SHELLDER,   40 ; 3
	fishtime GOLDEEN,    20,  GOLDEEN,    20 ; 4
	fishtime GOLDEEN,    40,  GOLDEEN,    40 ; 5
	fishtime POLIWAG,    20,  POLIWAG,    20 ; 6
	fishtime POLIWAG,    40,  POLIWAG,    40 ; 7
	fishtime DRATINI,    20,  DRATINI,    20 ; 8
	fishtime DRATINI,    40,  DRATINI,    40 ; 9
	fishtime QWILFISH,   20,  QWILFISH,   20 ; 10
	fishtime QWILFISH,   40,  QWILFISH,   40 ; 11
	fishtime REMORAID,   20,  REMORAID,   20 ; 12
	fishtime REMORAID,   40,  REMORAID,   40 ; 13
	fishtime GYARADOS,   20,  GYARADOS,   20 ; 14
	fishtime GYARADOS,   40,  GYARADOS,   40 ; 15
	fishtime DRATINI,    10,  DRATINI,    10 ; 16
	fishtime DRATINI,    10,  DRATINI,    10 ; 17
	fishtime HORSEA,     20,  HORSEA,     20 ; 18
	fishtime HORSEA,     40,  HORSEA,     40 ; 19
	fishtime TENTACOOL,  20,  TENTACOOL,  20 ; 20
	fishtime TENTACOOL,  40,  TENTACOOL,  40 ; 21
