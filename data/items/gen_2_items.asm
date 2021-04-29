TimeCapsule_Gen2Items:
; when trading between Ray and Gold
; this table will convert constants that've been switched around
	db ITEM_BF,         TM_DYNAMICPUNCH ; DOME_FOSSIL
	db ITEM_C0,         TM_HEADBUTT     ; OLD_AMBER
	db ITEM_C1,         TM_CURSE        ; FURNACE
	db ITEM_C2,         TM_ROLLOUT      ; FRIDGE
	db ITEM_C4,         TM_ROAR         ; STROBE_LIGHT
	db ITEM_C5,         TM_TOXIC        ; NEEDLE
	db ITEM_C6,         TM_ZAP_CONNON
	db ITEM_C7,         TM_ROCK_SMASH
	db TM_DYNAMICPUNCH, TM_PSYCH_UP
	db TM_HEADBUTT,     TM_HIDDEN_POWER
	db TM_CURSE,        TM_SUNNY_DAY
	db TM_ROLLOUT,      TM_SWEET_SCENT
	db TM_ROAR,         TM_SNORE
	db TM_TOXIC,        TM_BLIZZARD
	db TM_ZAP_CONNON,   TM_HYPER_BEAM
	db TM_ROCK_SMASH,   TM_ICY_WIND
	db TM_PSYCH_UP,     TM_PROTECT
	db TM_HIDDEN_POWER, TM_RAIN_DANCE
	db TM_SUNNY_DAY,    TM_GIGA_DRAIN
	db TM_SWEET_SCENT,  TM_ENDURE
	db TM_SNORE,        TM_FRUSTRATION
	db TM_BLIZZARD,     TM_SOLARBEAM
	db TM_HYPER_BEAM,   TM_IRON_TAIL
	db TM_ICY_WIND,     TM_DRAGONBREATH
	db TM_PROTECT,      TM_THUNDER
	db TM_RAIN_DANCE,   TM_EARTHQUAKE
	db TM_GIGA_DRAIN,   TM_RETURN
	db TM_ENDURE,       TM_DIG
	db TM_SOLARBEAM,    TM_PSYCHIC_M
	db TM_IRON_TAIL,    TM_SHADOW_BALL
	db TM_DRAGONBREATH, TM_MUD_SLAP
	db TM_THUNDER,      TM_DOUBLE_TEAM
	db TM_EARTHQUAKE,   TM_ICE_PUNCH
	db TM_RETURN,       TM_SWAGGER
	db TM_DIG,          TM_SLEEP_TALK
	db TM_PSYCHIC_M,    TM_SLUDGE_BOMB
	db TM_SHADOW_BALL,  TM_SANDSTORM
	db TM_MUD_SLAP,     TM_FIRE_BLAST
	db TM_DOUBLE_TEAM,  TM_SWIFT
	db TM_ICE_PUNCH,    TM_DEFENSE_CURL
	db TM_SWAGGER,      TM_THUNDERPUNCH
	db TM_SLEEP_TALK,   TM_DREAM_EATER
	db TM_SLUDGE_BOMB,  TM_DETECT
	db TM_SANDSTORM,    TM_REST
	db TM_FIRE_BLAST,   TM_ATTRACT
	db TM_SWIFT,        TM_THEIF
	db TM_DEFENSE_CURL, TM_STEEL_WING
	db TM_THUNDERPUNCH, TM_FIRE_PUNCH
	db TM_DREAM_EATER,  TM_FURY_CUTTER
	db TM_DETECT,       TM_NIGHTMARE
; unused, pokemon can't hold hm's
	db TM_REST,         HM_CUT
	db TM_ATTRACT,      HM_FLY
	db TM_THEIF,        HM_SURF
	db TM_STEEL_WING,   HM_STRENGTH
	db TM_FIRE_PUNCH,   HM_FLASH