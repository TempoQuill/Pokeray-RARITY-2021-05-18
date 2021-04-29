; +-----------------------------------------------------------+
; |                                                           |
; |      POKEMON RAY/SHADE/CHAOS: THE MAIN AUDIO ROUTINE      |
; |                                                           |
; +-----------------------------------------------------------+
; Interfaces are in home ROM.
; Notable functions:
; 	FadeMusic
; 	PlayStereoSFX
; Notable diffs from Gold:
; 	unused content funcationality is restored
; 	FREQUENCY OVERRIDES work on all pitched channels
; 	notoriously missing commands from Red/Yoshi are now present
_InitSound::
; restart sound operation
; clear all relevant hardware registers & wram

	push hl
	push de
	push bc
	push af
	call MusicOff
	ld hl, rNR50 ; channel control registers
	xor a
	ld [hli], a ; rNR50 ; volume/vin

	ld [hli], a ; rNR51 ; sfx channels
	ld a, $80 ; all channels on
	ld [hli], a ; rNR52 ; music channels

	ld hl, rNR10 ; sound channel registers
	ld e, NUM_MUSIC_CHANS

.clearsound
;	sound channel   1      2      3      4
	xor a
	ld [hli], a ; rNR10, rNR20, rNR30, rNR40 ; sweep = 0

	ld [hli], a ; rNR11, rNR21, rNR31, rNR41 ; length/wavepattern = 0
	ld a, $8
	ld [hli], a ; rNR12, rNR22, rNR32, rNR42 ; envelope = 0
	xor a
	ld [hli], a ; rNR13, rNR23, rNR33, rNR43 ; frequency lo = 0
	ld a, $80
	ld [hli], a ; rNR14, rNR24, rNR34, rNR44 ; restart sound (freq hi = 0)
	dec e
	jr nz, .clearsound

	ld hl, wChannels ; start of channel data
	ld de, wChannelsEnd - wChannels ; length of area to clear (entire sound wram area)

.clearchannels

	xor a
	ld [hli], a
	dec de
	ld a, e
	or d
	jr nz, .clearchannels
	ld a, MAX_VOLUME
	ld [wVolume], a
	call MusicOn
	pop af
	pop bc
	pop de
	pop hl
	ret

MusicFadeRestart:
; restart but keep the music id to fade in to

	ld a, [wMusicFadeID + 1]
	push af

	ld a, [wMusicFadeID]
	push af

	call _InitSound

	pop af
	ld [wMusicFadeID], a

	pop af
	ld [wMusicFadeID + 1], a

	ret

MusicOn:
	ld a, 1 << MUSIC_ON_F
	ld [wMusicPlaying], a
	ret

MusicOff:
	xor a
	ld [wMusicPlaying], a
	ret

_UpdateSound::
; called once per frame

	; no use updating audio if it's not playing
	ld a, [wMusicPlaying]
	and a
	ret z
	; start at ch1
	xor a
	ld [wCurChannel], a ; just
	ld [wSoundOutput], a ; off
	ld bc, wChannel1

.loop

	; is the channel active?
	bc_offset CHANNEL_FLAGS1
	bit SOUND_CHANNEL_ON, [hl]
	jp z, .nextchannel

	; check time left in the current note
	bc_offset CHANNEL_NOTE_DURATION
	ld a, [hl]
	cp $2 ; 1 or 0?
	jr c, .noteover

	dec [hl]
	jr .continue_sound_update

.noteover

	; reset vibrato delay
	bc_offset CHANNEL_VIBRATO_DELAY
	ld a, [hl]
	bc_offset CHANNEL_VIBRATO_DELAY_COUNT
	ld [hl], a

	; turn vibrato off for now
	bc_offset CHANNEL_FLAGS2
	res SOUND_VIBRATO, [hl]

	; get next note
	call ParseMusic

.continue_sound_update

	call ApplyPitchSlide

	; duty cycle
	bc_offset CHANNEL_DUTY_CYCLE
	ld a, [hli]
	ld [wCurTrackDuty], a

	; volume envelope
	ld a, [hli]
	ld [wCurTrackVolumeEnvelope], a

	; frequency
	ld a, [hli]
	ld [wCurTrackFrequency], a
	ld a, [hl]
	ld [wCurTrackFrequency + 1], a

	; vibrato, envelope, pitch, chorus, etc
	call GeneralHandler
	; noise
	call HandleNoise

	; turn off music when playing sfx?
	ld a, [wSFXPriority]
	and a
	jr z, .next

	; are we in a sfx channel right now?
	ld a, [wCurChannel]
	cp NUM_MUSIC_CHANS
	jr nc, .next

	; are any sfx channels active?
	; if so, mute
	ld hl, wChannel5Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .restnote

	ld hl, wChannel6Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .restnote

	ld hl, wChannel7Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .restnote

	ld hl, wChannel8Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr z, .next

.restnote

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_REST, [hl] ; Rest

.next

	; are we in a sfx channel right now?
	ld a, [wCurChannel]
	cp NUM_MUSIC_CHANS
	jr nc, .sfx_channel

	bc_offset CHANNEL_STRUCT_LENGTH * NUM_MUSIC_CHANS + CHANNEL_FLAGS1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .sound_channel_on

.sfx_channel

	call UpdateChannels
	bc_offset CHANNEL_TRACKS
	ld a, [wSoundOutput]
	or [hl]
	ld [wSoundOutput], a

.sound_channel_on

	; clear note flags
	bc_offset CHANNEL_NOTE_FLAGS
	xor a
	ld [hl], a

.nextchannel

	; next channel
	bc_offset CHANNEL_STRUCT_LENGTH
	ld c, l
	ld b, h
	ld a, [wCurChannel]
	inc a
	ld [wCurChannel], a
	cp NUM_CHANNELS ; are we done?
	jp nz, .loop ; do it all again

	call PlayDanger

	; fade music in/out
	call FadeMusic

	; write volume to hardware register
	ld a, [wVolume]
	ldh [rNR50], a

	; write SO on/off to hardware register
	ld a, [wSoundOutput]
	ldh [rNR51], a
	ret

UpdateChannels:

	ld hl, .ChannelFnPtrs
	ld a, [wCurChannel]
	and $7
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.ChannelFnPtrs:
	dw .Channel1
	dw .Channel26
	dw .Channel37
	dw .Channel48
; sfx ch ptrs are identical to music chs
; ..except 5
; SfxFnPtrs:
	dw .Channel5
	dw .Channel26
	dw .Channel37
	dw .Channel48

.Channel1:

	ld a, [wLowHealthAlarm]
	bit DANGER_ON_F, a
	ret nz

.Channel5:

	bc_offset CHANNEL_NOTE_FLAGS
	bit NOTE_PITCH_SWEEP, [hl]
	jr z, .noPitchSweep

	ld a, [wPitchSweep]
	ldh [rNR10], a

.noPitchSweep

	bit NOTE_REST, [hl] ; rest
	jr nz, .ch1_rest

	bit NOTE_NOISE_SAMPLING, [hl]
	jr nz, .ch1_noise_sampling

	bit NOTE_FREQ_OVERRIDE, [hl]
	jr nz, .ch1_frequency_override

	bit NOTE_ENV_OVERRIDE, [hl]
	jr nz, .ch1_env_override

	bit NOTE_VIBRATO_OVERRIDE, [hl]
	jr nz, .ch1_vibrato_override

	jr .ch1_check_duty_override

.ch1_frequency_override

	ld a, [wCurTrackFrequency]
	ldh [rNR13], a
	ld a, [wCurTrackFrequency + 1]
	ldh [rNR14], a

.ch1_check_duty_override

	bit NOTE_DUTY_OVERRIDE, [hl]
	ret z

	ld a, [wCurTrackDuty]
	ld d, a
	ldh a, [rNR11]
	and $3f ; sound length
	or d
	ldh [rNR11], a
	ret

.ch1_env_override

	ld a, [wCurTrackVolumeEnvelope]
	ldh [rNR12], a
	ld a, [wCurTrackFrequency + 1]
	or 1 << FREQUENCY_RST
	ldh [rNR14], a
	ret

.ch1_vibrato_override

	ld a, [wCurTrackDuty]
	ld d, a
	ldh a, [rNR11]
	and $3f ; sound length
	or d
	ldh [rNR11], a
	ld a, [wCurTrackFrequency]
	ldh [rNR13], a
	ret

.ch1_rest

	ldh a, [rNR52]
	and %10001110 ; ch1 off
	ldh [rNR52], a
	ld hl, rNR10
	call ClearChannel
	ret

.ch1_noise_sampling

	ld hl, wCurTrackDuty
	ld a, $3f ; sound length
	or [hl]
	ldh [rNR11], a
	ld a, [wCurTrackVolumeEnvelope]
	ldh [rNR12], a
	ld a, [wCurTrackFrequency]
	ldh [rNR13], a
	ld a, [wCurTrackFrequency + 1]
	or $80
	ldh [rNR14], a
	ret


