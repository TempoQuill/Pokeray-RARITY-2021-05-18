Music_NorgeoTown:
; JUL 23 2019
	channel_count 4
	channel 1, Music_NorgeoTown_Ch1
	channel 2, Music_NorgeoTown_Ch2
	channel 3, Music_NorgeoTown_Ch3
	channel 4, Music_NorgeoTown_Ch4

Music_NorgeoTown_Ch1:
	tempo 165
	volume 7, 7
	pitch_inc_switch
	duty_cycle 2
	note_type 12, 10, 1
	rest 2
	sound_call .sub1
.mainloop:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note_type 6, 6, 8
	note C#, 8
	note E_, 1
	note F_, 7
	note D#, 4
	volume_envelope 7, 1
	note D#, 4
	note D#, 4
	duty_cycle 3
	volume_envelope 6, 8
	note C_, 2
	octave 3
	note A#, 2
	note G#, 8
	note F#, 8
	note F_, 4
	note F#, 4
	note G#, 4
	note C#, 4
	duty_cycle 2
	octave 4
	note C#, 12
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 4
	note_type 12, 6, 1
	note C_, 2
	note C_, 2
	note C_, 2
	sound_call .sub4
	sound_call .sub4
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 7
	octave 3
	note G#, 2
	note A#, 2
	note F#, 2
	note A#, 2
	octave 4
	note C_, 4
	note C_, 1
	note D#, 1
	note G#, 4
	note F_, 3
	note D#, 1
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C#, 1
	note F_, 1
	note G#, 4
	note A#, 4
	note F#, 4
	note G#, 4
	note F#, 4
	note F_, 6
	sound_call .sub4
	volume_envelope 10, 1
	note C#, 2
	octave 3
	note F_, 2
	sound_jump .mainloop

.sub1:
	volume_envelope 10, 1
	octave 4
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note D#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C_, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note D#, 2
	volume_envelope 10, 1
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	volume_envelope 10, 1
	note C_, 2
	volume_envelope 7, 1
	note C_, 2
	note C_, 2
.sub2:
	volume_envelope 10, 1
	note C_, 2
	volume_envelope 7, 1
	note C_, 2
	sound_ret

.sub3:
	octave 3
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	octave 4
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C#, 2
	note C#, 2
	note C_, 2
	octave 3
	note G#, 2
	note F_, 2
	note A#, 2
	octave 4
	note C#, 2
	volume_envelope 10, 2
	octave 3
	note C#, 1
	note D#, 1
	note A#, 2
	note G#, 2
	note F#, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note F#, 2
	note D#, 2
	note F_, 12
.sub4:
	volume_envelope 10, 1
	octave 4
	note C#, 2
	volume_envelope 7, 1
	note C#, 2
	note C#, 2
	sound_ret

Music_NorgeoTown_Ch2:
	duty_cycle 2
	note_type 12, 13, 1
	rest 2
	sound_call .sub1
	note G#, 2
	volume_envelope 10, 1
	note F_, 2
	volume_envelope 13, 1
	note G#, 2
	volume_envelope 10, 1
	note G#, 2
	note C#, 2
	volume_envelope 13, 1
	note G#, 2
	volume_envelope 10, 1
	note G#, 2
	note F#, 2
	note F_, 2
	note D#, 2
	sound_call .sub1
	note F#, 2
	volume_envelope 10, 1
	note F_, 2
.loop1:
	volume_envelope 13, 1
	note D#, 2
	volume_envelope 10, 1
	note D#, 2
	note D#, 2
	sound_loop 2, .loop1
	volume_envelope 13, 1
	note D#, 2
.mainloop:
	sound_call .sub2
	note D#, 2
	sound_call .sub2
	note G#, 2
	duty_cycle 3
	volume_envelope 13, 4
	octave 4
	note C#, 2
	note A#, 6
	note A#, 2
	note G#, 6
	note G#, 1
	note F#, 1
	note F_, 4
	note D#, 2
	note C#, 8
	note C#, 2
	note A#, 6
	note A#, 2
	note G#, 4
	note D#, 2
	note F_, 4
	duty_cycle 2
