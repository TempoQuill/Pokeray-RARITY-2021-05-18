Music_TheEnd:
; SEP 28 2019
	channel_count 2
	channel 1, Music_TheEnd_Ch1
	channel 2, Music_TheEnd_Ch2

Music_TheEnd_Ch1:
	tempo 139
	volume 7, 7
	duty_cycle 2
	note_type 12, 8, 3
	rest 16
.mainloop:
	volume_envelope 8, 3
	octave 3
	note C#, 4
	sound_call .sub1
	octave 2
	note A#, 4
	sound_call .sub1
	octave 3
	note C#, 4
	note A#, 4
	octave 4
	note C#, 4
	note F#, 4
	note A#, 4
	volume_envelope 4, 6
	note A#, 4
	volume_envelope 2, 7
	note A#, 4
	volume_envelope 1, 7
	note A#, 4
	sound_call .sub2
	octave 3
	note C#, 4
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 4
	octave 4
	note C#, 4
	note F_, 4
	note G#, 4
	volume_envelope 4, 6
	note G#, 4
	volume_envelope 2, 7
	note G#, 4
	volume_envelope 1, 7
	note G#, 4
.sub2:
	volume_envelope 8, 3
	octave 3
	note C_, 4
	note G#, 4
	octave 4
	note C_, 4
	note D#, 4
	note G#, 4
	volume_envelope 4, 6
	note G#, 4
	volume_envelope 2, 7
	note G#, 4
	volume_envelope 1, 7
	note G#, 4
	volume_envelope 8, 3
	sound_ret

Music_TheEnd_Ch2:
	duty_cycle 2
	note_type 12, 12, 2
	octave 5
	note C#, 4
	volume_envelope 6, 4
	note C#, 4
	volume_envelope 12, 2
	note D#, 4
	volume_envelope 6, 4
	note D#, 4
.mainloop:
	sound_call .sub1
	note F_, 4
	volume_envelope 12, 2
	note C#, 4
	note F_, 4
	note F#, 4
	sound_call .sub2
	note F_, 4
	note F#, 4
	note G#, 4
	volume_envelope 6, 4
	note G#, 4
	volume_envelope 3, 7
	note G#, 4
	volume_envelope 12, 2
	note F#, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note A#, 4
	transpose 0, 5
	sound_call .sub2
	transpose 0, 0
	note C#, 4
	volume_envelope 6, 4
	note C#, 4
	transpose 0, 7
	sound_call .sub2
	transpose 0, 0
	note F#, 4
	note F_, 4
	sound_call .sub2
	note C#, 4
	note D#, 4
	sound_call .sub1
	note F_, 16
	rest 16
	rest 8
	volume_envelope 12, 2
	note C#, 4
	note D#, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 12, 2
	note F_, 4
	volume_envelope 6, 4
	note F_, 4
	volume_envelope 3, 7
	note F_, 4
	volume_envelope 2, 7
	note F_, 4
	volume_envelope 1, 7
	sound_ret

.sub2:
	volume_envelope 12, 2
	note D#, 4
	volume_envelope 6, 4
	note D#, 4
	volume_envelope 3, 7
	note D#, 4
	volume_envelope 2, 7
	note D#, 4
	volume_envelope 1, 7
	note D#, 8
	volume_envelope 12, 2
	sound_ret
