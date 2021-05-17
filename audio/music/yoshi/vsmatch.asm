Music_VSMatchPlayer1:
	channel_count 4
	channel 1, Music_VSMatchPlayer1_Ch1
	channel 2, Music_VSMatchPlayer1_Ch2
	channel 3, Music_VSMatchPlayer1_Ch3
	channel 4, Music_VSMatchPlayer1_Ch4

Music_VSMatchPlayer2:
	channel_count 4
	channel 1, Music_VSMatchPlayer1_Ch1
	channel 2, Music_VSMatchPlayer2_Ch2
	channel 3, Music_VSMatchPlayer2_Ch3
	channel 4, Music_VSMatchPlayer2_Ch4

Music_VSMatchPlayer1_Ch1:
	tempo 132
	volume 7, 7
	duty_cycle 2
	vibrato 7, 2, 3
	toggle_perfect_pitch
	note_type 12, 11, 2
	octave 3
	note G_, 2
	note G_, 1
	note G_, 1
	note G_, 4
	note_type 8, 11, 2
	rest 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	note D_, 6
	note_type 12, 11, 2
	octave 3
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note C_, 6
.mainloop:
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 4
	octave 3
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 4
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note F_, 4
	octave 3
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	note G_, 4
	octave 3
	note G_, 4
	note G_, 4
	octave 4
	note C_, 1
	note D_, 1
	note E_, 2
	note C_, 2
	note D_, 10
	octave 3
	note A_, 1
	note A#, 1
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A_, 16
	rest 2
	octave 4
	note F_, 1
	note E_, 1
	note F_, 6
	note G_, 1
	note F#, 1
	note G_, 4
	octave 3
	note A_, 2
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	octave 4
	note F_, 1
	note E_, 1
	note F_, 6
	note G_, 1
	note F#, 1
	note G_, 6
	octave 3
	note C_, 4
	note C_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note C_, 4
	note D_, 4
	note D_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note F_, 6
	octave 4
	note F_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 6
	octave 4
	note G_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	octave 4
	note F_, 1
	note E_, 1
	note F_, 6
	note G_, 1
	note F#, 1
	note G_, 4
	note F_, 2
	octave 3
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	octave 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 1
	rest 1
	octave 3
	note A_, 16
	rest 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 11
	rest 6
	sound_loop 0, .mainloop

Music_VSMatchPlayer1_Ch2:
	sound_call Music_VSMatchPlayer2_Ch2.sub1
.mainloop:
	sound_call Music_VSMatchPlayer2_Ch2.sub2
	sound_call Music_VSMatchPlayer2_Ch2.sub3
	sound_call Music_VSMatchPlayer2_Ch2.sub5
	sound_call Music_VSMatchPlayer2_Ch2.sub7
	sound_loop 0, .mainloop

Music_VSMatchPlayer2_Ch2:
	note_type 4, 12, 1
	rest 1
	toggle_perfect_pitch
	sound_call .sub1
.mainloop:
	sound_call .sub2
	sound_call .sub4
	sound_call .sub6
	sound_call .sub7
	sound_loop 0, .mainloop

.sub1:
	duty_cycle 2
	note_type 12, 12, 1
	octave 4
	note C_, 2
	note C_, 1
	note C_, 1
	note_type 12, 12, 3
	note C_, 4
	note_type 8, 12, 3
	rest 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note G_, 6
	note B_, 3
	note A_, 1
	note B_, 1
	note G_, 1
	note_type 12, 12, 3
	octave 5
	note C_, 4
	octave 3
	note G_, 2
	duty_cycle 3
	octave 4
	note C_, 2
	sound_ret

