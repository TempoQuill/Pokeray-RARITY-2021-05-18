Music_GameOver:
	channel_count 3
	channel 5, Music_GameOver_Ch5
	channel 6, Music_GameOver_Ch6
	channel 7, Music_GameOver_Ch7

Music_GameOver_Ch5:
	sfx_priority_on
	set_music
	tempo 144
	volume 7, 7
	duty_cycle 3
	toggle_perfect_pitch
	vibrato 5, 2, 5
	note_type 12, 11, 1
	octave 3
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 2
	octave 2
	note B_, 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 4
	octave 1
	note G_, 4
	sfx_priority_off
	sound_ret

Music_GameOver_Ch6:
	set_music
	duty_cycle 2
	vibrato 6, 2, 6
	note_type 12, 12, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 1
	note F_, 1
	note G_, 2
	note D_, 1
	note E_, 1
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 4
	note_type 12, 11, 1
	octave 2
	note C_, 4
	sound_ret

Music_GameOver_Ch7:
	set_music
	note_type 12, 1, 0
	rest 16
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	note C_, 2
	note C_, 1
	note D_, 1
	note E_, 2
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	rest 2
	sound_ret
