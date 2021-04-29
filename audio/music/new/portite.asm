Music_Portite:
; JUL 25 2019
	channel_count 4
	channel 1, Music_Portite_Ch1
	channel 2, Music_Portite_Ch2
	channel 3, Music_Portite_Ch3
	channel 4, Music_Portite_Ch4

Music_Portite_Ch1:
	tempo 153
	volume 7, 7
	duty_cycle 3
	vibrato 8, 2, 2
	note_type 6, 10, 3
.loop1:
	octave 2
	note A_, 4
	note A#, 4
	octave 3
	note F_, 4
	octave 2
	note A#, 4
	octave 3
	note C_, 4
	note F_, 4
	octave 2
	note A#, 8
	note F_, 4
	note A#, 4
	octave 3
	note D_, 2
	note F_, 2
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	note F_, 2
	rest 4
	octave 2
	note A#, 1
	octave 3
	note G_, 3
	rest 4
	sound_loop 2, .loop1
.mainloop:
	volume_envelope 10, 4
.loop2:
	octave 4
	note C_, 8
	octave 3
	note A_, 8
	octave 4
	note C_, 8
	octave 3
	note A#, 8
	note A_, 4
	note G_, 4
	note F_, 4
	note G_, 4
	note E_, 4
	note F_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note F_, 4
	note A#, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	note A_, 4
	note F_, 4
	note E_, 4
	octave 4
	note C_, 4
	note E_, 4
	note G_, 4
	sound_loop 2, .loop2
	sound_call .sub1
	octave 3
	note E_, 4
	note F_, 4
	note F#, 4
	note G_, 4
	octave 4
	note C_, 4
	sound_call .sub1
	note C_, 4
	octave 3
	note A#, 4
	note A_, 4
	note G_, 4
	note E_, 4
	sound_call .sub2
	sound_call .sub3
	sound_call .sub2
	volume_envelope 10, 1
	note C_, 2
	volume_envelope 7, 1
	note F_, 2
	volume_envelope 10, 1
	note A_, 2
	volume_envelope 7, 1
	octave 4
	note C_, 2
	volume_envelope 10, 1
	note F_, 2
	volume_envelope 7, 1
	note A_, 2
	volume_envelope 10, 1
	octave 5
	note C_, 2
	volume_envelope 7, 1
	note F_, 2
	volume_envelope 10, 1
	note F_, 2
	volume_envelope 7, 1
	note C_, 2
	volume_envelope 10, 1
	octave 4
	note A_, 2
	volume_envelope 7, 1
	note F_, 2
	volume_envelope 10, 1
	note C_, 2
	volume_envelope 7, 1
	octave 3
	note A_, 2
	volume_envelope 10, 1
	note F_, 2
	volume_envelope 7, 1
	note C_, 2
	sound_call .sub4
	transpose 0, 3
	sound_call .sub3
	transpose 0, 0
	sound_call .sub4
	rest 4
	note D#, 1
	rest 7
	note D#, 1
	rest 1
	note D#, 1
	rest 5
	note G_, 6
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	sound_jump .mainloop

.sub1:
	octave 3
	note A_, 12
	note B_, 1
	octave 4
	note C_, 7
	note F_, 4
	note C_, 4
	octave 3
	note A_, 4
	note G_, 12
	octave 4
	note C_, 8
	note E_, 4
	note C_, 4
	octave 3
	note G_, 4
	note F_, 8
	note D_, 4
	note A_, 8
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note F_, 4
	note G_, 4
	octave 4
	note C_, 4
	note E_, 4
	sound_ret

.sub2:
	duty_cycle 3
	volume_envelope 10, 4
.sub2loop:
	octave 3
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	sound_loop 4, .sub2loop
	note D_, 2
	rest 2
	note F_, 1
	rest 1
	note E_, 2
	sound_ret

.sub3:
	duty_cycle 2
	volume_envelope 6, 4
	octave 4
	note C_, 12
	octave 3
	note A#, 8
	note A_, 4
	note G_, 4
	note A_, 4
	sound_ret

.sub4:
	duty_cycle 3
	volume_envelope 10, 4
	octave 3
	note F_, 1
	rest 1
	note G#, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_loop 4, .sub4
	octave 3
	note F_, 2
	rest 2
	note F_, 1
	rest 1
	note G_, 2
	sound_ret

Music_Portite_Ch2:
	duty_cycle 3
	vibrato 18, 4, 4
	note_type 6, 12, 3