.Channel26:

	bc_offset CHANNEL_NOTE_FLAGS

	bit NOTE_REST, [hl] ; rest
	jr nz, .ch2_rest

	bit NOTE_NOISE_SAMPLING, [hl]
	jr nz, .ch2_noise_sampling

	bit NOTE_FREQ_OVERRIDE, [hl]
	jr nz, .ch2_frequency_override

	bit NOTE_ENV_OVERRIDE, [hl]
	jr nz, .ch2_env_override

	bit NOTE_VIBRATO_OVERRIDE, [hl]
	jr nz, .ch2_vibrato_override

	bit NOTE_DUTY_OVERRIDE, [hl]
	ret z

	ld a, [wCurTrackDuty]
	ld d, a
	ldh a, [rNR21]
	and $3f ; sound length
	or d
	ldh [rNR21], a
	ret

.ch2_frequency_override

	ld a, [wCurTrackFrequency]
	ldh [rNR23], a
	ld a, [wCurTrackFrequency + 1]
	ldh [rNR24], a
	ret

.ch2_env_override

	ld a, [wCurTrackVolumeEnvelope]
	ldh [rNR22], a
	ld a, [wCurTrackFrequency + 1]
	or 1 << FREQUENCY_RST
	ldh [rNR24], a
	ret

.ch2_vibrato_override

	ld a, [wCurTrackDuty]
	ld d, a
	ldh a, [rNR21]
	and $3f ; sound length
	or d
	ldh [rNR21], a
	ld a, [wCurTrackFrequency]
	ldh [rNR23], a
	ret

.ch2_rest

	ldh a, [rNR52]
	and %10001101 ; ch2 off
	ldh [rNR52], a
	ld hl, rNR20
	call ClearChannel
	ret

.ch2_noise_sampling

	ld hl, wCurTrackDuty
	ld a, $3f ; sound length
	or [hl]
	ldh [rNR21], a
	ld a, [wCurTrackVolumeEnvelope]
	ldh [rNR22], a
	ld a, [wCurTrackFrequency]
	ldh [rNR23], a
	ld a, [wCurTrackFrequency + 1]
	or $80 ; initial (restart)
	ldh [rNR24], a
	ret


.Channel37:

	bc_offset CHANNEL_NOTE_FLAGS

	bit NOTE_REST, [hl]
	jr nz, .ch3_rest

	bit NOTE_NOISE_SAMPLING, [hl]
	jr nz, .ch3_noise_sampling

	bit NOTE_ENV_OVERRIDE, [hl]
	jr nz, .ch3_env_override

	bit NOTE_VIBRATO_OVERRIDE, [hl]
	jr nz, .ch3_vibrato_override

	bit NOTE_FREQ_OVERRIDE, [hl]
	ret z

	ld a, [wCurTrackFrequency]
	ldh [rNR33], a
	ld a, [wCurTrackFrequency + 1]
	ldh [rNR34], a
	ret

.ch3_vibrato_override

	ld a, [wCurTrackFrequency]
	ldh [rNR33], a
	ret

.ch3_rest

	ldh a, [rNR52]
	and %10001011 ; ch3 off
	ldh [rNR52], a
	ld hl, rNR30
	call ClearChannel
	ret

.ch3_noise_sampling

	ld a, $3f ; sound length
	ldh [rNR31], a

.ch3_env_override

	xor a
	ldh [rNR30], a

	call .load_wave_pattern

	ld a, $80
	ldh [rNR30], a
	ld a, [wCurTrackFrequency]
	ldh [rNR33], a
	ld a, [wCurTrackFrequency + 1]
	or $80
	ldh [rNR34], a
	ret

.load_wave_pattern:

	push hl
	ld a, [wCurTrackVolumeEnvelope]

	; 0-f are technically valid
	; f is filler made of 0's to avoid garbage
	and WAVE_TABLE_MASK
	swap a
	ld e, a
	ld d, 0

	; hl << 4
	; each wavetable is fixed at 16 bytes
	; so seeking is done in $10s
	ld de, WaveSamples
	add hl, de

	ld a, [hli]
	ldh [rWave_0], a
	ld a, [hli]
	ldh [rWave_1], a
	ld a, [hli]
	ldh [rWave_2], a
	ld a, [hli]
	ldh [rWave_3], a
	ld a, [hli]
	ldh [rWave_4], a
	ld a, [hli]
	ldh [rWave_5], a
	ld a, [hli]
	ldh [rWave_6], a
	ld a, [hli]
	ldh [rWave_7], a
	ld a, [hli]
	ldh [rWave_8], a
	ld a, [hli]
	ldh [rWave_9], a
	ld a, [hli]
	ldh [rWave_a], a
	ld a, [hli]
	ldh [rWave_b], a
	ld a, [hli]
	ldh [rWave_c], a
	ld a, [hli]
	ldh [rWave_d], a
	ld a, [hli]
	ldh [rWave_e], a
	ld a, [hli]
	ldh [rWave_f], a

	pop hl
	ld a, [wCurTrackVolumeEnvelope]
	and WAVE_VOLUME_MASK
	sla a
	ldh [rNR32], a
	ret

.Channel48:

	bc_offset CHANNEL_NOTE_FLAGS

	bit NOTE_NOISE_SAMPLING, [hl]
	jr nz, .ch4_noise_sampling

	bit NOTE_REST, [hl]
	ret z

	ldh a, [rNR52]
	and %10000111 ; ch4 off
	ldh [rNR52], a
	ld hl, rNR40
	call ClearChannel
	ret

.ch4_noise_sampling

	ld a, $3f ; sound length
	ldh [rNR41], a
	ld a, [wCurTrackVolumeEnvelope]
	ldh [rNR42], a
	ld a, [wCurTrackFrequency]
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ret

_CheckSFX:
; return carry if any sfx channels are active

	ld hl, wChannel5Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .sfxon

	ld hl, wChannel6Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .sfxon

	ld hl, wChannel7Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .sfxon

	ld hl, wChannel8Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .sfxon

	and a
	ret

.sfxon
	scf
	ret


PlayDanger:

	ld a, [wLowHealthAlarm]
	bit DANGER_ON_F, a
	ret z

	; Don't do anything if SFX is being played
	and $ff ^ (1 << DANGER_ON_F)
	ld d, a
	call _CheckSFX
	jr c, .increment

	; Play the high tone
	and a
	jr z, .begin

	; Play the low tone
	cp 16
	jr z, .halfway

	jr .increment

.halfway

	ld hl, DangerSoundLow
	jr .applychannel

.begin

	ld hl, DangerSoundHigh

.applychannel

	xor a
	ldh [rNR10], a
	ld a, [hli]
	ldh [rNR11], a
	ld a, [hli]
	ldh [rNR12], a
	ld a, [hli]
	ldh [rNR13], a
	ld a, [hli]
	ldh [rNR14], a

.increment

	ld a, d
	inc a
	cp 30 ; Ending frame
	jr c, .noreset

	xor a

.noreset

	; Make sure the danger sound is kept on
	or 1 << DANGER_ON_F
	ld [wLowHealthAlarm], a

	; Enable channel 1 if it's off
	ld a, [wSoundOutput]
	and $11
	ret nz
	ld a, [wSoundOutput]
	or $11
	ld [wSoundOutput], a
	ret

DangerSoundHigh:
	db %11000000 ; duty
	dn 8, 4      ; volume setting
	dw $8731     ; pitch/restart

DangerSoundLow:
	db %11000000 ; duty
	dn 7, 4      ; volume setting
	dw $86ee     ; pitch/restart

FadeMusic:
; fade music if applicable
; usage:
;	write to wMusicFade
;	song fades out at the given rate
;	load song id in wMusicFadeID
;	fade new song in
; notes:
;	max # frames per volume level is $3f

	; fading?
	ld a, [wMusicFade]
	and a
	ret z

	; has the count ended?
	ld a, [wMusicFadeCount]
	and a
	jr z, .update

	; count down
	dec a
	ld [wMusicFadeCount], a
	ret

.update

	ld a, [wMusicFade]
	ld d, a

	; get new count
	and $3f
	ld [wMusicFadeCount], a

	; get SO1 volume
	ld a, [wVolume]
	and VOLUME_SO1_LEVEL

	; which way are we fading?
	bit MUSIC_FADE_IN_F, d
	jr nz, .fadein

	; fading out
	and a
	jr z, .novolume

	dec a
	jr .updatevolume

.novolume

	; make sure volume is off
	xor a
	ld [wVolume], a

	; did we just get on a bike?
	ld a, [wPlayerState]
	cp PLAYER_BIKE
	jr z, .bicycle

	push bc

	; restart sound
	call MusicFadeRestart

	; get new song id
	ld a, [wMusicFadeID]
	and a
	jr z, .quit ; this assumes there are fewer than 256 songs!

	ld e, a
	ld a, [wMusicFadeID + 1]
	ld d, a

	; load new song
	call _PlayMusic

.quit

	; cleanup
	pop bc

	; stop fading
	xor a
	ld [wMusicFade], a
	ret

.bicycle

	push bc

	; restart sound
	call MusicFadeRestart

	; this turns the volume up
	; turn it back down
	xor a
	ld [wVolume], a

	; get new song id
	ld a, [wMusicFadeID]
	ld e, a
	ld a, [wMusicFadeID + 1]
	ld d, a

	; load new song
	call _PlayMusic
	pop bc

	; fade in
	ld hl, wMusicFade
	set MUSIC_FADE_IN_F, [hl]
	ret

