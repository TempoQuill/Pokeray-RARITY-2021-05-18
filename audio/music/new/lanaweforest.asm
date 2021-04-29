Music_LanaweForest:
; NOV 5 2019
	channel_count 4
	channel 1, Music_LanaweForest_Ch1
	channel 2, Music_LanaweForest_Ch2
	channel 3, Music_LanaweForest_Ch3
	channel 4, Music_LanaweForest_Ch4

Music_LanaweForest_Ch1:
	tempo 160
	volume 7, 7
	duty_cycle 2
	note_type 12, 10, 2
.mainloop:
	rest 16
	sound_loop 8, .mainloop
.loop1:
	sound_call .sub1
	sound_loop 7, .loop1
	rest 16
	rest 16
.loop2:
	sound_call .sub1
	sound_loop 4, .loop2
	sound_jump .mainloop

.sub1:
	octave 2
	note D_, 1
	octave 3
	note D_, 1
	octave 4
	note D_, 1
	octave 3
	note D_, 3
	octave 2
	note D_, 1
	octave 3
	note D_, 1
	octave 4
	note D_, 1
	octave 3
	note D_, 1
	octave 1
	note A_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	octave 2
	note C_, 1
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 1
	note G_, 1
	octave 2
	note G_, 1
	octave 3
	note G_, 1
	octave 2
	note G_, 3
	octave 1
	note G_, 1
	octave 2
	note G_, 1
	octave 3
	note G_, 1
	octave 2
	note G_, 1
	note C_, 1
	octave 3
	note C_, 1
	octave 4
	note C_, 1
	octave 1
	note G_, 1
	octave 2
	note G_, 1
	octave 3
	note G_, 1
	sound_ret

Music_LanaweForest_Ch2:
	note_type 12, 13, 1
.mainloop:
	rest 16
	rest 16
	rest 16
	rest 16
	duty_cycle 3
	sound_call Music_LanaweForest_Ch1.sub1
	sound_call Music_LanaweForest_Ch1.sub1
.loop1
	sound_call .sub1
	sound_loop 7, .loop1
	sound_call Music_LanaweForest_Ch1.sub1
	vibrato 8, 7, 4
.loop2:
	volume_envelope 0, -7
	note D_, 8
	volume_envelope 7, -7
	note D_, 8
	volume_envelope 13, 7
	note D_, 8
	volume_envelope 7, 7
	note D_, 8
	sound_loop 3, .loop2
	vibrato 0, 0, 0
	volume_envelope 13, 1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 4
	note C_, 2
	note D_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 4
	note D_, 16
	rest 2
	sound_ret

Music_LanaweForest_Ch3:
	vibrato 12, 9, 3
	note_type 12, 1, 4
.mainloop:
	octave 3
	note D_, 4
	rest 2
	note D_, 2
	rest 2
	octave 2
	note A_, 2
	rest 1
	octave 3
	note C_, 3
	octave 2
	note G_, 4
	rest 2
	note G_, 2
	rest 2
	octave 3
	note C_, 2
	rest 1
	octave 2
	note G_, 3
	sound_jump .mainloop

Music_LanaweForest_Ch4:
	toggle_noise 5
.mainloop:
	sound_call .sub1
	drum_note 1, 1
	sound_call .sub1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	sound_loop 4, .mainloop
.loop1:
	rest 16
	sound_loop 16, .loop1
.loop2:
	sound_call .sub1
	drum_note 1, 1
	sound_call .sub1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	sound_loop 2, .loop2
	sound_jump .mainloop

.sub1:
	drum_speed 12
	drum_note 12, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 12, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 12, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 12, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 12, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 12, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 12, 1
	drum_note 5, 1
	sound_ret
