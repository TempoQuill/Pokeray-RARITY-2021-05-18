Music_HouseEnroute:
; engine, wav
; JUL 27 2019
	channel_count 3
	channel 1, Music_HouseEnroute_Ch1
	channel 2, Music_HouseEnroute_Ch2
	channel 3, Music_HouseEnroute_Ch3
	channel 4 ; from placeholder (it was the fanmade version)

Music_HouseEnroute_Ch1:
	tempo 160
	volume 7, 7
	pitch_offset -1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	note E_, 4
	note A_, 4
	note F#, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note D#, 4
	note C#, 4
	octave 3
	note B_, 4
	note F#, 8
	note G#, 4
	note F#, 4
	note E_, 4
	note D#, 4
	note F#, 4
	note E_, 4
	note F#, 4
	note G#, 4
	note A_, 4
	note B_, 4
	octave 4
	note D#, 4
	note C#, 4
	octave 3
	note G#, 4
	note F#, 4
	note E_, 8
	note D#, 4
	note C#, 4
	octave 2
	note B_, 4
	octave 3
	note F#, 4
	note D#, 4
	note F#, 4
	note E_, 2
	note D#, 2
	rest 8
	duty_cycle 3
	note D#, 5
	rest 3
	duty_cycle 2
	note F#, 4
	note D#, 4
	note F#, 4
	note G#, 2
	note F_, 2
	rest 8
	duty_cycle 3
	note F_, 5
	rest 3
	duty_cycle 2
	octave 2
	note A_, 4
	note B_, 4
	octave 3
	note C#, 4
	note E_, 4
	note F#, 4
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	octave 4
	note C#, 4
	note D#, 4
	rest 8
	note F#, 4
	rest 16
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	vibrato 8, 2, 2
	note_type 6, 10, 5
	octave 4
	note D#, 1
	note E_, 1
	rest 2
	octave 3
	note B_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	rest 8
	note E_, 8
	note D_, 1
	note D#, 1
	rest 2
	octave 3
	note B_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	rest 8
	octave 3
	note B_, 8
.sub1loop1:
	octave 4
	note C#, 2
	rest 2
	note D#, 2
	rest 2
	note C#, 2
	octave 3
	note B_, 4
	rest 2
	sound_loop 2, .sub1loop1
	octave 4
	note D#, 8
	note C#, 8
	note D#, 2
	note E_, 2
	rest 2
	note D#, 2
	rest 2
	octave 3
	note B_, 4
	rest 2
	sound_ret

Music_HouseEnroute_Ch2:
	duty_cycle 3
	pitch_inc_switch
.mainloop:
	vibrato 19, 5, 4
	note_type 6, 12, 7
	sound_call .sub1
	rest 2
	sound_call .sub1
	note G_, 1
	note G#, 1
	note A_, 4
	octave 3
	note E_, 1
	rest 1
	octave 1
	note A_, 4
	octave 2
	note E_, 2
	octave 3
	note E_, 1
	rest 1
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	rest 2
	octave 3
	note E_, 1
	rest 3
	octave 2
	note C#, 2
	note E_, 2
	octave 3
	note C#, 1
	rest 3
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 1
	octave 1
	note B_, 2
	rest 2
	octave 2
	note F#, 2
	octave 3
	note D#, 1
	rest 1
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	rest 2
	octave 3
	note F#, 1
	rest 3
	octave 2
	note D#, 2
	note F#, 2
	octave 3
	note F#, 1
	rest 3
	octave 1
	note G#, 4
	octave 3
	note D#, 1
	rest 1
	octave 1
	note G#, 4
	octave 2
	note D#, 2
	octave 3
	note D#, 1
	rest 1
	octave 1
	note G#, 2
	octave 2
	note D#, 2
	rest 2
	octave 3
	note D#, 1
	rest 3
	octave 1
	note B_, 2
	octave 2
	note D#, 2
	note B_, 1
	rest 3
	note C#, 4
	octave 3
	note G#, 1
	rest 1
	octave 2
	note C#, 2
	rest 2
	note G#, 2
	octave 3
	note G#, 1
	rest 1
	octave 2
	note C#, 2
	note E_, 2
	note C_, 2
	octave 3
	note G#, 1
	rest 1
	octave 2
	note C_, 2
	note E_, 2
	note G#, 2
	octave 3
	note G#, 1
	rest 1
	octave 2
	note C_, 2
	octave 1
	note A_, 4
	octave 3
	note A_, 1
	rest 1
	octave 2
	note E_, 2
	note A_, 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 1
	note B_, 2
	rest 2
	octave 2
	note B_, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	octave 1
	note B_, 5
	rest 3
	note G#, 4
	octave 3
	note F#, 1
	rest 1
	octave 2
	note D#, 2
	note G#, 2
	note D#, 2
	octave 3
	note F#, 1
	rest 1
	octave 1
	note C#, 2
	rest 2
	octave 3
	note C#, 1
	rest 1
	note F_, 1
	rest 1
	note G#, 1
	rest 1
	octave 2
	note C#, 5
	rest 3
	octave 1
	note F#, 4
	octave 3
	note A_, 1
	rest 3
	octave 1
	note A_, 4
	octave 3
	note A_, 1
	rest 3
	octave 2
	note C#, 4
	octave 3
	note A_, 1
	rest 3
	octave 2
	note F#, 4
	octave 3
	note E_, 1
	rest 3
	octave 1
	note B_, 4
	rest 2
	note B_, 2
	octave 2
	note D#, 2
	note F#, 2
	octave 3
	note D#, 4
	volume_envelope 1, -7
	octave 1
	note B_, 16
	sound_jump .mainloop

