Music_StampTown:
; APR 1 2021
	channel_count 3
	channel 1, Music_StampTown_Ch1
	channel 2, Music_StampTown_Ch2
	channel 3, Music_StampTown_Ch3
	channel 4 ; leftover from Yoshi's 2P match bgm

Music_StampTown_Ch1:
	tempo 142
	volume 7, 7
	pitch_offset -1
	duty_cycle 3
	vibrato 14, 4, 4
	note_type 12, 4, -7
	octave 3
	note G_, 8
	note F_, 4
	note D#, 4
	note C#, 4
	note C_, 4
	octave 2
	note A#, 4
	octave 3
	note A#, 4
.mainloop:
	duty_cycle 0
	volume_envelope 10, 1
	sound_call .sub1
	note G_, 2
	note C#, 1
	note F_, 1
	note D#, 2
	note F_, 1
	note D#, 1
	note G_, 2
	note G_, 1
	note D#, 1
	note G#, 2
	note A#, 2
	note G#, 2
	note D#, 1
	note F_, 1
	note G#, 2
	note F_, 1
	note G#, 1
	note A#, 2
	note G#, 1
	note D#, 1
	note G_, 2
	note A#, 2
	sound_call .sub1
	note A#, 2
	note D#, 1
	note G#, 1
	note G_, 2
	note A#, 1
	note D#, 1
	note G#, 2
	note G_, 2
	note F_, 2
	note D_, 1
	note F_, 1
	duty_cycle 3
	volume_envelope 13, 7
	note G_, 12
	duty_cycle 0
	volume_envelope 10, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	note G#, 1
	note D#, 1
	note G#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 2
	note G#, 2
	note G#, 2
	note G#, 1
	note A#, 1
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note F_, 2
	note G_, 1
	note G#, 1
	note F_, 2
	note D_, 2
	note D#, 2
	note D#, 1
	note F_, 1
	note G_, 2
	note D#, 2
.loop1:
	sound_call .sub2
	sound_loop 3, .loop1
	octave 3
	note C_, 4
	duty_cycle 3
	volume_envelope 3, -7
	note D#, 4
	note G#, 4
	octave 4
	note C_, 4
	octave 3
	note G#, 8
	note A#, 8
	duty_cycle 0
	volume_envelope 10, 1
	sound_call .sub2
	octave 3
	note C_, 2
.loop2:
	note D#, 4
	sound_loop 7, .loop2
	note G_, 2
	note G#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note D#, 1
	note G_, 1
	note G#, 2
	note D#, 2
	octave 4
	note C_, 1
	octave 3
	note G#, 1
	note D#, 1
	note A#, 1
	note G#, 2
	note A#, 2
	note G#, 2
	note A#, 2
	note G#, 2
	note D#, 2
	note G#, 2
	note C#, 1
	note G_, 1
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note F_, 2
	note C#, 2
	note G#, 2
	note F_, 2
	note G#, 2
	note D#, 2
	note G#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note G_, 4
	sound_jump .mainloop

.sub1:
	octave 3
	note D#, 2
	note G#, 1
	note C_, 1
	note D#, 2
	note C_, 1
	note D#, 1
	note G_, 2
	note G#, 1
	note D#, 1
	note A#, 2
	octave 4
	note C#, 1
	octave 3
	note G#, 1
	octave 4
	note C_, 2
	octave 3
	note D#, 1
	note G#, 1
	note A#, 2
	note D#, 1
	note F_, 1
	note G#, 2
	note C_, 1
	note D#, 1
	note F_, 2
	note C_, 2
	sound_ret

.sub2:
	note G#, 2
	note G#, 1
	note A#, 1
	octave 4
	note C_, 2
	octave 3
	note G#, 1
	note A#, 1
	note G#, 2
	note D#, 1
	note F_, 1
	note G#, 2
	note D#, 2
	octave 2
	note F_, 1
	note G#, 1
	octave 3
	note C#, 1
	note F_, 1
	note G#, 1
	note F_, 1
	note D_, 1
	octave 2
	note A#, 1
	note G_, 1
	note A#, 1
	octave 3
	note C#, 1
	note G_, 1
	note A#, 1
	note G_, 1
	note C#, 1
	octave 2
	note A#, 1
	sound_ret

Music_StampTown_Ch2:
	duty_cycle 2
	vibrato 10, 4, 2
	note_type 12, 13, 1
	octave 2
	note D#, 1
	rest 1
	note D#, 1
	note A#, 1
	volume_envelope 14, 3
	octave 3
	note D#, 4
	note C#, 4
	note C_, 4
	octave 2
	note A#, 4
	note G#, 4
	note G_, 4
	volume_envelope 13, 1
	note D#, 1
	note A#, 1
	octave 3
	note D#, 1
	note G_, 1
