Music_Route55:
; drum
; NOV 16 2019
	channel_count 4
	channel 1, Music_Route55_Ch1
	channel 2, Music_Route55_Ch2
	channel 3, Music_Route55_Ch3
	channel 4, Music_Route55_Ch4

Music_Route55_Ch1:
	tempo 158
	volume 7, 7
	duty_cycle 2
	vibrato 0, 1, 4
	note_type 6, 10, 1
.mainloop:
	octave 3
	note F#, 4
	note F#, 8
	note F#, 2
	note F#, 2
	note F#, 4
	note F#, 4
	volume_envelope 10, 2
	note F#, 4
	note G_, 4
	note A_, 4
	note D_, 4
	note F#, 4
	note D_, 4
	note B_, 4
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	volume_envelope 10, 5
	octave 3
	note A_, 8
	note B_, 8
	note A_, 8
	note E_, 8
	note F#, 8
	note G_, 8
	note A_, 8
	note A_, 4
	note B_, 4
	octave 4
	note C#, 8
	note E_, 8
	note D_, 8
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 8
	octave 3
	note A_, 4
	octave 4
	note D_, 2
	note E_, 2
	note D_, 12
	note E_, 2
	note D_, 2
	note C#, 8
	octave 3
	note B_, 4
	duty_cycle 3
	note D_, 2
	note E_, 2
	note F#, 8
	note D_, 8
	note G_, 8
	note F#, 4
	note G_, 4
	note F#, 12
	note D_, 4
	note F#, 8
	note A_, 8
	octave 4
	note C#, 8
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	octave 3
	note G_, 4
	note F#, 4
	note E_, 4
	note F#, 8
	note D_, 8
	octave 2
	note B_, 8
	octave 3
	note F_, 1
	note F#, 7
	note G_, 8
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	note F#, 12
	volume_envelope 10, 1
	note F#, 2
	note F#, 2
	note F#, 4
	note F#, 4
	note F#, 8
	note A_, 12
	note A_, 2
	note A_, 2
	note A_, 4
	note A_, 4
	note A_, 8
	note A_, 4
	note A_, 8
	note A_, 2
	note A_, 2
	note A_, 4
	note A_, 4
	note A_, 8
	volume_envelope 10, 6
	note F#, 16
	note G_, 8
	note A_, 4
	note G_, 4
	octave 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note F#, 2
	note A_, 2
	octave 3
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A#, 4
	note B_, 4
	octave 4
	note C_, 8
	octave 3
	note A_, 8
	note A#, 4
	note F_, 4
	note G_, 4
	note C_, 4
	note A_, 8
	note F_, 8
	note C_, 8
	note E_, 8
	note F_, 16
	note A#, 4
	note F_, 4
	note G_, 4
	note A_, 4
	note G_, 8
	note F_, 8
	note E_, 8
	note D_, 4
	note C#, 4
	octave 2
	note A_, 4
	octave 3
	note F#, 8
	note A_, 12
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note G_, 8
	note A_, 4
	note B_, 4
	note A_, 8
	note G_, 8
	note F#, 8
	note D_, 8
	note E_, 8
	note G_, 4
	octave 4
	note D_, 4
	note C_, 8
	octave 3
	note A#, 8
	note A_, 4
	note G_, 4
	note A_, 4
	note C_, 4
	note D_, 8
	note A_, 8
	octave 4
	note D_, 8
	note G_, 8
	note A_, 13
	duty_cycle 2
	note A_, 1
	octave 5
	note C#, 1
	note E_, 1
	note A_, 16
	volume_envelope 10, 1
	octave 3
	note F#, 4
	note F#, 8
	note F#, 2
	note F#, 2
	note F#, 4
	note F#, 12
	note F#, 4
	note F#, 8
	note F#, 2
	note F#, 2
	note F#, 4
	note F#, 4
	note F#, 8
	sound_jump .mainloop

Music_Route55_Ch2:
	note_type 6, 13, 1
.mainloop:
	sound_call .sub1
	note D_, 4
	note D_, 8
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 8
	note D_, 4
	note D_, 4
	note D_, 8
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 4
	volume_envelope 13, 3
	note D#, 1
	note E_, 7
	sound_call .sub2
	octave 2
	note D_, 2
	note A_, 2
	octave 3
	note F#, 2
	note G_, 2
	volume_envelope 13, 1
	octave 2
	note A_, 4
	octave 1
	note A_, 8
	note A_, 2
	note A_, 2
	note A_, 4
	note A_, 4
	volume_envelope 13, 3
	note A_, 8
	sound_call .sub2
	note A#, 8
	note B_, 8
	octave 2
	note F#, 2
	octave 3
	note D_, 2
	note A_, 2
	octave 4
	note D_, 2
	octave 1
	note A_, 8
	octave 2
	note F#, 2
	octave 3
	note D_, 2
	note A_, 2
	octave 4
	note D_, 2
	octave 1
	note G_, 4
	octave 3
	note A#, 1
	note B_, 3
	note A_, 4
	note G_, 4
	octave 1
	note F#, 8
	note G_, 8
	note G_, 4
	octave 2
	note G_, 8
	octave 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 8
	volume_envelope 13, 1
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 4
	octave 2
	note D_, 8
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 4
	note D_, 2
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note C#, 2
.loop1:
	sound_call .sub3
	rest 2
	octave 1
	note A_, 8
	sound_loop 2, .loop1
	sound_call .sub3
	rest 6
	octave 1
	note A_, 4
	sound_call .sub3
	rest 2
	note D_, 1
	note E_, 7
	sound_call .sub4
	note F_, 4
	octave 3
	note B_, 1
	octave 4
	note C_, 3
	octave 3
	note A#, 4
	note G_, 4
	sound_call .sub4
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	octave 1
	note G_, 1
	note A_, 7
	note A#, 8
	rest 4
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	octave 2
	note A#, 4
	octave 3
	note C_, 4
	note D_, 4
	octave 2
	note C_, 8
	rest 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 2
	rest 2
	octave 1
	note A#, 2
	rest 2
	note A_, 4
	octave 2
	note A_, 2
	note G_, 2
.loop2:
	sound_call .sub3
	rest 2
	octave 1
	note A_, 8
	sound_loop 2, .loop2
	octave 2
	note D_, 8
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	note A_, 2
	note D_, 2
	note E_, 8
	note C_, 2
	note E_, 2
	note G_, 2
	octave 3
	note C_, 2
	sound_call .sub4
	note F_, 2
	rest 2
	note F_, 4
	rest 4
	octave 1
	note G_, 4
	note A_, 8
	rest 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 6
	rest 2
	octave 2
	note E_, 2
	rest 2
	note G#, 1
	note A_, 7
	rest 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 1
	note A_, 2
	rest 2
	note A_, 4
	rest 4
	note A_, 2
	rest 2
	volume_envelope 13, 1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	duty_cycle 3
	octave 2
	note D_, 4
	note D_, 8
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 8
	octave 1
	note A_, 4
	octave 2
	note D_, 4
	note D_, 8
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 4
	volume_envelope 13, 3
	octave 1
	note A_, 4
	volume_envelope 13, 1
	note B_, 2
	octave 2
	note C#, 2
	sound_ret

.sub2:
	octave 1
	note F#, 8
	octave 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	note A_, 2
	octave 1
	note G_, 8
	octave 2
	note D_, 2
	note B_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	octave 1
	note A_, 8
	sound_ret

.sub3:
	volume_envelope 13, 7
	octave 2
	note D_, 10
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 2
	rest 2
	note D_, 2
	sound_ret

.sub4:
	octave 2
	note F_, 8
	rest 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

Music_Route55_Ch3:
	vibrato 0, 1, 3
.mainloop
	sound_call .sub1
	volume_envelope 1, 4
	octave 4
	note D_, 4
	note E_, 4
	note F#, 8
	note D_, 8
	note F#, 1
	note G_, 11
	note A_, 4
	note_type 12, 1, 4
	note F#, 12
	volume_envelope 2, 1
	rest 2
	octave 3
	note A_, 1
	rest 1
	sound_call .sub1
	volume_envelope 1, 4
	octave 4
	note F#, 4
	note G_, 4
	sound_call .sub2
	note_type 12, 1, 4
	note E_, 12
	note_type 6, 1, 6
	rest 4
	octave 5
	note F#, 2
	note G_, 2
	sound_call .sub2
	note_type 12, 1, 6
	note D_, 10
	rest 2
	note D_, 2
	note E_, 2
	note F#, 4
	note D_, 3
	rest 1
	note D_, 4
	octave 4
	note B_, 4
	octave 5
	note D_, 8
	note_type 6, 1, 6
	note D#, 1
	note E_, 15
	note_type 12, 1, 6
	note D_, 12
	volume_envelope 2, 1
	octave 3
	note A_, 1
	rest 3
	note_type 6, 1, 3
	sound_call .sub3
	note_type 12, 1, 3
	note A_, 16
	rest 4
	note G_, 2
	note G#, 2
	note A_, 4
	note F_, 4
	note G_, 4
	note E_, 4
	note F_, 4
	note D_, 4
	octave 4
	note A_, 4
	octave 3
	note C_, 4
	note D_, 12
	note E_, 2
	note F_, 2
	note E_, 12
	note_type 6, 1, 5
	octave 4
	note A_, 2
	rest 6
	note A_, 2
	sound_call .sub3
	note A_, 1
	note A#, 15
	note_type 12, 1, 5
	note A_, 10
	rest 2
	note F_, 2
	note G_, 2
	note_type 6, 1, 5
	note G#, 1
	note A_, 7
	note F#, 8
	note G_, 8
	note E_, 8
	note F#, 8
	note D_, 8
	note E_, 8
	note C#, 8
	note_type 12, 1, 5
	note D_, 16
	sound_call .sub1
	note A_, 2
	rest 6
	sound_jump .mainloop

.sub1:
	note_type 6, 2, 1
	octave 3
	note A_, 2
	rest 2
	note A_, 2
	rest 6
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 2
	rest 2
	sound_ret

.sub2:
	note A_, 8
	note F#, 8
	note A#, 1
	note B_, 7
	note A_, 4
	note G_, 4
	note A_, 8
	note F_, 1
	note F#, 7
	sound_ret

.sub3:
	octave 5
	note D_, 16
	rest 8
	note F_, 1
	note F#, 7
	note E_, 12
	note D_, 4
	note C#, 8
	note D#, 1
	note E_, 7
	note D_, 16
	sound_ret

Music_Route55_Ch4:
	toggle_noise 6
	drum_speed 6
.mainloop:
	sound_call .sub2
	rest 8
	sound_call .sub2
	sound_call .sub5
	sound_loop 2, .mainloop
	sound_call .sub4
	drum_note 7, 12
	sound_call .sub3
	drum_note 8, 2
	drum_note 10, 2
	drum_note 9, 2
	drum_note 10, 2
	sound_call .sub4
	drum_note 7, 8
	drum_note 3, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 8, 4
	drum_note 8, 8
	drum_note 8, 2
	drum_note 8, 2
	sound_call .sub2
	sound_call .sub5
	sound_call .sub2
	rest 8
	sound_call .sub2
	sound_call .sub5
	drum_note 7, 12
	sound_call .sub1
	drum_note 8, 8
	sound_call .sub2
	rest 8
	sound_call .sub2
	sound_call .sub5
	drum_note 8, 12
	sound_call .sub1
	drum_note 8, 8
	sound_call .sub2
	rest 8
	sound_call .sub2
	sound_call .sub5
	drum_note 7, 12
	sound_call .sub1
	drum_note 8, 8
.loop2:
	drum_note 7, 8
	drum_note 3, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 6, 2
	sound_loop 3, .loop2
	drum_note 8, 4
	drum_note 8, 4
	sound_call .sub5
	drum_note 7, 8
	drum_note 3, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 6, 2
	sound_call .sub4
	drum_note 7, 12
	sound_call .sub1
	sound_call .sub5
	sound_jump .mainloop

.sub1:
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 4
	drum_note 8, 12
.sub2:
	drum_note 8, 4
	drum_note 8, 8
.sub3:
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 4
	drum_note 8, 4
	sound_ret

.sub4:
	drum_note 7, 8
	drum_note 3, 2
	drum_note 4, 2
	drum_note 5, 2
	drum_note 6, 2
	sound_loop 2, .sub4
	drum_note 7, 8
.sub5:
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_ret