.fadein

	; are we done?
	cp MAX_VOLUME & $f
	jr nc, .maxvolume

	; inc volume
	inc a
	jr .updatevolume

.maxvolume

	; we're done
	xor a
	ld [wMusicFade], a
	ret

.updatevolume

	; hi = lo
	ld d, a
	swap a
	or d
	ld [wVolume], a
	ret


LoadNote:
	; wait for pitch slide to finish
	bc_offset CHANNEL_FLAGS2
	bit SOUND_PITCH_SLIDE, [hl]
	jp z, .relative_pitch

	; get note duration
	bc_offset CHANNEL_NOTE_DURATION
	ld a, [hl]
	ld hl, wCurNoteDuration
	sub [hl]
	jr nc, .ok

	ld a, 1

.ok
	ld [hl], a

	; get frequency
	bc_offset CHANNEL_FREQUENCY
	ld e, [hl]
	inc hl
	ld d, [hl]

	; get direction of pitch slide
	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld a, e
	sub [hl]
	ld e, a
	ld a, d
	sbc 0
	ld d, a

	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	sub [hl]
	jr nc, .greater_than

	bc_offset CHANNEL_FLAGS3
	set SOUND_PITCH_SLIDE_DIR, [hl]

	; get frequency
	bc_offset CHANNEL_FREQUENCY
	ld e, [hl]
	inc hl
	ld d, [hl]

	; write target
	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld a, [hl]
	sub e
	ld e, a
	ld a, d
	sbc 0
	ld d, a

	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	ld a, [hl]
	sub d
	ld d, a
	jr .resume

.greater_than

	bc_offset CHANNEL_FLAGS3
	res SOUND_PITCH_SLIDE_DIR, [hl]

	; get frequency
	bc_offset CHANNEL_FREQUENCY
	ld e, [hl]
	inc hl
	ld d, [hl]

	; get distance from pitch slide target
	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld a, e
	sub [hl]
	ld e, a
	ld a, d
	sbc 0
	ld d, a

	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	sub [hl]
	ld d, a

.resume

	; de = x * [wCurNoteDuration] + y
	; x + 1 -> d
	; y -> a
	push bc
	ld hl, wCurNoteDuration
	ld b, 0 ; quotient

.loop

	inc b
	ld a, e
	sub [hl]
	ld e, a
	jr nc, .loop

	ld a, d
	and a
	jr z, .quit

	dec d
	jr .loop

.quit

	ld a, e ; remainder
	add [hl]
	ld d, b ; quotient
	pop bc

	bc_offset CHANNEL_PITCH_SLIDE_AMOUNT
	ld [hl], d ; quotient

	bc_offset CHANNEL_PITCH_SLIDE_FRACTION
	ld [hl], a ; remainder

	bc_offset CHANNEL_PITCH_SLIDE_TEMPO
	xor a
	ld [hl], a

.relative_pitch

	bc_offset CHANNEL_FLAGS2
	bit SOUND_RELATIVE_PITCH, [hl]
	jr z, .env_ptrn

	bc_offset CHANNEL_FLAGS3
	res SOUND_REL_PITCH_FLAG, [hl]

.env_ptrn

	bc_offset CHANNEL_FLAGS2
	bit SOUND_ENV_PTRN, [hl]
	jr z, .mute

	bc_offset CHANNEL_NOTE_FLAGS
	res NOTE_ENV_OVERRIDE, [hl]

	; reset offset
	bc_offset CHANNEL_ENVELOPE_GROUP_OFFSET
	xor a
	ld [hl], a

.mute

	bc_offset CHANNEL_FLAGS2
	bit SOUND_MUTE, [hl]
	ret z

	; read mute state
	bc_offset CHANNEL_MUTE_ENABLE
	ld a, [hl]

	; copy to main byte
	bc_offset CHANNEL_MUTE
	ld [hl], a
	ret


GeneralHandler:
; handle duty, pitch, env ptrn, mute, and vibrato

	bc_offset CHANNEL_FLAGS2
	bit SOUND_DUTY_LOOP, [hl] ; duty cycle looping
	jr z, .relative_pitch

	bc_offset CHANNEL_DUTY_CYCLE_PATTERN
	ld a, [hl]
	rlca
	rlca
	ld [hl], a
	and $c0
	ld [wCurTrackDuty], a

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_DUTY_OVERRIDE, [hl]

.relative_pitch

	bc_offset CHANNEL_FLAGS2
	bit SOUND_RELATIVE_PITCH, [hl]
	jr z, .pitch_offset

	; is relative pitch on?
	bc_offset CHANNEL_FLAGS3
	bit SOUND_REL_PITCH_FLAG, [hl]
	jr nz, .on

	set SOUND_REL_PITCH_FLAG, [hl]
	jr .skip_pitch

.on

	res SOUND_REL_PITCH_FLAG, [hl]

	; get pitch
	bc_offset CHANNEL_PITCH
	ld a, [hl]
	and a
	jr z, .skip_pitch

	; add to pitch value
	bc_offset CHANNEL_RELATIVE_PITCH
	add [hl]
	ld e, a

	; get octave
	bc_offset CHANNEL_OCTAVE
	ld d, [hl]

	; get final tone
	call GetFrequency
	ld hl, wCurTrackFrequency
	ld [hl], e
	inc hl
	ld [hl], d

; interesting notes:
;	$d9 and $e7 can stack with each other
;		$d9 $01 and $e7 $01 together would be the same as $d9/e7 $02
;	$e7 $f4-ff can trigger the rest pitch due to a lack of carry

.skip_pitch

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_FREQ_OVERRIDE, [hl]

.pitch_offset

	bc_offset CHANNEL_FLAGS2
	bit SOUND_PITCH_OFFSET, [hl]
	jr z, .pitch_inc

	; add offset to wCurTrackFrequency
	bc_offset CHANNEL_PITCH_OFFSET
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, wCurTrackFrequency
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, wCurTrackFrequency
	ld [hl], e
	inc hl
	ld [hl], d

.pitch_inc

	; is pitch inc on?
	bc_offset CHANNEL_FLAGS1
	bit SOUND_PITCH_INC_SWITCH, [hl]
	jr z, .vibrato

	bc_offset CHANNEL_PITCH_INC_SWITCH

	; is the byte active?
	ld a, [hl]
	and a
	jr z, .skip

	; if so, inc the pitch by 1
	inc e
	jr nc, .skip

	; inc d if e rolls over
	inc d

; incidentally, pitch_inc_switch can stack with pitch_offset
; for example, $f1 followed by $e6 $0001 would essentially mean $e6 $0002
.skip

	ld hl, wCurTrackFrequency
	ld [hl], e
	inc hl
	ld [hl], d

.vibrato

	; is vibrato on?
	bc_offset CHANNEL_FLAGS2
	bit SOUND_VIBRATO, [hl] ; vibrato
	jr z, .env_ptrn

	; is vibrato active for this note yet?
	; is the delay over?
	bc_offset CHANNEL_VIBRATO_DELAY_COUNT
	ld a, [hl]
	and a
	jr nz, .subexit

	; is the extent nonzero?
	bc_offset CHANNEL_VIBRATO_EXTENT
	ld a, [hl]
	and a
	jr z, .env_ptrn

	; save it for later
	ld d, a

	; is it time to toggle vibrato up/down?
	bc_offset CHANNEL_VIBRATO_RATE
	ld a, [hl]
	and $f ; count
	jr z, .toggle

.subexit

	dec [hl]
	jr .env_ptrn

.toggle

	; refresh count
	ld a, [hl]
	swap [hl]
	or [hl]
	ld [hl], a

	; get pitch
	ld a, [wCurTrackFrequency]
	ld e, a

	; toggle vibrato up/down
	bc_offset CHANNEL_FLAGS3
	bit SOUND_VIBRATO_DIR, [hl] ; vibrato up/down
	jr z, .down

; up

	; vibrato down
	res SOUND_VIBRATO_DIR, [hl]

	; get the delay
	ld a, d
	and $f ; lo
	ld d, a
	ld a, e
	sub d
	jr nc, .no_carry
	ld a, 0
	jr .no_carry

.down

	; vibrato up
	set SOUND_VIBRATO_DIR, [hl]

	; get the delay
	ld a, d
	and $f0 ; hi
	swap a ; move it to lo
	add e
	jr nc, .no_carry

	ld a, $ff

.no_carry

	ld [wCurTrackFrequency], a

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_VIBRATO_OVERRIDE, [hl]

.env_ptrn

	bc_offset CHANNEL_FLAGS2
	bit SOUND_ENV_PTRN, [hl]
	jr z, .mute

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_ENV_OVERRIDE, [hl]

	; store group in de
	bc_offset CHANNEL_ENVELOPE_GROUP
	ld e, [hl]
	ld d, 0
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	cp CHAN3
	jr nz, .not_ch3

	; wavetable group
	ld hl, WaveTableGroups
	call GetByteInEnvelopeGroup
	jr c, .pause

	ld d, a
	and WAVE_TABLE_MASK
	ld a, [wCurTrackVolumeEnvelope]
	and WAVE_VOLUME_MASK
	or d
	ld [wCurTrackVolumeEnvelope], a
	call UpdateChannels.load_wave_pattern
	jr .mute

