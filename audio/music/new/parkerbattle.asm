Music_ParkerBattle:
; FEB 11 2020
	channel_count 3
	channel 1, Music_ParkerBattle_Ch1
	channel 2, Music_ParkerBattle_Ch2
	channel 3, Music_ParkerBattle_Ch3

Music_ParkerBattle_Ch1:
	tempo 203
	volume 7, 7
	duty_cycle 3
	vibrato 8, 1, 3
	note_type 6, 12, 1
	octave 3
	note A#, 8
	note A#, 8
	note A#, 8
	note A#, 4
	volume_envelope 12, 6
	note B_, 4
.loop1:
	volume_envelope 12, 1
	octave 3
	note A#, 2
	note A#, 6
	note A#, 2
	note A#, 6
	note A#, 2
	note A#, 6
	note A#, 2
	note A#, 2
	volume_envelope 12, 6
	octave 4
	note D#, 4
	sound_loop 3, .loop1
	sound_call .sub1
	octave 4
	note E_, 4
	sound_call .sub1
	note A_, 4
	sound_call .sub1
	octave 4
	note E_, 4
	sound_call .sub1
	note B_, 4
	sound_call .sub1
	octave 4
	note E_, 4
	sound_call .sub1
	note A_, 4
	sound_call .sub1
	octave 4
	note E_, 4
	volume_envelope 12, 1
	octave 3
	note A#, 2
	note A#, 2
	volume_envelope 12, 6
	octave 4
	note G_, 4
	volume_envelope 12, 1
	octave 3
	note A#, 2
	note A#, 2
	volume_envelope 12, 6
	octave 4
	note G#, 4
	note A#, 8
	octave 3
	note A#, 8
	octave 4
	note B_, 8
	octave 3
	note B_, 8
.mainloop:
	sound_call .sub2
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	note G#, 4
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	note A#, 4
	sound_call .sub2
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	note B_, 4
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	octave 5
	note E_, 4
	sound_call .sub3
	note B_, 4
	note B_, 4
	sound_call .sub3
	octave 5
	note C#, 4
	note C#, 4
	octave 4
	note A#, 8
	octave 3
	note A#, 8
	octave 4
	note F#, 8
	octave 3
	note F#, 8
	note_type 12, 6, 8
	octave 2
	note B_, 16
	octave 3
	note C#, 8
	note D#, 8
	note_type 6, 12, 6
	octave 4
	note F#, 4
	note F_, 4
	note E_, 4
	note D#, 4
	note D_, 4
	note C#, 4
	note F#, 4
	note F#, 4
	note F#, 4
	note F_, 4
	note E_, 4
	note D#, 4
	note F#, 2
	note G#, 2
	note D#, 2
	note E_, 2
	note F#, 4
	note F#, 4
	volume_envelope 6, 8
	octave 3
	note D#, 16
	note F#, 8
	note E_, 8
	note D#, 16
	note C#, 16
.loop2:
	sound_call .sub1
	octave 4
	note E_, 4
	sound_call .sub1
	octave 4
	note D#, 4
	sound_call .sub1
	octave 4
	note E_, 4
	sound_call .sub1
	note B_, 4
	sound_loop 2, .loop2
	sound_jump .mainloop

.sub1:
	volume_envelope 12, 1
	octave 3
	note A#, 2
	note A#, 2
	volume_envelope 12, 6
	octave 4
	note D#, 4
	volume_envelope 12, 1
	octave 3
	note A#, 2
	note A#, 2
	volume_envelope 12, 6
	sound_ret

.sub2:
	octave 4
	note D#, 2
	note A#, 2
	note D#, 2
	note F#, 4
	note F_, 2
	note E_, 2
	note B_, 2
	note F#, 2
	note A#, 2
	note F_, 2
	note A_, 2
	note E_, 2
	note G#, 2
	note D#, 2
	note G_, 2
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	note F#, 4
	volume_envelope 12, 1
	note E_, 2
	note E_, 2
	volume_envelope 12, 6
	note G#, 4
	sound_ret

.sub3:
	octave 4
	note A#, 1
	rest 1
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 1
	rest 3
	note A#, 2
	sound_ret

Music_ParkerBattle_Ch2:
	duty_cycle 3
	note_type 6, 12, 7
	octave 1
	note D#, 1
	rest 7
	note D#, 1
	rest 7
	note D#, 1
	rest 7
	note D#, 1
	rest 3
	note A#, 1
	octave 2
	note F_, 1
	note G#, 1
	note B_, 1
.loop1:
	octave 1
	note D#, 1
	rest 1
	note D#, 1
	rest 5
	note D#, 1
	rest 1
	note D#, 1
	rest 5
	note D#, 1
	rest 1
	note D#, 1
	rest 5
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note A#, 1
	octave 2
	note D#, 1
	note A#, 1
	octave 3
	note D#, 1
	sound_loop 3, .loop1
.loop2:
	sound_call .sub1
	note G_, 1
	sound_loop 3, .loop2
	sound_call .sub1
	note F_, 1
	note G_, 8
	octave 2
	note D#, 8
	note B_, 4
	octave 1
	note F#, 2
	octave 2
	note F#, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
.mainloop:
	sound_call .sub3
	sound_call .sub3
.loop3:
	sound_call .sub2
	octave 3
	note D_, 2
	note C#, 2
	note C_, 2
	sound_loop 3, .loop3
	sound_call .sub2
	octave 3
	note D#, 2
	note F_, 2
	note F#, 2
	note G_, 8
	octave 2
	note D#, 8
	note B_, 8
	note D#, 8
