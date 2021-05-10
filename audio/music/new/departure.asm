Music_Departure:
; MAR 30 2020
	channel_count 3
	channel 1, Music_Departure_Ch1
	channel 2, Music_Departure_Ch2
	channel 3, Music_Departure_Ch3
	channel 4 ; from PokeMarch music

Music_Departure_Ch1:
	tempo 192
	volume 7, 7
	note_type 12, 10, 7
	rest 12
	duty_cycle 3
	vibrato 9, 2, 2
	octave 3
	note A#, 6
	note A#, 2
	note G#, 2
	note A#, 2
.mainloop:
	note_type 6, 10, 7
	rest 4
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 7
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note A#, 1
	rest 5
	note A#, 2
	rest 4
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note A#, 1
	rest 5
	note A#, 2
	rest 4
	octave 4
	note C#, 4
	note D_, 4
	note D#, 4
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	duty_cycle 2
	volume_envelope 10, 2
	octave 5
	note G#, 4
	duty_cycle 3
	volume_envelope 10, 7
	octave 4
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	duty_cycle 2
	volume_envelope 10, 2
	octave 5
	note B_, 4
	duty_cycle 3
	volume_envelope 10, 7
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	duty_cycle 2
	volume_envelope 10, 2
	octave 5
	note F#, 4
	duty_cycle 3
	volume_envelope 10, 7
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	duty_cycle 2
	volume_envelope 10, 2
	octave 5
	note B_, 4
	duty_cycle 3
	volume_envelope 10, 7
	octave 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	volume_envelope 8, 0
	note C#, 12
	note A#, 12
	note B_, 16
	volume_envelope 10, 7
	note D#, 2
	note F#, 2
	note B_, 2
	octave 4
	note D#, 2
	note F#, 4
	note G#, 4
	note E_, 4
	octave 3
	note B_, 12
	note B_, 4
	octave 4
	note D_, 4
	note D#, 4
	note F#, 12
	note C#, 4
	octave 3
	note B_, 4
	note A#, 4
	octave 4
	note C#, 12
	note D#, 4
	note C#, 4
	note D#, 4
	octave 3
	note B_, 12
	sound_jump .mainloop

Music_Departure_Ch2:
	note_type 6, 12, 7
	rest 12
	duty_cycle 3
	vibrato 23, 4, 4
	octave 3
	note A#, 1
	note B_, 3
	note A#, 6
	note G#, 2
	octave 2
	note F#, 12
	octave 1
	note F#, 4
	note G#, 4
	note A#, 4
.mainloop:
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 2
	note C_, 4
	octave 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	octave 2
	note C#, 4
	sound_call .sub1
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 2
	note D#, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 2
	note E_, 4
	sound_call .sub1
.loop1:
	octave 2
	note E_, 4
	octave 3
	note G#, 1
	rest 3
	note G#, 1
	rest 3
	octave 1
	note B_, 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	octave 2
	note D#, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 1
	note B_, 4
	octave 2
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note E_, 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	octave 2
	note C#, 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 1
	note F#, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 1
	rest 3
	note G#, 1
	rest 3
	octave 1
	note G#, 4
	octave 3
	note G#, 1
	rest 3
	note G#, 1
	rest 3
	octave 1
	note F#, 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 3
	octave 1
	note A#, 4
	octave 3
	note E_, 1
	rest 5
	note C#, 2
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	octave 1
	note F#, 4
	octave 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	sound_ret

Music_Departure_Ch3:
	vibrato 14, 1, 3
	note_type 6, 1, 4
	octave 5
	note A#, 1
	note B_, 3
	note A#, 6
	note G#, 2
	note F#, 12
	octave 6
	note F#, 12
	octave 5
	note F#, 4
	note E_, 4
	note C#, 4
.mainloop:
	note_type 12, 1, -1
	octave 5
	note F#, 6
	note D#, 5
	note F#, 1
	note E_, 6
	note C#, 6
	note E_, 6
	note C#, 2
	note G#, 1
	rest 2
	note E_, 1
	note F#, 6
	note D#, 6
	note F#, 6
	note D#, 5
	note F#, 1
	note G#, 6
	note E_, 6
	note G#, 6
	note F#, 2
	note G#, 1
	rest 2
	note F#, 1
	note B_, 6
	note B_, 6
	volume_envelope 1, 0
	octave 6
	note C#, 2
	octave 5
	note B_, 3
	note E_, 1
	note G#, 6
	note F#, 2
	note G#, 3
	note F#, 1
	note D#, 6
	note E_, 2
	note D#, 3
	note C#, 1
	note G#, 6
	note F#, 2
	note F_, 3
	note F#, 1
	note B_, 6
	octave 6
	note C#, 2
	octave 5
	note B_, 3
	note E_, 1
	note G#, 6
	note F#, 2
	note F_, 3
	note F#, 1
	note B_, 6
	note A#, 2
	note G#, 3
	note F#, 1
	note A#, 6
	note B_, 2
	note A#, 3
	note B_, 1
	octave 6
	note D#, 6
	sound_jump .mainloop
