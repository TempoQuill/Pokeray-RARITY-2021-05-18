Music_GymVictory:
; JUL 23 2019
	channel_count 4
	channel 1, Music_GymVictory_Ch1
	channel 2, Music_GymVictory_Ch2
	channel 3, Music_GymVictory_Ch3
	channel 4, Music_GymVictory_Ch4

Music_GymVictory_Ch1:
	tempo 235
	volume 7, 7
	pitch_offset -1
	duty_cycle 3
	note_type 3, 10, 5
	octave 3
	note A_, 12
	note F_, 2
	note A_, 2
	octave 4
	note C_, 12
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note F_, 15
	note E_, 9
	volume_envelope 10, 1
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	note E_, 2
.mainloop:
	sound_call .sub1
	note F_, 4
	note E_, 8
	note E_, 8
	sound_call .sub1
	octave 3
	note A#, 4
	note A_, 16
	octave 4
	note A_, 4
	note G_, 4
	note F_, 8
	note G_, 4
	note F_, 4
	note E_, 8
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	note E_, 8
	note G_, 8
	note A_, 4
	note G_, 4
	note F_, 8
	note G_, 4
	note C_, 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note A_, 16
	sound_call .sub2
	note A_, 4
	note E_, 4
	note C_, 4
	note E_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note C_, 4
	note E_, 4
	note G_, 4
	sound_call .sub2
	note G_, 4
	note A_, 8
	note G_, 8
	note C_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	sound_jump .mainloop

.sub1:
	octave 3
	note A_, 4
	note A_, 2
	note A#, 2
	octave 4
	note C_, 8
	octave 3
	note G_, 4
	note G_, 2
	note A_, 2
	note A#, 8
	note F_, 4
	note A#, 2
	octave 4
	note C_, 2
	note D_, 4
	sound_ret

.sub2:
	note F_, 4
	note C_, 4
	note F_, 4
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note C_, 4
	note F_, 4
	note A_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note C_, 4
	note F_, 4
	note A_, 4
	transpose 0, 2
	sound_loop 2, .sub2
	transpose 0, 0
.sub2loop1:
	note G_, 4
	note E_, 4
	note G_, 4
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note E_, 4
	note G_, 4
	note A#, 4
	sound_loop 2, .sub2loop1
	note F_, 4
	note C_, 4
	note F_, 4
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note C_, 4
	note F_, 4
	sound_ret

Music_GymVictory_Ch2:
	duty_cycle 2
	note_type 3, 13, 5
	octave 4
	note C_, 12
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note F_, 12
	note C_, 2
	note F_, 2
	note A_, 16
	note G_, 1
	octave 5
	note C_, 7
	note_type 6, 10, 2
	octave 2
	note D_, 2
	note E_, 2
.mainloop:
	sound_call .sub1
	octave 2
	note C_, 2
	note G_, 2
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	sound_call .sub1
	octave 3
	note C_, 1
	octave 1
	note F_, 7
	sound_loop 2, .mainloop
	sound_call .sub2
	octave 3
	note E_, 1
	note G_, 1
	note A#, 1
	note G_, 1
	note A#, 1
	octave 4
	note E_, 1
	note G_, 1
	note A_, 4
	note G_, 4
	note F_, 14
	note D_, 2
	note C_, 12
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	note A#, 1
	sound_call .sub2
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	note C_, 1
	note E_, 1
	note G_, 1
	note A#, 1
	octave 4
	note C_, 4
	note E_, 4
	note F_, 14
	note G_, 2
	note F_, 8
	duty_cycle 2
	vibrato 0, 0, 0
	volume_envelope 10, 2
	octave 1
	note F_, 4
	octave 2
	note C_, 4
	sound_jump .mainloop

.sub1:
	octave 2
	note F_, 2
	octave 3
	note F_, 1
	note G_, 1
	note A_, 2
	octave 2
	note C_, 2
	note E_, 2
	octave 3
	note E_, 1
	note F_, 1
	note G_, 2
	octave 2
	note C_, 2
	note D_, 2
	octave 3
	note D_, 1
	note E_, 1
	note F_, 2
	octave 1
	note A#, 2
	sound_ret

