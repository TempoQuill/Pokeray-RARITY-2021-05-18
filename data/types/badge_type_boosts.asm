BadgeTypeBoosts:
; entries correspond to wEquintoBadges constants
	db PSYCHIC_TYPE ; GADGETBADGE
	db GRASS        ; IVYBADGE
	db POISON       ; VENOMBADGE
	db ELECTRIC     ; VIDEOBADGE
	db GROUND       ; RODEOBADGE
	db FIRE         ; BONBADGE
	db FLYING       ; DASHBADGE
	db NORMAL       ; SCENERYBADGE
	; fallthrough
; entries correspond to wJohtoBadges constants
	db FLYING       ; ZEPHYRBADGE
	db BUG          ; HIVEBADGE
	db NORMAL       ; PLAINBADGE
	db GHOST        ; FOGBADGE
	db STEEL        ; MINERALBADGE
	db FIGHTING     ; STORMBADGE
	db ICE          ; GLACIERBADGE
	db DRAGON       ; RISINGBADGE
	; fallthrough
; entries correspond to wKantoBadges constants
	db ROCK         ; BOULDERBADGE
	db WATER        ; CASCADEBADGE
	db ELECTRIC     ; THUNDERBADGE
	db GRASS        ; RAINBOWBADGE
	db POISON       ; SOULBADGE
	db PSYCHIC_TYPE ; MARSHBADGE
	db FIRE         ; VOLCANOBADGE
	db GROUND       ; EARTHBADGE
	db -1 ; end
