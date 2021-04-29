Music_ShaggyBattle:
; AUG 14 2019
	channel_count 3
	channel 1, Music_ShaggyBattle_Ch1
	channel 2, Music_ShaggyBattle_Ch2
	channel 3, Music_ShaggyBattle_Ch3

Music_ShaggyBattle_Ch1:
	tempo 235
	volume 7, 7
	duty_cycle 2
	vibrato 11, 1, 2
	note_type 3, 10, 3
.loop1:
	octave 3
	note G#, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note E_, 2
	octave 3
	note B_, 1
	rest 1
	sound_loop 2, .loop1
.loop2:
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note D_, 2
	octave 3
	note A_, 1
	rest 1
	sound_loop 2, .loop2
.loop3:
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note D_, 2
	octave 3
	note G_, 1
	rest 1
	sound_loop 2, .loop3
.loop4:
	note G#, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 2
	octave 3
	note B_, 1
	rest 1
	sound_loop 2, .loop4
	note G_, 1
	rest 1
	note G_, 1
	rest 13
	note G#, 1
	rest 1
	note G#, 1
	rest 13
	note A#, 1
	rest 1
	note A#, 1
	rest 13
	note G#, 1
	rest 1
	note G#, 1
	rest 13
.loop5:
	duty_cycle 2
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	rest 5
	octave 4
	note G_, 8
	octave 3
	note G#, 1
	rest 1
	note G#, 1
	rest 5
	octave 4
	note G#, 8
	octave 3
	note A#, 1
	rest 1
	note A#, 1
	rest 5
	octave 4
	note A#, 8
	octave 3
	note G#, 1
	rest 1
	note G#, 1
	rest 5
	octave 4
	note G#, 4
	duty_cycle 3
	octave 1
	note D#, 4
	sound_loop 3, .loop5
.mainloop:
	sound_call .sub1
	octave 5
	note D_, 12
	note F#, 12
	note B_, 12
.loop6:
	sound_call .sub1
	note A#, 8
	note B_, 8
	note G_, 16
	sound_loop 2, .loop6
.loop7:
	octave 3
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	sound_loop 8, .loop7
.loop8:
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 5
	octave 3
	note D_, 8
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 5
	octave 3
	note F_, 8
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 5
	octave 3
	note D_, 8
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 8
	octave 3
	note D_, 4
	sound_loop 2, .loop8
	volume_envelope 10, 1
	sound_call .sub2
	rest 16
	rest 16
	transpose 0, 1
	sound_call .sub2
	rest 16
	rest 16
	transpose 0, 2
	sound_call .sub2
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call .sub7
	octave 4
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	transpose 0, 0
	octave 4
	note C#, 4
	octave 3
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note D_, 4
	sound_call .sub5
	sound_call .sub3
	sound_call .sub4
	transpose 0, 2
	sound_call .sub5
	sound_call .sub3
	transpose 0, 1
	sound_call .sub4
	transpose 0, 3
	sound_call .sub5
	transpose 0, 0
	octave 4
	note A_, 4
	sound_call .sub6
	note G_, 4
	sound_call .sub6
	sound_call .sub4
	transpose 0, 2
	sound_call .sub5
	sound_call .sub3
	transpose 1, 10
	sound_call .sub4
	transpose 0, 0
	sound_call .sub5
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	octave 4
	note G_, 2
	octave 3
	note G_, 2
	note E_, 2
	note B_, 2
	octave 4
	note G_, 4
	note B_, 4
	note F#, 2
	octave 3
	note F#, 2
	note D#, 2
	note B_, 2
	octave 4
	note F#, 4
	note A#, 4
	note F#, 2
	octave 3
	note F#, 2
	note D_, 2
	note F#, 2
	note B_, 4
	octave 4
	note F#, 4
.sub1loop1:
	octave 4
	note D#, 2
	octave 3
	note F#, 2
	note D#, 2
	note F#, 2
	sound_loop 2, .sub1loop1
	octave 4
	note F_, 8
	note F#, 8
	note D_, 16
	sound_ret