.sub2:
	note_type 12, 12, 3
	octave 4
	note A_, 3
	note G_, 1
	note F_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	octave 5
	note D_, 2
	note_type 12, 12, 6
	note C_, 8
	octave 4
	note A_, 6
	note_type 12, 12, 3
	note C_, 2
	note G_, 3
	note F_, 1
	note E_, 2
	note F_, 2
	note_type 12, 12, 2
	note G_, 2
	note G_, 2
	note_type 12, 12, 3
	note A_, 2
	note A#, 2
	note_type 12, 12, 6
	note A_, 8
	octave 5
	note C_, 6
	note_type 12, 12, 3
	octave 4
	note C_, 2
	note A_, 3
	note G_, 1
	note F_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	octave 5
	note D_, 2
	note_type 12, 12, 6
	note C_, 8
	note F_, 8
	note_type 12, 12, 3
	note E_, 3
	note D_, 1
	note C_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 4
	note B_, 2
	note G_, 2
	note_type 12, 12, 5
	octave 5
	note C_, 14
	note_type 12, 12, 3
	note C_, 1
	note C#, 1
	note D_, 3
	note C_, 1
	octave 4
	note A#, 2
	note A_, 2
	note_type 12, 12, 5
	octave 5
	note C_, 6
	note_type 12, 12, 3
	octave 4
	note A_, 2
	note A#, 3
	note A_, 1
	note G_, 2
	note F_, 2
	note_type 12, 12, 5
	note G_, 8
	note_type 12, 12, 2
	note A_, 2
	note A_, 1
	note_type 12, 12, 3
	note A#, 1
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 4
	note_type 12, 12, 1
	octave 5
	note D_, 1
	note D_, 1
	note D_, 6
	note C_, 1
	note C_, 1
	note C_, 4
	note_type 12, 12, 2
	octave 4
	note A_, 2
	note A_, 1
	note_type 12, 12, 3
	note A#, 1
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 4
	note_type 12, 12, 1
	octave 5
	note D_, 1
	note D_, 1
	note D_, 6
	note E_, 1
	note E_, 1
	note E_, 4
	note_type 12, 12, 2
	note F_, 2
	note F_, 1
	note E_, 1
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	octave 4
	note A#, 2
	note A_, 4
	note_type 12, 12, 3
	note D_, 1
	note E_, 1
	note F_, 2
	note D_, 2
	note E_, 2
	note E_, 1
	note F_, 1
	note G_, 4
	note_type 12, 12, 2
	octave 5
	note C_, 2
	note C_, 1
	note_type 12, 12, 4
	octave 4
	note A#, 1
	note A_, 2
	note A#, 2
	octave 5
	note C_, 6
	octave 4
	note A_, 2
	note_type 12, 12, 2
	note A#, 2
	note A#, 1
	note_type 12, 12, 4
	octave 5
	note C_, 1
	note D_, 2
	octave 4
	note B_, 2
	note_type 12, 12, 6
	octave 5
	note C_, 8
	note_type 12, 12, 2
	octave 4
	note A_, 2
	note A_, 1
	note_type 12, 12, 3
	note A#, 1
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 4
	note_type 12, 12, 1
	octave 5
	note D_, 1
	note D_, 1
	note D_, 6
	note E_, 1
	note E_, 1
	note E_, 4
	duty_cycle 2
	note_type 12, 11, 2
	note F_, 2
	octave 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	duty_cycle 3
	note_type 12, 12, 2
	note E_, 2
	note A_, 3
	note A_, 1
	note A_, 2
	note A#, 2
	octave 5
	note C_, 4
	note_type 6, 12, 2
	octave 4
	note E_, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 5
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 6
	note E_, 2
	note D_, 4
	note E_, 4
	note_type 6, 12, 6
	note C_, 16
	note_type 6, 12, 3
	note D_, 6
	note C_, 2
	octave 4
	note A#, 4
	octave 5
	note D_, 4
	note_type 8, 12, 3
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	sound_ret

.sub3:
	octave 5
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note_type 8, 12, 6
	note C_, 12
	note_type 8, 12, 3
	rest 2
	rest 2
	rest 2
	rest 2
	rest 2
	rest 2
	note_type 8, 12, 6
	rest 12
	sound_ret

.sub4:
	note_type 8, 12, 3
	rest 2
	rest 2
	rest 2
	rest 2
	rest 2
	rest 2
	note_type 8, 12, 6
	rest 12
	octave 5
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note_type 8, 12, 6
	note C_, 12
	sound_ret

.sub5:
	note_type 8, 12, 6
	pitch_slide 1, 4, F_
	note F_, 16
	rest 8
	rest 16
	rest 16
	rest 16
	sound_ret