.not_ch3

	; envelope group
	ld hl, EnvelopeGroups
	call GetByteInEnvelopeGroup
	jr nc, .set

.pause

	; pause during rest
	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_REST, [hl]
	jr .mute

.set

	; store envelope during note
	ld [wCurTrackVolumeEnvelope], a
	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_NOISE_SAMPLING, [hl]

.mute

	bc_offset CHANNEL_FLAGS2
	bit SOUND_MUTE, [hl]
	ret z

	; check for active state
	bc_offset CHANNEL_MUTE_ENABLE
	ld a, [hl]
	and a
	jr z, .enable

	; disable
	dec [hl]
	ret

.enable

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_REST, [hl]
	ret


ApplyPitchSlide:

	; quit if pitch slide inactive
	bc_offset CHANNEL_FLAGS2
	bit SOUND_PITCH_SLIDE, [hl]
	ret z

	; de = Frequency
	bc_offset CHANNEL_FREQUENCY
	ld e, [hl]
	inc hl
	ld d, [hl]

	; check whether pitch slide is going up or down
	bc_offset CHANNEL_FLAGS3
	bit SOUND_PITCH_SLIDE_DIR, [hl]
	jr z, .decreasing

	; frequency += [Channel*PitchSlideAmount]
	bc_offset CHANNEL_PITCH_SLIDE_AMOUNT
	ld l, [hl]
	ld h, 0
	add hl, de
	ld d, h
	ld e, l

	; [Channel*PitchSlideTempo] += [Channel*PitchSlideAmountFraction]
	; if rollover: Frequency += 1
	bc_offset CHANNEL_PITCH_SLIDE_FRACTION
	ld a, [hl]

	bc_offset CHANNEL_PITCH_SLIDE_TEMPO
	add [hl]
	ld [hl], a
	ld a, 0
	adc e
	ld e, a
	ld a, 0
	adc d
	ld d, a

	; Compare the dw at [Channel*PitchSlideTarget] to de.
	; If frequency is greater, we're finished.
	; Otherwise, load the frequency and set two flags.
	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	ld a, [hl]
	cp d
	jr c, .finished_pitch_slide

	jr nz, .continue_pitch_slide

	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld a, [hl]
	cp e
	jr c, .finished_pitch_slide

	jr .continue_pitch_slide

.decreasing

	; frequency -= [Channel*PitchSlideAmount]
	ld a, e

	bc_offset CHANNEL_PITCH_SLIDE_AMOUNT
	ld e, [hl]
	sub e
	ld e, a
	ld a, d
	sbc 0
	ld d, a

	; [Channel*PitchSlideTempo] *= 2
	; if rollover: Frequency -= 1
	bc_offset CHANNEL_PITCH_SLIDE_FRACTION
	ld a, [hl]
	add a
	ld [hl], a
	ld a, e
	sbc 0
	ld e, a
	ld a, d
	sbc 0
	ld d, a

	; Compare the dw at [Channel*PitchSlideTarget] to de.
	; If frequency is lower, we're finished.
	; Otherwise, load the frequency and set two flags.
	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	ld a, d
	cp [hl]
	jr c, .finished_pitch_slide

	jr nz, .continue_pitch_slide

	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld a, e
	cp [hl]
	jr nc, .continue_pitch_slide

.finished_pitch_slide

	bc_offset CHANNEL_FLAGS2
	res SOUND_PITCH_SLIDE, [hl]

	bc_offset CHANNEL_FLAGS3
	res SOUND_PITCH_SLIDE_DIR, [hl]
	ret

.continue_pitch_slide

	bc_offset CHANNEL_FREQUENCY
	ld [hl], e
	inc hl
	ld [hl], d

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_FREQ_OVERRIDE, [hl]
	set NOTE_DUTY_OVERRIDE, [hl]
	ret

HandleNoise:

	; is noise sampling on?
	bc_offset CHANNEL_FLAGS1
	bit SOUND_NOISE, [hl] ; noise sampling
	ret z

	; are we in a sfx channel?
	ld a, [wCurChannel]
	bit NOISE_CHAN_F, a
	jr nz, .next

	; is ch8 on? (noise)
	ld hl, wChannel8Flags1
	bit SOUND_CHANNEL_ON, [hl] ; on?
	jr z, .next

	; is ch8 playing noise?
	bit SOUND_NOISE, [hl]
	ret nz ; quit if so

.next

	ld a, [wNoiseSampleDelay]
	and a
	jr z, ReadNoiseSample

	dec a
	ld [wNoiseSampleDelay], a
	ret

ReadNoiseSample:
; sample struct:
;	[wx] [yy] [zz]
;	w: does nothing
;	x: actual duration - 1
;		1 = 2 2 = 3 etc
;	zz: volume envelope
;       yy: frequency

	; de = [wNoiseSampleAddress]
	ld hl, wNoiseSampleAddress
	ld e, [hl]
	inc hl
	ld d, [hl]

	; is it empty?
	ld a, e
	or d
	jr z, .quit

	ld a, [de]
	inc de

	cp sound_ret_cmd
	jr z, .quit

	and $f
	inc a
	ld [wNoiseSampleDelay], a
	ld a, [de]
	inc de
	ld [wCurTrackVolumeEnvelope], a
	ld a, [de]
	inc de
	ld [wCurTrackFrequency], a
	xor a
	ld [wCurTrackFrequency + 1], a

	ld hl, wNoiseSampleAddress
	ld [hl], e
	inc hl
	ld [hl], d

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_NOISE_SAMPLING, [hl]

.quit
	ret


ParseMusic:
; parses until a note is read or the song is ended

	call GetMusicByte ; store next byte in a
	cp sound_ret_cmd
	jr z, .sound_ret

	cp FIRST_MUSIC_CMD
	jr c, .readnote

	; then it's a command
.readcommand

	call ParseMusicCommand
	jr ParseMusic ; start over

.readnote
; wCurMusicByte contains current note
; special notes

	bc_offset CHANNEL_FLAGS1
	bit SOUND_SFX, [hl]
	jp nz, ParseSFXOrRest

	bit SOUND_REST, [hl] ; rest
	jp nz, ParseSFXOrRest

	bit SOUND_NOISE, [hl] ; noise sample
	jp nz, GetNoiseSample

; normal note

	; set note duration (bottom nybble)
	ld a, [wCurMusicByte]
	and $f
	call SetNoteDuration

	; get note pitch (top nybble)
	ld a, [wCurMusicByte]
	swap a
	and $f
	jr z, .rest ; pitch 0 -> rest

	; update pitch
	bc_offset CHANNEL_PITCH
	ld [hl], a

	; store pitch in e
	ld e, a

	; store octave in d
	bc_offset CHANNEL_OCTAVE
	ld d, [hl]

	; update frequency
	call GetFrequency

	bc_offset CHANNEL_FREQUENCY
	ld [hl], e
	inc hl
	ld [hl], d

	; check if not or rest
	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_NOISE_SAMPLING, [hl]
	jp LoadNote

.rest
; note = rest

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_REST, [hl] ; Rest
	ret

.sound_ret
; $ff is reached in music data

	bc_offset CHANNEL_FLAGS1
	bit SOUND_SUBROUTINE, [hl] ; in a subroutine?
	jr nz, .readcommand ; execute

	ld a, [wCurChannel]
	cp CHAN5
	jr nc, .chan_5to8

	; check if Channel 5's on
	bc_offset CHANNEL_STRUCT_LENGTH * NUM_MUSIC_CHANS + CHANNEL_FLAGS1
	bit SOUND_CHANNEL_ON, [hl]
	jr nz, .ok

.chan_5to8

	bc_offset CHANNEL_FLAGS1
	bit SOUND_REST, [hl]
	call nz, RestoreVolume

	; end music
	ld a, [wCurChannel]
	cp CHAN5
	jr nz, .ok

	; no sweep
	xor a
	ldh [rNR10], a ; sweep = 0

.ok
; stop playing

	; turn channel off
	bc_offset CHANNEL_FLAGS1
	res SOUND_CHANNEL_ON, [hl]

	; note = rest
	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_REST, [hl]

	; clear music id & bank
	bc_offset CHANNEL_MUSIC_ID
	xor a
	ld [hli], a ; id hi
	ld [hli], a ; id lo
	ld [hli], a ; bank
	ret

RestoreVolume:

	; ch5 only
	ld a, [wCurChannel]
	cp CHAN5
	ret nz
	xor a

	ld hl, wChannel6PitchOffset
	ld [hli], a
	ld [hl], a

	ld hl, wChannel8PitchOffset
	ld [hli], a
	ld [hl], a

	ld a, [wLastVolume]
	ld [wVolume], a
	xor a
	ld [wLastVolume], a
	ld [wSFXPriority], a
	ret

ParseSFXOrRest:

	; turn noise sampling on
	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_NOISE_SAMPLING, [hl] ; noise sample

	; update note duration
	ld a, [wCurMusicByte]
	call SetNoteDuration ; top nybble doesnt matter?

	; update volume envelope from next param
	call GetMusicByte

	bc_offset CHANNEL_VOLUME_ENVELOPE
	ld [hl], a

	; update lo frequency from next param
	call GetMusicByte
	bc_offset CHANNEL_FREQUENCY
	ld [hl], a

	; are we on the last channel? (noise sampling)
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	cp CHAN4
	ret z

	; update hi frequency from next param
	call GetMusicByte
	bc_offset CHANNEL_FREQUENCY + 1
	ld [hl], a
	ret


