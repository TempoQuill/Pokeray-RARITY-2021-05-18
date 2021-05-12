Music_LookRival:
; drum
; SEP 19 2019
	channel_count 4
	channel 1, Music_LookRival_Ch1
	channel 2, Music_LookRival_Ch2
	channel 3, Music_LookRival_Ch3
	channel 4, Music_LookRival_Ch4

Music_AfterTheRivalFight:
; drum
; SEP 19 2019
	channel_count 4
	channel 1, Music_AfterTheRivalFight_Ch1
	channel 2, Music_AfterTheRivalFight_Ch2
	channel 3, Music_AfterTheRivalFight_Ch3
	channel 4, Music_AfterTheRivalFight_Ch4

Music_AfterTheRivalFight:
	tempo 203
	volume 7, 7
	sound_jump Music_LookRival_Ch1.body

Music_LookRival_Ch1:
	tempo 203
	volume 7, 7
	note_type 6, 8, 7
	octave 4
	note C_, 1
	note D_, 1
	note_type 12, 8, 7
	note E_, 9
.body:
	note_type 6, 10, 2
	octave 2
	note G#, 2
	note A_, 2
	note A#, 2
.mainloop:
	octave 2
	note B_, 4
	note B_, 2
	octave 3
	note D_, 4
	note C_, 2
	note F_, 4
	note D_, 6
	octave 2
	note A_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 4
	note E_, 6
	note D_, 2
	note E_, 4
	note C_, 2
	note D_, 6
	note G_, 4
	note A_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note E_, 2
	duty_cycle 2
	octave 5
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
.loop1:
	note C_, 1
	rest 1
	sound_loop 5, .loop1
	note C#, 1
	rest 1
	note D_, 6
	duty_cycle 0
	octave 3
	note D_, 4
	note B_, 6
	note A_, 2
	note F#, 1
	note G_, 3
	note E_, 6
	note D_, 2
	note E_, 4
	note G_, 2
	note E_, 6
	note E_, 2
	note G_, 2
	note A_, 2
	note G_, 4
	note D_, 2
	duty_cycle 2
	octave 4
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note D_, 1
	rest 3
	octave 3
	note B_, 1
	rest 1
	octave 4
	note D_, 1
	rest 3
	note B_, 1
	rest 5
	octave 3
	note G_, 6
	octave 4
	note D_, 1
	rest 1
	note C_, 1
	rest 3
	octave 3
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 6
	note D_, 6
	octave 3
	note A_, 6
	note A_, 4
	note F#, 2
	note G_, 6
	note C_, 6
	note E_, 6
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A#, 2
	note A_, 10
	note F#, 2
	note D_, 2
	octave 2
	note F#, 2
	note A_, 2
	note B_, 4
	octave 3
	note C_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	duty_cycle 0
	note F#, 12
	sound_jump .mainloop

Music_AfterTheRivalFight_Ch2:
	duty_cycle 3
	note_type 6, 10, 4
	rest 6
	sound_jump Music_LookRival_Ch2.mainloop

Music_LookRival_Ch2:
	duty_cycle 3
	vibrato 19, 4, 4
	note_type 6, 12, 4
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	note D_, 4
	octave 4
	note B_, 1
	note A_, 1
	note G_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 12
	vibrato 0, 0, 0
.mainloop:
	volume_envelope 10, 4
	octave 3
	note G_, 6
	rest 4
	note A_, 6
	note G_, 6
	note F_, 2
	note E_, 6
	note F_, 4
	note G_, 6
	note F_, 2
	note G_, 4
	note B_, 2
	note G_, 6
	note B_, 4
	octave 4
	note D_, 6
	note C_, 2
	note D_, 8
	duty_cycle 2
	volume_envelope 12, 1
	octave 5
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note D_, 1
	rest 1
