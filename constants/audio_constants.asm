; pitch
; FrequencyTable indexes (see audio/notes.asm)
	const_def 1
	const C_ ; 1
	const C# ; 2
	const D_ ; 3
	const D# ; 4
	const E_ ; 5
	const F_ ; 6
	const F# ; 7
	const G_ ; 8
	const G# ; 9
	const A_ ; a
	const A# ; b
	const B_ ; c

; channel
; ChannelPointers indexes (see audio/engine.asm)
	const_def
	const CHAN1 ; 0
	const CHAN2 ; 1
	const CHAN3 ; 2
	const CHAN4 ; 3
NUM_MUSIC_CHANS EQU const_value
CHANNEL_MASK    EQU %00000011
	const CHAN5 ; 4
	const CHAN6 ; 5
	const CHAN7 ; 6
	const CHAN8 ; 7
NUM_NOISE_CHANS EQU const_value - NUM_MUSIC_CHANS
NUM_CHANNELS EQU const_value

	const_def
	const CHANNEL_MUSIC_ID              ; 0
	const_skip
	const CHANNEL_MUSIC_BANK            ; 2
	const CHANNEL_FLAGS1                ; 3
	const CHANNEL_FLAGS2                ; 4
	const CHANNEL_FLAGS3                ; 5
	const CHANNEL_MUSIC_ADDRESS         ; 6
	const_skip
	const CHANNEL_LAST_MUSIC_ADDRESS    ; 8
	const_skip
	const CHNANEL_DEEP_MUSIC_ADDRESS    ; a
	const_skip
	const CHANNEL_NOTE_FLAGS            ; c
	const CHANNEL_CONDITION             ; d
	const CHANNEL_DUTY_CYCLE            ; e
	const CHANNEL_VOLUME_ENVELOPE       ; f
	const CHANNEL_FREQUENCY             ; 10
	const_skip
	const CHANNEL_PITCH                 ; 12
	const CHANNEL_OCTAVE                ; 13
	const CHANNEL_TRANSPOSITION         ; 14
	const CHANNEL_NOTE_DURATION         ; 15
	const CHANNEL_NOTE_FLOW             ; 16
	const CHANNEL_PITCH_INC_SWITCH      ; 17
	const CHANNEL_LOOP_COUNT            ; 18
	const CHANNEL_TEMPO                 ; 19
	const_skip
	const CHANNEL_TRACKS                ; 1b
	const CHANNEL_DUTY_CYCLE_PATTERN    ; 1c
	const CHANNEL_VIBRATO_DELAY_COUNT   ; 1d
	const CHANNEL_VIBRATO_DELAY         ; 1e
	const CHANNEL_VIBRATO_EXTENT        ; 1f
	const CHANNEL_VIBRATO_RATE          ; 20
	const CHANNEL_PITCH_SLIDE_TARGET    ; 21
	const_skip
	const CHANNEL_PITCH_SLIDE_AMOUNT    ; 23
	const CHANNEL_PITCH_SLIDE_FRACTION  ; 24
	const CHANNEL_PITCH_SLIDE_TEMPO     ; 25
	const CHANNEL_MUTE_ENABLE           ; 26
	const CHANNEL_PITCH_OFFSET          ; 27
	const_skip
	const CHANNEL_RELATIVE_PITCH        ; 29
	const CHANNEL_ENVELOPE_GROUP        ; 2a
	const CHANNEL_ENVELOPE_GROUP_OFFSET ; 2b
	const CHANNEL_MUTE                  ; 2c
	const CHANNEL_NOTE_LENGTH           ; 2d
	const CHANNEL_TEMPO_OFFSET          ; 2e
	const CHANNEL_BCD_DELAY             ; 2f
	const CHANNEL_BCD_DELAY_COUNTER     ; 30
	const_skip
CHANNEL_STRUCT_LENGTH EQU const_value

NOISE_CHAN_F EQU 2 ; bit set in CHAN5-CHAN7

; Flags1
	const_def
	const SOUND_CHANNEL_ON       ; 0
	const SOUND_SUBROUTINE       ; 1
	const SOUND_LOOPING          ; 2
	const SOUND_SFX              ; 3
	const SOUND_NOISE            ; 4
	const SOUND_REST             ; 5
	const SOUND_PITCH_INC_SWITCH ; 6

; Flags2
	const_def
	const SOUND_VIBRATO        ; 0
	const SOUND_PITCH_SLIDE    ; 1
	const SOUND_DUTY_LOOP      ; 2
	const SOUND_MUTE           ; 3
	const SOUND_PITCH_OFFSET   ; 4
	const SOUND_ENV_PTRN       ; 5
	const SOUND_RELATIVE_PITCH ; 6
	const SOUND_BCD            ; 7

; Flags3
	const_def
	const SOUND_VIBRATO_DIR     ; 0
	const SOUND_PITCH_SLIDE_DIR ; 1
	const SOUND_REL_PITCH_FLAG  ; 2

; NoteFlags
	const_def
	const NOTE_DUTY_OVERRIDE    ; 0
	const NOTE_FREQ_OVERRIDE    ; 1
	const NOTE_ENV_OVERRIDE     ; 2
	const NOTE_PITCH_SWEEP      ; 3
	const NOTE_NOISE_SAMPLING   ; 4
	const NOTE_REST             ; 5
	const NOTE_VIBRATO_OVERRIDE ; 6

; wVolume
VOLUME_SO1_F     EQU 3
VOLUME_SO2_F     EQU 7
VOLUME_SO1_LEVEL EQU %00000111
VOLUME_SO2_LEVEL EQU %01110000
MAX_VOLUME       EQU $77

; wSoundInput
SOUND_INPUT_CH1_F    EQU 0
SOUND_INPUT_CH2_F    EQU 1
SOUND_INPUT_CH3_F    EQU 2
SOUND_INPUT_CH4_F    EQU 3
SOUND_INPUT_GLOBAL_F EQU 7

; wLowHealthAlarm
DANGER_PITCH_F EQU 4
DANGER_ON_F    EQU 7

; wSoundEventFlag
SOUND_EVENT_F EQU 0

; wSFXPriority
SOUND_PRIORITY_F EQU 0

; wMusicPlaying
MUSIC_ON_F EQU 0

; ch3 wavetable constants
	const_def
	const RED_POKECENTER ; 0
	const RED_OAK        ; 1
	const RED_PALLET     ; 2
	const RED_CELADON    ; 3
	const RED_RIVAL      ; 4
	const PIN_LOW        ; 5
	const GOLD_ALPH      ; 6
	const GOLD_DARK_CAVE ; 7
	const GOLD_MT_MOON   ; 8
	const GOLD_JOHTO_GYM ; 9
	const RAY_HAVOC      ; a
	const YNT_STARMAN    ; b
	const YNT_MUSHROOM   ; c
	const RAY_CREDITS    ; d
	const RAY_NORGEO     ; e
	const FILLER         ; f

; ch3 masks
WAVE_TABLE_MASK EQU %00001111
WAVE_VOLUME_MASK EQU %11110000
NUM_WAVS EQU 16

; wMusicFade
MUSIC_FADE_IN_F EQU 7
FREQUENCY_RST   EQU 7
