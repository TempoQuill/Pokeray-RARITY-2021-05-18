Music_Surf:
; wav
; AUG 14 2019
	channel_count 3
	channel 1, Music_Surf_Ch1
	channel 2, Music_Surf_Ch2
	channel 3, Music_Surf_Ch3

Music_Surf_Ch1:
	tempo 245
	volume 7, 7
	note_type 12, 10, 4
	rest 3
.mainloop:
	duty_cycle 3
	vibrato 9, 4, 3
	note_type 12, 10, 4
	sound_call .sub1
	note A#, 2
	note G#, 2
	note G_, 2
	note D#, 1
	note C_, 3
	note D#, 1
	note D_, 1
	octave 2
	note A#, 1
	sound_call .sub1
	note G_, 3
	note F_, 1
	note D#, 1
	note G_, 1
	note F_, 4
	note G_, 1
	note G#, 1
	note A#, 3
	note A#, 2
	note_type 4, 10, 4
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	note_type 12, 10, 4
	octave 3
	note A#, 1
	note A_, 1
	note G#, 1
	note F_, 1
	note D_, 1
	octave 2
	note A#, 1
	octave 3
	note G_, 2
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note A#, 2
	note D#, 1
	note A#, 1
	octave 4
	note D#, 1
	note D_, 1
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G_, 1
	note A#, 1
	octave 4
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 2
	duty_cycle 2
	vibrato 0, 1, 3
	volume_envelope 5, 7
	octave 5
	note D#, 1
	note G_, 1
	note A#, 1
	octave 6
	note D_, 1
	note D#, 1
	duty_cycle 3
	volume_envelope 3, -1
	octave 3
	note D_, 1
	note D#, 1
	note G_, 1
	note A#, 1
	octave 4
	note D_, 1
	volume_envelope 10, 8
	note D#, 6
	octave 3
	note A#, 3
	note G_, 3
	note A#, 3
	note F_, 1
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 4
	note G#, 2
	note G_, 6
	note A_, 6
	note A#, 8
	rest 1
	duty_cycle 2
	note A#, 1
	octave 4
	note C_, 1
	note D_, 1
	note_type 3, 10, 8
	note D#, 14
	rest 2
	note D#, 4
	note F_, 4
	note G_, 4
	note D#, 4
	rest 4
	note D_, 1
	note D#, 7
	note_type 12, 10, 8
	note F_, 1
	note D_, 4
	note C_, 1
	note D_, 1
	note D#, 1
	note A#, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note G_, 1
	note D#, 3
	note G_, 1
	rest 1
	note F_, 1
	note D_, 4
	octave 3
	note A#, 1
	note G#, 1
	note G_, 8
	duty_cycle 3
	note_type 3, 12, 4
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 4
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 4
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	volume_envelope 6, 4
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	sound_jump .mainloop

.sub1:
	octave 3
	note D#, 1
	note A#, 1
	octave 4
	note D#, 1
	octave 3
	note A#, 1
	note G#, 1
	sound_ret

Music_Surf_Ch2:
	duty_cycle 2
	note_type 8, 12, 3
	octave 2
	note A#, 1
	note F_, 1
	octave 1
	note A#, 1
.mainloop:
	duty_cycle 2
	vibrato 6, 6, 4
	sound_call .sub1
	sound_call .sub3
	sound_call .sub5
	sound_call .sub6
	sound_call .sub1
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note G_, 8
	duty_cycle 3
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	rest 2
	duty_cycle 2
	volume_envelope 12, 3
	sound_call .sub4
	sound_call .sub6
	sound_call .sub7
	duty_cycle 2
	volume_envelope 12, 3
	octave 2
	note D#, 4
	duty_cycle 3
	octave 3
	note D#, 1
	note G_, 1
	duty_cycle 2
	octave 1
	note A#, 4
	duty_cycle 3
	octave 3
	note D_, 1
	note F#, 1
	duty_cycle 2
	octave 1
	note A_, 4
	duty_cycle 3
	octave 3
	note C#, 1
	note F_, 1
	sound_call .sub2
	sound_call .sub7
	sound_call .sub6
	sound_call .sub3
	sound_call .sub5
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note A#, 4
	octave 2
	note A#, 4
	note G#, 4
	note F_, 4
	note D_, 4
	octave 1
	note A#, 1
	sound_call .sub2
	sound_call .sub7
	sound_call .sub6
	sound_call .sub3
	sound_call .sub6
	sound_call .sub7
	duty_cycle 2
	volume_envelope 12, 3
	octave 2
	note D#, 4
	note F_, 4
	note G_, 4
	note G#, 4
	note G_, 4
	note F_, 4
	sound_jump .mainloop

