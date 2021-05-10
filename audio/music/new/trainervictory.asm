Music_TrainerVictory:
; JUL 23 2019
	channel_count 3
	channel 1, Music_TrainerVictory_Ch1
	channel 2, Music_TrainerVictory_Ch2
	channel 3, Music_TrainerVictory_Ch3

Music_TrainerVictory_Ch1:
	tempo 149
	volume 7, 7
	pitch_inc_switch
	duty_cycle 2
	vibrato 18, 5, 4
	note_type 6, 10, 1
	rest 12
	octave 3
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	note G_, 2
	note E_, 2
.mainloop:
	note F#, 5
	rest 1
	note D_, 3
	note F#, 3
	note G_, 5
	rest 1
	note C#, 3
	note G_, 3
	note A_, 3
	note B_, 3
	octave 4
	note C#, 3
	note D_, 3
	note C#, 3
	octave 3
	note B_, 3
	note A_, 3
	note G_, 3
	sound_loop 2, .mainloop
	note F#, 5
	rest 1
	note D_, 3
	note F#, 3
	note G_, 5
	rest 1
	note E_, 3
	note G_, 3
	note A_, 5
	rest 1
	note F_, 3
	note A_, 3
	note A#, 3
	note G_, 3
	note A#, 3
	octave 4
	note D_, 3
	octave 3
	note A_, 6
	note D_, 3
	note A_, 3
	note B_, 6
	octave 4
	note D_, 6
	note C#, 6
	octave 3
	note B_, 6
	note A_, 6
	note G_, 6
	sound_jump .mainloop

Music_TrainerVictory_Ch2:
	duty_cycle 3
	vibrato 7, 3, 2
	note_type 6, 12, 1
	octave 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	note B_, 2
	volume_envelope 12, 2
	octave 5
	note C#, 2
	volume_envelope 12, 7
	note D_, 12
.mainloop:
	note_type 6, 12, 7
	sound_call .sub2
	sound_call .sub3
	note E_, 3
	note F#, 3
	note G_, 5
	rest 1
	sound_call .sub1
	sound_call .sub3
	note E_, 8
	rest 4
	sound_call .sub1
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note F_, 5
	rest 1
	note C_, 3
	note F_, 3
	note G_, 3
	note D_, 3
	note G_, 5
	rest 1
	note_type 12, 12, 7
	note F#, 12
	note E_, 12
	sound_jump .mainloop

.sub1:
	note D_, 5
.sub2:
	rest 1
	octave 3
	note A_, 3
	octave 4
	note D_, 3
	note E_, 5
	rest 1
	sound_ret

.sub3:
	octave 3
	note A_, 3
	octave 4
	note E_, 3
	note F#, 3
	note G_, 3
	note A_, 5
	rest 1
	sound_ret

Music_TrainerVictory_Ch3:
	note_type 6, 1, 5
	rest 12
	octave 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	note B_, 2
	octave 3
	note C#, 2
.mainloop:
	sound_call .sub1
	octave 2
	note A_, 2
	rest 1
	octave 3
	note E_, 2
	rest 1
	note G_, 2
	rest 1
	octave 4
	note C#, 2
	rest 1
	sound_loop 4, .mainloop
	sound_call .sub1
	octave 3
	note E_, 2
	rest 1
	note G_, 2
	rest 1
	note B_, 2
	rest 1
	octave 4
	note E_, 2
	rest 1
	transpose 0, 3
	sound_call .sub1
	transpose 0, 0
	octave 2
	note G_, 2
	rest 1
	octave 3
	note D_, 2
	rest 1
	note A#, 2
	rest 1
	octave 4
	note G_, 2
	rest 1
.loop1:
	octave 2
	note A_, 2
	rest 1
	octave 3
	note A_, 2
	rest 1
	sound_loop 8, .loop1
	sound_jump .mainloop

.sub1:
	octave 3
	note D_, 2
	rest 1
	note F#, 2
	rest 1
	note A_, 2
	rest 1
	octave 4
	note D_, 2
	rest 1
	sound_ret
