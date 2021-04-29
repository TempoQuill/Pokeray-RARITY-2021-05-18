Music_EastCoastStop:
; APR 17 2021
	channel_count 4
	channel 1, Music_EastCoastStop_Ch1
	channel 2, Music_EastCoastStop_Ch2
	channel 3, Music_EastCoastStop_Ch3
	channel 4, Music_EastCoastStop_Ch4

Music_EastCoastStop_Ch1:
	tempo 192
	volume 7, 7
	pitch_offset 2
	duty_cycle 1
	vibrato 5, 6, 3
	note_type 12, 7, 4
.mainloop:
	transpose 0, 0
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	note A_, 2
	note E_, 1
	note B_, 2
	note E_, 1
	note A_, 2
	note E_, 1
	sound_loop 12, .mainloop
.loop1:
	sound_call .sub1
	sound_call .sub2
	sound_loop 3, .loop1
	sound_call .sub1
	transpose 1, 7
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	octave 1
	note F#, 2
	octave 2
	note D#, 3
	note D#, 1
	octave 1
	note F#, 2
	octave 2
	note D#, 1
	octave 1
	note F#, 2
	octave 2
	note D#, 1
	sound_ret

.sub2:
	octave 1
	note A_, 2
	octave 2
	note E_, 3
	note E_, 1
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	octave 1
	note A_, 2
	octave 2
	note E_, 1
	sound_ret

Music_EastCoastStop_Ch2:
	pitch_inc_switch
.mainloop:
	duty_cycle 3
	vibrato 9, 4, 2
	note_type 6, 10, 4
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	sound_call .sub1
	note E_, 4
	note C#, 6
	octave 3
	note B_, 2
	note A_, 4
	note B_, 2
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 4
	note F#, 2
	note A_, 4
	note B_, 2
	note A_, 4
	note A_, 6
	rest 16
	rest 2
	sound_call .sub1
	note A_, 4
	note F#, 6
	note E_, 2
	note C#, 4
	octave 3
	note B_, 2
	note A_, 4
	rest 2
	note B_, 4
	rest 1
	octave 4
	note C_, 1
	note C#, 6
	octave 3
	note B_, 4
	note A_, 6
	rest 12
	note A_, 2
	note B_, 4
	note A_, 2
	sound_call .sub2
	sound_call .sub3
	octave 3
	note A_, 2
	sound_call .sub2
	volume_envelope 10, 2
	note F#, 4
	note A_, 6
	note E_, 12
	volume_envelope 11, 1
	note A_, 2
	sound_call .sub2
	sound_call .sub3
	volume_envelope 10, 3
	note C#, 6
	octave 3
	note B_, 2
	note A_, 4
	note F#, 2
	note A_, 4
	note B_, 2
	note A_, 4
	volume_envelope 10, 7
	note B_, 16
	rest 10
	sound_jump .mainloop

.sub1:
	octave 4
	note C_, 2
	note C#, 4
	note E_, 2
	note C#, 4
	octave 3
	note B_, 2
	note A_, 4
	note B_, 2
	octave 4
	note C#, 4
	note E_, 2
	note F#, 6
	sound_ret

.sub2:
	octave 3
	note A_, 2
	volume_envelope 10, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 2
	volume_envelope 11, 1
	sound_loop 4, .sub2
	note A_, 2
	sound_ret

.sub3:
	octave 4
	note C_, 1
	volume_envelope 10, 2
	note C#, 3
	volume_envelope 11, 1
	note E_, 6
	note F#, 6
	note E_, 6
	sound_ret

Music_EastCoastStop_Ch3:
	transpose 0, 0
	note_type 12, 2, 4
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	note A_, 2
	note E_, 1
	note B_, 2
	note E_, 1
	octave 4
	note C#, 2
	octave 3
	note E_, 1
	sound_loop 12, Music_EastCoastStop_Ch3
.loop1:
	sound_call .sub1
	sound_call .sub2
	sound_loop 3, .loop1
	sound_call .sub1
	transpose 1, 7
	sound_call .sub2
	sound_jump Music_EastCoastStop_Ch3

.sub1:
	octave 2
	note F#, 2
	octave 3
	note A_, 1
	volume_envelope 3, 4
	note A_, 1
	rest 1
	volume_envelope 2, 4
	note A_, 1
	octave 2
	note F#, 2
	octave 3
	note A_, 1
	octave 2
	note F#, 2
	octave 3
	note A_, 1
	sound_ret

.sub2:
	octave 2
	note A_, 2
	octave 3
	note A_, 1
	volume_envelope 3, 4
	note A_, 1
	rest 1
	volume_envelope 2, 4
	note A_, 1
	octave 2
	note A_, 2
	octave 3
	note A_, 1
	octave 2
	note A_, 2
	octave 3
	note A_, 1
	sound_ret

Music_EastCoastStop_Ch4:
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 2, 2
	drum_note 8, 3
	drum_note 8, 1
	drum_note 2, 2
	drum_note 8, 1
	drum_note 2, 2
	drum_note 8, 1
	sound_jump .mainloop
