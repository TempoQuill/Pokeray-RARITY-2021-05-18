Music_TrainerBattle:
; AUG 25 2019
	channel_count 3
	channel 1, Music_TrainerBattle_Ch1
	channel 2, Music_TrainerBattle_Ch2
	channel 3, Music_TrainerBattle_Ch3

Music_TrainerBattle_Ch1:
	tempo 203
	volume 7, 7
	duty_cycle 3
	note_type 6, 10, 2
	octave 3
	note G_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note A_, 1
	note A#, 1
	note B_, 1
.loop1:
	octave 3
	note C_, 6
	note C_, 6
	note G_, 4
	note F_, 6
	note D#, 6
	note C#, 4
	note C_, 6
	note C_, 6
	note G_, 4
	note F_, 6
	note A#, 6
	note G#, 4
	sound_loop 2, .loop1
.mainloop:
	volume_envelope 10, 3
	note E_, 6
	note C_, 4
	note C_, 2
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note F_, 4
	note G_, 4
	note F_, 2
	note G#, 4
	octave 4
	note C#, 6
	octave 3
	note G#, 4
	octave 4
	note F_, 6
	note D#, 6
	note C#, 4
	octave 3
	note G_, 6
	note E_, 4
	note C_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 2
	note F_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 4
	note F_, 4
	note D_, 4
	note F_, 4
	octave 4
	note D_, 6
	note C_, 6
	note D_, 4
	note C_, 6
	octave 3
	note G_, 6
	note F_, 4
	note G_, 6
	note C_, 6
	note G_, 4
	note G#, 6
	note C#, 6
	note D#, 4
	note F_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 4
	note F_, 4
	vibrato 5, 4, 2
	volume_envelope 10, 7
	note G_, 8
	note F_, 8
	note E_, 8
	note G_, 8
	note F_, 8
	note A#, 8
	octave 4
	note D_, 6
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note G_, 8
	octave 4
	note C_, 8
	note E_, 16
	octave 3
	note G_, 8
	octave 2
	note A#, 8
	octave 3
	note F_, 8
	note D_, 8
	note C_, 6
	note D_, 2
	note E_, 8
	note E_, 6
	note G_, 2
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note E_, 8
	vibrato 0, 0, 0
	volume_envelope 10, 3
	note B_, 2
	ntoe A_, 2
	ntoe G_, 2
	ntoe F_, 2
	note E_, 4
	ntoe F_, 2
	ntoe G_, 4
	ntoe F_, 2
	ntoe G_, 2
	ntoe F_, 2
	ntoe G_, 6
	octave 4
	note C_, 6
	octave 3
	ntoe G_, 2
	note C_, 2
	note D_, 4
	note E_, 2
	ntoe F_, 4
	note D_, 2
	ntoe F_, 2
	ntoe G_, 2
	ntoe A_, 6
	ntoe G_, 6
	note D_, 2
	ntoe F_, 2
	ntoe G_, 2
	sound_jump .mainloop

Music_TrainerBattle_Ch2:
	duty_cycle 2
	note_type 12, 10, 3
	octave 2
	note C_, 1
	octave 3
	note C_, 1
	octave 2
	note C#, 1
	octave 3
	note C_, 1
	octave 2
	note D_, 1
	octave 3
	note C_, 1
	octave 2
	note D#, 1
	octave 3
	note C_, 1
	octave 2
	note E_, 1
	octave 3
	note C_, 1
	octave 2
	note F_, 1
	octave 3
	note C_, 1
	octave 2
	note F#, 1
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	note B_, 1
	soudn_call .sub1
	soudn_call .sub1
	soudn_call .sub1
	soudn_call .sub1
.mainloop:
	transpose 0, 0
	soudn_call .sub2
	transpose 0, 1
	soudn_call .sub2
	transpose 0, 0
	soudn_call .sub2
	transpose 1, 10
	soudn_call .sub2
	transpose 0, 0
	soudn_call .sub3
	transpose 0, 1
	soudn_call .sub3
	transpose 0, 0
	soudn_call .sub2
	transpose 1, 10
	soudn_call .sub2
	transpose 0, 0
.loop1:
	note C_, 2
	note G_, 2
	sound_loop 4, .loop1
	transpose 1, 10
	note C_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note C_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	transpose 0, 0
	volume_envelope 10, 5
	note E_, 4
	note G_, 4
	octave 3
	note C_, 4
	note E_, 2
	note C_, 2
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	note C_, 4
	volume_envelope 10, 3
	octave 2
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	soudn_call .sub2
	transpose 1, 10
	soudn_call .sub2
	sound_jump .mainloop

.sub1:
	octave 2
	note G_, 1
	octave 3
	note C_, 1
	sound_loop 4, .sub1
.sub1loop1:
	octave 2
	note G#, 1
	octave 3
	note C#, 1
	sound_loop 4, .sub1loop1
	sound_ret

