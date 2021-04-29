Music_OddishFarm:
; NOV 7 2019
	channel_count 3
	channel 1, Music_OddishFarm_Ch1
	channel 2, Music_OddishFarm_Ch2
	channel 3, Music_OddishFarm_Ch3

Music_OddishFarm_Ch1:
	tempo 181
	volume 7, 7
	note_type 6, 10, 5
	rest 4
	duty_cycle 1
.mainloop:
	octave 3
	note A_, 4
	note G_, 4
	note A_, 4
	note A#, 4
	octave 4
	note C_, 8
	note E_, 8
	note D_, 8
	octave 3
	note F_, 8
	octave 4
	note C_, 8
	octave 3
	note A#, 8
	note A_, 4
	note G_, 4
	note F_, 4
	note G_, 4
	note F_, 8
	note A_, 4
	note A#, 4
	octave 4
	note C_, 12
	note E_, 2
	note D_, 2
	note C_, 8
	octave 3
	note A#, 8
	note A_, 8
	note G_, 8
	note F_, 8
	note E_, 8
	note F_, 8
	note G_, 8
	note A_, 8
	note G_, 4
	note F_, 4
	note D_, 8
	note F_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 8
	note G_, 8
	note A_, 8
	note G_, 8
	note F_, 8
	note C_, 8
	note D_, 8
	note G#, 1
	note A_, 7
	note E_, 8
	note G_, 8
	note F_, 8
	note G_, 8
	note A_, 8
	note F_, 8
	note D_, 8
	note F_, 8
	note E_, 8
	note D_, 8
	note C_, 8
	note F_, 8
	note C_, 8
	note G_, 8
	note F_, 8
	note E_, 8
	note D_, 12
	note C_, 4
	note F_, 8
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note C_, 8
	note D_, 8
	note F_, 8
	note G_, 8
	note F_, 8
	note E_, 8
	note F_, 8
	note G_, 8
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	sound_jump .mainloop

Music_OddishFarm_Ch2:
	note_type 6, 13, 3
	rest 4
	duty_cycle 2
	vibrato 22, 2, 4
.mainloop:
	octave 2
	note F_, 4
	sound_call .sub1
	rest 3
	sound_loop 2, .mainloop
	octave 2
	note F_, 4
	note A#, 1
	rest 3
	octave 3
	note D_, 1
	note F_, 1
	rest 2
	octave 2
	note A#, 1
	rest 3
	note F_, 4
	octave 3
	note C_, 1
	note A_, 1
	rest 2
	octave 2
	note E_, 4
	octave 3
	note C_, 1
	note A_, 1
	rest 2
	octave 2
	note D_, 4
	sound_call .sub1
	rest 3
	octave 1
	note A#, 4
.loop1:
	sound_call .sub1
	rest 3
	octave 2
	note C_, 4
	sound_loop 2, .loop1
	octave 3
	note C_, 1
	rest 3
	note E_, 1
	note G_, 1
	rest 2
	note C_, 1
	rest 3
	octave 2
	note F_, 4
	sound_call .sub1
	rest 3
	octave 1
	note A_, 4
	sound_call .sub1
	rest 3
	sound_call .sub2
	octave 2
	note C_, 4
	octave 3
	note C_, 1
	note A_, 1
	rest 2
	octave 1
	note B_, 4
	octave 3
	note C_, 1
	note A_, 1
	rest 2
	sound_call .sub2
	transpose 0, 2
	sound_call .sub2
	transpose 0, 0
	octave 2
	note F_, 4
	sound_call .sub1
	rest 2
	note C_, 1
	note F_, 1
	note A_, 11
	duty_cycle 3
	volume_envelope 13, 7
	octave 4
	note C_, 2
	note E_, 2
	note F_, 12
	note E_, 2
	note D_, 2
	note C_, 8
	note D#, 1
	note E_, 7
	note D_, 12
	octave 3
	note A#, 4
	octave 4
	note C_, 16
	octave 3
	note A#, 12
	octave 4
	note C#, 1
	note D_, 3
	note C_, 8
	octave 3
	note A#, 8
	note A_, 16
	rest 12
	duty_cycle 2
	volume_envelope 11, 8
	note F_, 2
	note G_, 2
	note A_, 8
	note B_, 1
	octave 4
	note C_, 7
	octave 3
	note F_, 8
	rest 4
	note C_, 4
	note G#, 1
	note A_, 11
	note G_, 2
	note A_, 2
	note F_, 8
	rest 4
	note D_, 2
	note E_, 2
	note F_, 8
	note A#, 8
	octave 4
	note C#, 1
	note D_, 11
	note E_, 4
	note C_, 16
	rest 12
	volume_envelope 13, 3
	octave 2
	note E_, 4
	sound_jump .mainloop

.sub1:
	octave 3
	note C_, 1
	rest 3
	note F_, 1
	note A_, 1
	rest 2
	note C_, 1
	sound_ret

.sub2:
	octave 1
	note A#, 4
	octave 3
	note D_, 1
	rest 3
	note F_, 1
	note A#, 1
	rest 2
	note D_, 1
	rest 3
	sound_ret

Music_OddishFarm_Ch3:
	vibrato 13, 1, 3
	note_type 6, 1, 0
	octave 5
	note C_, 2
	note E_, 2
	note F_, 4
	note E_, 4
	note F_, 4
	note G_, 4
	note A_, 8
	note F_, 4
	note A_, 3
	rest 1
	note A_, 1
	note A#, 11
	octave 6
	note C_, 2
	octave 5
	note A#, 2
	note A_, 8
	rest 4
	note G_, 2
	note A_, 2
	note F_, 12
	note E_, 4
	note D_, 8
	note E_, 4
	note F_, 3
	rest 1
	note E_, 1
	note F_, 11
	note G_, 2
	note F_, 2
	note E_, 8
	rest 4
	note C_, 4
	note F_, 4
	note E_, 4
	note F_, 4
	note G_, 4
	note A_, 8
	note F_, 4
	note C_, 4
	note D_, 10
	rest 2
	note D_, 2
	note E_, 2
	note F_, 8
	rest 4
	note C_, 4
	note A_, 1
	note A#, 7
	rest 4
	note C_, 4
	note D_, 8
	note E_, 8
	note F_, 16
	vibrato 13, 5, 4
	volume_envelope 1, -3
	octave 3
	note F_, 8
	note E_, 8
	note D_, 16
	octave 2
	note A_, 16
	note A#, 16
	octave 3
	note F_, 8
	octave 2
	note A_, 8
	note A#, 16
	octave 3
	note A_, 8
	note G_, 8
	note F_, 16
	note E_, 16
	note D_, 16
	octave 2
	note A#, 16
	octave 3
	note C_, 16
	octave 2
	note G_, 8
	note A_, 8
	note A#, 16
	note B_, 16
	octave 3
	note C_, 16
	note C_, 12
	sound_jump Music_OddishFarm_Ch3