.loop2:
	volume_envelope 10, 1
	octave 3
	note F_, 2
	note F_, 2
	volume_envelope 13, 1
	note F_, 2
	sound_loop 2, .loop2
	duty_cycle 3
	volume_envelope 13, 4
	octave 5
	note C_, 2
	note C#, 4
	octave 4
	note F_, 2
	note F#, 8
	note A#, 2
	note G#, 3
	note F#, 1
	note F_, 1
	note D#, 1
	note C#, 6
	note D#, 2
	note F_, 2
	note F#, 4
	note D#, 4
	note C_, 4
	note C_, 2
	note C#, 8
	duty_cycle 2
	volume_envelope 13, 1
	octave 3
	note F_, 2
	volume_envelope 10, 1
	note F_, 2
	note F_, 2
	volume_envelope 13, 1
	note F_, 2
	sound_jump .mainloop

.sub1:
	volume_envelope 13, 1
	octave 3
	note F_, 2
	volume_envelope 10, 1
	note F_, 2
	note D#, 2
	volume_envelope 13, 1
	note F_, 2
	volume_envelope 10, 1
	note F_, 2
	note F_, 2
	volume_envelope 13, 1
	sound_ret

.sub2:
	duty_cycle 3
	volume_envelope 13, 4
	octave 4
	note C#, 1
	note D#, 1
	note F_, 6
	note D#, 2
	note C#, 6
	note C_, 1
	octave 3
	note A#, 7
	duty_cycle 2
	volume_envelope 13, 1
	note G#, 2
	volume_envelope 10, 1
	note G#, 2
	note F#, 2
	note F_, 2
	duty_cycle 3
	volume_envelope 13, 4
	octave 4
	note C#, 1
	note D#, 1
	note F_, 6
	note F#, 2
	note G#, 6
	note A#, 1
	note G#, 7
	duty_cycle 2
	volume_envelope 13, 1
	octave 3
	note D#, 2
	volume_envelope 10, 1
	note D#, 2
	note D#, 2
	volume_envelope 13, 1
	note D#, 2
	duty_cycle 3
	volume_envelope 13, 4
	octave 4
	note F_, 1
	note D#, 1
	note C#, 8
	note D#, 8
	note F_, 6
	note D#, 1
	note C#, 7
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note C#, 6
	note G#, 2
	note D#, 6
	octave 3
	note G#, 2
	octave 4
	note C#, 6
	duty_cycle 2
	volume_envelope 13, 1
	octave 3
	note F_, 2
	volume_envelope 10, 1
	note F_, 2
	note F_, 2
	volume_envelope 13, 1
	sound_ret