.loop4:
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	sound_loop 16, .loop4
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
.loop5:
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
	sound_loop 2, .loop5
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
.loop6:
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	sound_loop 4, .loop6
.loop7:
	octave 1
	note D#, 2
	octave 2
	note D#, 2
	sound_loop 5, .loop7
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
.loop8:
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	sound_loop 5, .loop8
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	sound_call .sub4
	sound_call .sub4
	sound_jump .mainloop

.sub1:
	octave 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 2
	note D#, 1
	note A#, 1
	octave 3
	note D#, 1
	note A#, 1
	sound_loop 3, .sub1
	octave 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note G#, 1
	octave 3
	note D_, 1
	sound_ret

.sub2:
	volume_envelope 12, 1
	octave 1
	note D#, 2
	note D#, 4
	note D#, 4
	volume_envelope 12, 7
	sound_ret

.sub3:
	octave 1
	note D#, 2
	octave 2
	note D#, 2
	sound_loop 8, .sub3
.sub3loop1:
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	sound_loop 8, .sub3loop1
	sound_ret

.sub4:
	octave 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 2
	note D#, 1
	note A#, 1
	octave 3
	note D#, 1
	note A#, 1
	sound_loop 7, .sub4
	octave 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note G#, 1
	octave 3
	note D_, 1
	note F_, 1
	sound_ret

Music_ParkerBattle_Ch3:
	vibrato 8, 1, 3
	note_type 6, 1, 7
	octave 5
	note D#, 1
	rest 7
	note D#, 1
	rest 7
	note D#, 1
	rest 7
	note D#, 1
	rest 3
	note D_, 4
	sound_call .sub1
	note A#, 4
	sound_call .sub1
	note B_, 4
	sound_call .sub1
	octave 6
	note C#, 4
	sound_call .sub2
	note B_, 4
	sound_call .sub2
	note D_, 4
	sound_call .sub2
	note B_, 4
	sound_call .sub2
	note F_, 4
	sound_call .sub2
	note B_, 4
	sound_call .sub2
	note D_, 2
	sound_call .sub2
	sound_call .sub3
	octave 5
	note D#, 8
	octave 6
	note E_, 12
.mainloop:
	vibrato 0, 1, 3
	volume_envelope 1, 4
	octave 5
	note B_, 1
	octave 6
	note C_, 1
	note C#, 1
	note D_, 1
	sound_call .sub4
	note A#, 4
	note B_, 8
	octave 6
	note E_, 8
	vibrato 8, 1, 3
	volume_envelope 1, 5
	octave 4
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note B_, 4
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	octave 5
	note C#, 4
	vibrato 0, 1, 3
	volume_envelope 1, 4
	sound_call .sub4
	note A#, 2
	note B_, 2
	octave 6
	note E_, 8
	note G#, 8
	note E_, 8
	note B_, 8
	vibrato 8, 1, 3
	volume_envelope 1, 7
	sound_call .sub5
	note E_, 2
	note E_, 2
	sound_call .sub5
	note F#, 2
	note F#, 2
	note D#, 8
	octave 5
	note D#, 8
	octave 6
	note C#, 8
	octave 5
	note C#, 8
	note_type 12, 2, 7
	note D#, 16
	note F_, 8
	note F#, 8
.loop1:
	note_type 6, 1, -4
	octave 6
	note D#, 2
	volume_envelope 2, -4
	note D#, 2
	volume_envelope 1, -4
	note D_, 2
	volume_envelope 2, -4
	note D_, 2
	volume_envelope 1, -4
	note C#, 2
	volume_envelope 2, -4
	note C#, 2
	volume_envelope 1, -4
	note C_, 2
	volume_envelope 2, -4
	note C_, 2
	volume_envelope 1, -4
	note D#, 2
	note D_, 2
	note C#, 2
	note C_, 2
	octave 5
	note B_, 2
	volume_envelope 2, -4
	note B_, 2
	volume_envelope 1, -4
	note B_, 2
	volume_envelope 2, -4
	note B_, 2
	sound_loop 2, .loop1
	volume_envelope 2, 7
	octave 4
	note D#, 16
	note B_, 16
	note A#, 16
	note G#, 16
	volume_envelope 1, 7
	sound_call .sub2
	note B_, 4
	sound_call .sub2
	note A_, 4
	sound_call .sub2
	sound_call .sub3
	note F_, 8
	note F#, 8
	note F_, 8
	note D#, 8
	note F_, 8
	note F#, 8
	note G#, 4
	sound_jump .mainloop

.sub1:
	note D#, 1
	rest 1
	note D#, 1
	rest 5
	sound_loop 3, .sub1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	sound_ret

.sub2:
	octave 5
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note A#, 4
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	sound_ret

.sub3:
	note B_, 4
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 6
	note C#, 4
	octave 5
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 6
	note D_, 4
	note D#, 8
	sound_ret

.sub4:
	octave 6
	note D#, 6
	octave 5
	note A#, 6
	octave 6
	note D#, 2
	note D_, 2
	note C#, 4
	note C_, 4
	octave 5
	note B_, 4
	sound_ret

.sub5:
	note D#, 1
	rest 1
.sub5loop1:
	note D#, 1
	rest 3
	sound_loop 5, .sub5loop1
	note D#, 2
	sound_ret
