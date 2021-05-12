Music_HypercoinCity:
; wav
; AUG 15 2020
	channel_count 3
	channel 1, Music_HypercoinCity_Ch1
	channel 2, Music_HypercoinCity_Ch2
	channel 3, Music_HypercoinCity_Ch3

Music_HypercoinCity_Ch1:
	tempo 154
	volume 7, 7
	duty_cycle 1
	note_type 6, 0, 0
	rest 12
.mainloop:
	sound_call .sub1
	octave 3
	note G#, 4
	volume_envelope 10, 8
	note G#, 16
	note F_, 16
	note G#, 16
	note E_, 4
	note D#, 4
	note C#, 4
	note C_, 4
	sound_call .sub1
	octave 3
	note A#, 4
	volume_envelope 10, 8
	note A#, 16
	note F#, 8
	note C#, 8
	note F#, 4
	note A#, 4
	note F#, 4
	note G#, 2
	note A#, 2
	octave 4
	note C#, 8
	note D#, 8
	volume_envelope 10, 2
	octave 3
	note G#, 8
	note D#, 8
	note G_, 8
	note D#, 8
	note D#, 4
	note C#, 4
	note C_, 8
	note G_, 8
	note D#, 4
	note A#, 4
	note G#, 8
	note D#, 8
	note G_, 8
	note D#, 8
	note D#, 4
	note C#, 4
	note C_, 4
	note G_, 4
	note D#, 8
	note C_, 4
	note B_, 2
	octave 4
	note C#, 2
	note D#, 8
	note D_, 1
	note D#, 7
	note E_, 8
	note C#, 8
	octave 3
	note B_, 8
	note F#, 8
	note A#, 8
	note F#, 8
	note G#, 8
	note D#, 8
	note F_, 8
	note C#, 8
	volume_envelope 4, -7
	note D#, 16
	note C#, 16
	sound_jump .mainloop

.sub1:
	volume_envelope 10, 2
	octave 3
	note G#, 4
	note D#, 4
	octave 4
	note C_, 4
	octave 3
	note G#, 8
	note G#, 2
	octave 4
	note C_, 2
	note C#, 4
	note C_, 4
	octave 3
	note G#, 4
	note D#, 4
	octave 4
	note C_, 4
	octave 3
	note D#, 8
	note D#, 2
	note G#, 2
	octave 4
	note C_, 4
	volume_envelope 0, -1
	sound_ret

Music_HypercoinCity_Ch2:
	duty_cycle 2
	note_type 6, 13, 1
	octave 1
	note D#, 4
	note F#, 4
	note G_, 4
.mainloop:
	sound_call .sub1
	note D_, 4
.loop1:
	octave 2
	note C#, 4
	octave 3
	note F_, 4
	octave 1
	note G#, 4
	octave 3
	note F_, 4
	sound_loop 2, .loop1
	octave 2
	note C#, 4
	octave 3
	note E_, 4
	octave 2
	note E_, 4
	octave 3
	note E_, 4
	octave 2
	note G#, 4
	octave 3
	note E_, 4
	octave 2
	note E_, 4
	octave 3
	note E_, 4
	sound_call .sub1
	octave 1
	note G#, 4
	note F#, 4
	octave 3
	note C#, 4
	octave 1
	note A#, 4
	octave 3
	note C#, 4
	octave 2
	note C#, 4
	octave 3
	note C#, 4
	octave 2
	note F_, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 4
	octave 3
	note C#, 4
	octave 2
	note C#, 4
	octave 3
	note C#, 4
	octave 1
	note A#, 4
	octave 3
	note C#, 4
	octave 1
	note G_, 2
	octave 2
	note D#, 2
	note A#, 2
	octave 3
	note D#, 2
	sound_call .sub2
	note C_, 4
	octave 1
	note D#, 4
	note G_, 4
	note A#, 4
	octave 2
	note D#, 4
	sound_call .sub2
	note C#, 4
	octave 1
	note G#, 4
	octave 2
	note C_, 4
	note D#, 4
	duty_cycle 1
	vibrato 8, 3, 2
	volume_envelope 10, 5
	octave 4
	note D#, 2
	note E_, 2
	note F#, 8
	note A#, 1
	note B_, 5
	note A#, 1
	note A_, 1
	note G#, 8
	note E_, 8
	note F#, 8
	note D#, 8
	note E_, 6
	note D#, 1
	note D_, 1
	note C#, 8
	duty_cycle 2
	note D#, 8
	note C_, 8
	note C#, 8
	octave 3
	note A#, 8
	vibrato 0, 0, 0
	note D#, 16
	note C#, 16
	sound_jump .mainloop