GetByteInEnvelopeGroup:

	; get pointer
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]

	; store the offset in hl
	; each group can only be 256 bytes long
	bc_offset CHANNEL_ENVELOPE_GROUP_OFFSET
	push hl
	ld l, [hl]
	ld h, 0
	add hl, de
	ld a, [hl]
	pop hl

	; check for ff/fe
	cp env_ret_cmd
	jr z, .quit

	cp env_loop_cmd
	jr nz, .next

	; reset hl when reading fe
	; effectively loops the envelope sequence
	xor a
	ld [hl], a
	ld a, [de]

.next
	inc [hl]
	and a
	ret

.quit
	scf
	ret

GetNoiseSample:
; load ptr to sample header in wNoiseSampleAddress

	; are we on the last channel?
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	cp CHAN4

	; ret if not
	ret nz

	; update note duration
	ld a, [wCurMusicByte]
	and $f
	call SetNoteDuration

	; check current channel
	ld a, [wCurChannel]
	bit NOISE_CHAN_F, a
	jr nz, .sfx

	ld hl, wChannel8Flags1
	bit SOUND_CHANNEL_ON, [hl] ; is ch8 on? (noise)
	ret nz

	ld a, [wMusicNoiseSampleSet]
	jr .next

.sfx

	ld a, [wSFXNoiseSampleSet]

.next

	; load noise sample set id into de
	ld e, a
	ld d, 0

	; load ptr to noise sample set in hl
	ld hl, Drumkits
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; get pitch
	ld a, [wCurMusicByte]
	swap a

	; non-rest note?
	and $f
	ret z

	; use 'pitch' to seek noise sample set
	ld e, a
	ld d, 0
	add hl, de
	add hl, de

	; load sample pointer into wNoiseSampleAddress
	ld a, [hli]
	ld [wNoiseSampleAddress], a
	ld a, [hl]
	ld [wNoiseSampleAddress + 1], a

	; clear delay
	xor a
	ld [wNoiseSampleDelay], a
	ret

ParseMusicCommand:

	; reload command
	ld a, [wCurMusicByte]

	; get command #
	sub FIRST_MUSIC_CMD
	ld e, a
	ld d, 0

	; seek command pointer
	ld hl, MusicCommands
	add hl, de
	add hl, de

	; jump to the new pointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

MusicCommands:
; entries correspond to audio constants (see macros/scripts/audio.asm)

	dw Music_Octave                ; octave 8
	dw Music_Octave                ; octave 7
	dw Music_Octave                ; octave 6
	dw Music_Octave                ; octave 5
	dw Music_Octave                ; octave 4
	dw Music_Octave                ; octave 3
	dw Music_Octave                ; octave 2
	dw Music_Octave                ; octave 1
	dw Music_NoteType              ; init note params
	dw Music_Transpose             ; add octave/pitch
	dw Music_Tempo                 ; tempo
	dw Music_DutyCycle             ; duty cycle
	dw Music_VolumeEnvelope        ; volume envelope
	dw Music_PitchSweep            ; update pitch sweep
	dw Music_DutyCyclePattern      ; duty cycle pattern
	dw Music_ToggleMusic           ; music mode on/off
	dw Music_PitchSlide            ; pitch slide
	dw Music_Vibrato               ; vibrato
	dw Music_SetMute               ; mute
	dw Music_ToggleNoise           ; music noise sampling
	dw Music_OldPanning            ; old panning
	dw Music_Volume                ; volume
	dw Music_PitchOffset           ; pitch offset
	dw Music_RelativePitch         ; add pitch
	dw Music_VolumeEnvelopePattern ; envelope group
	dw Music_TempoRelative         ; tempo adjust
	dw Music_RestartChannel        ; restart current channel from header
	dw Music_NewSong               ; new song
	dw Music_SFXPriorityOn         ; sfx priority on
	dw Music_SFXPriorityOff        ; sfx priority off
	dw Music_JumpRAM               ; jump ram
	dw Music_StereoPanning         ; stereo panning
	dw Music_SFXToggleNoise        ; sfx noise sampling
	dw Music_PitchIncSwitch        ; pitch inc
	dw Music_SoundEventToggle      ; frame swap placeholder
	dw Music_SetMusic              ; execute music
	dw MusicDummy                  ; nothing
	dw MusicDummy                  ; nothing
	dw MusicDummy                  ; nothing
	dw MusicDummy                  ; nothing
	dw MusicDummy                  ; nothing
	dw Music_SetSoundEvent         ; set sound event
	dw Music_SetCondition          ; set condition
	dw Music_JumpIf                ; jumpif
	dw Music_Jump                  ; jump
	dw Music_Loop                  ; loop
	dw Music_Call                  ; call
	dw Music_Ret                   ; return

MusicDummy:
	ret

Music_PitchIncSwitch:
; RSC equivalent to toggle_perfect_pitch

	bc_offset CHANNEL_FLAGS1
	set SOUND_PITCH_INC_SWITCH, [hl]
	bc_offset CHANNEL_PITCH_INC_SWITCH
	ld a, [hl]
	xor TRUE
	ld [hl], a ; flip bit 0 of CHANNEL_PITCH_INC_SWITCH
	ret


Music_SetMusic:
; basically execute_music

	bc_offset CHANNEL_FLAGS1
	set SOUND_SFX, [hl]
	ret

Music_SoundEventToggle:
; will be used when porting Yoshi BGM tracks

	ld hl, wSoundEventFlag
	ld a, [hl]
	and a
	jp z, Music_SetSoundEvent
	xor a
	ld [hl], a
	ret

Music_Ret:
; called when $ff is encountered w/(o) subroutine flag set
; end music stream
; return to source address (if possible)

	; copy LastMusicAddress to MusicAddress
	bc_offset CHANNEL_LAST_MUSIC_ADDRESS
	xor a
	ld e, [hl]
	ld [hli], a
	ld d, [hl]
	ld [hl], a

	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d

	bc_offset CHNANEL_DEEP_MUSIC_ADDRESS
	ld a, [hl]
	and a
	jr nz, .skip_flag

	; reset subroutine flag
	bc_offset CHANNEL_FLAGS1
	res SOUND_SUBROUTINE, [hl]
	jr .skip_deep_move

.skip_flag

	ld e, [hl]
	ld [hli], a
	ld d, [hl]
	ld [hl], a


	bc_offset CHANNEL_LAST_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d

.skip_deep_move

	ret

Music_Call:
; call music stream (subroutine)
; parameters: ll hh ; pointer to subroutine

	; get pointer from next 2 bytes
	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a
	push de

	bc_offset CHANNEL_LAST_MUSIC_ADDRESS
	ld a, [hl]
	and a
	jr z, .next_stack

	; copy LastMusicAddress to DeepMusicAddress
	ld e, [hl]
	inc hl
	ld d, [hl]

	bc_offset CHNANEL_DEEP_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d

.next_stack
	; copy MusicAddress to LastMusicAddress
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld e, [hl]
	inc hl
	ld d, [hl]

	bc_offset CHANNEL_LAST_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d

	; load pointer into MusicAddress
	pop de

	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d

	; set subroutine flag
	bc_offset CHANNEL_FLAGS1
	set SOUND_SUBROUTINE, [hl]
	ret


Music_Jump:
; jump
; parameters: ll hh ; pointer

	; get pointer from next 2 bytes
	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a

	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Music_Loop:
; loops xx - 1 times
; 	00: infinite
; params: 3
;	xx ll hh
;		xx : loop count
;   	ll hh : pointer

	; get loop count
	call GetMusicByte

	bc_offset CHANNEL_FLAGS1
	bit SOUND_LOOPING, [hl] ; has the loop been initiated?
	jr nz, .checkloop

	and a ; loop counter 0 = infinite
	jr z, .loop

	; initiate loop
	dec a
	set SOUND_LOOPING, [hl] ; set loop flag

	bc_offset CHANNEL_LOOP_COUNT
	ld [hl], a ; store loop counter

.checkloop

	bc_offset CHANNEL_LOOP_COUNT
	ld a, [hl]
	and a ; are we done?
	jr z, .endloop

	dec [hl]

.loop

	; get pointer
	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a

	; load new pointer into MusicAddress
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d
	ret

.endloop

	; reset loop flag
	bc_offset CHANNEL_FLAGS1
	res SOUND_LOOPING, [hl]

	; skip to next command
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc de ; skip
	inc de ; pointer
	ld [hl], d
	dec hl
	ld [hl], e
	ret


Music_SetCondition:
; set condition for a jump
; stores condition in channel RAM
; used with FB
; params: 1
;	xx ; condition

	; set condition
	call GetMusicByte

	bc_offset CHANNEL_CONDITION
	ld [hl], a
	ret

Music_JumpIf:
; conditional jump
; used with FA
; checks conditions in channel RAM
; params: 3
; 	xx: condition
;	ll hh: pointer
; check condition

	; a = condition
	call GetMusicByte

	; if existing condition matches, jump to new address
	bc_offset CHANNEL_CONDITION
	cp [hl]
	jr z, .jump

