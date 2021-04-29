BattleCommand_Burn:
	ld hl, DoesntAffectText
	ld a, [wTypeModifier]
	and $7f
	jp z, .failed

	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	ld b, a
	ld hl, AlreadyBurnedText
	and 1 << BRN
	jp nz, .failed

	farcall GetOpponentItem
	ld a, b
	cp HELD_PREVENT_BURN
	jr nz, .do_burn
	ld a, [hl]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, ProtectedByText
	jr .failed

.do_burn
	ld hl, FailedText
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and a
	jr nz, .failed

	ldh a, [hBattleTurn]
	and a
	jr z, .dont_sample_failure

	ld a, [wLinkMode]
	and a
	jr nz, .dont_sample_failure

	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_LOCK_ON, a
	jr nz, .dont_sample_failure

	call BattleRandom
	cp 25 percent + 1 ; 25% chance AI fails
	jr c, .failed

.dont_sample_failure
	farcall CheckSubstituteOpp
	jr nz, .failed
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call .apply_burn
	ld hl, WasBurnedText
	call StdBattleTextbox
	farcall UseHeldStatusHealingItem
	ret

.failed
	farcall AnimateFailedMove
	jp StdBattleTextbox

.apply_burn
	farcall AnimateCurrentMove
	call .set_burn
	jp RefreshBattleHuds

.set_burn
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	set BRN, [hl]
	jp UpdateOpponentInParty

BattleCommand_Freeze:
	ld hl, DoesntAffectText
	ld a, [wTypeModifier]
	and $7f
	jp z, .failed

	call .check_ice
	jp z, .failed

	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	ld b, a
	ld hl, AlreadyFrozenText
	and 1 << FRZ
	jp nz, .failed

	farcall GetOpponentItem
	ld a, b
	cp HELD_PREVENT_FREEZE
	jr nz, .do_freeze
	ld a, [hl]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, ProtectedByText
	jr .failed

.do_freeze
	ld hl, FailedText
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and a
	jr nz, .failed

	ldh a, [hBattleTurn]
	and a
	jr z, .dont_sample_failure

	ld a, [wLinkMode]
	and a
	jr nz, .dont_sample_failure

	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_LOCK_ON, a
	jr nz, .dont_sample_failure

	call BattleRandom
	cp 25 percent + 1 ; 25% chance AI fails
	jr c, .failed

.dont_sample_failure
	farcall CheckSubstituteOpp
	jr nz, .failed
	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call .apply_freeze
	ld hl, WasFrozenText
	call StdBattleTextbox
	farcall UseHeldStatusHealingItem
	ret

.failed
	farcall AnimateFailedMove
	jp StdBattleTextbox

.apply_freeze
	farcall AnimateCurrentMove
	call .set_freeze
	jp RefreshBattleHuds

.set_freeze
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	set FRZ, [hl]
	jp UpdateOpponentInParty

.check_ice
	ld de, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld de, wBattleMonType1
.ok
	ld a, [de]
	inc de
	cp ICE
	ret z
	ld a, [de]
	cp ICE
	ret

BattleCommand_FunnyStuff:

	push bc
	push de
	farcall BattleCommand_Stab
	pop de
	pop bc
	ld a, [wTypeMatchup]
	and a
	jp z, .fail_1

	ld a, [wAttackMissed]
	and a
	jp nz, .fail_2

	push bc
	call BattleRandom
	ld b, a
	ld hl, Funny_Stuff_Power
	ld c, 0
.next
	ld a, [hli]
	cp -1
	jr z, .fail_2
	cp b
	jr nc, .got_power
	inc c
	inc hl
	jr .next

.got_power
	ld a, c
	ld [wBattleAnimParam], a
	call AnimateCurrentMoveEitherSide
	ld d, [hl]
	pop bc
	ret

.fail_1
	ld hl, FunnySfuffIneffectiveText
	jr .fail_common
.fail_2
	ld hl, FunnyStuffMissText
.fail_common
	call StdBattleTextbox
	ret

; chance, power
power: MACRO
	db \1 - 1, \2
ENDM

Funny_Stuff_Power:
	power 5,   5
	power 10,  10
	power 15,  15
	power 20,  20
	power 26,  25
	power 31,  30
	power 36,  35
	power 41,  40
	power 46,  45
	power 51,  50
	power 56,  55
	power 61,  60
	power 67,  65
	power 72,  70
	power 77,  75
	power 82,  80
	power 87,  85
	power 92,  90
	power 97,  95
	power 102, 100
	power 108, 105
	power 113, 110
	power 118, 115
	power 123, 120
	power 128, 125
	power 133, 130
	power 138, 135
	power 143, 140
	power 148, 145
	power 154, 150
	power 159, 155
	power 164, 160
	power 169, 165
	power 174, 170
	power 179, 175
	power 184, 180
	power 189, 185
	power 195, 190
	power 200, 195
	power 205, 200
	power 210, 205
	power 215, 210
	power 220, 215
	power 225, 220
	power 230, 225
	power 236, 230
	power 241, 235
	power 246, 240
	power 251, 245
	power 255, 250
	db -1 ; end

BattleCommand_MultiStatusChance:
	farcall BattleCommand_EffectChance

.loop
	; 1/8 chance of each status
	call BattleRandom
	swap a
	and %11
	jr z, .loop
	dec a
	ld a, BANK(MultiStatusPointer)
	ld hl, MultiStatusPointer
	rst JumpTable
	ret

AlreadyBurnedText:
	text "<TARGET>'s"
	line "already burned!"
	prompt

FailedText:
	text "But the effect"
	line "failed!"
	prompt

AlreadyFrozenText:
	text "<TARGET>'s"
	line "already frozen!"
	prompt

FunnySfuffIneffectiveText:
	text "But the attack was"
	line "ineffective!"
	prompt

FunnyStuffMissText:
	text "But the attack was"
	line "off and missed!"
	prompt
