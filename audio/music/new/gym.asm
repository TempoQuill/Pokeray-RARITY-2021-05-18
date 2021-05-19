Music_Gym:
; wav, drum
; JUN 18 2020
	channel_count 4
	channel 1, Music_Gym_Ch1
	channel 2, Music_Gym_Ch2
	channel 3, Music_Gym_Ch3
	channel 4, Music_Gym_Ch4

Music_Gym_Ch1:
	tempo 153
	volume 7, 7
	duty_cycle 2
	vibrato 8, 2, 4
.mainloop:
	note_type 6, 10, 2
	octave 4
	note G#, 4
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 3
	octave 4
	note E_, 2
	note G#, 4
	transpose 1, 10
	sound_loop 2, .mainloop
	transpose 0, 0
	note E_, 4
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 2
	note E_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note E_, 2
	octave 4
	note C#, 2
	note D#, 2
	octave 3
	note B_, 2
	note F#, 2
	octave 4
	note D#, 2
	volume_envelope 10, 3
	octave 3
	note B_, 6
	note G#, 6
	note G#, 4
	note G#, 2
	note G#, 2
	note G#, 4
	note E_, 4
	note G#, 4
	note A_, 4
	note D_, 2
	note F#, 2
	note F#, 4
	note D_, 4
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 6
	note E_, 6
	note E_, 2
	note G#, 2
	note B_, 4
	note E_, 4
	note G#, 4
	note B_, 2
	note G#, 2
	note F#, 4
	note F#, 2
	note G#, 2
	note A_, 4
	note D_, 4
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	note E_, 4
	octave 3
	note B_, 6
	note B_, 4
	note B_, 2
	note B_, 2
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note F#, 2
	note A_, 2
	note A_, 4
	note F#, 4
	octave 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 6
	note G#, 6
	note G#, 4
	note G#, 2
	note B_, 2
	octave 4
	note E_, 4
	octave 3
	note G#, 4
	note B_, 4
	octave 4
	note E_, 4
	note F#, 4
	note D_, 2
	note F#, 2
	note A_, 4
	note F#, 4
	note A_, 4
	note F#, 2
	note A_, 2
	octave 5
	note D_, 8
	duty_cycle 3
	volume_envelope 12, 5
	sound_call .sub1
	rest 2
	note E_, 2
	note F#, 2
	rest 4
	note C#, 8
	octave 3
	note G#, 4
	note E_, 4
	note G#, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	octave 4
	note E_, 8
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note F#, 8
	duty_cycle 2
	sound_call .sub1
	octave 3
	note B_, 2
	note G#, 2
	octave 4
	note F#, 2
	note G#, 8
	note F#, 2
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note G#, 2
	note A_, 8
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note B_, 8
	octave 5
	note E_, 8
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	sound_jump .mainloop

.sub1:
	octave 4
	note G#, 12
	octave 3
	note B_, 2
	rest 4
	note B_, 2
	rest 2
	note B_, 2
	octave 4
	note G#, 6
	note B_, 8
	note A_, 8
	note G#, 8
	note F#, 8
	note E_, 2
	sound_ret

Music_Gym_Ch2:
	transpose 0, 7
	duty_cycle 3
	vibrato 8, 6, 2
.loop1
	sound_call .sub1
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	transpose 0, 5
	sound_loop 2, .loop1
	transpose 0, 0
	sound_call .sub1
	volume_envelope 12, 2
	octave 1
	note A_, 2
	note A_, 2
	note B_, 4
	note B_, 4
	octave 2
	note B_, 4
	octave 3
	note D_, 2
	note D#, 2
	vibrato 8, 2, 2
	note_type 12, 12, 7
	octave 4
	note E_, 12
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note F#, 3
	note D_, 1
	note D_, 4
	note A_, 4
	note F#, 4
	octave 4
	note E_, 12
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 12
	note G#, 12
	note F#, 2
	note G#, 2
	note A_, 3
	note F#, 1
	note F#, 2
	octave 5
	note D_, 3
	octave 4
	note A_, 1
	note A_, 4
	note G#, 12
	note F#, 2
	note G#, 2
	note A_, 2
	note F#, 1
	note A_, 1
	octave 5
	note D_, 8
	vibrato 8, 6, 2
	note_type 6, 12, 5
	octave 2
	note D_, 4
	note D#, 4
	sound_call .sub2
	sound_call .sub3
	transpose 1, 10
	sound_call .sub2
	sound_call .sub3
	transpose 1, 9
	sound_call .sub2
	sound_call .sub3
	transpose 1, 8
	note E_, 4
	sound_call .sub4
	transpose 1, 10
	note E_, 4
	sound_call .sub4
	transpose 0, 0
	sound_call .sub2
	sound_call .sub3
	transpose 1, 10
	sound_call .sub2
	sound_call .sub3
	transpose 1, 9
	sound_call .sub2
	octave 2
	note E_, 4
	transpose 1, 10
	sound_call .sub2
	octave 2
	note E_, 4
	transpose 0, 0
	sound_call .sub2
	sound_call .sub3
	sound_jump Music_Gym_Ch2