.loop1:
	octave 2
	note F_, 12
	note G_, 12
	note D_, 4
	note C_, 4
	octave 1
	note A#, 8
	octave 2
	note F_, 8
	octave 1
	note A#, 4
	rest 4
	octave 2
	note D#, 4
	rest 4
	sound_loop 2, .loop1
.mainloop:
	volume_envelope 12, 2
.loop2:
	transpose 1, 5
	sound_call .sub1
	sound_call .sub1
	transpose 1, 4
	sound_call .sub1
	sound_call .sub1
	transpose 1, 2
	sound_call .sub1
	sound_call .sub1
	transpose 1, 0
	sound_call .sub1
	sound_call .sub1
	transpose 1, 10
	sound_call .sub3
	sound_call .sub3
	transpose 1, 9
	sound_call .sub3
	sound_call .sub3
	transpose 1, 7
	sound_call .sub1
	sound_call .sub1
	transpose 0, 0
	sound_call .sub3
	sound_call .sub2
	sound_loop 2, .loop2
	transpose 1, 5
.loop3:
	sound_call .sub1
	sound_loop 4, .loop3
	transpose 1, 4
.loop4:
	sound_call .sub1
	sound_loop 4, .loop4
	transpose 1, 2
.loop5:
	sound_call .sub1
	sound_loop 4, .loop5
	transpose 1, 0
.loop6:
	sound_call .sub1
	sound_loop 3, .loop6
	transpose 0, 0
	sound_call .sub2
	transpose 1, 5
.loop7:
	sound_call .sub1
	sound_loop 4, .loop7
	transpose 1, 4
.loop8:
	sound_call .sub1
	sound_loop 4, .loop8
	transpose 1, 2
.loop9:
	sound_call .sub1
	sound_loop 4, .loop9
	transpose 1, 0
.loop10:
	sound_call .sub1
	sound_loop 4, .loop10
	transpose 1, 10
.loop11:
	sound_call .sub1
	sound_loop 4, .loop11
	transpose 1, 5
.loop12:
	sound_call .sub1
	sound_loop 4, .loop12
	transpose 1, 10
.loop13:
	sound_call .sub1
	sound_loop 4, .loop13
	transpose 1, 5
.loop14:
	sound_call .sub1
	sound_loop 4, .loop14
	transpose 0, 1
.loop15:
	sound_call .sub1
	sound_loop 4, .loop15
	transpose 1, 8
.loop16:
	sound_call .sub1
	sound_loop 4, .loop16
	transpose 0, 1
.loop17:
	sound_call .sub1
	sound_loop 4, .loop17
	transpose 0, 8
	sound_call .sub1
	sound_call .sub1
	transpose 0, 0
	sound_call .sub3
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	octave 2
	note C_, 2
	rest 2
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

.sub2:
	octave 2
	note C_, 1
	octave 1
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	sound_ret

.sub3:
	octave 2
	note C_, 2
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

Music_Portite_Ch3:
	vibrato 11, 2, 3
	note_type 12, 2, 3
	octave 4
	note A_, 6
	note A#, 10
	octave 5
	note D_, 8
	note D_, 4
	note D#, 4
	note F_, 6
	note G_, 10
	note F_, 8
	volume_envelope 1, 6
	octave 3
	note F_, 2
	rest 2
	note A#, 2
	rest 2
.mainloop:
	vibrato 11, 1, 3
	note_type 6, 1, 4
	sound_call .sub1
	note G#, 1
	note A_, 3
	note A#, 4
	octave 6
	note C_, 4
	octave 5
	note A_, 4
	note G_, 10
	rest 6
	sound_call .sub1
	octave 6
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 4
	note G_, 10
	rest 6
	volume_envelope 1, 2
	sound_call .sub2
	note C_, 4
	note D_, 4
	note D#, 4
	note E_, 8
	sound_call .sub2
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note C_, 4
	volume_envelope 1, 5
	octave 4
	note A_, 1
	note A#, 16
	rest 3
	sound_call .sub6
	sound_call .sub3
	volume_envelope 1, 5
	note A_, 1
	note A#, 3
	volume_envelope 1, 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	volume_envelope 1, 5
	note A#, 4
	sound_call .sub6
	volume_envelope 1, 6
	octave 4
	note C_, 1
	sound_call .sub4
	volume_envelope 1, 6
	note A_, 1
	volume_envelope 3, 6
	note A_, 1
	volume_envelope 2, 6
	octave 5
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 1, 6
	note F_, 1
	volume_envelope 3, 6
	note F_, 1
	volume_envelope 2, 6
	note A_, 1
	volume_envelope 3, 6
	note A_, 1
	volume_envelope 1, 6
	octave 6
	note C_, 1
	sound_call .sub4
	sound_call .sub5
	volume_envelope 1, 6
	octave 5
	note A_, 1
	volume_envelope 3, 6
	note A_, 1
	volume_envelope 2, 6
	note F_, 1
	volume_envelope 3, 6
	note F_, 1
	volume_envelope 1, 6
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	octave 4
	note A_, 1
	volume_envelope 3, 6
	note A_, 1
	sound_call .sub5
	volume_envelope 1, 5
	octave 5
	note C_, 1
	note C#, 16
	rest 3
	sound_call .sub7
	transpose 0, 3
	sound_call .sub3
	transpose 0, 0
	volume_envelope 1, 5
	octave 5
	note C_, 1
	note C#, 3
	volume_envelope 1, 1
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	volume_envelope 1, 5
	octave 5
	note C#, 4
	sound_call .sub7
	rest 4
	volume_envelope 1, 1
	octave 4
	note C_, 1
	rest 7
	note C_, 1
	rest 1
	note C_, 1
	rest 5
	volume_envelope 1, 5
	octave 5
	note D#, 1
	note E_, 5
	rest 2
	volume_envelope 1, 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_jump .mainloop

.sub1:
	octave 5
	note G#, 1
	note A_, 7
	note F_, 8
	note G_, 8
	note E_, 8
	note F_, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note C_, 8
	rest 4
	note C_, 2
	note C#, 2
	note D_, 8
	note F_, 8
	note D_, 4
	octave 6
	note D_, 4
	note C_, 4
	octave 5
	note A#, 4
	sound_ret

.sub2:
	octave 5
	note F_, 8
	rest 4
	note G#, 1
	note A_, 11
	note F_, 8
	note E_, 8
	rest 4
	note F#, 1
	note G_, 11
	note E_, 4
	note C_, 2
	note C#, 2
	note D_, 8
	rest 4
	note F_, 12
	note D_, 8
	note E_, 8
	note F#, 1
	note G_, 3
	sound_ret

.sub3:
	volume_envelope 2, 7
	octave 4
	note G#, 1
	note A_, 11
	note G_, 8
	note F_, 4
	note E_, 4
	note F_, 4
	note D_, 4
	volume_envelope 3, 7
	note D_, 4
	sound_ret

.sub4:
	volume_envelope 3, 6
	note C_, 1
	volume_envelope 2, 6
	note F_, 1
	volume_envelope 3, 6
	note F_, 1
	sound_ret

.sub5:
	volume_envelope 1, 6
	note F_, 1
	volume_envelope 3, 6
	note F_, 1
	volume_envelope 2, 6
	note C_, 1
	volume_envelope 3, 6
	note C_, 1
	sound_ret

.sub6:
	volume_envelope 1, 1
	note D_, 1
	rest 3
	volume_envelope 1, 5
	note A#, 2
	rest 2
	volume_envelope 1, 1
	note D_, 1
	rest 1
	volume_envelope 1, 5
	octave 5
	note C_, 2
	sound_ret

.sub7:
	volume_envelope 1, 1
	octave 4
	note C#, 1
	rest 3
	volume_envelope 1, 5
	octave 5
	note C#, 2
	rest 2
	volume_envelope 1, 1
	octave 4
	note C#, 1
	rest 1
	volume_envelope 1, 5
	octave 5
	note D#, 2
	sound_ret

Music_Portite_Ch4:
	toggle_noise 5
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
.mainloop:
	sound_call .sub1
	sound_call .sub1
.loop1:
	drum_note 5, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	sound_loop 15, .loop1
	drum_note 5, 1
	drum_note 6, 1
	drum_note 9, 4
	drum_note 1, 1
	drum_note 1, 1
	sound_jump .mainloop

.sub1:
	drum_note 9, 4
.sub1loop1:
	drum_note 1, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 5, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	sound_loop 7, .sub1loop1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
.sub1loop2:
	drum_note 5, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 1
	sound_loop 7, .sub1loop2
	drum_note 5, 1
	drum_note 1, 1
	drum_note 6, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 6, 1
	drum_note 1, 1
	drum_note 1, 1
	sound_ret