.sub1:
	volume_envelope 13, 1
	octave 1
	note G#, 4
	octave 3
	note C_, 4
	octave 2
	note D#, 4
	octave 3
	note C_, 4
	sound_loop 2, .sub1
	octave 1
	note G#, 4
	octave 2
	note A#, 4
	note D#, 4
	note G#, 4
	octave 1
	note G#, 4
	octave 3
	note C_, 4
	octave 2
	note D#, 4
	sound_ret

.sub2:
	octave 2
	note G#, 4
	octave 3
	note C_, 2
	note D#, 2
	note G#, 8
	octave 2
	note D#, 4
	note A#, 2
	octave 3
	note C#, 2
	note G_, 8
	octave 1
	note G#, 4
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 4
	sound_ret

Music_HypercoinCity_Ch3:
	vibrato 26, 2, 4
	note_type 6, 0, 0
	rest 12
.mainloop:
	sound_call .sub1
	note D#, 4
	rest 4
	note_type 12, 1, 4
	note C#, 16
	rest 2
	note_type 6, 1, -6
	octave 5
	note C_, 1
	note C#, 7
	note C_, 8
	note C#, 4
	note C_, 4
	octave 4
	note A#, 4
	note G#, 4
	sound_call .sub1
	note G_, 1
	note G#, 3
	rest 4
	note_type 12, 1, 4
	note F#, 16
	rest 2
	note_type 6, 1, -4
	note A_, 1
	note A#, 3
	octave 5
	note C#, 4
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	note F#, 8
	rest 8
	volume_envelope 1, -3
	sound_call .sub2
	note G#, 6
	rest 2
	note A#, 12
	octave 5
	note C_, 2
	note C#, 2
	sound_call .sub2
	note G#, 2
	rest 2
	note A#, 2
	rest 2
	note G#, 12
	volume_envelope 1, 5
	octave 3
	note C#, 2
	rest 2
	sound_call .sub3
	octave 2
	note E_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	octave 4
	note F#, 2
	rest 2
	sound_call .sub3
	octave 2
	note F#, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	note E_, 2
	rest 2
	note A#, 2
	rest 2
	octave 2
	note G#, 2
	rest 2
	octave 3
	note G#, 2
	rest 2
	octave 4
	note D#, 2
	rest 2
	note G#, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	octave 3
	note F_, 2
	rest 2
	note G#, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note D#, 2
	note G#, 2
	note A#, 2
	octave 4
	note D#, 2
	note G#, 2
	note A#, 2
	octave 5
	note D#, 2
	note G#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	octave 4
	note A#, 2
	note D#, 2
	volume_envelope 2, 5
	note D#, 2
	volume_envelope 3, 5
	note D#, 2
	rest 2
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 4
	octave 4
	note D_, 1
	note D#, 5
	rest 2
	note D#, 6
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note F_, 2
	rest 2
	note D#, 4
	rest 4
	note C#, 4
	rest 4
	note C_, 4
	rest 4
	sound_ret

.sub2:
	note D#, 4
	rest 4
	note C_, 4
	rest 4
	note C_, 1
	note C#, 7
	octave 4
	note A#, 4
	rest 4
	octave 5
	note C_, 3
	octave 4
	note B_, 1
	note A#, 2
	rest 2
	sound_ret

.sub3:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	octave 4
	note F#, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	sound_ret