.loop1:
	octave 4
	note F_, 1
	rest 1
	sound_loop 5, .loop1
	note F#, 1
	rest 1
	note G_, 4
	duty_cycle 3
	volume_envelope 12, 4
	note F_, 2
	note G_, 4
	note F_, 2
	note G_, 4
	note F_, 2
	note C#, 1
	note D_, 3
	note C_, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note E_, 2
	note D_, 6
	note C_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 4
	duty_cycle 2
	volume_envelope 12, 1
	octave 4
	note B_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	octave 4
	note B_, 1
	rest 3
	note G_, 1
	rest 1
	octave 5
	note D_, 1
	rest 3
	note G_, 1
	rest 5
	note F_, 1
	rest 1
	note G_, 1
	rest 3
	note D_, 1
	rest 1
	note F_, 1
	rest 3
	note G_, 1
	rest 7
	volume_envelope 12, 4
	octave 4
	note A_, 10
	note D_, 2
	note F#, 4
	note A_, 2
	note F#, 4
	note D_, 2
	note D#, 1
	note E_, 11
	note G_, 12
	note F#, 10
	note D_, 6
	octave 3
	note F#, 2
	note G_, 4
	note A_, 2
	note G_, 12
	duty_cycle 3
	octave 4
	note C_, 12
	sound_jump .mainloop

Music_LookRival_Ch3:
	note_type 6, 3, 7
	octave 3
	note G_, 1
	note B_, 1
	note_type 12, 3, 7
	octave 4
	note C_, 9
Music_AfterTheRivalFight_Ch3:
	note_type 6, 1, 4
	octave 2
	note F_, 1
	volume_envelope 2, 4
	note F_, 1
	sound_call .sub1
.mainloop:
	transpose 1, 7
	sound_call .sub2
	sound_call .sub2
	transpose 1, 5
	sound_call .sub2
	transpose 1, 7
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	sound_call .sub2
	transpose 1, 8
	sound_call .sub1
	transpose 1, 10
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	sound_loop 3, .mainloop
	transpose 1, 5
	sound_call .sub2
	sound_call .sub2
	transpose 1, 7
	sound_call .sub2
	transpose 1, 5
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	sound_call .sub2
	transpose 0, 4
	sound_call .sub1
	transpose 0, 6
	sound_call .sub1
	transpose 0, 8
	sound_call .sub1
	transpose 0, 2
.loop1:
	sound_call .sub2
	sound_loop 4, .loop1
	transpose 0, 0
	sound_call .sub2
	sound_call .sub2
.loop2:
	volume_envelope 1, 4
	note C_, 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
	sound_loop 2, .loop2
	transpose 0, 8
	sound_call .sub1
	transpose 0, 2
.loop3:
	sound_call .sub2
	sound_loop 4, .loop3
	transpose 0, 0
	sound_call .sub2
	sound_call .sub2
.loop4:
	volume_envelope 1, 4
	note D_, 1
	volume_envelope 2, 4
	note D_, 1
	sound_loop 3, .loop4
	volume_envelope 1, 4
	octave 2
	note A#, 1
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note A_, 1
	volume_envelope 2, 4
	note A_, 1
	volume_envelope 1, 4
	note G#, 1
	volume_envelope 2, 4
	note G#, 1
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 4
	octave 2
	note F_, 1
	volume_envelope 2, 4
	note F_, 1
	volume_envelope 1, 4
	note F#, 1
	volume_envelope 2, 4
	note F#, 1
	sound_ret

.sub2:
	volume_envelope 1, 4
	octave 3
	note C_, 2
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 3, 4
	note C_, 1
	rest 2
	sound_ret

Music_AfterTheRivalFight_Ch4:
	toggle_noise 6
	drum_speed 12
	sound_jump Music_LookRival_Ch4.body

Music_LookRival_Ch4:
	toggle_noise 6
	drum_speed 12
	rest 10
.body:
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
.mainloop:
	sound_call .sub1
	sound_loop 3, .mainloop
	sound_call .sub2
	sound_call .sub1
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 10, 1
	drum_note 5, 1
	drum_note 6, 1
	sound_ret

.sub2:
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 10, 3
	drum_note 7, 3
	drum_note 10, 3
	drum_note 10, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 10, 1
	drum_note 5, 1
	drum_note 6, 1
	sound_ret