Music_WildBattle:
; AUG 15 2019
	channel_count 3
	chnanel 1, Music_WildBattle_Ch1
	chnanel 2, Music_WildBattle_Ch2
	chnanel 3, Music_WildBattle_Ch3

Music_WildBattle_Ch1:
	tempo 209
	volume 7, 7
	duty_cycle 2
	vibrato 3, 1, 1
	note_type 6, 10, 1
	octave 3
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note B_, 1
	octave 5
	note C_, 1
	note C#, 1
	note D_, 6
.mainloop:
	sound_call .sub1
	octave 3
	note G#, 1
	note D#, 1
	note G#, 1
	octave 4
	note D_, 6
	sound_call .sub1
	note D#, 1
	note G#, 1
	octave 5
	note C_, 1
	note D_, 4
	octave 4
	note D_, 2
	note B_, 4
	octave 3
	note B_, 2
	octave 4
	note G_, 4
	note B_, 2
	note G_, 2
	note D_, 2
	note D#, 2
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 4
	note D_, 2
	note B_, 4
	note D_, 2
	note G_, 2
	note B_, 2
	octave 5
	note D_, 2
	octave 4
	note B_, 2
	note G_, 2
	note D#, 2
	volume_envelope 3, 1
	note D#, 1
	note D#, 1
	volume_envelope 4, 1
	note D#, 1
	volume_envelope 5, 1
	note D#, 1
	volume_envelope 6, 1
	note D#, 1
	volume_envelope 7, 1
	note D#, 1
	volume_envelope 8, 1
	note D#, 1
	volume_envelope 9, 1
	note D#, 1
	volume_envelope 10, 1
	octave 3
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
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
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	octave 3
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	volume_envelope 10, 4
	note F_, 6
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 4
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note F_, 8
	note F_, 8
	note G#, 8
	note F_, 8
	note E_, 6
	note G_, 6
	note A_, 4
	octave 4
	note C_, 8
	note E_, 8
	octave 3
	note C_, 8
	note F_, 8
	note F_, 8
	note A_, 8
	note G_, 6
	note D_, 6
	octave 2
	note B_, 4
	octave 3
	note D_, 8
	note G_, 8
	note F_, 8
	note A_, 8
	note A_, 8
	octave 4
	note C_, 8
	octave 3
	note B_, 6
	note A_, 6
	note G_, 4
	note D_, 8
	note G_, 8
	note B_, 1
	rest 5
	volume_envelope 10, 1
	sound_jump .mainloop

.sub1:
	octave 4
	note D_, 6
	octave 3
	note B_, 4
	note B_, 2
	note G_, 2
	note B_, 2
	note D#, 2
	octave 4
	note C_, 1
	octave 3
	note G#, 1
	note D#, 1
	note G#, 1
	octave 4
	note C_, 1
	sound_ret

Music_WildBattle_Ch2:
	duty_cycle 3
	vibrato 3, 5, 1
	note_type 12, 12, 4
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	octave 2
	note F#, 1
	octave 3
	note D_, 1
	octave 2
	note F_, 1
	octave 3
	note D_, 1
	octave 2
	note E_, 1
	octave 3
	note D_, 1
	octave 2
	note D#, 1
	octave 3
	note D_, 1
	octave 2
	note D_, 1
	octave 3
	note D_, 1
	octave 2
	note C#, 1
	note D_, 1
	note D#, 1
	note D_, 1
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
.loop1:
	octave 2
	note G#, 1
	octave 3
	note G#, 1
	sound_loop 8, .loop1
	sound_call .sub2
.loop2:
	octave 2
	note F_, 1
	octave 3
	note D_, 1
	sound_loop 4, .loop2
.loop3:
	octave 2
	note G_, 1
	octave 3
	note E_, 1
	sound_loop 4, .loop3
.loop4:
	octave 2
	note G#, 1
	octave 3
	note F_, 1
	sound_loop 4, .loop4
	octave 2
	note F_, 1
	octave 3
	note C#, 1
	octave 2
	note F_, 1
	octave 3
	note C#, 1
	octave 2
	note C#, 1
	note G#, 1
	note C#, 1
	note G#, 1
.loop5:
	note C_, 1
	note G_, 1
	note C_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	sound_loop 2, .loop5
.loop6:
	note C_, 2
	note F_, 2
	sound_loop 4, .loop6
.loop7:
	note D_, 2
	note G_, 2
	sound_loop 4, .loop7
.loop8:
	note C_, 2
	note F_, 2
	sound_loop 4, .loop8
	note D_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note D_, 1
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	octave 3
	note D_, 1
	sound_jump .mainloop

.sub1:
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	sound_loop 6, .sub1
	octave 2
	note G#, 1
	octave 3
	note G#, 1
	octave 2
	note G#, 1
	octave 3
	note G#, 1
	sound_ret

.sub2:
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	sound_loop 8, .sub2
	sound_ret

Music_WildBattle_Ch3:
	vibrato 8, 1, 3
	note_type 3, 1, -6
	octave 4
	note G_, 2
	sound_call .sub1
	octave 4
	note G#, 2
	sound_call .sub1
	octave 4
	note A_, 2
	sound_call .sub1
	octave 4
	note A#, 2
	sound_call .sub1
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note F_, 2
	note F#, 2
	note G_, 2
	note G#, 2
	note G_, 3
	rest 9
.mainloop:
	sound_call .sub2
	note G_, 3
	rest 9
	sound_call .sub2
	note_type 12, 1, -1
	octave 4
	note B_, 2
	note G_, 1
	octave 5
	note D_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 2
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note B_, 1
	octave 5
	note D_, 1
	note F_, 1
	note G#, 4
	note F_, 4
	note D#, 4
	note C_, 4
	note D_, 2
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	octave 4
	note B_, 2
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note D_, 1
	note G_, 1
	note B_, 1
	octave 6
	note D_, 3
	note C_, 1
	octave 5
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 2
	note F#, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	note G#, 4
	octave 5
	note C#, 4
	note_type 3, 1, -1
	note E_, 1
	note F_, 15
	note_type 12, 1, -1
	note G#, 4
	note G_, 14
	rest 2
	volume_envelope 1, 2
	octave 4
	note A_, 8
	octave 5
	note C_, 8
	octave 4
	note B_, 14
	rest 2
	octave 5
	note C_, 8
	note E_, 8
	note D_, 14
	note_type 3, 1, 2
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note G_, 2
	rest 10
	sound_jump .mainloop

.sub1:
	octave 5
	note D_, 2
	note G_, 2
	octave 6
	note D_, 2
	sound_ret

.sub2:
	note G_, 3
	rest 9
	note D_, 3
	rest 5
	note G_, 4
	note D_, 4
	note G_, 4
	note_type 6, 1, -6
	note G#, 10
	note_type 3, 1, -6
	note G_, 3
	rest 9
	note G_, 3
	rest 9
	note D_, 3
	rest 5
	note G_, 4
	note D_, 4
	note G_, 4
	note G#, 12
	note A#, 8
	sound_ret
