Music_LookPartyHost:
; engine, wav
; SEP 16 2019
	channel_count 3
	channel 1, Music_LookPartyHost_Ch1
	channel 2, Music_LookPartyHost_Ch2
	channel 3, Music_LookPartyHost_Ch3
	channel 4 ; from contest prep theme

Music_LookPartyHost_Ch1:
	tempo 251
	volume 7, 7
	pitch_inc_switch
	duty_cycle 3
	note_type 12, 10, 1
	rest 5
.mainloop:
	octave 4
	note F_, 2
	sound_loop 10, .mainloop
	note E_, 2
	note E_, 2
	note F_, 2
	note F_, 2
	note E_, 1
	note F_, 1
	note G_, 2
	sound_jump .mainloop

Music_LookPartyHost_Ch2:
	duty_cycle 3
	vibrato 9, 2, 3
	note_type 3, 12, 7
	octave 4
	note C_, 1
	note F_, 1
	note A_, 1
	note A#, 1
	octave 5
	note C_, 12
	duty_cycle 2
.mainloop:
	volume_envelope 12, 4
	octave 4
	note F_, 12
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note A_, 4
	note A#, 12
	note A_, 4
	note G_, 16
	note F_, 12
	note G_, 2
	note F_, 2
	note E_, 4
	note D_, 4
	note C_, 4
	note G_, 4
	note F_, 12
	note D_, 4
	note C_, 12
	note C_, 2
	note E_, 2
	note F_, 12
	note E_, 4
	note F_, 4
	note G_, 4
	note A_, 4
	note F_, 4
	note A#, 12
	octave 5
	note C_, 4
	note D_, 12
	note E_, 2
	note D_, 2
	note C_, 12
	octave 4
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note F_, 12
	volume_envelope 10, 2
	note C_, 2
	note E_, 2
	note F_, 16
	sound_jump .mainloop

Music_LookPartyHost_Ch3:
	note_type 6, 1, -6
	rest 6
	octave 3
	note C_, 1
	note E_, 1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	octave 2
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	sound_ret

.sub2:
	octave 3
	note C_, 1
	rest 1
	note A#, 1
	rest 1
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	note C_, 1
	rest 1
	note A#, 1
	rest 1
	note E_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	sound_ret