; skip to next command

	; get address
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld e, [hl]
	inc hl
	ld d, [hl]

	; skip pointer
	inc de
	inc de

	; update address
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.jump
; jump to the new address

	; get pointer
	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a

	; update pointer in MusicAddress
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Music_JumpRAM:
; conditional jump
; checks for active condition in exclusive RAM
; RAM may've been used to play dynamic music based on in-game events
; params: 2
; ll hh ; pointer

	; get channel
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	ld e, a
	ld d, 0

	; hl = wChannel1JumpCondition + channel id
	ld hl, wChannel1JumpCondition
	add hl, de

	; if active, jump
	ld a, [hl]
	and a
	jr nz, .jump

; skip to next command

	; get address
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld e, [hl]
	inc hl
	ld d, [hl]

	; skip pointer
	inc de
	inc de

	; update address
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.jump

	; reset jump flag
	ld [hl], 0

	; de = pointer
	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a

	; update address
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld [hl], e
	inc hl
	ld [hl], d
	ret


Music_SetSoundEvent:
; $F9
; sets an exclusive flag
; may've been used to enable different scripts
; params: 0

	ld a, 1 << SOUND_EVENT_F
	ld [wSoundEventFlag], a
	ret

Music_SetMute:
; appears to be a variant of Gen 1's $ef command
; params: 1

	call GetMusicByte

	bc_offset CHANNEL_MUTE
	ld [hl], a
	bc_offset CHANNEL_FLAGS2
	set SOUND_MUTE, [hl]
	ret


Music_Vibrato:
; vibrato
; params: 2
;	1: [xx]
	; delay in frames
;	2: [yz]
	; y: extent
	; z: rate (# frames per cycle)

	; set vibrato flag?
	bc_offset CHANNEL_FLAGS2
	set SOUND_VIBRATO, [hl]

	; start at lower frequency (extent is positive)
	bc_offset CHANNEL_FLAGS3
	res SOUND_VIBRATO_DIR, [hl]

	; get delay
	call GetMusicByte

; update delay

	bc_offset CHANNEL_VIBRATO_DELAY
	ld [hl], a

; update delay count

	bc_offset CHANNEL_VIBRATO_DELAY_COUNT
	ld [hl], a

; update extent
; this is split into halves only to get added back together at the last second

	; get extent/rate
	call GetMusicByte
	bc_offset CHANNEL_VIBRATO_EXTENT
	ld d, a

	; get top nybble
	and $f0
	swap a
	srl a ; halve
	ld e, a
	adc 0 ; round up
	swap a
	or e
	ld [hl], a

; update rate

	bc_offset CHANNEL_VIBRATO_RATE

	; get bottom nybble
	ld a, d
	and $f
	ld d, a
	swap a
	or d
	ld [hl], a
	ret


Music_PitchSlide:
; set the target for pitch slide
; params: 2
; note duration
; target note

	call GetMusicByte
	ld [wCurNoteDuration], a

	call GetMusicByte

	; pitch in e
	ld d, a
	and $f
	ld e, a

	; octave in d
	ld a, d
	swap a
	and $f
	ld d, a
	call GetFrequency

	bc_offset CHANNEL_PITCH_SLIDE_TARGET
	ld [hl], e

	bc_offset CHANNEL_PITCH_SLIDE_TARGET + 1
	ld [hl], d

	bc_offset CHANNEL_FLAGS2
	set SOUND_PITCH_SLIDE, [hl]
	ret


Music_PitchOffset:
; tone
; params: 1 (bigdw)
; offset to add to each note frequency

	bc_offset CHANNEL_FLAGS2
	set SOUND_PITCH_OFFSET, [hl]

	bc_offset CHANNEL_PITCH_OFFSET + 1
	call GetMusicByte
	ld [hld], a
	call GetMusicByte
	ld [hl], a
	ret


Music_RelativePitch:
; set a note medium
; operates squarely on FrequencyTable
; params: 1

	bc_offset CHANNEL_FLAGS2
	set SOUND_RELATIVE_PITCH, [hl]
	call GetMusicByte

	bc_offset CHANNEL_RELATIVE_PITCH
	ld [hl], a
	ret


Music_DutyCyclePattern:
; sequence of 4 duty cycles to be looped
; params: 1 (4 2-bit duty cycle arguments)

	bc_offset CHANNEL_FLAGS2
	set SOUND_DUTY_LOOP, [hl] ; duty cycle looping

	; sound duty sequence
	call GetMusicByte
	rrca
	rrca

	bc_offset CHANNEL_DUTY_CYCLE_PATTERN
	ld [hl], a

	; update duty cycle
	and $c0 ; only uses top 2 bits

	bc_offset CHANNEL_DUTY_CYCLE
	ld [hl], a
	ret


Music_VolumeEnvelopePattern:
; envelope group
; params: 1

	bc_offset CHANNEL_FLAGS2
	set SOUND_ENV_PTRN, [hl]
	call GetMusicByte

	bc_offset CHANNEL_ENVELOPE_GROUP
	ld [hl], a
	ret

Music_ToggleMusic:
; switch to music mode
; params: none

	bc_offset CHANNEL_FLAGS1
	bit SOUND_SFX, [hl]
	jr nz, .clear

	set SOUND_SFX, [hl]
	ret

.clear
	res SOUND_SFX, [hl]
	ret


Music_ToggleNoise:
; toggle music noise sampling
; can't be used as a straight toggle since the param is not read from on->off
; params:
; 	noise on: 1
; 	noise off: 0

	; check if noise sampling is on
	bc_offset CHANNEL_FLAGS1
	bit SOUND_NOISE, [hl]
	jr z, .on

	; turn noise sampling off
	res SOUND_NOISE, [hl]
	ret
.on

	; turn noise sampling on
	set SOUND_NOISE, [hl]
	call GetMusicByte
	ld [wMusicNoiseSampleSet], a
	ret


Music_SFXToggleNoise:
; toggle sfx noise sampling
; params:
;	on: 1
; 	off: 0

	; check if noise sampling is on
	bc_offset CHANNEL_FLAGS1
	bit SOUND_NOISE, [hl]
	jr z, .on

	; turn noise sampling off
	res SOUND_NOISE, [hl]
	ret

.on

	; turn noise sampling on
	set SOUND_NOISE, [hl]
	call GetMusicByte
	ld [wSFXNoiseSampleSet], a
	ret

Music_PitchSweep:
; update pitch sweep
; params: 1

	call GetMusicByte
	ld [wPitchSweep], a

	bc_offset CHANNEL_NOTE_FLAGS
	set NOTE_PITCH_SWEEP, [hl]
	ret


Music_DutyCycle:
; duty cycle
; params: 1

	call GetMusicByte
	rrca
	rrca
	and $c0

	bc_offset CHANNEL_DUTY_CYCLE
	ld [hl], a
	ret


Music_NoteType:
; note length
;	# frames per 16th note
; volume envelope: see Music_VolumeEnvelope
; params: 2

	; note length
	call GetMusicByte

	bc_offset CHANNEL_NOTE_LENGTH
	ld [hl], a
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	cp CHAN4
	ret z


Music_VolumeEnvelope:
; volume envelope
; params: 1
;	hi: volume
;	lo: fade/wavetable id

	call GetMusicByte

	bc_offset CHANNEL_VOLUME_ENVELOPE
	ld [hl], a
	ret


Music_Tempo:
; global tempo
; params: 2
;	de: tempo

	call GetMusicByte
	ld d, a
	call GetMusicByte
	ld e, a
	call SetGlobalTempo
	ret


Music_Octave:
; set octave based on lo nybble of the command

	bc_offset CHANNEL_OCTAVE
	ld a, [wCurMusicByte]
	and 7
	ld [hl], a
	ret


Music_Transpose:
; set starting octave
; this forces all notes up by the starting octave
; params: 1

	call GetMusicByte

	bc_offset CHANNEL_TRANSPOSITION
	ld [hl], a
	ret

Music_StereoPanning:
; stereo panning
; params: 1

	; stereo on?
	ld a, [wOptions]
	bit STEREO, a
	jr nz, .pan_channel

	; skip param
	call GetMusicByte
	ret

.pan_channel

	call SetLRTracks
	call GetMusicByte

	bc_offset CHANNEL_TRACKS
	and [hl]
	ld [hl], a
	ret


Music_OldPanning:
; old panning
; present in pokered/yoshi
; only used in red
; params: 1

	call GetMusicByte
	ld [wStereoPanningMask], a
	ret


Music_Volume:
; set volume
; params: 1
;	see Volume

	; read param even if it's not used
	call GetMusicByte

	; is the song fading?
	ld a, [wMusicFade]
	and a
	ret nz

	; reload param
	ld a, [wCurMusicByte]

	; set volume
	ld [wVolume], a
	ret


Music_TempoRelative:
; set global tempo to current channel tempo +/- param
; params: 1 signed

	call GetMusicByte
	ld e, a

	; check sign
	cp $80

; -128 to 127

	jr nc, .negative

;positive

	ld d, 0
	jr .ok

.negative

	ld d, -1

.ok

	bc_offset CHANNEL_TEMPO
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld e, l
	ld d, h
	call SetGlobalTempo
	ret


Music_SFXPriorityOn:
; turn sfx priority on
; params: none

	ld a, 1 << SOUND_PRIORITY_F
	ld [wSFXPriority], a
	ret


Music_SFXPriorityOff:
; turn sfx priority off
; params: none

	xor a
	ld [wSFXPriority], a
	ret


Music_RestartChannel:
; restart current channel from channel header (same bank)
; params: 2 (5)
; ll hh: pointer to new channel header
;	header format: 0x yy zz
;		x: channel # (0-3)
;		zzyy: pointer to new music data

	; update music id
	bc_offset CHANNEL_MUSIC_ID
	ld a, [hli]
	ld [wMusicID], a
	ld a, [hl]
	ld [wMusicID + 1], a

	; update music bank
	bc_offset CHANNEL_MUSIC_BANK
	ld a, [hl]
	ld [wMusicBank], a

	; get pointer to new channel header
	call GetMusicByte
	ld l, a
	call GetMusicByte
	ld h, a
	ld e, [hl]
	inc hl
	ld d, [hl]
	push bc ; save current channel
	call LoadChannel
	call StartChannel
	pop bc ; restore current channel
	ret


Music_NewSong:
; new song
; params: 2
;	de: song id

	call GetMusicByte
	ld e, a
	call GetMusicByte
	ld d, a
	push bc
	call _PlayMusic
	pop bc
	ret


GetMusicByte:
; returns byte from current address in a
; advances to next byte in music data
; input: bc = start of current channel

	push hl
	push de

	; load address into de
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld a, [hli]
	ld e, a
	ld d, [hl]

	; load bank into a
	bc_offset CHANNEL_MUSIC_BANK
	ld a, [hl]

	; get byte
	call _LoadMusicByte ; load data into wCurMusicByte
	inc de ; advance to next byte for next time this is called

	; update channeldata address
	bc_offset CHANNEL_MUSIC_ADDRESS
	ld a, e
	ld [hli], a
	ld [hl], d

	; cleanup
	pop de
	pop hl

	; store channeldata in a
	ld a, [wCurMusicByte]
	ret


GetFrequency:
; generate frequency
; input:
; 	d: octave
;	e: pitch
; output:
; 	de: frequency
; get octave

	; get starting octave
	bc_offset CHANNEL_TRANSPOSITION
	ld a, [hl]
	swap a ; hi nybble
	and $f

	; add current octave
	add d
	push af ; we'll use this later

	; get starting octave
	bc_offset CHANNEL_TRANSPOSITION
	ld a, [hl]
	and $f ; lo nybble
	ld l, a ; ok
	ld d, 0
	ld h, d
	add hl, de ; add current pitch
	add hl, hl ; skip 2 bytes for each
	ld de, FrequencyTable
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]

	; get our octave
	pop af

	; shift right by [7 - octave] bits
