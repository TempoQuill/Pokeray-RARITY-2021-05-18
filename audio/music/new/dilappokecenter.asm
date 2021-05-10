Music_DilapPokeCenter:
; OCT 19 2019
	channel_count 3
	channel 1, Music_DilapPokeCenter_Ch1
	channel 2, Music_DilapPokeCenter_Ch2
	channel 3, Music_DilapPokeCenter_Ch3

Music_DilapPokeCenter_Ch1:
	tempo 245
	volume 7, 7
	note_type 6, 3, -7
	rest 1
	duty_cycle 3
.mainloop:
	octave 2
	note E_, 4
	note G#, 4
	note E_, 4
	note G#, 4
	note E_, 4
	note G#, 4
	note A#, 4
	note G#, 4
.loop1:
	octave 2
	note F#, 4
	octave 3
	note C_, 4
	sound_loop 7, .loop1
	octave 2
	note A#, 4
	octave 3
	note C_, 4
.loop2:
	octave 2
	note G#, 4
	octave 3
	note C_, 4
	sound_loop 3, .loop2
	octave 2
	note A#, 4
	octave 3
	note C_, 4
	sound_jump .mainloop

Music_DilapPokeCenter_Ch2:
	duty_cycle 2
	vibrato 12, 9, 2
	note_type 6, 4, -7
	sound_jump Music_DilapPokeCenter_Ch1.mainloop

Music_DilapPokeCenter_Ch3:
	sound_call .sub1
	volume_envelope 1, 0
	note G#, 1
	volume_envelope 2, 0
	note G#, 1
	volume_envelope 3, 0
	note G#, 1
	rest 11
	sound_call .sub1
	volume_envelope 3, 0
	note E_, 1
	rest 13
	sound_jump Music_DilapPokeCenter_Ch3

.sub1:
	notetype 12, 1, 0
	octave 5
	note E_, 1
	volume_envelope 2, 0
	note E_, 1
	volume_envelope 1, 0
	note C_, 1
	volume_envelope 2, 0
	note C_, 1
	volume_envelope 1, 0
	note E_, 1
	volume_envelope 2, 0
	note E_, 1
	volume_envelope 1, 0
	octave 6
	note C_, 1
	volume_envelope 2, 0
	note C_, 1
	volume_envelope 3, 0
	note C_, 1
	rest 1
	volume_envelope 1, 0
	octave 5
	note A#, 1
	volume_envelope 2, 0
	note A#, 1
	volume_envelope 3, 0
	note A#, 1
	rest 1
	volume_envelope 1, 0
	note G#, 1
	volume_envelope 2, 0
	note G#, 1
	volume_envelope 1, 0
	note F#, 1
	volume_envelope 2, 0
	note F#, 1
	volume_envelope 1, 0
	note D#, 1
	volume_envelope 2, 0
	note D#, 1
	volume_envelope 3, 0
	note D#, 1
	rest 11
	volume_envelope 1, 0
	note D#, 1
	volume_envelope 2, 0
	note D#, 1
	volume_envelope 1, 0
	note C_, 1
	volume_envelope 2, 0
	note C_, 1
	volume_envelope 1, 0
	note D#, 1
	volume_envelope 2, 0
	note D#, 1
	volume_envelope 1, 0
	note G#, 1
	volume_envelope 2, 0
	note G#, 1
	volume_envelope 3, 0
	note G#, 1
	rest 1
	volume_envelope 1, 0
	note F#, 1
	volume_envelope 2, 0
	note F#, 1
	volume_envelope 3, 0
	note F#, 1
	rest 1
	volume_envelope 1, 0
	note D#, 1
	volume_envelope 2, 0
	note D#, 1
	volume_envelope 1, 0
	note E_, 1
	volume_envelope 2, 0
	note E_, 1
	sound_ret
