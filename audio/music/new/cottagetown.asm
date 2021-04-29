Music_CottageTown:
; JUL 26 2019
	channel_count 3
	channel 1, Music_CottageTown_Ch1
	channel 2, Music_CottageTown_Ch2
	channel 3, Music_CottageTown_Ch3

Music_CottageTown_Ch1:
	tempo 175
	volume 7, 7
	duty_cycle 2
	vibrato 9, 3, 2
	note_type 6, 10, 5
	rest 4
.mainloop:
	octave 3
	note F_, 4
	note F#, 4
	note G#, 4
	octave 4
	note C_, 8
	octave 3
	note D#, 4
	note F_, 4
	note F#, 4
	note F_, 4
	note D#, 4
	note C#, 4
	note G#, 8
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note G#, 4
	note F#, 8
	note G#, 8
	note F_, 8
	note F_, 4
	note G#, 4
	octave 4
	note C#, 4
	octave 3
	note G#, 8
	note F_, 2
	note G#, 2
	octave 4
	note C_, 8
	rest 4
	octave 3
	note G#, 2
	note F#, 2
	duty_cycle 3
	volume_envelope 4, -7
	note G#, 16
	note F#, 16
	note F_, 16
	note D#, 16
	duty_cycle 0
	volume_envelope 7, -7
	note C#, 4
	note A#, 8
	note G#, 8
	note F#, 4
	note F_, 4
	note D#, 4
	note F_, 8
	note A#, 8
	octave 4
	note C#, 8
	note F_, 4
	duty_cycle 2
	volume_envelope 10, 5
	octave 3
	note F_, 2
	note D#, 2
	note C#, 12
	note F#, 8
	note G#, 4
	note F#, 4
	note F_, 8
	octave 4
	note C#, 1
	rest 3
	note F_, 1
	rest 11
	note C#, 1
	rest 3
	note F_, 1
	rest 7
	sound_jump .mainloop

Music_CottageTown_Ch2:
	duty_cycle 3
	note_type 6, 12, 6
	rest 4
.mainloop:
	sound_call .sub1
	octave 1
	note F#, 4
	octave 2
	note A#, 1
	rest 3
	octave 3
	note F#, 1
	rest 3
	octave 2
	note A#, 1
	rest 3
	octave 1
	note A#, 4
	sound_call .sub2
	octave 1
	note G#, 4
	sound_call .sub2
	octave 1
	note G#, 4
	octave 3
	note C_, 1
	rest 3
	note F#, 1
	rest 3
	note G#, 1
	rest 3
	sound_call .sub1
	octave 2
	note D#, 4
	octave 3
	note C#, 1
	rest 3
	note A#, 1
	rest 3
	note C#, 1
	rest 3
	octave 2
	note C_, 4
	octave 3
	note D#, 1
	rest 3
	note F#, 1
	rest 3
	note D#, 1
	rest 3
	octave 1
	note A#, 4
	octave 3
	note F_, 1
	rest 3
	note G#, 1
	rest 3
	note F_, 1
	rest 3
	octave 1
	note G#, 4
	sound_call .sub2
	octave 1
	note A_, 4
	octave 3
	note C#, 1
	rest 3
	note F_, 1
	rest 3
	note C#, 1
	rest 3
	octave 1
	note B_, 4
	octave 3
	note D#, 1
	rest 3
	note F#, 1
	rest 3
	note D#, 1
	rest 3
	octave 2
	note C#, 4
	octave 3
	note F_, 1
	rest 3
	note G#, 1
	rest 3
	octave 2
	note C#, 1
	rest 3
	note C#, 4
	octave 3
	note F_, 1
	rest 3
	note G#, 1
	rest 3
	octave 1
	note G#, 4
	sound_jump .mainloop

.sub1:
	octave 2
	note C#, 4
	note G#, 1
	rest 3
	octave 3
	note F_, 1
	rest 3
	octave 2
	note G#, 1
	rest 3
	note C_, 4
	note G#, 1
	rest 3
	octave 3
	note F#, 1
	rest 3
	octave 2
	note G#, 1
	rest 3
	octave 1
	note A#, 4
	octave 3
	note C#, 1
	rest 3
	note G#, 1
	rest 3
	note C#, 1
	rest 3
	octave 1
	note G#, 4
	octave 3
	note C_, 1
	rest 3
	note G#, 1
	rest 3
	note C_, 1
	rest 3
	endchannel

.sub2:
	octave 3
	note C#, 1
	rest 3
	note G#, 1
	rest 3
	note C#, 1
	rest 3
	endchannel

Music_CottageTown_Ch3:
	vibrato 13, 1, 3
.mainloop:
	note_type 6, 1, 3
	octave 4
	note G#, 2
	octave 5
	note C_, 2
	note C#, 4
	note D#, 4
	note F_, 4
	note G_, 1
	note G#, 11
	note C#, 8
	note C_, 1
	note C#, 3
	note D#, 4
	note F_, 4
	note C_, 8
	note C#, 4
	note D#, 4
	note C#, 4
	note A_, 1
	note A#, 11
	note C#, 12
	note C_, 1
	note C#, 3
	note F_, 4
	note D#, 16
	rest 12
	volume_envelope 1, 1
	octave 4
	note G#, 2
	octave 5
	note D#, 2
	note F_, 12
	note G_, 1
	note G#, 3
	note G#, 8
	octave 4
	note G#, 4
	octave 5
	note C#, 8
	note C_, 4
	note C#, 4
	note D#, 4
	note F_, 4
	note G#, 4
	note F#, 4
	note F_, 4
	note F#, 12
	note F_, 8
	note D#, 4
	note C#, 4
	note C_, 4
	note C#, 16
	rest 12
	note C#, 2
	note D#, 2
	note E_, 1
	note F_, 11
	note D#, 8
	note C#, 4
	note C_, 4
	note_type 12, 1, 1
	note C#, 10
	rest 6
	sound_jump .mainloop
