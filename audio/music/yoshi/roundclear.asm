Music_RoundClear:
	channel_count 2
	channel 5, Music_RoundClear_Ch5
	channel 6, Music_RoundClear_Ch6

Music_RoundClear_Ch5:
	sfx_priority_on
	set_music
	tempo 128
	volume 7, 7
	duty_cycle 2
	toggle_perfect_pitch
	vibrato 1, 2, 3
	note_type 12, 11, 1
	octave 3
	note B_, 1
	octave 4
	note G#, 5
	note A_, 1
	note G#, 2
	note F#, 1
	note E_, 2
	note D#, 1
	octave 3
	note B_, 2
	note A_, 1
	note G#, 2
	note A_, 1
	note B_, 3
	note_type 12, 11, 2
	octave 4
	note G#, 10
	sfx_priority_off
	sound_ret

Music_RoundClear_Ch6:
	set_music
	duty_cycle 2
	vibrato 0, 2, 4
	note_type 12, 12, 2
	octave 4
	note E_, 1
	note B_, 5
	octave 5
	note C#, 1
	octave 4
	note B_, 2
	note A_, 1
	note G#, 2
	note F#, 1
	note E_, 2
	note F#, 1
	note G#, 2
	note F#, 1
	note E_, 3
	note_type 12, 12, 3
	octave 5
	note E_, 10
	sound_ret