.sub2:
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note B_, 2
	octave 4
	note E_, 4
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note G_, 2
	note F#, 2
	sound_loop 2, .sub2
	sound_ret

.sub3:
	octave 4
	note G_, 4
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note B_, 4
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 5
	note D_, 1
	rest 1
	note G_, 1
	rest 5
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 5
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	sound_ret

.sub4:
	octave 4
	note E_, 4
	octave 3
	note E_, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note A_, 4
	sound_ret

.sub5:
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 5
	note D_, 1
	rest 1
	note G_, 1
	rest 5
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

.sub6:
	octave 3
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note F_, 4
	octave 3
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

.sub7:
	duty_cycle 3
	volume_envelope 10, 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 2
	note B_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_ShaggyBattle_Ch2:
	duty_cycle 3
	vibrato 11, 1, 2
	note_type 3, 12, 3
	octave 1
	note E_, 2
	rest 2
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 3
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note F_, 2
	rest 2
	note F_, 2
	octave 2
	note F_, 2
	octave 1
	note F_, 2
	octave 3
	note D#, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
	octave 1
	note G_, 2
	rest 2
	note G_, 2
	octave 2
	note G_, 2
	octave 1
	note G_, 2
	octave 3
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	octave 1
	note G#, 2
	rest 2
	note G#, 2
	octave 2
	note G#, 2
	octave 1
	note G#, 2
	octave 2
	note B_, 2
	octave 1
	note G#, 2
	octave 2
	note G#, 2
.loop1:
	octave 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 5, 3
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 12, 3
	sound_loop 8, .loop1
.loop2:
	sound_call .sub1
	octave 5
	note E_, 8
	sound_loop 8, .loop2
.mainloop:
	sound_call .sub1
	octave 4
	note E_, 8
	sound_loop 4, .mainloop
	sound_call .sub2
	octave 4
	note D_, 2
	sound_call .sub3
	note B_, 2
	sound_call .sub3
	octave 4
	note F#, 2
	sound_call .sub3
	octave 4
	note B_, 2
	sound_call .sub3
.loop3:
	sound_call .sub1
	octave 4
	note E_, 8
	sound_call .sub1
	octave 4
	note E_, 8
	sound_call .sub1
	octave 4
	note E_, 8
	sound_call .sub1
	octave 4
	note E_, 8
	sound_call .sub2
	note D#, 8
	note E_, 8
	sound_call .sub4
	sound_loop 2, .loop3
.loop4:
	sound_call .sub4
	sound_loop 4, .loop4
.loop5:
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	note D_, 8
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	note F_, 8
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	note D_, 8
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 1
	note B_, 8
	octave 2
	note D_, 4
	sound_loop 2, .loop5
	duty_cycle 2
	volume_envelope 12, 7
	octave 4
	note E_, 8
	note F_, 4
	note F#, 16
	rest 4
	sound_call Music_ShaggyBattle_Ch1.sub7
	octave 4
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	transpose 0, 1
	duty_cycle 2
	volume_envelope 12, 7
	note E_, 8
	note F_, 4
	note F#, 16
	rest 4
	sound_call Music_ShaggyBattle_Ch1.sub7
	octave 4
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	transpose 0, 2
	duty_cycle 2
	volume_envelope 12, 7
	note E_, 8
	note F_, 4
	note F#, 16
	rest 4
	sound_call Music_ShaggyBattle_Ch1.sub7
	octave 4
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	sound_call Music_ShaggyBattle_Ch1.sub7
	octave 4
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	transpose 0, 0
	duty_cycle 2
	note_type 6, 12, 7
	note F#, 16
	octave 3
	note A#, 4
	note B_, 12
	octave 4
	note D_, 16
	note E_, 16
	octave 3
	note A_, 16
	octave 4
	note F_, 16
	octave 5
	note C_, 8
	octave 4
	note A#, 8
	volume_envelope 12, 8
	note A_, 16
	volume_envelope 12, 7
	note A_, 16
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note C#, 2
	note F#, 2
	note D_, 10
	duty_cycle 3
	note_type 6, 12, 3
	octave 2
	note C_, 2
	octave 1
	note B_, 2
	note A#, 2
	note A_, 2
	note G#, 2
	note G_, 2
	note F#, 2
	note F_, 2
	sound_jump .mainloop

