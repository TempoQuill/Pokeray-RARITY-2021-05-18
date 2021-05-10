Music_GameCorner:
; APR 11 2020
	channel_count 4
	channel 1, Music_GameCorner_Ch1
	channel 2, Music_GameCorner_Ch2
	channel 3, Music_GameCorner_Ch3
	channel 4, Music_GameCorner_Ch4

Music_GameCorner_Ch1:
	tempo 165
	volume 7, 7
	note_type 12, 0, 0
.loop1:
	rest 16
	sound_loop 8, .loop1
.loop2:
	sound_call .sub1
	rest 16
	rest 10
	sound_loop 2, .loop2
.mainloop:
	volume_envelope 7, 2
	octave 6
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 1
	note D#, 2
	note D#, 1
	note D#, 2
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	sound_loop 4, .mainloop
.loop3:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub2
	sound_loop 6, .loop3
	sound_jump .mainloop

.sub1:
	duty_cycle 0
	vibrato 0, 1, 2
	volume_envelope 1, -1
	octave 6
	note D#, 1
	volume_envelope 7, 1
	note D#, 1
	volume_envelope 1, -1
	octave 5
	note B_, 1
	volume_envelope 7, 1
	note B_, 1
	volume_envelope 1, -1
	note G#, 1
	volume_envelope 7, 1
	note G#, 1
	vibrato 0, 0, 0
	sound_ret

.sub2:
	duty_cycle 3
	volume_envelope 13, 1
	octave 3
	note G#, 2
	note G#, 2
	note B_, 2
.sub3:
	duty_cycle 3
	volume_envelope 13, 1
	octave 3
	note G#, 1
	octave 4
	note C#, 2
	octave 3
	note G#, 1
	octave 4
	note D_, 1
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note G#, 1
	note F#, 1
	sound_ret

Music_GameCorner_Ch2:
	pitch_inc_switch
	duty_cycle 3
	note_type 12, 13, 1
	octave 3
	note G#, 4
	note B_, 3
	octave 4
	note C#, 3
	note D_, 3
	octave 3
	note B_, 2
	note F#, 1
	note G#, 2
	note G#, 2
	note B_, 2
	note G#, 1
	octave 4
	note C#, 2
	note D_, 3
	octave 3
	note B_, 1
	note G#, 1
	note F#, 1
.loop1:
	sound_call Music_GameCorner_Ch1.sub2
	sound_loop 10, .loop1
.mainloop:
	sound_call Music_GameCorner_Ch1.sub2
	sound_loop 4, .mainloop
	duty_cycle 0
	volume_envelope 10, 8
.loop2:
	octave 1
	note G#, 3
	note B_, 3
	note F#, 2
	note G#, 4
	note G#, 4
	sound_loop 6, .loop2
	sound_jump .mainloop

Music_GameCorner_Ch3:
	note_type 12, 1, 0
	rest 16
	rest 16
.mainloop:
	octave 4
	note G#, 4
	note B_, 4
	octave 5
	note C#, 4
	octave 4
	note B_, 4
	note G#, 4
	note B_, 4
	octave 5
	note C#, 4
	octave 4
	note B_, 1
	note G#, 1
	note F#, 2
	sound_jump .mainloop

Music_GameCorner_Ch4:
	toggle_noise 5
	drum_speed 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub3
	sound_call .sub2
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 4
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 2
	sound_call .sub3
	sound_call .sub3
	sound_call .sub4
	drum_note 1, 2
	drum_note 10, 2
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 2
	drum_note 10, 2
	drum_note 12, 2
	drum_note 2, 2
	drum_note 10, 2
	drum_note 10, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
.mainloop:
	sound_call .sub1
	sound_call .sub4
	sound_call .sub2
	sound_call .sub3
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 10, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_call .sub4
	sound_call .sub2
	sound_call .sub3
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 10, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_call .sub4
	sound_call .sub2
	sound_call .sub3
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 10, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_jump .mainloop

.sub1:
	rest 16
	rest 16
	rest 16
	rest 12
	drum_note 3, 2
	drum_note 2, 2
	drum_note 10, 2
	drum_note 1, 2
	sound_ret

.sub2:
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	sound_ret

.sub3:
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 3, 1
	drum_note 10, 1
	sound_ret

.sub4:
	drum_note 12, 4
	drum_note 12, 4
	drum_note 1, 4
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 2
	drum_note 1, 2
	drum_note 12, 4
	drum_note 1, 6
	drum_note 10, 2
	sound_ret
