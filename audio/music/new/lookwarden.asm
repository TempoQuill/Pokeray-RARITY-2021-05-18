Music_LookWarden:
; SEP 10 2019
	channel_count 3
	channel 1, Music_LookWarden_Ch1
	channel 2, Music_LookWarden_Ch2
	channel 3, Music_LookWarden_Ch3

Music_LookWarden_Ch1:
	tempo 235
	volume 7, 7
	duty_cycle 1
	vibrato 11, 3, 2
	note_type 6, 10, 7
	rest 4
	octave 4
	note G#, 12
	duty_cycle 2
	octave 3
	note A_, 4
	note E_, 4
	note D#, 2
	rest 1
	note F#, 1
	octave 4
	note E_, 2
	note F#, 2
	volume_envelope 12, 7
.mainloop:
	octave 4
	note G#, 4
	octave 3
	note G#, 2
	octave 4
	note F#, 4
	octave 3
	note E_, 2
	octave 4
	note E_, 2
	octave 3
	note E_, 2
	octave 4
	note D#, 2
	note C#, 2
	octave 3
	note G#, 2
	note A_, 2
	note B_, 2
	note E_, 2
	octave 4
	note D#, 2
	octave 3
	note E_, 2
	note A#, 16
	note A_, 16
	sound_jump .mainloop

Music_LookWarden_Ch2:
	duty_cycle 3
	vibrato 11, 2, 3
	note_type 6, 13, 6
	octave 4
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 12
	note D#, 2
	rest 1
	note F#, 2
	rest 1
	note A_, 2
	note B_, 2
	rest 1
	octave 5
	note C#, 2
	rest 1
	note D#, 2
.mainloop:
	note E_, 6
	note D#, 6
	note C#, 4
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note F_, 8
	note D_, 8
	note E_, 8
	note C#, 8
	sound_jump .mainloop

Music_LookWarden_Ch3:
	vibrato 11, 1, 3
	note_type 6, 1, 6
	octave 6
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 5
	note B_, 6
	volume_envelope 1, 7
	octave 3
	note B_, 2
	volume_envelope 2, 7
	note B_, 1
	volume_envelope 1, 7
	note B_, 1
.loop1:
	volume_envelope 1, 7
	octave 2
	note B_, 1
	volume_envelope 2, 7
	note B_, 1
	volume_envelope 1, 7
	octave 3
	note B_, 1
	volume_envelope 2, 7
	note B_, 1
	sound_loop 4, .loop1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	transpose 1, 8
	sound_call .sub1
	transpose 1, 7
	sound_call .sub1
	transpose 0, 0
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 7
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	volume_envelope 1, 7
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
	volume_envelope 1, 7
	octave 4
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	volume_envelope 1, 7
	octave 3
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	volume_envelope 1, 7
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
	volume_envelope 1, 7
	note B_, 1
	volume_envelope 2, 7
	note B_, 1
	volume_envelope 1, 7
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	volume_envelope 1, 7
	note B_, 1
	volume_envelope 2, 7
	note B_, 1
	sound_ret
