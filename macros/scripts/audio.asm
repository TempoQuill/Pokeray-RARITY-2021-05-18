channel_count: MACRO
_num_channels = \1 - 1
ENDM

channel: MACRO
	dn (_num_channels << 2), \1 - 1 ; channel id
	IF _NARG == 2
		dw \2 ; address
	ENDC
_num_channels = 0
ENDM

wav_note: MACRO
	db \1 ; wavetable constant
ENDM

env_note: MACRO
	dn \1, \2
ENDM

note: MACRO
	dn (\1), (\2) - 1 ; pitch, length
ENDM

drum_note: MACRO
	note \1, \2 ; drum instrument, length
ENDM

rest: MACRO
	note 0, \1 ; length
ENDM

square_note: MACRO
	db \1 ; length
	IF \3 < 0
		dn \2, %1000 | (\3 * -1) ; volume envelope
	ELSE
		dn \2, \3 ; volume envelope
	ENDC
	dw \4 ; pitch
ENDM

noise_note: MACRO
	db \1 ; length
	IF \3 < 0
		dn \2, %1000 | (\3 * -1) ; volume envelope
	ELSE
		dn \2, \3 ; volume envelope
	ENDC
	db \4 ; division
ENDM

; MusicCommands indexes (see audio/engine.asm)
	const_def 208 ; $d0
FIRST_MUSIC_CMD EQU const_value
	const octave_cmd                  ; $d0
	const_skip 7                      ; all octave values
	const note_type_cmd               ; $d8
	const transpose_cmd               ; $d9
	const tempo_cmd                   ; $da
	const duty_cycle_cmd              ; $db
	const volume_envelope_cmd         ; $dc
	const pitch_sweep_cmd             ; $dd
	const duty_cycle_pattern_cmd      ; $de
	const toggle_music_cmd            ; $df
	const pitch_slide_cmd             ; $e0
	const vibrato_cmd                 ; $e1
	const set_mute_cmd                ; $e2
	const toggle_noise_cmd            ; $e3
	const old_panning_cmd             ; $e4
	const volume_cmd                  ; $e5
	const pitch_offset_cmd            ; $e6
	const relative_pitch_cmd          ; $e7
	const volume_envelope_group_cmd   ; $e8
	const tempo_relative_cmd          ; $e9
	const restart_channel_cmd         ; $ea
	const new_song_cmd                ; $eb
	const sfx_priority_on_cmd         ; $ec
	const sfx_priority_off_cmd        ; $ed
	const sound_jump_ram_cmd          ; $ee
	const stereo_panning_cmd          ; $ef
	const sfx_toggle_noise_cmd        ; $f0
	const pitch_inc_switch_cmd        ; $f1
	const frame_swap_cmd              ; $f2
	const set_music_cmd               ; $f3
	const dummy_f4_cmd                ; $f4
	const dummy_f5_cmd                ; $f5
	const dummy_f6_cmd                ; $f6
	const dummy_f7_cmd                ; $f7
	const dummy_f8_cmd                ; $f8
	const set_sound_event_cmd         ; $f9
	const set_condition_cmd           ; $fa
	const sound_jump_if_cmd           ; $fb
	const sound_jump_cmd              ; $fc
	const sound_loop_cmd              ; $fd
env_loop_cmd EQU const_value
	const sound_call_cmd              ; $fe
env_ret_cmd EQU const_value
	const sound_ret_cmd               ; $ff

octave: MACRO
	db octave_cmd + (8 - (\1)) ; octave
ENDM

; valid on Ch1-3 & 5-7
; noise is relegated to drum_speed
note_type: MACRO
	db note_type_cmd
	db \1 ; note length
	IF _NARG >= 2
		IF \3 < 0
			dn \2, %1000 | (\3 * -1) ; volume envelope
		ELSE
			dn \2, \3 ; volume envelope
		ENDC
	ENDC
ENDM

drum_speed: MACRO
	note_type \1 ; note length
ENDM

transpose: MACRO
	db transpose_cmd
	dn \1, \2 ; octave offset, note offset
ENDM

tempo: MACRO
	db tempo_cmd
	bigdw \1 ; tempo
ENDM

duty_cycle: MACRO
	db duty_cycle_cmd
	db \1 ; duty cycle
ENDM

volume_envelope: MACRO
	db volume_envelope_cmd
	IF \2 < 0
		dn \1, %1000 | (\2 * -1) ; volume envelope
	ELSE
		dn \1, \2 ; volume envelope
	ENDC
ENDM

pitch_sweep: MACRO
	db pitch_sweep_cmd
	IF \2 < 0
		dn \1, %1000 | (\2 * -1) ; pitch sweep
	ELSE
		dn \1, \2 ; pitch sweep
	ENDC
ENDM

duty_cycle_pattern: MACRO
	db duty_cycle_pattern_cmd
	dc \1, \2, \3, \4
ENDM

