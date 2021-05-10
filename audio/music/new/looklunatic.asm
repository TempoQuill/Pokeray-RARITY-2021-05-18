Music_LookLunatic:
; SEP 19 2019
	channel_count 3
	channel 1, Music_LookLunatic_Ch1
	channel 2, Music_LookLunatic_Ch2
	channel 3, Music_LookLunatic_Ch3
	channel 4 ; from placeholder

Music_LookLunatic_Ch1:
	tempo 267
	volume 7, 7
	pitch_offset -1
	duty_cycle 2
	vibrato 7, 5, 2
	note_type 6, 10, 3
	octave 3
	note F#, 2
	note F_, 2
	note D_, 8
.mainloop:
	note F#, 2
	note F_, 2
	note E_, 2
	note D#, 2
	sound_call .sub1
	note E_, 2
	note F_, 2
	note F#, 2
	note G_, 2
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note F#, 1
	rest 3
	note C#, 1
	note E_, 1
	note F#, 1
	octave 4
	note C#, 1
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	sound_ret

Music_LookLunatic_Ch2:
	duty_cycle 3
	note_type 6, 10, 5
	rest 6
	octave 1
	note D_, 1
	note F#, 1
	note B_, 2
	note F#, 1
	note B_, 1
	octave 2
	note F#, 4
	note B_, 4
.mainloop:
	octave 1
	note B_, 1
	rest 1
	octave 2
	note D_, 1
	rest 1
	note F#, 1
	rest 1
	note B_, 1
	rest 1
	octave 1
	note F#, 1
	rest 1
	octave 2
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	note A#, 1
	rest 1
	sound_jump .mainloop

Music_LookLunatic_Ch3:
	vibrato 10, 2, 3
	note_type 3, 1, -4
	octave 4
	note A#, 1
	note B_, 3
	note A#, 4
	note B_, 16
.mainloop:
	octave 5
	note D#, 4
	note D_, 4
	note C#, 4
	note C_, 4
	sound_call .sub1
	note G_, 4
	note G#, 4
	note A_, 4
	note A#, 4
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 4
	note B_, 2
	rest 6
	note B_, 2
	rest 6
	note B_, 2
	rest 6
	note A#, 8
	note B_, 2
	rest 6
	note B_, 2
	rest 6
	sound_ret
