Music_HealAlternate:
; wav
; MAY 17 2020
	channel_count 3
	channel 1, Music_HealAlternate_Ch1
	channel 2, Music_HealAlternate_Ch2
	channel 3, Music_HealAlternate_Ch3
	channel 4 ; from Magnet Train theme

Music_HealAlternate_Ch1:
	tempo 142
	volume 7, 7
	duty_cycle 2
	vibrato 4, 1, 3
	note_type 12, 10, 7
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note E_, 2
	octave 5
	note G#, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note E_, 8
	sound_ret

Music_HealAlternate_Ch2:
	duty_cycle 3
	note_type 12, 10, 5
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note E_, 2
	octave 3
	note E_, 2
	octave 4
	note C#, 2
	note B_, 2
	note A_, 2
	note G#, 8
	sound_ret

Music_HealAlternate_Ch3:
	vibrato 7, 2, 4
	note_type 12, 1, -4
	octave 4
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note G#, 4
	note E_, 2
	note G#, 2
	note E_, 6
	volume_envelope 2, -4
	note E_, 1
	volume_envelope 3, -4
	note E_, 1
	sound_ret