.sub1:
	octave 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 5, 3
	octave 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 12, 3
	sound_ret

.sub2:
	octave 3
	note C#, 8
	note D_, 8
	octave 1
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	note B_, 2
	rest 2
	sound_ret

.sub3:
	octave 3
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	sound_ret

.sub4:
	octave 1
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note E_, 4
	sound_ret

Music_ShaggyBattle_Ch3:
	vibrato 11, 1, 3
	note_type 3, 0, 0
	sound_call .sub1
	volume_envelope 1, 4
	octave 5
	note G#, 1
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note B_, 1
	volume_envelope 2, 4
	note B_, 1
	sound_call .sub2
	sound_call .sub4
	sound_call .sub5
	sound_call .sub1
	volume_envelope 1, 4
	octave 5
	note F_, 1
	sound_call .sub3
	sound_call .sub4
	volume_envelope 1, 4
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note D#, 1
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	octave 4
	note B_, 1
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 5
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
	sound_call .sub1
	volume_envelope 1, 4
	octave 5
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	octave 4
	note G#, 1
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note B_, 1
	volume_envelope 2, 4
	note B_, 1
	sound_call .sub5
	volume_envelope 1, 4
	note A#, 1
	volume_envelope 2, 4
	note A#, 1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 4
	octave 4
	note G#, 1
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note D#, 1
	volume_envelope 2, 4
	note D#, 1
	sound_call .sub5
	volume_envelope 1, 4
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
	volume_envelope 1, 4
	note F_, 1
	sound_call .sub3
	sound_call .sub4
	volume_envelope 1, 4
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 5
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 13
	note F_, 1
	rest 1
	note F_, 1
	rest 13
	note G_, 1
	rest 1
	note G_, 1
	rest 13
	note F_, 1
	rest 1
	note F_, 1
	rest 5
	volume_envelope 1, 6
	octave 2
	note F_, 8
	volume_envelope 1, 5
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	sound_call .sub6
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 5
	sound_call .sub6
	octave 5
	note G_, 1
	rest 1
	note G_, 1
	rest 5
	sound_call .sub6
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 5
	sound_call .sub6
	sound_call .sub10
	sound_call .sub7
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_call .sub7
	octave 5
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	sound_call .sub7
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_call .sub7
	sound_call .sub10
	sound_call .sub7
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_call .sub7
	octave 5
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	sound_call .sub7
	octave 5
	note F_, 1
	rest 1
	note F_, 1
	rest 5
	note_type 6, 1, 8
	note D#, 4
.mainloop:
	note E_, 8
	sound_call .sub8
	volume_envelope 1, 5
	octave 3
	note B_, 6
	octave 4
	note D_, 6
	note F#, 4
	note_type 3, 1, 8
	octave 5
	note D_, 1
	note D#, 1
	note E_, 14
	note_type 6, 1, 8
	sound_call .sub8
	octave 5
	note D#, 4
	note E_, 10
	rest 2
	note_type 3, 1, 8
	note D_, 1
	note D#, 1
	note E_, 14
	note_type 6, 1, 8
	sound_call .sub8
	octave 5
	note D#, 4
	note E_, 12
	note E_, 16
	note_type 3, 3, 5
	sound_call .sub9
	sound_call .sub9
	volume_envelope 2, 5
	sound_call .sub9
	volume_envelope 1, 5
	sound_call .sub9
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	volume_envelope 1, 2
	octave 4
	note D_, 8
	volume_envelope 1, 5
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	volume_envelope 1, 2
	octave 4
	note F_, 8
	volume_envelope 1, 5
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	volume_envelope 1, 2
	octave 4
	note D_, 8
	volume_envelope 1, 5
	sound_call .sub10
	volume_envelope 1, 2
	octave 3
	note B_, 8
	octave 4
	note D_, 4
	volume_envelope 1, 5
	sound_call .sub10
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note F_, 2
	sound_call .sub10
	note F#, 2
	note F_, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note F#, 2
	sound_call .sub10
	note F_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note D#, 2
	sound_call .sub10
	octave 4
	note B_, 8
	octave 5
	note D_, 4
	sound_call .sub11
	sound_call .sub12
	transpose 0, 1
	sound_call .sub11
	sound_call .sub12
	transpose 0, 2
	sound_call .sub11
