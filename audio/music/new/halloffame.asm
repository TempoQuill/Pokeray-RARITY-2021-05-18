Music_HallOfFame:
; drum
; AUG 14 2019
	channel_count 4
	channel 1, Music_HallOfFame_Ch1
	channel 2, Music_HallOfFame_Ch2
	channel 3, Music_HallOfFame_Ch3
	channel 4, Music_HallOfFame_Ch4

Music_HallOfFame_Ch1:
	tempo 197
	volume 7, 7
	duty_cycle 3
	vibrato 6, 2, 2
	note_type 6, 10, 7
.mainloop:
	rest 16
	rest 16
	rest 16
	rest 12
	octave 3
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
.loop1:
	octave 4
	note C_, 16
	note E_, 16
	note F#, 16
	note F_, 16
	sound_loop 3, .loop1
	sound_jump .mainloop

Music_HallOfFame_Ch2:
	duty_cycle 3
	vibrato 14, 8, 4
	note_type 12, 12, 2
.loop1:
	transpose 0, 2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	sound_loop 3, .loop1
	volume_envelope 12, 3
	note D_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	sound_jump Music_HallOfFame_Ch2

.sub1:
	octave 2
	note C_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	note C_, 1
	note F_, 1
	sound_ret

Music_HallOfFame_Ch3:
	vibrato 8, 1, 3
.mainloop:
	note_type 3, 1, 4
	transpose 0, 2
	sound_call .sub1
	sound_call .sub2
	note G_, 4
	sound_call .sub1
	transpose 0, 0
	sound_call .sub2
	note F_, 4
	sound_jump .mainloop

.sub1:
	octave 4
	note F_, 4
	note C_, 4
	note F_, 4
	note G_, 7
	volume_envelope 2, 4
	note G_, 7
	volume_envelope 3, 4
	note G_, 6
	sound_ret

.sub2:
	volume_envelope 1, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note A#, 7
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note A_, 7
	volume_envelope 2, 4
	note A_, 1
	volume_envelope 1, 4
	sound_ret

Music_HallOfFame_Ch4:
	toggle_noise 7
	drum_speed 6
.mainloop:
	rest 16
	rest 16
	rest 16
	rest 16
.loop1:
	sound_call .sub1
	drum_note 10, 4
	sound_call .sub1
	drum_note 3, 2
	drum_note 10, 2
	sound_loop 2, .loop1
	sound_call .sub1
	drum_note 10, 4
	sound_call .sub1
	drum_note 3, 4
	sound_jump .mainloop

.sub1:
	drum_note 10, 2
	drum_note 10, 4
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 2
	drum_note 10, 2
	sound_ret
