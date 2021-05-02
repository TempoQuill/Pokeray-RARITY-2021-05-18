Music_Mum:
; AUG 6 2020
	channel_count 3
	channel 2, Music_Mum_Ch2
	channel 3, Music_Mum_Ch3
	channel 4, Music_Mum_Ch4

Music_Mum_Ch2:
	tempo 146
	volume 7, 7
	pitch_inc_switch
	duty_cycle 2
	note_type 6, 10, 1
	octave 4
	note C_, 1
	note F_, 1
	note A_, 1
	note A#, 1
	volume_envelope 10, 3
	octave 5
	note C_, 12
	volume_envelope 10, 1
.mainloop:
	note A#, 4
	sound_loop 6, .mainloop
	note A_, 4
	note A_, 4
	sound_jump .mainloop

Music_Mum_Ch3:
	note_type 6, 1, 4
	octave 3
	note F_, 1
	note C_, 1
	octave 2
	note A_, 1
	note G_, 1
	note F_, 8
	volume_envelope 1, 3
.mainloop:
	octave 2
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	sound_jump .mainloop

Music_Mum_Ch4:
	toggle_noise 6
	drum_speed 12
	rest 6
.mainloop:
	drum_note 1, 2
	drum_note 2, 2
	sound_loop 7, .mainloop
	drum_note 2, 2
	drum_note 2, 2
	sound_jump .mainloop