.loop1:
	sound_call .sub12
	sound_loop 3, .loop1
	volume_envelope 1, 7
	octave 2
	note G_, 2
	volume_envelope 1, 6
	octave 3
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_call .sub13
.loop2:
	sound_call .sub14
	sound_call .sub13
	sound_loop 3, .loop2
	transpose 0, 2
.loop3:
	sound_call .sub14
	sound_call .sub13
	sound_loop 4, .loop3
	transpose 0, 3
.loop4:
	sound_call .sub14
	sound_call .sub13
	sound_loop 4, .loop4
	transpose 0, 2
.loop5:
	sound_call .sub14
	sound_call .sub13
	sound_loop 4, .loop5
	transpose 0, 0
.loop6:
	sound_call .sub14
	sound_call .sub13
	sound_loop 2, .loop6
	volume_envelope 1, 7
	octave 2
	note G_, 2
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	note G_, 2
	note B_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note B_, 2
	octave 4
	note D_, 2
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 4
	octave 6
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	sound_ret

.sub2:
	volume_envelope 1, 4
	note F#, 1
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note A_, 1
	volume_envelope 2, 4
	note A_, 1
	sound_ret

.sub3:
	volume_envelope 2, 4
	note F_, 1
	volume_envelope 1, 4
	note C#, 1
	volume_envelope 2, 4
	note C#, 1
	sound_ret

.sub4:
	volume_envelope 1, 4
	note E_, 1
	volume_envelope 2, 4
	note E_, 1
	sound_ret

.sub5:
	volume_envelope 1, 4
	note G_, 1
	volume_envelope 2, 4
	note G_, 1
	sound_ret

.sub6:
	volume_envelope 1, 8
	octave 6
	note E_, 8
	volume_envelope 1, 5
	sound_ret

.sub7:
	volume_envelope 1, 4
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	note F_, 2
	volume_envelope 1, 5
	sound_ret

.sub8:
	note D#, 8
	note D_, 8
	octave 4
	note B_, 8
	note A#, 4
	note B_, 12
	sound_ret

.sub9:
	octave 5
	note E_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

.sub10:
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	sound_ret

.sub11:
	volume_envelope 1, 7
	octave 2
	note E_, 4
	volume_envelope 1, 6
	octave 4
	note E_, 2
	note G_, 2
	volume_envelope 1, 7
	octave 2
	note B_, 4
	volume_envelope 1, 6
	octave 4
	note E_, 2
	note D_, 2
	sound_loop 2, .sub11
	sound_ret

.sub12:
	volume_envelope 1, 7
	octave 2
	note E_, 4
	volume_envelope 1, 6
	octave 3
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	volume_envelope 1, 7
	octave 2
	note B_, 4
	volume_envelope 1, 6
	octave 3
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	volume_envelope 1, 7
	octave 2
	note E_, 4
	volume_envelope 1, 6
	octave 4
	note E_, 2
	rest 2
	sound_ret

.sub13:
	volume_envelope 1, 7
	octave 2
	note G_, 2
	volume_envelope 1, 6
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

.sub14:
	volume_envelope 1, 7
	octave 2
	note G_, 2
	volume_envelope 1, 6
	octave 3
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret
