Music_Larch:
; SEP 6 2019
	channel_count 4
	channel 1, Music_Larch_Ch1
	channel 2, Music_Larch_Ch2
	channel 3, Music_Larch_Ch3
	channel 4, Music_Larch_Ch4

Music_Larch_Ch1:
	tempo 145
	volume 7, 7
	duty_cycle 2
	note_type 12, 8, 2
	rest 8
	octave 3
	note F_, 2
	note G_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note E_, 4
	note E_, 4
.mainloop:
	sound_call .sub1
	note D_, 4
	note C_, 2
	note E_, 4
	note E_, 4
	note G_, 4
	note G_, 4
	note A_, 4
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 4
	sound_call .sub1
	note D_, 4
	note F_, 2
	note G_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 4
	note D_, 4
	note E_, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	sound_call .sub1
	note D_, 6
	note F_, 4
	note F_, 4
	note G_, 4
	note G_, 4
	note A_, 4
	note A_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note E_, 2
	sound_call .sub1
	octave 4
	note E_, 2
	note F_, 2
	note G_, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note F_, 2
	octave 3
	note G_, 2
	note B_, 2
	octave 4
	note F_, 2
	note E_, 4
	note D_, 4
	octave 3
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	sound_jump .mainloop

.sub1:
	note G_, 4
	note G_, 4
	note G#, 4
	note G#, 4
	note A_, 4
	volume_envelope 10, 3
	note F#, 6
	volume_envelope 8, 2
	sound_ret

Music_Larch_Ch2:
	duty_cycle 3
	note_type 12, 13, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 6
	volume_envelope 13, 1
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	volume_envelope 12, 3
	octave 4
	note A_, 4
	note G_, 2
.mainloop:
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 6
	note E_, 2
	note A_, 2
	note E_, 4
	note D_, 2
	note C_, 6
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note E_, 6
	note F_, 2
	note G_, 4
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note A_, 2
	note G_, 6
	note E_, 1
	note F_, 1
	note G_, 6
	note F_, 2
	note E_, 6
	note D_, 1
	note E_, 1
	note C_, 4
	note E_, 2
	note A_, 6
	note C_, 2
	note D_, 2
	note E_, 6
	note E_, 1
	note F_, 1
	note D_, 6
	note D_, 1
	note E_, 1
	note C_, 12
	note C_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C_, 1
	note D_, 2
	note E_, 7
	note E_, 2
	note A_, 2
	note E_, 2
	note D_, 2
	note E_, 1
	note C_, 5
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note C_, 2
	note E_, 2
	note F_, 4
	note E_, 2
	note D_, 4
	note G_, 2
	note F_, 2
	note G_, 6
	note F_, 2
	note E_, 6
	note D_, 1
	note E_, 1
	note C_, 4
	note E_, 2
	note A_, 6
	note C_, 2
	note D_, 2
	note E_, 8
	note D_, 8
	note C_, 8
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 3
	sound_jump .mainloop

Music_Larch_Ch3:
	note_type 12, 1, -6
	rest 8
	octave 3
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note C_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
.mainloop:
	sound_call .sub2
	sound_call .sub1
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note B_, 2
	note D_, 2
	note B_, 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	note C_, 2
	octave 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note D_, 4
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	note A_, 2
	note D_, 2
	sound_call .sub1
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note B_, 2
	note D_, 2
	note B_, 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 3
	sound_jump .mainloop

.sub1:
	note F_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note G_, 2
	note B_, 2
	note D_, 2
	note B_, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
.sub2:
	octave 3
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note D_, 4
	octave 2
	note A_, 2
	octave 3
	note F#, 2
	note A_, 2
	sound_ret

Music_Larch_Ch4:
	toggle_noise 3
	drum_speed 12
	rest 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
Music_Larch_Ch4_loop:
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 12, 4
	drum_note 3, 2
	drum_note 3, 6
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	sound_jump Music_Larch_Ch4_loop
