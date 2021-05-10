Music_LookWoman:
; AUG 24 2019
	channel_count 4
	channel 1, Music_LookWoman_Ch1
	channel 2, Music_LookWoman_Ch2
	channel 3, Music_LookWoman_Ch3
	channel 4, Music_LookWoman_Ch4

Music_LookWoman_Ch1:
	tempo 256
	volume 7, 7
	duty_cycle 2
	note_type 3, 10, 4
	rest 8
.mainloop:
	volume_envelope 10, 4
	octave 4
	note C#, 8
	volume_envelope 10, 1
	octave 3
	note B_, 4
	note A_, 4
	volume_envelope 10, 4
	note G#, 4
	volume_envelope 10, 1
	note A_, 4
	note G#, 4
	volume_envelope 10, 4
	note E_, 12
	volume_envelope 10, 1
	note A_, 4
	octave 4
	note C#, 4
	note E_, 4
	octave 3
	note E_, 4
	note G#, 4
	volume_envelope 10, 4
	octave 4
	note E_, 4
	volume_envelope 10, 1
	octave 3
	note A_, 4
	note E_, 4
	note A_, 4
	volume_envelope 10, 4
	octave 4
	note D_, 4
	volume_envelope 10, 1
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	volume_envelope 10, 4
	octave 3
	note B_, 12
	volume_envelope 10, 1
	octave 4
	note E_, 4
	note G#, 4
	note B_, 4
	octave 5
	note E_, 8
	volume_envelope 10, 4
	octave 3
	note A_, 8
	volume_envelope 10, 1
	note F#, 4
	note A_, 4
	note F#, 4
	note A_, 4
	note E_, 4
	note F#, 4
	volume_envelope 10, 4
	note E_, 8
	volume_envelope 10, 1
	note A_, 4
	note B_, 4
	volume_envelope 10, 4
	octave 4
	note C#, 8
	volume_envelope 10, 1
	octave 3
	note A_, 8
	volume_envelope 10, 4
	note F#, 4
	volume_envelope 10, 1
	note A_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note C#, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note C#, 4
	note E_, 4
	note G#, 4
	note B_, 4
	sound_jump .mainloop

Music_LookWoman_Ch2:
	duty_cycle 3
	note_type 3, 14, 1
	rest 8
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	octave 1
	note A_, 4
	octave 2
	note E_, 1
	rest 3
	octave 1
	note G#, 4
	octave 2
	note E_, 1
	rest 3
	sound_call .sub2
	sound_call .sub2
	sound_call .sub3
	sound_call .sub3
	sound_call .sub4
	sound_call .sub4
	sound_call .sub5
	sound_call .sub5
	sound_call .sub4
	sound_call .sub3
	sound_call .sub1
	octave 1
	note A_, 4
	octave 2
	note E_, 1
	rest 3
	octave 1
	note B_, 4
	octave 2
	note E_, 2
	rest 2
	sound_jump .mainloop

.sub1:
	octave 1
	note A_, 4
.sub1_f2_f5:
	octave 2
	note E_, 1
	rest 3
	note A_, 1
	octave 3
	note C#, 1
	rest 2
	octave 2
	note E_, 1
	rest 3
	sound_ret

.sub2:
	octave 1
	note F#, 4
	sound_jump .sub1_f2_f5

.sub3:
	octave 1
	note E_, 4
	octave 2
	note E_, 1
	rest 3
	note G#, 1
	note B_, 1
	rest 2
	note E_, 1
	rest 3
	sound_ret

.sub4:
	octave 1
	note D_, 4
	octave 2
	note F#, 1
	rest 3
	note A_, 1
	octave 3
	note D_, 1
	rest 2
	octave 2
	note F#, 1
	rest 3
	sound_ret

.sub5:
	octave 1
	note C#, 4
	sound_jump .sub1_f2_f5

Music_LookWoman_Ch3:
	vibrato 0, 1, 4
.mainloop:
	note_type 3, 1, -2
	octave 5
	note D#, 1
	note E_, 3
	note G#, 2
	rest 2
	note A_, 8
	note G#, 4
	note F#, 4
	note E_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 7
	note D#, 1
	note E_, 12
	rest 4
	note A_, 4
	note B_, 3
	octave 6
	note C_, 1
	note C#, 8
	octave 5
	note B_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note G#, 16
	rest 12
	note E_, 3
	note F_, 1
	note F#, 8
	note E_, 4
	note F#, 4
	note E_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 12
	note D_, 4
	note E_, 8
	note A_, 4
	note B_, 3
	octave 6
	note C_, 1
	note C#, 8
	note E_, 4
	note D_, 4
	note C#, 4
	octave 5
	note B_, 4
	note A_, 4
	note G#, 4
	note_type 6, 1, -2
	note A_, 10
	rest 2
	sound_jump .mainloop

Music_LookWoman_Ch4:
	toggle_noise 4
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
.mainloop:
	drum_note 11, 2
	drum_note 7, 2
	drum_note 5, 2
	drum_note 7, 2
	drum_note 11, 2
	drum_note 4, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 7, 2
	sound_loop 7, .mainloop
	drum_note 12, 4
	drum_note 5, 2
	drum_note 12, 4
	drum_note 4, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 2, 2
	sound_jump .mainloop