.sub1:
	octave 1
	note E_, 2
	rest 2
	octave 3
	note G#, 1
	rest 3
	octave 1
	note B_, 2
	rest 2
	octave 4
	note C#, 1
	rest 1
	octave 2
	note E_, 3
	rest 1
	octave 1
	note E_, 2
	note G#, 2
	note B_, 2
	octave 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 1
	note B_, 2
	rest 2
	octave 3
	note F#, 1
	rest 3
	octave 1
	note F#, 2
	rest 2
	octave 3
	note B_, 1
	rest 1
	octave 1
	note B_, 3
	rest 1
	note D#, 2
	note F#, 2
	note B_, 2
	octave 2
	note D#, 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	octave 1
	note F#, 4
	octave 3
	note E_, 1
	rest 3
	octave 2
	note C#, 4
	octave 3
	note E_, 1
	rest 3
	octave 1
	note A_, 4
	octave 3
	note E_, 1
	rest 3
	octave 2
	note C#, 4
	octave 3
	note E_, 1
	rest 3
	octave 1
	note B_, 4
	octave 3
	note F#, 1
	rest 3
	octave 2
	note F#, 4
	octave 3
	note A_, 1
	rest 3
	octave 1
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G#, 2
	rest 2
	note F#, 2
	sound_ret

Music_HouseEnroute_Ch3:
	vibrato 12, 1, 3
	note_type 6, 1, -4
.mainloop:
	sound_call .sub1
	note F#, 2
	rest 2
	note D#, 4
	rest 2
	sound_call .sub1
	note B_, 2
	rest 2
	note F#, 4
	rest 2
	note C#, 8
	note D#, 8
	note E_, 8
	note G#, 8
	note F#, 16
	rest 4
	note E_, 4
	note D#, 4
	note C#, 4
	octave 4
	note B_, 8
	octave 5
	note C#, 8
	note D#, 8
	note F#, 8
	note E_, 16
	rest 4
	note D#, 4
	note C#, 4
	note D#, 4
	octave 4
	note A_, 4
	note F#, 4
	note A_, 4
	note A#, 2
	note B_, 2
	rest 8
	volume_envelope 1, -3
	octave 3
	note F#, 5
	rest 3
	volume_envelope 1, -4
	octave 4
	note B_, 4
	note G#, 4
	note B_, 4
	octave 5
	note C_, 2
	note C#, 2
	rest 8
	volume_envelope 1, -3
	octave 3
	note G#, 5
	rest 3
	volume_envelope 1, -4
	octave 4
	note F#, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note A_, 4
	octave 5
	note D#, 1
	note E_, 3
	note D#, 4
	note C#, 4
	octave 4
	note B_, 4
	rest 8
	note B_, 4
	rest 16
	sound_jump .mainloop

.sub1:
	octave 5
	note D#, 1
	note E_, 1
	rest 2
	note G#, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 2
	note G#, 2
	rest 8
	volume_envelope 1, 0
	octave 4
	note E_, 2
	note G#, 2
	note B_, 2
	octave 5
	note E_, 2
	volume_envelope 1, -3
	note D_, 1
	note D#, 1
	rest 2
	note F#, 2
	rest 2
	note E_, 2
	rest 2
	note G#, 2
	note F#, 2
	rest 8
	volume_envelope 1, 0
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	note B_, 2
	octave 5
	note D#, 2
	volume_envelope 1, -3
.sub1loop1:
	note C#, 2
	rest 2
	note D#, 2
	rest 2
	note E_, 2
	note F#, 4
	rest 2
	sound_loop 2, .sub1loop1
	note F#, 8
	note E_, 8
	note F#, 2
	note G#, 2
	rest 2
	sound_ret
