Music_WildVictory:
; JUN 18 2020
	channel_count 3
	channel 1, Music_WildVictory_Ch1
	channel 2, Music_WildVictory_Ch2
	channel 3, Music_WildVictory_Ch3

Music_CatchVictory:
; JUN 18 2020
	channel_count 3
	channel 1, Music_CatchVictory_Ch1
	channel 2, Music_CatchVictory_Ch2
	channel 3, Music_CatchVictory_Ch3

Music_WildVictory_Ch1:
	tempo 251
	volume 7, 7
	duty_cycle 3
	note_type 6, 10, 1
	octave 4
	note E_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	octave 5
	note D#, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	rest 3
Music_CatchVictory_Ch1:
	tempo 251
	volume 7, 7
.mainloop:
	sound_call .sub2
	sound_call .sub1
	note F#, 2
	note G#, 4
	transpose 0, 1
	duty_cycle 1
	volume_envelope 10, 5
	octave 3
	note D#, 4
	sound_call .sub2
	sound_call .sub1
	note F#, 2
	note G#, 4
	transpose 0, 0
	duty_cycle 1
	volume_envelope 10, 5
	octave 3
	note D#, 4
	sound_jump .mainloop

.sub1:
	note E_, 2
	note F#, 2
	note F#, 2
	note F#, 2
	octave 3
	note A_, 2
.sub2:
	duty_cycle 3
	vibrato 6, 4, 2
	note_type 6, 13, 1
	octave 3
	note E_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G#, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note G#, 2
	note E_, 2
	octave 4
	note A_, 2
	note A_, 2
	note A_, 2
	sound_ret

Music_WildVictory_Ch2:
	duty_cycle 2
	vibrato 15, 3, 4
	note_type 6, 10, 1
	octave 4
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	volume_envelope 12, 6
	note B_, 12
Music_CatchVictory_Ch2:
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	transpose 0, 1
	octave 1
	note B_, 4
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	transpose 0, 0
	octave 1
	note B_, 4
	sound_jump Music_CatchVictory_Ch2

.sub1:
	octave 3
	note C#, 1
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	octave 2
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note B_, 1
	rest 1
.sub2:
	duty_cycle 2
	vibrato 15, 5, 4
	note_type 6, 12, 5
	octave 2
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	octave 1
	note B_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	sound_loop 2, .sub2
	octave 1
	note A_, 1
	octave 2
	note E_, 1
	note A_, 1
	sound_ret

.sub3:
	octave 3
	note E_, 1
	note F#, 4
	octave 2
	note E_, 2
	rest 2
	volume_envelope 12, 6
	sound_ret

Music_WildVictory_Ch3:
	vibrato 9, 1, 3
	note_type 6, 1, 6
	octave 4
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note E_, 4
	volume_envelope 2, 6
	note E_, 4
	volume_envelope 3, 6
	note E_, 4
Music_CatchVictory_Ch3:
	sound_call .sub2
	sound_call .sub1
	transpose 0, 1
	rest 3
	volume_envelope 1, 4
	octave 3
	note F#, 4
	sound_call .sub2
	sound_call .sub1
	transpose 0, 0
	rest 3
	volume_envelope 1, 4
	octave 3
	note F#, 4
	sound_jump Music_CatchVictory_Ch3

.sub1:
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 3
.sub2:
	vibrato 9, 1, 3
	note_type 6, 1, -3
	octave 5
	note B_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 3
	octave 6
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 4
	octave 5
	note B_, 1
	sound_ret