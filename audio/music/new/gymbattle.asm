Music_GymBattle:
; NOV 7 2019
	channel_count 3
	channel 1, Music_GymBattle_Ch1
	channel 2, Music_GymBattle_Ch2
	channel 3, Music_GymBattle_Ch3

Music_GymBattle_Ch1:
	tempo 219
	volume 7, 7
	duty_cycle 2
	note_type 6, 10, 1
	rest 16
	octave 4
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
.loop1:
	note G_, 8
	note G_, 8
	note G#, 8
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	octave 3
	note A#, 2
	sound_loop 4, .loop1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	volume_envelope 10, 5
	note D_, 6
	note D#, 6
	note F_, 4
	note G#, 6
	note A#, 6
	octave 4
	note C_, 4
	note D_, 8
	note C_, 8
	octave 3
	note A#, 8
	note F_, 8
	note D_, 6
	note D#, 6
	note F_, 4
	note G#, 6
	octave 4
	note C_, 6
	note D#, 4
	note D_, 8
	octave 3
	note F_, 8
	octave 4
	note F_, 6
	note D#, 6
	note D_, 4
	volume_envelope 13, 7
	octave 3
	note A#, 16
	note G#, 16
	volume_envelope 13, 8
	note A#, 16
	volume_envelope 13, 7
	note A#, 16
	volume_envelope 13, 8
	note G#, 16
	volume_envelope 13, 7
	note G#, 16
	volume_envelope 13, 0
	note G_, 16
	volume_envelope 13, 7
	note G_, 16
.loop2:
	rest 16
	sound_loop 8, .loop2
	volume_envelope 10, 1
	sound_jump .mainloop

.sub1:
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	note F_, 1
	sound_loop 5, .sub1
	note D#, 1
	sound_ret

.sub2:
	octave 2
	note G#, 1
	octave 3
	note C#, 1
	note F_, 1
	sound_loop 5, .sub2
	note C#, 1
	sound_ret

.sub3:
	octave 2
	note G#, 1
	octave 3
	note D#, 1
	note F_, 1
	sound_loop 5, .sub3
	note D#, 1
.sub3loop1:
	octave 2
	note G#, 1
	octave 3
	note D_, 1
	note F_, 1
	sound_loop 5, .sub3loop1
	note D_, 1
	sound_ret

Music_GymBattle_Ch2:
	duty_cycle 3
	vibrato 5, 1, 3
	note_type 6, 10, 1
.loop1:
	octave 5
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	sound_loop 4, .loop1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 8
	note D#, 8
	note D#, 8
	volume_envelope 10, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note D_, 2
	note D#, 8
	note D#, 8
	note D#, 8
	volume_envelope 14, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note D_, 2
	note D#, 8
	note D#, 8
	note D#, 8
	note D_, 2
	note D#, 2
	note F_, 2
	note D_, 2
	octave 5
	note D#, 8
	note D#, 8
	note D#, 8
	note G#, 2
	note G_, 2
	note F_, 2
	note D_, 2
	note D#, 2
.mainloop:
	sound_call .sub1
	note F_, 4
	note D#, 2
	note F_, 2
	note G#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	note C_, 2
	volume_envelope 13, 3
	note C#, 8
	note F_, 8
	volume_envelope 1, -5
	note G#, 8
	volume_envelope 10, 7
	note G#, 8
	rest 2
	volume_envelope 14, 2
	sound_call .sub1
	note F_, 2
	note G#, 6
	note G_, 1
	note F_, 1
	note D#, 2
	note F_, 2
	note G_, 2
	note D#, 2
	volume_envelope 13, 5
	note F_, 8
	note A#, 8
	octave 5
	note D_, 6
	note C_, 1
	note D_, 1
	octave 4
	note A#, 8
	volume_envelope 10, 7
	octave 3
	note G#, 8
	octave 4
	note C_, 8
	volume_envelope 10, 0
	note D#, 8
	volume_envelope 10, 7
	note D#, 4
	note F_, 2
	note G_, 2
	volume_envelope 13, 0
	note F_, 16
	volume_envelope 13, 7
	note F_, 16
	volume_envelope 10, 5
	note C_, 8
	note D#, 8
	note G#, 8
	octave 5
	note C_, 8
	volume_envelope 13, 0
	octave 4
	note A#, 16
	volume_envelope 13, 7
	note A#, 16
	note D#, 16
	note F_, 16
	volume_envelope 13, 0
	note D#, 16
	volume_envelope 13, 7
	note D#, 16
	volume_envelope 13, 0
	note D#, 16
	volume_envelope 13, 7
	note D#, 12
	volume_envelope 13, 3
	note D_, 4
	volume_envelope 13, 0
	note D#, 16
	volume_envelope 13, 7
	note D#, 16
	volume_envelope 13, 2
	sound_call Music_GymBattle_Ch1.sub1
	sound_call Music_GymBattle_Ch1.sub1
	sound_call Music_GymBattle_Ch1.sub2
	sound_call Music_GymBattle_Ch1.sub2
	sound_call Music_GymBattle_Ch1.sub1
	sound_call Music_GymBattle_Ch1.sub1
	sound_call Music_GymBattle_Ch1.sub3
	rest 2
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 2
	note A#, 2
	octave 4
	note D#, 4
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	sound_ret

Music_GymBattle_Ch3:
	vibrato 3, 5, 2
	note_type 6, 1, 8
	octave 2
	note D#, 2
	octave 3
	note D#, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	octave 2
	note F#, 2
	octave 3
	note F#, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	octave 2
	note G#, 2
	octave 3
	note G#, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
.loop1:
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note B_, 2
	note D#, 2
	note B_, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	sound_loop 4, .loop1
.mainloop:
	transpose 0, 7
	sound_call .sub1
	transpose 0, 5
	sound_call .sub1
	transpose 0, 7
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note F_, 4
	note D#, 2
	note F_, 2
	note D#, 2
	note C#, 4
	note D#, 4
	note F_, 4
	note C#, 4
	octave 2
	note B_, 8
	octave 3
	note F#, 8
	note B_, 8
	note F#, 4
	note D#, 4
	note E_, 8
	note G#, 8
	note B_, 8
	note G#, 4
	note E_, 4
	transpose 0, 7
	sound_call .sub1
	sound_call .sub1
	transpose 0, 5
	sound_call .sub1
	transpose 0, 7
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 2
	note G#, 2
	octave 3
	note D#, 2
	sound_loop 8, .sub1
	sound_ret