.mainloop:
	duty_cycle 1
	sound_call .sub1
	note C_, 6
	volume_envelope 12, 4
	octave 3
	note D#, 2
	note A#, 3
	note G#, 1
	note G_, 2
	note G#, 2
	note A#, 2
	note A#, 2
	octave 4
	note C_, 2
	note C#, 2
	volume_envelope 13, 7
	note C_, 8
	note D#, 6
	volume_envelope 12, 4
	octave 3
	note D#, 2
	sound_call .sub1
	note G#, 8
	volume_envelope 13, 4
	note G_, 3
	note F_, 1
	note D#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	octave 3
	note A#, 2
	volume_envelope 14, 7
	octave 4
	note D#, 15
	note_type 6, 9, 1
	rest 1
	note E_, 1
	note_type 12, 12, 4
	note F_, 3
	note D#, 1
	note C#, 2
	note C_, 2
	note D#, 6
	note C_, 2
	note C#, 3
	note C_, 1
	octave 3
	note A#, 2
	note G#, 2
	volume_envelope 13, 7
	note A#, 8
	sound_call .sub2
	rest 4
	volume_envelope 13, 1
	note D#, 2
	note D#, 2
	volume_envelope 12, 4
	note D#, 8
	sound_call .sub2
	rest 3
	volume_envelope 13, 1
	note F#, 1
	note G_, 2
	note G_, 2
	note_type 12, 12, 4
	note G_, 4
	note G#, 2
	note G#, 1
	note G_, 1
	note F_, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	rest 2
	note F_, 1
	note G_, 1
	note G#, 2
	note F_, 2
	note G_, 2
	note G_, 1
	note G#, 1
	note A#, 4
	duty_cycle 2
	volume_envelope 14, 3
	octave 1
	note G#, 8
	duty_cycle 1
	volume_envelope 9, 1
	octave 4
	note C_, 2
	note C_, 1
	octave 3
	note A#, 1
	note G#, 2
	note D#, 2
	note F_, 2
	note F_, 1
	note G_, 1
	note G#, 2
	note F_, 2
	note G_, 2
	duty_cycle 2
	volume_envelope 14, 3
	octave 2
	note D#, 1
	note F_, 1
	note G_, 2
	note D#, 2
	volume_envelope 14, 1
	sound_call .sub3
	note A#, 2
	sound_call .sub3
	note G#, 2
	duty_cycle 2
	octave 2
	note C#, 2
	duty_cycle 1
	octave 3
	note C#, 2
	duty_cycle 2
	octave 2
	note D_, 2
	duty_cycle 1
	note G#, 2
	duty_cycle 2
	note D#, 2
	duty_cycle 1
	note A#, 2
	duty_cycle 2
	octave 1
	note D#, 2
	duty_cycle 1
	octave 2
	note A#, 2
.loop1:
	sound_call .sub3
	octave 3
	note C_, 2
	duty_cycle 2
	octave 2
	note C#, 2
	duty_cycle 1
	octave 3
	note C_, 2
	duty_cycle 2
	octave 2
	note C_, 2
	duty_cycle 1
	octave 3
	note C_, 2
	sound_loop 4, .loop1
	duty_cycle 2
	octave 1
	note C#, 2
	duty_cycle 1
	octave 2
	note G#, 2
	duty_cycle 2
	octave 1
	note F_, 2
	duty_cycle 1
	octave 2
	note G#, 2
	duty_cycle 2
	octave 1
	note G#, 2
	duty_cycle 1
	octave 2
	note G#, 2
	duty_cycle 2
	note C#, 2
	duty_cycle 1
	note G#, 2
	duty_cycle 2
	octave 1
	note D#, 2
	duty_cycle 1
	octave 2
	note A#, 2
	duty_cycle 2
	octave 1
	note A#, 2
	duty_cycle 1
	octave 3
	note C#, 2
	duty_cycle 2
	octave 2
	note D#, 2
	duty_cycle 1
	octave 3
	note D#, 2
	note A#, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 12, 4
	octave 4
	note C_, 3
	octave 3
	note A#, 1
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note C#, 2
	note F_, 2
	volume_envelope 13, 7
	note D#, 8
	sound_ret

.sub2:
	note_type 6, 12, 4
	note C_, 4
	note C_, 2
	note C#, 2
	note D#, 4
	note C#, 4
	note C_, 4
	octave 3
	note G#, 3
	octave 4
	note D_, 1
	note D#, 4
	note C_, 4
	rest 4
	volume_envelope 13, 1
	note F_, 2
	note F_, 2
	volume_envelope 12, 4
	note F_, 8
	sound_ret

.sub3:
	duty_cycle 2
	octave 1
	note G#, 2
	duty_cycle 1
	octave 3
	note C_, 2
	duty_cycle 2
	octave 2
	note D#, 2
	duty_cycle 1
	sound_ret