.loop

	; [7 - octave] loops
	cp $7
	jr nc, .ok

	; sra de
	sra d
	rr e
	inc a
	jr .loop

.ok

	ld a, d
	and $7 ; top 3 bits for frequency (11 total)
	ld d, a
	ret


SetNoteDuration:
; input: a = note duration in 16ths

	; store delay units in de
	inc a
	ld e, a
	ld d, 0

	; store NoteLength in a
	bc_offset CHANNEL_NOTE_LENGTH
	ld a, [hl]

	; multiply NoteLength by delay units
	ld l, 0 ; just multiply
	call .Multiply
	ld a, l ; low

	; store Tempo in de
	bc_offset CHANNEL_TEMPO
	ld e, [hl]
	inc hl
	ld d, [hl]

	; add workflow to the next result
	bc_offset CHANNEL_NOTE_FLOW
	ld l, [hl]

	; multiply Tempo by last result (NoteLength * LOW(delay))
	call .Multiply

	; copy result to de
	ld e, l
	ld d, h

	; store result in xNoteFlow
	bc_offset CHANNEL_NOTE_FLOW
	ld [hl], e

	; store result in NoteDuration
	bc_offset CHANNEL_NOTE_DURATION
	ld [hl], d
	ret

.Multiply:
; multiplies a and de
; adds the result to l
; stores the result in hl

	ld h, 0

.loop

	; halve a
	srl a

	; is there a remainder?
	jr nc, .skip

	; add it to the result
	add hl, de

.skip

	; add de, de
	sla e
	rl d

	; are we done?
	and a
	jr nz, .loop
	ret


SetGlobalTempo:

	push bc ; save current channel

	; are we dealing with music or sfx?
	ld a, [wCurChannel]
	cp CHAN5
	jr nc, .sfxchannels

	ld bc, wChannel1
	call Tempo
	ld bc, wChannel2
	call Tempo
	ld bc, wChannel3
	call Tempo
	ld bc, wChannel4
	call Tempo
	jr .end

.sfxchannels
	ld bc, wChannel5
	call Tempo
	ld bc, wChannel6
	call Tempo
	ld bc, wChannel7
	call Tempo
	ld bc, wChannel8
	call Tempo

.end
	pop bc ; restore current channel
	ret

Tempo:
; input:
; 	de: note length

	; update Tempo
	bc_offset CHANNEL_TEMPO
	ld [hl], e
	inc hl
	ld [hl], d

	; clear workflow
	xor a

	bc_offset CHANNEL_NOTE_FLOW
	ld [hl], a
	ret


StartChannel:

	call SetLRTracks

	bc_offset CHANNEL_FLAGS1
	set SOUND_CHANNEL_ON, [hl] ; turn channel on
	ret


SetLRTracks:
; set tracks for a the current channel to default
; seems to be redundant since this is overwritten by stereo data later

	push de

	; store current channel in de
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	ld e, a
	ld d, 0

	; get this channel's lr tracks
	ld hl, SpeakerTracks
	add hl, de ; de = channel 0-3
	ld a, [hl]

	; load lr tracks into Tracks
	bc_offset CHANNEL_TRACKS
	ld [hl], a
	pop de
	ret


_PlayMusic::
; load music

	call MusicOff
	ld hl, wMusicID
	ld [hl], e ; song number
	inc hl
	ld [hl], d ; (always 0)
	ld hl, Music

; 3-byte pointers (bank, address)
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	ld [wMusicBank], a
	ld e, [hl]
	inc hl
	ld d, [hl] ; music header address
	call LoadMusicByte ; store first byte of music header in a
	rlca
	rlca
	maskbits NUM_MUSIC_CHANS
	inc a

.loop
; start playing channels

	push af
	call LoadChannel
	call StartChannel
	pop af
	dec a
	jr nz, .loop
	xor a
	ld [wSoundEventFlag], a
	ld [wChannel1JumpCondition], a
	ld [wChannel2JumpCondition], a
	ld [wChannel3JumpCondition], a
	ld [wChannel4JumpCondition], a
	ld [wNoiseSampleAddress], a
	ld [wNoiseSampleAddress + 1], a
	ld [wNoiseSampleDelay], a
	ld [wMusicNoiseSampleSet], a
	call MusicOn
	ret


_PlayCry::
; Play cry de using parameters:
;	wCryPitch
;	wCryLength

	call MusicOff

; reset sweep

	xor a
	ld [wPitchSweep], a

; Overload the music id with the cry id

	ld hl, wMusicID
	ld [hl], e
	inc hl
	ld [hl], d

; 3-byte pointers (bank, address)

	ld hl, Cries
	add hl, de
	add hl, de
	add hl, de

	ld a, [hli]
	ld [wMusicBank], a

	ld e, [hl]
	inc hl
	ld d, [hl]

; Read the cry's sound header

	call LoadMusicByte

	; Top 2 bits contain the number of channels
	rlca
	rlca
	maskbits NUM_MUSIC_CHANS

; For each channel:

	inc a

.loop

	push af
	call LoadChannel

	bc_offset CHANNEL_FLAGS1
	set SOUND_REST, [hl]

	bc_offset CHANNEL_FLAGS2
	set SOUND_PITCH_OFFSET, [hl]

	bc_offset CHANNEL_PITCH_OFFSET
	ld a, [wCryPitch]
	ld [hli], a
	ld a, [wCryPitch + 1]
	ld [hl], a

; No tempo for channel 4

	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	cp CHAN4
	jr nc, .start

; Tempo is effectively length

	bc_offset CHANNEL_TEMPO
	ld a, [wCryLength]
	ld [hli], a
	ld a, [wCryLength + 1]
	ld [hl], a

.start

	call StartChannel
	ld a, [wStereoPanningMask]
	and a
	jr z, .next

; Stereo only: Play cry from the monster's side.
; This only applies in-battle.

	ld a, [wOptions]
	bit STEREO, a
	jr z, .next

; [Tracks] &= [wCryTracks]

	bc_offset CHANNEL_TRACKS
	ld a, [hl]
	ld hl, wCryTracks
	and [hl]

	bc_offset CHANNEL_TRACKS
	ld [hl], a

.next

	pop af
	dec a
	jr nz, .loop

; Cries play at max volume, so we save the current volume for later (not MAX_VOLUME).

	ld a, [wLastVolume]
	and a
	jr nz, .end

	ld a, [wVolume]

