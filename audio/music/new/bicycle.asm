Music_Bicycle:
; NOV 22 2019
	channel_count 4
	channel 1, Music_Bicycle_Ch1
	channel 2, Music_Bicycle_Ch2
	channel 3, Music_Bicycle_Ch3
	channel 4, Music_Bicycle_Ch4

Music_Bicycle_Ch1:
	tempo 144
	volume 7, 7
	duty_cycle 3
	note_type 12, 10, 3
	rest 4
.mainloop:
	sound_call .sub1
	note C_, 4
	octave 2
	note A#, 4
	octave 3
	note E_, 4
	note F_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note F_, 4
	note A_, 1
	note A#, 1
	octave 4
	note C_, 4
	octave 3
	note F_, 4
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 4
	note F_, 2
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 1
	note F_, 1
	note G_, 4
	note F_, 2
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 6
	note C_, 4
	note C_, 4
	note C_, 4
	sound_call .sub1
	note C_, 2
	volume_envelope 5, 8
	note F_, 8
	note E_, 2
	note F_, 2
	note G_, 2
	note C_, 2
	note F_, 4
	note E_, 4
	note D_, 4
	note E_, 2
	note F_, 1
	note G_, 1
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 8
	note C#, 8
	note C_, 4
	note G_, 4
	octave 4
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 8
	rest 2
	note A#, 1
	rest 1
	note A_, 1
	rest 5
	sound_jump .mainloop

.sub1:
	volume_envelope 10, 3
	octave 3
	note F_, 4
	note F_, 4
	note F_, 2
	note E_, 2
	note D_, 4
	note D_, 4
	note E_, 4
	note D_, 4
	sound_ret

Music_Bicycle_Ch2:
	note_type 12, 10, 3
	rest 2
	duty_cycle 2
.mainloop:
	sound_call .sub1
	note F_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A_, 2
.loop1:
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note F_, 2
	octave 3
	note D_, 2
	sound_loop 2, .loop1
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	octave 2
	note G_, 2
	octave 3
	note F_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	note E_, 2
	sound_call .sub1
	volume_envelope 10, 4
	note F_, 10
	note F_, 1
	note E_, 1
	note C_, 2
	octave 1
	note A_, 2
	note A#, 8
	octave 2
	note A#, 2
	note F_, 2
	note C#, 2
	octave 1
	note A#, 2
	volume_envelope 10, 3
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	sound_jump .mainloop

.sub11:
	octave 2
	note F_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note E_, 2
	note A#, 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	note A#, 2
	note D_, 2
	note A_, 2
	note C_, 2
	note G_, 2
	note E_, 2
	note A#, 2
	note C_, 2
	octave 3
	note D_, 2
	octave 2
	note E_, 2
	note A#, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A#, 2
	sound_ret

Music_Bicycle_Ch3:
	vibrato 11, 1, 3
.mainloop:
	note_type 6, 1, 4
	transpose 1, 0
	sound_call .sub1
	transpose 0, 0
	octave 4
	note F_, 2
	note G_, 2
	note A_, 8
	rest 4
	note F_, 4
	note G_, 4
	note A_, 4
	note A#, 4
	octave 5
	note C_, 4
	note C#, 1
	note D_, 11
	octave 4
	note F_, 2
	rest 2
	note F_, 8
	rest 4
	note A#, 4
	octave 5
	note C_, 8
	rest 4
	octave 4
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note F_, 16
	rest 12
	volume_envelope 1, 1
	sound_call .sub1
	volume_envelope 1, 5
	octave 4
	note A_, 2
	note A#, 2
	octave 5
	note C_, 12
	octave 4
	note F_, 2
	rest 2
	note F_, 6
	note G_, 6
	note A_, 2
	rest 2
	note A_, 1
	note A#, 9
	rest 2
	note A#, 2
	octave 5
	note C_, 2
	note F_, 8
	rest 2
	volume_envelope 1, 6
	octave 4
	note F_, 2
	note G_, 2
	note G#, 1
	note A_, 7
	rest 4
	note A_, 2
	note A#, 2
	octave 5
	note C_, 4
	octave 4
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 16
	rest 4
	note C_, 2
	rest 2
	note F_, 2
	rest 2
	sound_jump .mainloop

.sub1:
	octave 5
	note C_, 2
	note E_, 2
	note F_, 8
	rest 4
	octave 6
	note C_, 4
	octave 5
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note F#, 1
	note G_, 11
	note C_, 2
	rest 2
	note C_, 12
	rest 4
	note C_, 8
	rest 4
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 4
	note A#, 4
	note G_, 4
	note G#, 1
	note A_, 15
	rest 12
	sound_ret

Music_Bicycle_Ch4:
	toggle_noise 5
	drum_speed 6
.mainloop:
	rest 8
.loop1:
	sound_call .sub1
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 2
	drum_note 8, 6
	sound_loop 2, .loop1
	sound_call .sub1
.loop2:
	drum_note 8, 8
	sound_loop 6, .loop2
	drum_note 8, 4
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 9, 16
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 9, 16
	rest 16
	drum_note 9, 12
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 4
	drum_note 8, 4
	sound_jump .mainloop

.sub1:
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 8
	drum_note 8, 4
	drum_note 8, 4
	sound_ret