Music_StampTown_Ch3:
	vibrato 20, 2, 3
	note_type 6, 1, 4
	octave 5
	note D#, 2
	rest 2
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 8
	note_type 8, 1, 4
	rest 2
	note D#, 2
	note F_, 2
	note G_, 2
	note G#, 2
	note A#, 2
	note_type 6, 1, 4
	note C_, 8
	note D_, 8
	note D#, 1
	note F_, 1
	note D#, 14
.mainloop:
	sound_call .sub1
	rest 3
	sound_call .sub1
	sound_call .sub2
	note G#, 1
	rest 3
	volume_envelope 1, 5
	note C#, 3
	rest 1
	volume_envelope 1, 6
	note G#, 1
	rest 3
	volume_envelope 1, 5
	note C_, 3
	rest 1
	volume_envelope 1, 6
	note G#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note G#, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	sound_call .sub2
	note G#, 1
	rest 3
	volume_envelope 1, 5
	note D_, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	rest 3
	volume_envelope 1, 5
	octave 3
	note D_, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	rest 3
	volume_envelope 1, 5
	octave 3
	note D#, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	rest 3
	sound_call .sub3
.loop1:
	sound_call .sub4
	note A#, 1
	rest 3
	sound_call .sub4
	note G#, 1
	sound_call .sub2
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	volume_envelope 1, 5
	octave 3
	note D_, 3
	rest 1
	volume_envelope 1, 6
	note G#, 1
	rest 3
	volume_envelope 1, 5
	note D#, 3
	rest 1
	volume_envelope 1, 6
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	sound_call .sub3
	sound_loop 3, .loop1
	volume_envelope 1, -4
	octave 5
	note D#, 3
	rest 1
	note D#, 2
	note C#, 2
	note C_, 4
	note C#, 4
	note D#, 10
	rest 2
	note C_, 4
	note C#, 3
	rest 1
	note C#, 2
	note D#, 2
	note F_, 4
	note D_, 4
	note D#, 14
	rest 2
	note C_, 3
	rest 1
	note C_, 2
	note C#, 2
	note D#, 4
	note C#, 4
	note C_, 4
	octave 4
	note G#, 3
	octave 5
	note D_, 1
	note D#, 4
	note C_, 4
	rest 4
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 8
	rest 3
	note F#, 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 8
	note G#, 2
.loop2:
	rest 2
	octave 4
	note G#, 6
	sound_loop 7, .loop2
	rest 2
	note A#, 2
	rest 1
	volume_envelope 1, 4
	note B_, 1
	octave 5
	note C_, 5
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note C_, 4
	note C#, 4
	note D#, 8
	octave 4
	note G#, 2
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 6
	note G_, 2
	note F_, 4
	note G_, 4
	note D#, 14
	rest 1
	note E_, 1
	note F_, 6
	note D#, 2
	note C#, 4
	note F_, 4
	note_type 8, 1, 4
	note D#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	note D#, 2
	note C#, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note_type 6, 1, 4
	note D#, 12
	volume_envelope 1, 5
	octave 2
	note D#, 2
	note G_, 2
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 5
	octave 2
	note G#, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note G#, 1
	rest 3
	volume_envelope 1, 5
	note D#, 3
	rest 1
	volume_envelope 1, 6
	note A#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note G#, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	rest 3
	volume_envelope 1, 5
	octave 3
	note D#, 3
	rest 1
	volume_envelope 1, 6
	note G#, 1
	rest 3
	sound_loop 2, .sub1
	volume_envelope 1, 5
	octave 2
	note D#, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note A#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note F_, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note A#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note G_, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note A#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note A#, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note A#, 1
	rest 3
	volume_envelope 1, 5
	note D#, 3
	rest 1
	volume_envelope 1, 6
	note A#, 1
	rest 3
	volume_envelope 1, 5
	note C#, 3
	rest 1
	volume_envelope 1, 6
	note A#, 1
	rest 3
	volume_envelope 1, 5
	note C_, 3
	rest 1
	volume_envelope 1, 6
	note G#, 1
	rest 3
	volume_envelope 1, 5
	octave 2
	note A#, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note G_, 1
	sound_ret

.sub2:
	rest 1
	volume_envelope 1, 5
	octave 3
	note C_, 2
	note C#, 3
	rest 1
	volume_envelope 1, 6
	sound_ret

.sub3:
	volume_envelope 1, 5
	octave 2
	note D#, 3
	rest 1
	volume_envelope 1, 6
	octave 3
	note A#, 1
	rest 3
	sound_ret

.sub4:
	volume_envelope 1, 5
	octave 2
	note G#, 3
	rest 1
	volume_envelope 1, 6
	octave 4
	note C_, 1
	rest 3
	volume_envelope 1, 5
	octave 3
	note D#, 3
	rest 1
	volume_envelope 1, 6
	sound_ret