; edit: cries will only mute music if not playing at MAX_VOLUME
; to achieve this, check for non-MAX_VOLUME before muting

	cp MAX_VOLUME
	jr z, .end

	; stop playing music
	push af
	ld a, 1 << SOUND_PRIORITY_F
	ld [wSFXPriority], a
	pop af

.end

	ld [wLastVolume], a
	ld a, MAX_VOLUME
	ld [wVolume], a
	call MusicOn
	ret

_PlaySFX::
; clear channels if they aren't already

	call MusicOff
	ld hl, wChannel5Flags1
	bit SOUND_CHANNEL_ON, [hl] ; ch5 on?
	jr z, .ch6

	res SOUND_CHANNEL_ON, [hl] ; turn it off
	xor a
	ldh [rNR11], a ; length/wavepattern = 0
	ld a, $8
	ldh [rNR12], a ; envelope = 0
	xor a
	ldh [rNR13], a ; frequency lo = 0
	ld a, $80
	ldh [rNR14], a ; restart sound (freq hi = 0)
	xor a
	ld [wPitchSweep], a ; pitch sweep off
	ldh [rNR10], a ; pitch sweep off

.ch6

	ld hl, wChannel6Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr z, .ch7

	res SOUND_CHANNEL_ON, [hl] ; turn it off
	xor a
	ldh [rNR21], a ; length/wavepattern = 0
	ld a, $8
	ldh [rNR22], a ; envelope = 0
	xor a
	ldh [rNR23], a ; frequency lo = 0
	ld a, $80
	ldh [rNR24], a ; restart sound (freq hi = 0)

.ch7

	ld hl, wChannel7Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr z, .ch8

	res SOUND_CHANNEL_ON, [hl] ; turn it off
	xor a
	ldh [rNR30], a ; sound mode #3 off
	ldh [rNR31], a ; length/wavepattern = 0
	ld a, $8
	ldh [rNR32], a ; envelope = 0
	xor a
	ldh [rNR33], a ; frequency lo = 0
	ld a, $80
	ldh [rNR34], a ; restart sound (freq hi = 0)

.ch8

	ld hl, wChannel8Flags1
	bit SOUND_CHANNEL_ON, [hl]
	jr z, .chscleared

	res SOUND_CHANNEL_ON, [hl] ; turn it off
	xor a
	ldh [rNR41], a ; length/wavepattern = 0
	ld a, $8
	ldh [rNR42], a ; envelope = 0
	xor a
	ldh [rNR43], a ; frequency lo = 0
	ld a, $80
	ldh [rNR44], a ; restart sound (freq hi = 0)
	xor a
	ld [wNoiseSampleAddress], a
	ld [wNoiseSampleAddress + 1], a

.chscleared
; start reading sfx header for # chs

	ld hl, wMusicID
	ld [hl], e
	inc hl
	ld [hl], d
	ld hl, SFX

; 3-byte pointers (bank, address)

	add hl, de
	add hl, de
	add hl, de

	; get bank
	ld a, [hli]
	ld [wMusicBank], a

	; get address
	ld e, [hl]
	inc hl
	ld d, [hl]

	; get # channels
	call LoadMusicByte
	rlca ; top 2
	rlca ; bits
	maskbits NUM_MUSIC_CHANS
	inc a ; # channels -> # loops

.startchannels

	push af
	call LoadChannel ; bc = current channel

	bc_offset CHANNEL_FLAGS1
	set SOUND_SFX, [hl]
	call StartChannel
	pop af
	dec a
	jr nz, .startchannels

	call MusicOn
	xor a
	ld [wSFXPriority], a
	ret


PlayStereoSFX::
; play sfx de
; farcalled by BattleAnimCmd_Sound in "engine/battle_anims/anim_commands.asm"

	call MusicOff

; standard procedure if stereo's off

	ld a, [wOptions]
	bit STEREO, a
	jp z, _PlaySFX

; else, let's go ahead with this
; reset sweep

	xor a
	ld [wPitchSweep], a

	ld hl, wMusicID
	ld [hl], e
	inc hl
	ld [hl], d

; get sfx ptr

	ld hl, SFX
	add hl, de
	add hl, de
	add hl, de

; bank

	ld a, [hli]
	ld [wMusicBank], a

; address

	ld e, [hl]
	inc hl
	ld d, [hl]

; bit 2-3

	call LoadMusicByte
	rlca
	rlca
	maskbits NUM_MUSIC_CHANS
	inc a

.loop

	push af
	call LoadChannel

	bc_offset CHANNEL_FLAGS1
	set SOUND_SFX, [hl]

	push de

	; get tracks for this channel
	ld a, [wCurChannel]
	maskbits NUM_MUSIC_CHANS
	ld e, a
	ld d, 0
	ld hl, SpeakerTracks
	add hl, de
	ld a, [hl]
	ld hl, wStereoPanningMask
	and [hl]

	bc_offset CHANNEL_TRACKS
	ld [hl], a

	bc_offset CHANNEL_BCD_DELAY_COUNTER
	ld [hl], a

	ld a, [wCryTracks]
	cp 2 ; ch 1-2
	jr c, .skip

; ch3-4

	ld a, [wSFXDuration]

	bc_offset CHANNEL_TEMPO_OFFSET
	ld [hl], a

	bc_offset CHANNEL_BCD_DELAY
	ld [hl], a

	bc_offset CHANNEL_FLAGS2
	set SOUND_BCD, [hl]

.skip

	pop de

; turn channel on

	bc_offset CHANNEL_FLAGS1
	set SOUND_CHANNEL_ON, [hl] ; on

; done?

	pop af
	dec a
	jr nz, .loop

; we're done

	call MusicOn
	ret


LoadChannel:
; prep channel for use
; input:
; 	de:

	; get pointer to current channel
	call LoadMusicByte
	inc de
	and $7 ; bit 0-2 (current channel)
	ld [wCurChannel], a
	ld c, a
	ld b, 0
	ld hl, ChannelPointers
	add hl, bc
	add hl, bc
	ld c, [hl]
	inc hl
	ld b, [hl] ; bc = channel pointer

	bc_offset CHANNEL_FLAGS1
	res SOUND_CHANNEL_ON, [hl] ; channel off

; make sure channel is cleared
; set default tempo and note length in case nothing is loaded
; input:
;   bc = channel struct pointer

	push de
	xor a
	; get channel struct location and length

	bc_offset CHANNEL_MUSIC_ID ; start
	ld e, CHANNEL_STRUCT_LENGTH ; channel struct length
	; clear channel

.loop

	ld [hli], a
	dec e
	jr nz, .loop

	; set tempo to default ($100)
	bc_offset CHANNEL_TEMPO
	xor a
	ld [hli], a
	inc a
	ld [hl], a

	; set note length to default ($1) (fast)
	bc_offset CHANNEL_NOTE_LENGTH
	ld [hl], a
	pop de

	; load music pointer
	bc_offset CHANNEL_MUSIC_ADDRESS
	call LoadMusicByte
	ld [hli], a
	inc de
	call LoadMusicByte
	ld [hl], a
	inc de

	; load music id
	bc_offset CHANNEL_MUSIC_ID
	ld a, [wMusicID]
	ld [hli], a
	ld a, [wMusicID + 1]
	ld [hl], a

	; load music bank
	bc_offset CHANNEL_MUSIC_BANK
	ld a, [wMusicBank]
	ld [hl], a
	ret


LoadMusicByte::
; input:
;   de = current music address
; output:
;   a = wCurMusicByte

	ld a, [wMusicBank]
	call _LoadMusicByte
	ld a, [wCurMusicByte]
	ret


SpeakerTracks:
; bit corresponds to track #
; hi: left channel
; lo: right channel
	db $11, $22, $44, $88


ChannelPointers:
; music channels
	dw wChannel1
	dw wChannel2
	dw wChannel3
	dw wChannel4

; sfx channels
	dw wChannel5
	dw wChannel6
	dw wChannel7
	dw wChannel8


ClearChannels::
; runs ClearChannel for all 4 channels
; functionally identical to InitSound
; farcalled by Function29fc9, in "engine/link/mystery_gift"

	ld hl, rNR50
	xor a
	ld [hli], a

	ld [hli], a
	ld a, $80
	ld [hli], a
	ld hl, rNR10
	ld e, NUM_MUSIC_CHANS

.loop

	call ClearChannel
	dec e
	jr nz, .loop

	ret


ClearChannel:
; input: hl = beginning hw sound register (rNR10, rNR20, rNR30, rNR40)
; output: 00 00 08 00 80
;	sound channel   1      2      3      4

	xor a
	ld [hli], a ; rNR10, rNR20, rNR30, rNR40 ; sweep = 0

	ld [hli], a ; rNR11, rNR21, rNR31, rNR41 ; length/wavepattern = 0
	ld a, $8
	ld [hli], a ; rNR12, rNR22, rNR32, rNR42 ; envelope = 0
	xor a
	ld [hli], a ; rNR13, rNR23, rNR33, rNR43 ; frequency lo = 0
	ld a, $80
	ld [hli], a ; rNR14, rNR24, rNR34, rNR44 ; restart sound (freq hi = 0)
	ret