.sub6:
	note_type 8, 12, 6
	rest 16
	octave 4
	pitch_slide 1, 3, F_
	note F_, 16
	octave 5
	rest 8
	rest 16
	rest 16
	sound_ret

.sub7:
	note_type 8, 13, 0
	vibrato 0, 6, 0
	octave 4
	note A#, 12
	vibrato 0, 0, 0
	note_type 12, 13, 1
	octave 5
	note C_, 16
	note_type 12, 12, 1
	rest 1
	rest 16
	rest 3
	note C_, 2
	octave 4
	note C_, 2
	sound_ret


Music_VSMatchPlayer1_Ch3:
	toggle_perfect_pitch

Music_VSMatchPlayer2_Ch3:
	note_type 6, 1, 0
	octave 4
	note E_, 3
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note_type 12, 1, 0
	note E_, 4
	rest 12
	note D_, 1
	rest 3
	note C_, 1
	rest 3
	octave 3
	note G_, 1
	rest 3
.mainloop:
	note C_, 1
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
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note D_, 1
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
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note G_, 1
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
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note D_, 1
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
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note D_, 1
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
	octave 3
	note C_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	note A_, 1
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	note E_, 1
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
	rest 16
	rest 9
	note E_, 1
	note F_, 1
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A_, 1
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
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A_, 1
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
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A_, 1
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
	note C_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 1
	rest 1
	octave 3
	note A#, 1
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
	octave 3
	note E_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note A#, 1
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
	octave 3
	note E_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	octave 3
	note F_, 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 9
	note C_, 2
	note D_, 2
	note E_, 2
	sound_loop 0, .mainloop


Music_VSMatchPlayer1_Ch4:
	toggle_noise 7
	sound_call Music_VSMatchPlayer2_Ch4.sub1
.mainloop:
	sound_call Music_VSMatchPlayer2_Ch4.sub2
	sound_call Music_VSMatchPlayer2_Ch4.sub3
	sound_call Music_VSMatchPlayer2_Ch4.sub5
	sound_loop 0, .mainloop


Music_VSMatchPlayer2_Ch4:
	toggle_noise 7
	sound_call .sub1
.mainloop:
	sound_call .sub2
	sound_call .sub4
	sound_call .sub5
	sound_loop 0, .mainloop

.sub1:
	drum_speed 12
	rest 4
	drum_speed 6
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 12, 2
	rest 14
	drum_note 12, 2
	rest 6
	drum_note 12, 2
	rest 4
	drum_note 12, 2
	drum_note 12, 2
	rest 6
	drum_note 6, 2
	rest 6
	sound_ret

.sub2:
	drum_speed 6
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 5, 2
	rest 16
	rest 16
	rest 14
	drum_note 5, 2
	rest 10
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	rest 6
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 6
	drum_speed 8
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 12, 2
	rest 4
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 12, 2
	rest 4
	drum_speed 6
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 12, 2
	rest 2
	drum_note 12, 2
	rest 10
	sound_ret

.sub3:
	drum_note 12, 2
	rest 6
	drum_note 4, 2
	rest 6
	drum_note 12, 2
	rest 2
	drum_note 4, 2
	rest 6
	drum_note 12, 2
	rest 2
	drum_speed 8
	drum_note 12, 2
	drum_note 4, 2
	drum_note 12, 2
	drum_note 4, 2
	drum_note 12, 2
	drum_note 4, 2
	drum_speed 12
	drum_note 12, 1
	rest 3
	drum_note 6, 1
	rest 1
	drum_note 4, 1
	sound_ret

.sub4:
	drum_note 4, 2
	rest 6
	drum_note 12, 2
	rest 6
	drum_note 4, 2
	rest 2
	drum_note 12, 2
	rest 6
	drum_note 4, 2
	rest 2
	drum_speed 8
	drum_note 4, 2
	drum_note 12, 2
	drum_note 4, 2
	drum_note 12, 2
	drum_note 4, 2
	drum_note 12, 2
	drum_speed 12
	drum_note 12, 1
	rest 3
	drum_note 6, 1
	rest 1
	drum_note 4, 1
	sound_ret

.sub5:
	rest 1
	sound_ret
