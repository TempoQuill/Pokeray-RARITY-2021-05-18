Music_MainMenu:
; engine, wav
; AUG 18 2019
	channel_count 4
	channel 1, Music_MainMenu_Ch1
	channel 2, Music_MainMenu_Ch2
	channel 3, Music_MainMenu_Ch3
	channel 4, Music_MainMenu_Ch4

Music_MainMenu_Ch1:
	tempo 160
	volume 7, 7
	pitch_inc_switch
	duty_cycle 3
	vibrato 8, 3, 2
	note_type 12, 1, -7
	octave 3
	note D_, 8
.mainloop:
	volume_envelope 10, 2
	note C#, 6
	note C#, 1
	note C#, 1
	note C#, 2
	note C#, 2
	note C#, 4
	sound_loop 2, .mainloop
	note D#, 6
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 2
	note D#, 4
	octave 2
	note B_, 6
	note B_, 1
	note B_, 1
	note B_, 2
	note B_, 2
	volume_envelope 10, 4
	octave 3
	note C_, 4
	sound_jump .mainloop

Music_MainMenu_Ch2:
	duty_cycle 3
	vibrato 12, 2, 3
	note_type 12, 1, -7
	octave 3
	note G_, 8
	transpose 0, 5
	sound_jump Music_MainMenu_Ch1.mainloop

Music_MainMenu_Ch3:
	note_type 12, 1, -3
	rest 8
.mainloop:
	vibrato 12, 2, 3
	sound_call .sub1
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	note E_, 1
	rest 5
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 4
	sound_jump .mainloop

.sub1:
	octave 2
	note F#, 1
	rest 5
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	sound_ret

Music_MainMenu_Ch4:
	toggle_noise 6
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
	drum_note 10, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 9, 1
.mainloop:
	drum_note 8, 6
	drum_note 8, 1
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 4
	sound_loop 3, .mainloop
	drum_note 8, 6
	drum_note 8, 1
	drum_note 8, 1
	drum_note 8, 2
	drum_note 8, 2
	drum_note 1, 1
	drum_note 10, 1
	drum_note 8, 1
	drum_note 8, 1
	sound_jump .mainloop