.sub2:
	duty_cycle 3
	vibrato 14, 4, 4
	note_type 6, 13, 8
	octave 4
	note C_, 6
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note_type 12, 13, 8
	note F_, 12
	transpose 0, 2
	sound_loop 2, .sub2
	transpose 0, 0
	note_type 6, 13, 8
	octave 3
	note A#, 6
	note G_, 1
	note A#, 1
	octave 4
	note E_, 8
	octave 2
	note A#, 1
	sound_ret

Music_GymVictory_Ch3:
	note_type 6, 1, 5
	octave 3
	note F_, 8
	note C_, 8
	octave 2
	note F_, 8
	octave 3
	note C_, 4
	octave 4
	note C_, 1
	note E_, 1
	note G_, 1
	octave 5
	note C_, 1
	volume_envelope 1, -3
.mainloop:
	sound_call .sub1
	rest 5
	volume_envelope 1, 2
	note D_, 1
	note E_, 1
	sound_call .sub1
	rest 7
	note_type 3, 1, 5
	sound_call .sub2
	sound_call .sub2
	transpose 0, 2
	sound_call .sub2
	sound_call .sub2
	transpose 0, 0
	sound_call .sub3
	sound_call .sub3
	sound_call .sub2
	octave 3
	ntoe C_, 8
	octave 4
	note E_, 1
	note G_, 1
	rest 2
	octave 3
	note G_, 4
	ntoe C_, 4
	octave 4
	note E_, 1
	note G_, 1
	rest 2
	octave 3
	note E_, 4
	octave 4
	note E_, 1
	note A#, 1
	rest 2
	sound_call .sub2
	sound_call .sub2
	transpose 0, 2
	sound_call .sub2
	sound_call .sub2
	transpose 0, 0
	sound_call .sub3
	sound_call .sub3
	sound_call .sub2
	octave 3
	note F_, 4
	octave 4
	note F_, 1
	octave 5
	note C_, 1
	rest 2
	octave 3
	note C_, 4
	octave 4
	note E_, 1
	note A#, 1
	rest 2
	note F_, 1
	note A_, 1
	rest 6
	note_type 6, 1, -3
	note A#, 1
	octave 5
	note C_, 1
	note D_, 1
	note E_, 1
	sound_jump .mainloop

.sub1:
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 3
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 3
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	note A_, 2
	octave 5
	note C_, 1
	rest 3
	note C_, 4
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 3
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 3
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	note A_, 2
	note F_, 1
	sound_ret

.sub2:
	octave 3
	note F_, 8
	octave 4
	note F_, 1
	note A_, 1
	rest 2
	octave 3
	note C_, 4
	note F_, 4
	octave 4
	note F_, 1
	note A_, 1
	rest 2
	octave 3
	note C_, 4
	octave 4
	note F_, 1
	octave 5
	note C_, 1
	rest 2
	sound_ret

.sub3:
	octave 3
	ntoe C_, 8
	octave 4
	note E_, 1
	note G_, 1
	rest 2
	octave 3
	note G_, 4
	ntoe C_, 4
	octave 4
	note E_, 1
	note G_, 1
	rest 2
	octave 3
	note G_, 4
	octave 4
	note E_, 1
	note A#, 1
	rest 2
	sound_ret

Music_GymVictory_Ch4:
	toggle_noise 6
	drum_speed 6
	drum_note 7, 16
	drum_note 7, 10
	drum_speed 3
	drum_note 2, 4
	drum_note 2, 4
	drum_note 1, 4
.mainloop:
	sound_call .sub1
	drum_note 1, 16
	sound_call .sub1
	drum_note 1, 8
	sound_call .sub2
	sound_call .sub3
	drum_note 1, 4
	drum_note 2, 8
	drum_note 1, 4
	drum_note 2, 4
	drum_note 2, 4
	sound_call .sub2
	drum_note 7, 8
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 2, 8
	drum_note 7, 8
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 7, 8
	sound_jump .mainloop

.sub1:
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 8
	drum_note 2, 8
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	drum_note 2, 4
	drum_note 1, 4
	drum_note 2, 8
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 8
	drum_note 2, 8
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 4
	sound_ret

.sub2:
	drum_note 10, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 8
.sub2loop1:
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 2, 8
	drum_note 1, 4
	drum_note 2, 8
	drum_note 1, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 1, 8
	sound_loop 2, .sub2loop1
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 2, 8
.sub3:
	drum_note 1, 8
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 4
	drum_note 2, 8
	sound_ret
