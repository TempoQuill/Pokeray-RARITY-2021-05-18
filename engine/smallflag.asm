SmallFarFlagAction:
; Perform action a on bit c in flag array hl.
; If checking a flag, check flag array d:hl unless d is 0.

; For longer flag arrays, see FlagAction.

	push hl
	push af
	push bc
	push af

; Divide by 8 to get the byte we want.
	push bc
rept 3
	xor a
	srl c
	srl b
	adc a
	rra
	or c
	ld c, a
endr
	add hl, bc
	pop bc
	pop af

; Which bit we want from the byte
	ld a, c
	and 7
	ld c, a

; Shift left until we can mask the bit
	ld a, 1
	jr z, .shifted
.shift
	add a
	dec c
	jr nz, .shift
.shifted
	ld c, a

; What are we doing to this flag?
	dec a
	jr z, .set ; 1 = SET_FLAG
	dec a
	jr z, .check ; 2 = CHECK_FLAG
; 0 = RESET_FLAG

.reset
	ld a, c
	cpl
	and [hl]
	ld [hl], a
	jr .done

.set
	ld a, [hl]
	or c
	ld [hl], a
	jr .done

.check
	ld a, d
	cp 0
	jr nz, .farcheck

	ld a, [hl]
	and c
	jr .done

.farcheck
	call GetFarByte
	and c

.done
	pop bc
	pop af
	pop hl
	ld c, a
	ret
