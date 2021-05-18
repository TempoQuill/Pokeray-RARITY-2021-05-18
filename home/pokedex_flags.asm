CountSetBits::
; Count the number of set bits in b bytes starting from hl.
; Return in a, c and [wNumSetBits].
	ld c, 0
.next
	ld a, [hli]
	ld e, a
	ld d, 8

.count
	srl e
	ld a, 0
	adc c
	ld c, a
	dec d
	jr nz, .count

	dec b
	jr nz, .next

	ld a, c
	ld [wNumSetBits], a
	ret

GetWeekday::
	ld a, [wCurDay]
.mod
	sub 7
	jr nc, .mod
	add 7
	ret

SetSeenAndCaughtMon::
	push af
	ld c, a
	ld hl, wPokedexCaught
	ld a, SET_FLAG
	call PokedexFlagAction
	pop af
	; fallthrough

SetSeenMon::
	ld c, a
	ld hl, wPokedexSeen
	ld a, SET_FLAG
	jr PokedexFlagAction

CheckCaughtMon::
	ld b, a
	ld hl, wPokedexCaught
	ld a, CHECK_FLAG
	jr PokedexFlagAction

CheckSeenMon::
	ld c, a
	ld hl, wPokedexSeen
	ld a, CHECK_FLAG
	; fallthrough

PokedexFlagAction::
	ld d, a
	predef SmallFarFlagAction
	ld a, c
	and a
	ret