Music_NorgeoTown_Ch3:
	note_type 6, 1, -6
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	sound_call .sub1
	note C#, 2
	note D#, 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	note G#, 8
	sound_call .sub1
	sound_call .sub2
	note D#, 1
	note F_, 7
	ntoe F#, 2
	rest 2
	volume_envelope 1, 0
	octave 4
	note C#, 4
	ntoe F#, 4
	volume_envelope 1, -6
	octave 3
	note C_, 2
	rest 2
	note G#, 2
	rest 2
	note B_, 1
	octave 4
	note C_, 7
	octave 3
	note G#, 4
	note C#, 2
	rest 2
	volume_envelope 1, 0
	octave 4
	note F_, 2
	ntoe F#, 2
	note G#, 2
	rest 2
	volume_envelope 1, -6
	octave 3
	note C#, 2
	rest 2
	volume_envelope 1, 0
	octave 5
	note C#, 2
	rest 2
	volume_envelope 1, -6
	octave 3
	note C#, 2
	volume_envelope 1, 0
	octave 4
	note G#, 2
	volume_envelope 1, -6
	octave 3
	note D#, 1
	note F_, 7
	ntoe F#, 2
	rest 2
	volume_envelope 1, 0
	ntoe F#, 2
	octave 4
	note C#, 2
	note A#, 2
	rest 2
	volume_envelope 1, -6
	octave 3
	note F#, 4
	note G_, 2
	rest 2
	volume_envelope 1, 0
	octave 4
	note D#, 2
	rest 2
	note B_, 1
	octave 5
	note C_, 3
	volume_envelope 1, -6
	octave 3
	note G_, 4
	note G#, 2
	rest 2
	volume_envelope 1, 0
	octave 4
	note F_, 2
	note G#, 2
	volume_envelope 1, -6
	octave 3
	note F_, 2
	rest 2
	volume_envelope 1, 0
	octave 5
	note E_, 1
	note F_, 3
	volume_envelope 1, -6
	octave 3
	note A#, 2
	rest 2
	note F_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	octave 3
	note F#, 2
	note F_, 2
	note D#, 2
	rest 2
	volume_envelope 1, 0
	octave 4
	note A#, 4
	volume_envelope 1, -6
	octave 3
	note D#, 2
	rest 2
	note G#, 4
	volume_envelope 1, 0
	octave 5
	note C_, 4
	octave 3
	note G#, 2
	octave 4
	note C_, 2
	note D#, 2
	note G#, 2
	octave 5
	note C_, 2
	note D#, 2
	volume_envelope 1, -6
	octave 3
	note C#, 2
	rest 2
	volume_envelope 1, 0
	octave 5
	note C#, 4
	volume_envelope 1, -6
	octave 3
	note C_, 2
	rest 2
	octave 2
	note A#, 4
	volume_envelope 1, 0
	octave 4
	note F_, 4
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	note F_, 2
	note A#, 2
	octave 5
	note C#, 2
	note F_, 2
	volume_envelope 1, -6
	octave 2
	note F#, 2
	note G#, 2
	note A#, 2
	octave 3
	note C#, 2
	note D#, 2
	rest 2
	note B_, 1
	octave 4
	note C_, 7
	octave 2
	note G#, 4
	octave 3
	note G_, 1
	note G#, 3
	note D#, 4
	note C#, 2
	rest 10
	note C#, 2
	note C#, 2
	note C#, 2
	rest 2
	note G_, 1
	note G#, 5
	rest 2
	note D#, 4
	sound_jump .mainloop

.sub1:
	note C#, 2
	rest 10
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	note D#, 1
	note F_, 7
	ntoe F#, 2
	rest 10
	ntoe F#, 2
	rest 2
	octave 2
	ntoe F#, 2
	rest 2
	octave 3
	note A#, 4
	note G#, 4
	note F#, 4
	note C#, 2
	rest 10
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	note G#, 1
	note A#, 7
	note G#, 2
	rest 10
	octave 2
	note G#, 2
	note G#, 2
	note G#, 2
	rest 2
	note B_, 1
	octave 3
	note C_, 5
	rest 2
	sound_ret

.sub2:
	note D#, 2
	note F_, 2
	note F#, 2
	rest 2
	volume_envelope 2, -6
	octave 4
	note C#, 1
	rest 3
	note C#, 1
	rest 3
	volume_envelope 1, -6
	octave 3
	note F#, 4
	note G_, 2
	rest 2
	volume_envelope 2, -6
	octave 4
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	volume_envelope 1, -6
	octave 3
	note G_, 4
	note G#, 2
	rest 2
	volume_envelope 2, -6
	octave 4
	note F_, 1
	rest 3
	volume_envelope 1, -6
	octave 3
	note F_, 2
	rest 2
	volume_envelope 2, -6
	octave 4
	note D#, 1
	rest 3
	volume_envelope 1, -6
	octave 3
	note A#, 2
	rest 2
	note F_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	octave 3
	note D#, 2
	note F_, 2
	note F#, 2
	rest 10
	note C_, 2
	rest 2
	note G#, 2
	rest 2
	note B_, 1
	octave 4
	note C_, 7
	octave 3
	note G#, 4
	note C#, 2
	rest 10
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	sound_ret

Music_NorgeoTown_Ch4:
	toggle_noise 5
	drum_note 12
	rest 2
.mainloop:
	sound_call .sub1
	drum_note 5, 1
	drum_note 5, 1
	sound_loop 3, .mainloop
	sound_call .sub1
	drum_note 1, 1
	drum_note 1, 1
.loop1:
	sound_call .sub1
	drum_note 5, 1
	drum_note 5, 1
	sound_loop 4, .loop1
	sound_jump .mainloop

.sub1:
	drum_note 12, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 12, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 1, 2
	sound_ret
