Music_TeamHavocTheme:
; wav
; NOV 10 2019
	channel_count 4
	channel 1, Music_TeamHavocTheme_Ch1
	channel 2, Music_TeamHavocTheme_Ch2
	channel 3, Music_TeamHavocTheme_Ch3
	channel 4, Music_TeamHavocTheme_Ch4

Music_TeamHavocTheme_Ch1:
	tempo 267
	volume 7, 7
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub3
	rest 4
	sound_call .sub2
	note G_, 16
	note G#, 16
	note A_, 16
	note A#, 16
	note B_, 16
	octave 4
	note C_, 8
	octave 3
	note B_, 8
	note A#, 8
	note A_, 4
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	note_type 3, 10, 6
	octave 3
	note G#, 2
	note A_, 2
	note A#, 2
	rest 2
	note A_, 2
	rest 2
	note G#, 2
	rest 2
	note G_, 2
	rest 2
	octave 5
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	sound_ret

.sub2:
	note G_, 12
	note D_, 2
	note G_, 2
	note A#, 8
	octave 4
	note D_, 8
	octave 3
	note A#, 12
	note G_, 2
	note A#, 2
	octave 4
	note D_, 8
	note G_, 8
	note D#, 16
	note C_, 16
	note A#, 8
	note F#, 8
	octave 5
	note D_, 1
	note D#, 7
	note C_, 8
	octave 3
	note G_, 12
	note D_, 2
	note G_, 2
	note A#, 8
	octave 4
	note D_, 8
	octave 3
	note A#, 12
	note G_, 2
	note A#, 2
	octave 4
	note D_, 16
	note D#, 16
	note D_, 16
	note C_, 16
	octave 3
	note A_, 8
	octave 4
	note C_, 4
	octave 3
	note D#, 2
	note F_, 2
	note F#, 16
	sound_ret

.sub3:
	octave 4
	note C_, 16
	octave 3
	note A_, 16
	note F#, 12
	note G#, 2
	note A_, 2
	note A#, 8
	note G_, 8
	note D_, 8
	octave 2
	note A#, 8
	octave 3
	note C_, 4
	octave 4
	note F#, 8
	note F_, 4
	note F#, 8
	note A_, 8
	octave 3
	note A#, 4
	octave 4
	note G_, 8
	note F#, 4
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note A#, 2
	rest 2
	note A_, 2
	rest 2
	note A#, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note D#, 2
	rest 2
	note D_, 2
	rest 2
	note F#, 16
	octave 4
	note C_, 16
	octave 3
	note A#, 16
	note G_, 12
	sound_ret


Music_TeamHavocTheme_Ch2:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub3
	sound_call .sub3
	sound_call .sub2
	sound_call .sub4
	sound_call .sub3
	sound_call .sub3
	sound_call .sub5
	sound_call .sub2
	sound_call .sub3
	sound_call .sub6
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	sound_call .sub2
	sound_call .sub3
	sound_call .sub3
	sound_call .sub2
	sound_call .sub4
	sound_call .sub7
	transpose 0, 1
	sound_call .sub8
	transpose 0, 2
	sound_call .sub8
	transpose 0, 3
	sound_call .sub8
	transpose 0, 4
	sound_call .sub8
	transpose 0, 5
	sound_call .sub8
	transpose 0, 0
	octave 2
	note C#, 2
	note F#, 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F#, 2
	note C#, 2
	note F#, 2
	note D_, 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	note D_, 2
	octave 1
	note A#, 2
	sound_jump Music_TeamHavocTheme_Ch2

.sub1:
	duty_cycle 3
	note_type 3, 10, 1
	octave 1
	note G_, 2
	note G_, 2
	volume_envelope 13, 3
	octave 2
	note D_, 16
	octave 1
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	sound_ret

.sub2:
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note D_, 4
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	sound_loop 4, .sub2
	sound_ret

.sub3:
	octave 2
	note C_, 4
	note F#, 1
	octave 3
	note D#, 1
	rest 2
	octave 2
	note D#, 4
	octave 3
	note C_, 1
	note D#, 1
	rest 2
	octave 2
	note F#, 4
	octave 3
	note C_, 1
	note D#, 1
	rest 2
	octave 2
	note D#, 4
	octave 3
	note C_, 1
	note D#, 1
	rest 2
	sound_ret

.sub4:
	octave 1
	note A_, 4
	octave 2
	note D#, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note C_, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note D#, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note C_, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	octave 1
	note A_, 4
	octave 2
	note D#, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note C_, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note D#, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	octave 2
	note F#, 4
	note A_, 1
	octave 3
	note C_, 1
	rest 2
	sound_ret

.sub5:
	octave 2
	note D_, 4
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note G_, 4
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note D_, 4
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	sound_jump .sub3