.sub1:
	note_type 6, 12, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	volume_envelope 12, 5
	octave 3
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 3
	sound_ret

.sub2:
	note E_, 2
	rest 2
	note E_, 2
	note B_, 2
	octave 3
	note E_, 2
	rest 2
	sound_ret

.sub3:
	octave 2
	note E_, 8
.sub4:
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	note B_, 4
	note E_, 4
	sound_ret

Music_Gym_Ch3:
	vibrato 11, 1, 3
	note_type 12, 1, -2
	octave 6
	note E_, 2
	volume_envelope 1, -4
	octave 4
	note E_, 1
	note E_, 1
	note E_, 1
	rest 1
	volume_envelope 1, -2
	octave 5
	note B_, 1
	octave 6
	note E_, 1
	note D_, 2
	volume_envelope 1, -4
	octave 4
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	volume_envelope 1, -2
	octave 5
	note B_, 1
	octave 6
	note D_, 1
	note C#, 2
	volume_envelope 1, -4
	octave 3
	note A_, 1
	note A_, 1
	note A_, 1
	rest 1
	volume_envelope 1, -2
	note C#, 1
	note C#, 1
	note C#, 4
	note D#, 4
	volume_envelope 1, 6
.loop1:
	octave 4
	note E_, 3
	octave 3
	note E_, 3
	note E_, 2
	note E_, 1
	note E_, 1
	note E_, 2
	note B_, 2
	note E_, 2
	note D_, 3
	note D_, 3
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note D#, 2
	sound_loop 4, .loop1
	volume_envelope 1, -6
	sound_call .sub1
	note B_, 5
	rest 1
	note B_, 2
	octave 6
	note E_, 2
	octave 5
	note B_, 2
	octave 6
	note D_, 4
	note C_, 4
	octave 5
	note B_, 4
	note A_, 4
	vibrato 0, 1, 3
	volume_envelope 1, 0
	sound_call .sub1
	note B_, 4
	note B_, 1
	rest 1
	note B_, 1
	octave 6
	note C#, 1
	note D_, 4
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 8
	note F#, 4
	sound_jump Music_Gym_Ch3

.sub1:
	octave 5
	note B_, 6
	octave 6
	note E_, 6
	octave 5
	note B_, 4
	octave 6
	note D_, 4
	note C#, 4
	octave 5
	note B_, 4
	note A_, 4
	note G#, 1
	rest 1
	note G#, 1
	note A_, 1
	sound_ret

Music_Gym_Ch4:
	toggle_noise 6
	drum_speed 12
.mainloop:
	drum_note 3, 1
	drum_note 4, 1
	drum_note 5, 1
	drum_note 6, 1
	drum_note 7, 4
	sound_loop 3, .mainloop
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 1
	drum_note 4, 1
	drum_note 5, 1
	drum_note 6, 1
.loop1:
	sound_call .sub1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 2
	sound_loop 3, .loop1
	sound_call .sub1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 3, 1
	drum_note 4, 1
	drum_note 5, 1
	drum_note 6, 1
.loop2:
	sound_call .sub2
	drum_note 2, 2
	drum_note 10, 2
	sound_call .sub2
	drum_note 3, 1
	drum_note 4, 1
	drum_note 5, 1
	drum_note 6, 1
	sound_loop 3, .loop2
	sound_call .sub3
	drum_note 2, 2
	drum_note 10, 2
	sound_call .sub3
	drum_note 7, 2
	drum_note 3, 1
	drum_note 5, 1
	sound_jump .mainloop

.sub1:
	drum_note 2, 3
	drum_note 2, 3
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 7, 4
	drum_note 2, 3
	drum_note 2, 3
	drum_note 2, 2
	sound_ret

.sub2:
	drum_note 1, 2
	drum_note 3, 1
	drum_note 5, 1
	drum_note 2, 2
	drum_note 1, 1
	drum_note 2, 2
	drum_note 2, 1
	drum_note 1, 2
	sound_ret

.sub3:
	drum_note 7, 2
	drum_note 3, 1
	drum_note 5, 1
	drum_note 2, 2
	drum_note 1, 1
	drum_note 2, 1
	drum_note 7, 1
	drum_note 2, 1
	drum_note 1, 2
	sound_ret