toggle_music: MACRO
	db toggle_music_cmd
ENDM

; works only on Channel 1 and 5 in gold/silver/crystal
; works on all pitched channels in ray/shade/chaos
pitch_slide: MACRO
	db pitch_slide_cmd
	db \1 - 1 ; duration
	dn 8 - \2, \3 % 12 ; octave, pitch
ENDM

vibrato: MACRO
	db vibrato_cmd
	db \1 ; delay
	IF _NARG > 2
		dn \2, \3 ; depth, speed
	ELSE
		db \2 ; LEGACY: Support for 1-arg byte
	ENDC
ENDM

; from Gold, restored
; appears to be an equivalent to RBY's $ef
set_mute: MACRO
	db set_mute_cmd
	db \1 ; mute flag
ENDM

toggle_noise: MACRO
	db toggle_noise_cmd
	IF _NARG > 0
		db \1 ; drum kit
	ENDC
ENDM

; Yoshi/Gen 1's means of stereo
old_panning: MACRO
	db old_panning_cmd
	dn \1, \2 ; binary values
ENDM

volume: MACRO
	db volume_cmd
	IF _NARG > 1
		dn \1, \2 ; left volume, right volume
	ELSE
		db \1 ; LEGACY: Support for 1-arg volume
	ENDC
ENDM

; obsolete equivalent to toggle_perfect_pitch
pitch_offset: MACRO
	db pitch_offset_cmd
	IF \1 < 0
		bigdw $ffff - ((\1 + 1) * -1)
	ELSE
		bigdw \1 ; pitch offset
	ENDC
ENDM

; from Gold/Silver, restored
relative_pitch: MACRO
	db relative_pitch_cmd
	db \1 ; pitch
ENDM

; from Gold/Silver, restored
volume_envelope_group: MACRO
	db volume_envelope_group_cmd
	db \1 ; group
ENDM

tempo_relative: MACRO
	db tempo_relative_cmd
	; LEGACY: macro used 2-byte value in gold, fixed in ray
	IF \1 > 128
		bigdw \1
	ELIF \1 < 0
		db 255 - ((\1 * -1) - 1)
	ELSE
		db \1 ; tempo adjustment
	ENDC
ENDM

restart_channel: MACRO
	db restart_channel_cmd
	dw \1 ; address
ENDM

new_song: MACRO
	db new_song_cmd
	bigdw \1 ; id
ENDM

sfx_priority_on: MACRO
	db sfx_priority_on_cmd
ENDM

sfx_priority_off: MACRO
	db sfx_priority_off_cmd
ENDM

; from Gold, unused
; uses exclusive RAM, not set by any scripts
sound_jump_ram: MACRO
	db sound_jump_ram_cmd
	dw \1 ; address
ENDM

stereo_panning: MACRO
	; LEGACY: support for PokeRed stereo_panning
	IF const_value == old_panning_cmd
		old_panning \1, \2
	ELSE
		db stereo_panning_cmd
		dn \1 * 15, \2 * 15 ; left, right
	ENDC
ENDM

sfx_toggle_noise: MACRO
	db sfx_toggle_noise_cmd
	IF _NARG > 0
		db \1 ; drum kit
	ENDC
ENDM

; only present in ray/shade/chaos
; functionally identical to toggle_perfect_pitch
pitch_inc_switch: MACRO
	db pitch_inc_switch_cmd
ENDM

; only present in ray/shade/chaos
; uses wFrameSwap
; animates sprite $68/$6c to music
frame_swap: MACRO
	db frame_swap_cmd
ENDM

; only present in ray/shade/chaos
; functionally similar to execute_music
set_music: MACRO
	db set_music_cmd
ENDM

dummy_f4: MACRO
	db dummy_f4_cmd
ENDM

dummy_f5: MACRO
	db dummy_f5_cmd
ENDM

dummy_f6: MACRO
	db dummy_f6_cmd
ENDM

dummy_f7: MACRO
	db dummy_f7_cmd
ENDM

dummy_f8: MACRO
	db dummy_f8_cmd
ENDM

; from Gold, unused
; no scripts depend on this music command
set_sound_event: MACRO
	db set_sound_event_cmd
ENDM

set_condition: MACRO
	db set_condition_cmd
	db \1 ; condition
ENDM

sound_jump_if: MACRO
	db sound_jump_if_cmd
	db \1 ; condition
	dw \2 ; address
ENDM

; renders "sound_loop 0" obsolete
sound_jump: MACRO
	db sound_jump_cmd
	dw \1 ; address
ENDM

sound_loop: MACRO
	db sound_loop_cmd
	db \1 ; count
	dw \2 ; address
ENDM

sound_call: MACRO
	db sound_call_cmd
	dw \1 ; address
ENDM

sound_ret: MACRO
	db sound_ret_cmd
ENDM

env_loop: MACRO
	db env_loop_cmd
ENDM

env_ret: MACRO
	db env_ret_cmd
ENDM
