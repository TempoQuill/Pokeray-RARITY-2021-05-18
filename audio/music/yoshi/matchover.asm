Music_MatchOver:
	channel_count 3
	channel 5, Music_MatchOver_Ch5
	channel 6, Music_MatchOver_Ch6
	channel 7, Music_MatchOver_Ch7

Music_MatchOver_Ch5:
	sfx_priority_on
	set_music
	tempo 128
	vibrato 10, 2, 3
	toggle_perfect_pitch
	duty_cycle 2
	note_type 12, 11, 3
	octave 3
	note A_, 2
	note A_, 1
	note A#, 1
	octave 4
	note C_, 6
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 8
	sfx_priority_off
	sound_ret

Music_MatchOver_Ch6:
	set_music
	duty_cycle 2
	vibrato 8, 2, 4
	note_type 12, 12, 3
	octave 4
	note F_, 2
	note F_, 1
	note F_, 1
	note F_, 6
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 3
	octave 5
	note C_, 1
	note D_, 2
	note E_, 2
	note F_, 8
	sound_ret

Music_MatchOver_Ch7:
	set_music
	note_type 12, 1, 0
	octave 3
	note F_, 2
	note F_, 1
	note E_, 1
	note F_, 6
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 3
	note G_, 1
	note A_, 2
	note G_, 2
	note F_, 4
	rest 4
	sound_ret