.sub6:
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note D_, 4
	note A#, 1
	octave 3
	note G_, 1
	rest 2
	octave 1
	note G_, 4
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note D_, 4
	sound_ret

.sub7:
	octave 2
	note G_, 4
	sound_jump .sub8_f7

.sub8:
	octave 1
	note G_, 4
.sub8_f7:
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note D_, 4
	note A#, 1
	octave 3
	note D_, 1
	rest 2
	sound_ret

Music_TeamHavocTheme_Ch3:
	sound_call .sub1
	note F#, 16
	rest 14
	vibrato 10, 1, 4
	sound_call .sub2
	sound_call .sub3
	sound_call .sub4
	note A_, 16
	rest 14
	vibrato 10, 1, 4
	sound_call .sub2
	note G_, 8
	volume_envelope 1, -1
	octave 3
	note C_, 1
	note D#, 1
	note F#, 1
	note A_, 1
	note F#, 1
	note A_, 1
	octave 4
	note C_, 1
	note D#, 1
	note C_, 1
	note D#, 1
	note F#, 1
	note A_, 1
	note F#, 1
	note A_, 1
	octave 5
	note C_, 1
	note D#, 1
	note F#, 1
	note D#, 1
	note C_, 1
	note D#, 1
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	sound_call .sub5
	transpose 0, 1
	sound_call .sub5
	transpose 0, 2
	sound_call .sub5
	transpose 0, 3
	sound_call .sub5
	transpose 0, 4
	sound_call .sub5
	transpose 0, 5
	sound_call .sub5
	transpose 0, 0
	note G#, 4
	note A_, 4
	note A#, 4
	octave 6
	note D_, 4
	sound_jump Music_TeamHavocTheme_Ch3

.sub1:
	vibrato 0, 1, 4
	note_type 6, 1, -2
	octave 6
	note F_, 1
	note F#, 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	note D_, 1
	note D#, 1
	note D_, 1
.sub1_f4:
	octave 5
	note A#, 8
	note G_, 8
	octave 6
	note D_, 8
	note A#, 8
	sound_ret

.sub2:
	volume_envelope 1, -3
	octave 5
	note F_, 1
	note F#, 1
	note G_, 6
	note F#, 2
	note G_, 6
	note F#, 2
	note F_, 6
	note E_, 2
	note F_, 6
	note F#, 2
	sound_ret

.sub3:
	note G_, 16
	rest 14
	vibrato 0, 1, 4
	volume_envelope 1, 4
	note C_, 1
	note D_, 1
	note D#, 4
	note C_, 4
	note F#, 4
	octave 6
	note D#, 4
	note C_, 14
	octave 5
	note F_, 1
	note F#, 1
	note G_, 4
	note D_, 4
	note A#, 4
	octave 6
	note G_, 4
	note D#, 6
	note D_, 2
	note D#, 6
	note C_, 1
	note C#, 1
	note D_, 6
	note C#, 2
.sub3loop1:
	octave 6
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 5
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	sound_loop 2, .sub3loop1
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note D#, 8
.sub3loop2:
	note D#, 1
	note F#, 1
	sound_loop 4, .sub3loop2
.sub3loop3:
	note D_, 1
	note G_, 1
	sound_loop 4, .sub3loop3
.sub3loop4:
	octave 5
	note A#, 1
	octave 6
	note D_, 1
	sound_loop 3, .sub3loop4
	sound_ret

.sub4:
	octave 5
	note A#, 1
	octave 6
	note D_, 1
	sound_jump .sub1_f4

.sub5:
	octave 4
	note A#, 1
	octave 5
	note D_, 1
	sound_loop 4, .sub5
	sound_ret

Music_TeamHavocTheme_Ch4:
	toggle_noise 5
.mainloop:
	sound_call .sub1
.loop1:
	sound_call .sub2
	sound_loop 15, .loop1
	sound_call .sub3
.loop2:
	sound_call .sub2
	sound_loop 7, .loop2
	sound_call .sub3
.loop3:
	sound_call .sub2
	sound_loop 3, .loop3
	sound_jump .mainloop

.sub1:
	drum_speed 3
	drum_note 12, 2
	drum_note 12, 2
	drum_note 9, 16
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 9, 8
	drum_note 1, 4
	drum_note 12, 4
	drum_note 5, 4
	drum_note 12, 4
	drum_note 1, 4
	sound_ret

.sub2:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 12, 4
	drum_note 5, 4
	drum_note 1, 4
	drum_note 12, 4
	drum_note 5, 4
	drum_note 12, 4
	drum_note 1, 4
	sound_ret

.sub3:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 9, 8
	drum_note 1, 4
	drum_note 12, 4
	drum_note 5, 4
	drum_note 12, 4
	drum_note 1, 4
	sound_ret