.sub1:
	note_type 3, 12, 3
	octave 2
	note D#, 8
	duty_cycle 3
	octave 2
	note G_, 1
	note A#, 1
	rest 2
	volume_envelope 6, 3
	note G_, 1
	note A#, 1
	rest 2
	volume_envelope 12, 3
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note G_, 8
	duty_cycle 3
	octave 2
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
.sub2:
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note G#, 8
	duty_cycle 3
	octave 2
	note G#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	note C_, 1
	note G#, 1
	rest 2
	volume_envelope 6, 3
	note C_, 1
	note G#, 1
	rest 2
	sound_ret

.sub3:
	duty_cycle 2
	volume_envelope 12, 3
	octave 2
	note D#, 8
	duty_cycle 3
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	duty_cycle 2
	octave 2
	note D_, 4
.sub4:
	note C_, 4
.sub4_f7:
	duty_cycle 3
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	sound_ret

.sub5:
	duty_cycle 2
	volume_envelope 12, 3
	octave 2
	note C_, 4
	duty_cycle 3
	note A_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note A_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	note C_, 1
	note G_, 1
	rest 2
	volume_envelope 6, 3
	note C_, 1
	note G_, 1
	rest 2
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note A#, 8
	duty_cycle 3
	octave 2
	note G#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G#, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note A#, 1
	octave 3
	note F_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note A#, 1
	octave 3
	note F_, 1
	rest 2
	sound_ret

.sub6:
	duty_cycle 2
	volume_envelope 12, 3
	octave 1
	note A#, 8
	duty_cycle 3
	octave 2
	note F_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note F_, 1
	octave 3
	note D#, 1
	rest 2
	volume_envelope 12, 3
	octave 2
	note G#, 1
	octave 3
	note F_, 1
	rest 2
	volume_envelope 6, 3
	octave 2
	note G#, 1
	octave 3
	note F_, 1
	rest 2
	sound_ret

.sub7:
	duty_cycle 2
	volume_envelope 12, 3
	octave 2
	note D#, 8
	sound_jump .sub4_f7

Music_Surf_Ch3:
	note_type 3, 1, 4
	rest 8
.mainloop:
	vibrato 15, 1, 4
	note_type 3, 1, 4
	octave 5
	note D#, 8
	note D#, 8
	note F_, 8
	note F#, 1
	note G_, 7
	note F_, 8
	note D#, 8
	note G_, 1
	note G#, 15
	note G_, 4
	note F_, 4
	note F#, 1
	note G_, 15
	rest 4
	note F_, 4
	note D#, 12
	note D_, 1
	note D#, 3
	note F_, 4
	note D#, 4
	note C_, 16
	note D_, 4
	note D#, 3
	rest 1
	note D#, 12
	note D_, 4
	rest 4
	note D#, 3
	note E_, 1
	note F_, 12
	volume_envelope 1, 2
	octave 4
	note A#, 4
	octave 5
	note C_, 4
	note D_, 3
	rest 1
	note D#, 12
	note D_, 4
	note D#, 4
	note F_, 4
	note G_, 16
	note D#, 4
	note A#, 3
	note B_, 1
	note_type 6, 1, 2
	octave 6
	note C_, 10
	note_type 4, 1, 2
	note C_, 1
	note D_, 1
	note C_, 1
	note_type 3, 1, 2
	octave 5
	note B_, 16
	note G_, 4
	ntoe F_, 4
	note G_, 4
	note D#, 2
	rest 6
	note D_, 1
	note D#, 7
	note G_, 4
	note F_, 16
	note D#, 4
	note D_, 4
	note_type 6, 1, 2
	note D#, 12
	rest 6
	note_type 3, 1, -3
	note D#, 4
	note G_, 4
	note A#, 3
	rest 1
	note A#, 1
	note B_, 1
	octave 6
	note C_, 10
	octave 5
	note A#, 4
	note G#, 4
	note A#, 4
	note G#, 4
	note G_, 4
	rest 4
	octave 4
	note A#, 12
	octave 5
	note E_, 1
	note F_, 15
	note D#, 4
	note F_, 3
	rest 1
	note F#, 1
	note G_, 11
	rest 4
	note F_, 4
	note G_, 4
	note D#, 16
	note D_, 1
	note D#, 3
	note G_, 4
	note F_, 4
	note C_, 4
	rest 4
	note C_, 8
	note D#, 4
	note D_, 1
	note D#, 15
	note D_, 4
	note C_, 3
	note C#, 1
	note D_, 8
	rest 4
	vibrato 0, 1, 4
	volume_envelope 1, -2
	note G_, 4
	note G#, 4
	note A#, 4
	octave 6
	note C_, 14
	rest 2
	note C_, 4
	note D_, 4
	note D#, 4
	octave 5
	note A#, 4
	rest 4
	octave 6
	note F_, 1
	note F#, 1
	note_type 6, 1, -2
	note G_, 3
	note G#, 2
	note F_, 8
	note D#, 2
	note F_, 2
	note G_, 8
	note F_, 2
	note D#, 2
	note C_, 6
	octave 5
	note A#, 2
	rest 2
	note G#, 2
	note A#, 8
	note G_, 2
	note F_, 2
	note D#, 16
	rest 8
	sound_jump .mainloop