.sub2:
	octave 2
	note C_, 1
	note G_, 1
	sound_loop 8, .sub2
	sound_ret

.sub3:
	octave 2
	note G_, 1
	octave 3
	note C_, 1
	sound_loop 4, .sub3
.sub3loop1:
	octave 2
	note C_, 1
	note G_, 1
	sound_loop 4, .sub3loop1
	sound_ret

Music_TrainerBattle_Ch3:
	vibrato 8, 1, 3
	note_type 3, 1, 8
	octave 4
	note A#, 2
	note B_, 2
	octave 5
	note C_, 2
	octave 6
	note C_, 2
	octave 4
	note A_, 2
	note A#, 2
	note B_, 2
	octave 6
	note C#, 2
	octave 4
	note G#, 2
	note A_, 2
	note A#, 2
	octave 6
	note D_, 2
	octave 4
	note G_, 2
	note G#, 2
	note A_, 2
	octave 6
	note D#, 2
	octave 4
	note F#, 2
	note G_, 2
	note G#, 2
	octave 6
	note E_, 2
	octave 4
	note F_, 2
	note F#, 2
	note G_, 2
	octave 6
	note F_, 2
	octave 4
	note F#, 2
	note G_, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 2
	octave 5
	note C_, 2
	note C#, 2
	soudn_call .sub1
	transpose 0, 12
	volume_envelope 1, 7
	soudn_call .sub1
	transpose 0, 0
.mainloop:
	soudn_call .sub2
	note F_, 8
	note E_, 8
	note D_, 8
	note C_, 8
	note D#, 16
	note F_, 15
	note G_, 1
	note G#, 16
	volume_envelope 2, 4
	note G#, 8
	volume_envelope 3, 4
	note G#, 8
	soudn_call .sub2
	note G_, 12
	note F_, 6
	rest 2
	note E_, 4
	note C_, 4
	note E_, 4
	note_type 6, 1, 4
	note D_, 16
	note F_, 8
	volume_envelope 2, 4
	note F_, 4
	volume_envelope 3, 4
	note F_, 4
	soudn_call .sub3
	volume_envelope 1, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note G_, 10
	rest 2
	octave 5
	note E_, 8
	transpose 0, 1
	soudn_call .sub3
	octave 4
	note G_, 4
	octave 5
	note E_, 4
	note D_, 4
	note E_, 10
	rest 2
	note G_, 4
	note E_, 4
	transpose 0, 0
	note E_, 16
	note C_, 15
	note F#, 1
	note G_, 16
	volume_envelope 2, 4
	note G_, 8
	volume_envelope 3, 4
	note G_, 8
	transpose 1, 10
	soudn_call .sub3
	transpose 0, 0
	note A#, 10
	rest 2
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note F_, 4
	soudn_call .sub3
	transpose 0, 3
	soudn_call .sub3
	transpose 0, 6
	soudn_call .sub3
	transpose 0, 5
	soudn_call .sub3
	transpose 0, 3
	soudn_call .sub3
	transpose 0, 8
	soudn_call .sub3
	transpose 0, 12
	soudn_call .sub3
	transpose 0, 10
	soudn_call .sub3
	transpose 0, 0
	octave 5
	note C_, 10
	rest 2
	note C_, 6
	rest 2
	octave 4
	note G_, 4
	octave 5
	note C_, 4
	note D_, 4
	note E_, 4
	volume_envelope 2, 4
	note E_, 4
	volume_envelope 3, 4
	note E_, 4
	rest 4
	rest 10
	octave 5
	note D_, 10
	rest 2
	note D_, 6
	rest 2
	octave 4
	note A#, 4
	octave 5
	note D_, 4
	note E_, 4
	note F_, 10
	rest 2
	note E_, 10
	rest 2
	note D_, 8
	sound_jump .mainloop

.sub1:
	octave 5
	note C_, 3
	rest 9
	octave 4
	note G_, 3
	rest 9
	octave 5
	note C_, 8
	note C#, 3
	rest 9
	octave 4
	note G#, 12
	note A#, 8
	octave 5
	note C_, 3
	rest 9
	octave 4
	note G_, 3
	rest 9
	octave 5
	note C_, 8
	note C#, 3
	rest 9
	note D#, 12
	note F_, 8
	sound_ret

.sub2:
	volume_envelope 1, 4
	octave 5
	note C_, 10
	rest 2
	octave 4
	note G_, 6
	rest 2
	note G_, 4
	octave 5
	note C_, 4
	note E_, 4
	sound_ret

.sub3:
	note_type 3, 3, 4
	octave 4
	note E_, 3
	volume_envelope 2, 4
	note E_, 3
	volume_envelope 1, 4
	note E_, 11
	volume_envelope 2, 4
	note E_, 11
	volume_envelope 3, 4
	note E_, 4
	sound_ret
