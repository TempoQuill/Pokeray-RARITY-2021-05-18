Music_Route49:
; wav
; AUG 10 2019
	channel_count 4
	channel 1, Music_Route49_Ch1
	channel 2, Music_Route49_Ch2
	channel 3, Music_Route49_Ch3
	channel 4, Music_Route49_Ch4

Music_Route49_Ch1:
	tempo 153
	volume 7, 7
	duty_cycle 3
	vibrato 8, 2, 2
	note_type 12, 10, 2
.mainloop:
	rest 4
	octave 3
	note G_, 2
	note C_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	rest 2
	note E_, 2
	note C_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	note B_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note C_, 2
	sound_loop 2, .mainloop
	octave 2
	note G_, 2
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	rest 2
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	rest 2
	note A_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	note F_, 1
	note E_, 1
	note D_, 2
	note G_, 2
	rest 2
	sound_jump .mainloop

.sub1:
	rest 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	sound_ret

.sub2:
	rest 2
	octave 3
	note B_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note C_, 2
	note G_, 2
	note C_, 2
.sub3:
	rest 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	sound_ret

Music_Route49_Ch2:
	duty_cycle 2
	vibrato 11, 2, 3
.mainloop:
	note_type 12, 12, 2
.loop1:
	octave 4
	note E_, 1
	note F_, 1
	note G_, 2
	note E_, 4
	note C_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note G_, 6
	note F_, 1
	note E_, 1
	note D_, 6
	note C_, 1
	note D_, 1
	note E_, 2
	note G_, 4
	note E_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note E_, 4
	note D_, 4
	note C_, 2
	volume_envelope 10, 2
	octave 3
	note G_, 2
	note E_, 2
	volume_envelope 12, 2
	sound_loop 2, .loop1
	octave 4
	note E_, 1
	note G_, 1
	sound_call .sub1
	note B_, 4
	octave 5
	note C_, 4
	octave 4
	note G_, 4
	note C_, 4
	note G_, 4
	octave 3
	note B_, 4
	sound_call .sub1
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	octave 5
	note E_, 2
	octave 4
	note G_, 2
	volume_envelope 12, 4
	octave 5
	note D_, 6
	octave 4
	note D_, 4
	note A_, 2
	note F#, 2
	octave 5
	note D_, 2
	note C_, 6
	note D_, 1
	note C_, 1
	octave 4
	note B_, 6
	sound_jump .mainloop

.sub1:
	octave 4
	note A_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note G_, 4
	note E_, 2
	note F_, 2
	note G_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 4
	note E_, 2
	note E_, 1
	note G_, 1
	note A_, 4
	note F_, 2
	note A_, 2
	sound_ret

Music_Route49_Ch3:
	note_type 12, 1, -4
	rest 2
	vibrato 11, 2, 4
.mainloop:
	sound_call .sub1
	note G_, 8
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	sound_call .sub1
	note G_, 4
	octave 4
	note D_, 4
	note C_, 4
	note E_, 4
	note F_, 8
	note E_, 8
	note D_, 8
	note C_, 8
	note F_, 8
	note D_, 8
	note A_, 8
	note G_, 8
	note F_, 8
	note E_, 8
	note D_, 8
	note C_, 8
	note F_, 8
	note E_, 8
	note D_, 8
	note D_, 8
	octave 3
	note G_, 8
	note G_, 4
	rest 4
	sound_jump .mainloop

.sub1:
	octave 4
	note C_, 8
	octave 3
	note F_, 8
	note G_, 8
	note B_, 8
	octave 4
	note C_, 8
	octave 3
	note F_, 8
	sound_ret

Music_Route49_Ch4:
	toggle_noise 4
	drum_speed 12
	rest 4
.mainloop:
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	sound_loop 3, .mainloop
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
.loop1:
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	sound_loop 4, .loop1
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 4
	sound_jump .mainloop
