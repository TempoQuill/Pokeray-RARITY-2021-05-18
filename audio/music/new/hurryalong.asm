Music_HurryAlong:
; engine, wav, drum
; JUN 27 2020
	channel_count 4
	channel 1, Music_HurryAlong_Ch1
	channel 2, Music_HurryAlong_Ch2
	channel 3, Music_HurryAlong_Ch3
	channel 4, Music_HurryAlong_Ch4

Music_HurryAlong_Ch1:
	tempo 146
	volume 7, 7
	pitch_inc_switch
	duty_cycle 3
	note_type 12, 10, 1
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note C_, 4
	note C_, 1
	note D#, 1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 10
	volume_envelope 13, 1
.mainloop:
	octave 3
	note A#, 4
	note A#, 4
.loop1:
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A_, 4
	note A_, 4
	sound_loop 2 .loop1
	note F_, 2
	note F_, 6
	sound_jump .mainloop
	
Music_HurryAlong_Ch2:
	duty_cycle 2
	vibrato 7, 2, 3
	note_type 12, 10, 4
	octave 4
	note D_, 3
	rest 1
	note D_, 3
	note D#, 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note F_, 2
	volume_envelope 10, 1
	octave 3
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	note F_, 1
	volume_envelope 10, 4
	note F_, 6
	rest 2
	volume_envelope 13, 2
.mainloop:
	duty_cycle 2
	sound_call .sub1
	duty_cycle 3
	sound_call .sub1
	duty_cycle 2
	sound_call .sub2
	duty_cycle 3
	sound_call .sub2
	sound_jump .mainloop
	
.sub1:
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note F_, 4
	note D#, 2
	note G_, 2
	note A#, 4
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note F_, 4
	note D#, 2
	note D_, 2
	note C_, 4
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note F_, 4
	note D#, 2
	note G_, 2
	note A#, 2
	note A#, 2
	note A_, 3
	note F_, 1
	note G_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	note A#, 4
	sound_ret

.sub2:
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	note A#, 4
	octave 4
	note G_, 2
	octave 3
	note A#, 2
	note A#, 4
	octave 4
	note F_, 2
	octave 3
	note A#, 2
	note A#, 4
	note A_, 3
	note G_, 1
	note F_, 2
	octave 4
	note C_, 2
	note D_, 2
	octave 3
	note A#, 2
	note A#, 4
	octave 4
	note G_, 2
	octave 3
	note A#, 2
	note A#, 2
	octave 4
	note F_, 2
	note D#, 3
	note C_, 1
	octave 3
	note A#, 2
	note A_, 2
	note A#, 2
	note A#, 2
	note A#, 4
	sound_ret
	
Music_HurryAlong_Ch3:
	note_type 12, 1, -6
	octave 4
	note F_, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note F_, 1
	rest 3
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note D#, 1
	note F_, 1
	rest 1
	volume_envelope 1, 6
	octave 2
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
.mainloop:
	sound_call .sub1
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
	sound_call .sub1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note F_, 2
	sound_jump .mainloop

.sub1:
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
	sound_ret

Music_HurryAlong_Ch4:
	toggle_noise 6
	drum_speed 12
	rest 16
	rest 16
.mainloop:
	drum_note 1, 1
	drum_note 2, 1
.loop1:
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_loop 2 .loop1
	drum_note 7, 3
	sound_jump .mainloop
