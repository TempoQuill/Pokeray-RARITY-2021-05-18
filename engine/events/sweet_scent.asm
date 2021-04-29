SweetScentFromMenu:
	ld hl, .SweetScent
	call QueueScript
	ld a, $1
	ld [wFieldMoveSucceeded], a
	ret

.SweetScent:
	reloadmappart
	special UpdateTimePals
	callasm GetPartyNick
	writetext UseSweetScentText
	waitbutton
	callasm SweetScentEncounter
	iffalse SweetScentNothing
	randomwildmon
	startbattle
	reloadmapafterbattle
	end

SweetScentNothing:
	writetext SweetScentNothingText
	waitbutton
	closetext
	end

SweetScentEncounter:
	farcall CanUseSweetScent
	jr nc, .no_battle
	farcall GetMapEncounterRate
	ld a, b
	and a
	jr z, .no_battle
	farcall ChooseWildEncounter
	jr nz, .no_battle

.start_battle
	ld a, $1
	ld [wScriptVar], a
	ret

.no_battle
	xor a
	ld [wScriptVar], a
	ret

UseSweetScentText:
	text_far _UseSweetScentText
	text_end

SweetScentNothingText:
	text_far _SweetScentNothingText
	text_end
