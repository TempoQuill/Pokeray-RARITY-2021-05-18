Music_EquintoLeague:
; AUG 14 2019
	channel_count 4
	channel 1, Music_EquintoLeague_Ch1
	channel 2, Music_EquintoLeague_Ch2
	channel 3, Music_EquintoLeague_Ch3
	channel 4, Music_EquintoLeague_Ch4

Music_EquintoLeague_Ch1:
	tempo 245
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 2
	note_type 12, 10, 2
	octave 2
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 2
.mainloop:
	volume_envelope 10, 3
	octave 3
	note C_, 2
.loop1:
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note E_, 2
	sound_loop 3, .loop1
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note C_, 2
.loop2:
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note E_, 2
	sound_loop 2, .loop2
	sound_call .sub2
	sound_call .sub1
	volume_envelope 10, 3
	octave 3
	note C_, 2
.loop3:
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note E_, 2
	sound_loop 3, .loop3
	volume_envelope 10, 3
	octave 3
	note C_, 2
.loop4:
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note E_, 2
	sound_loop 3, .loop4
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note C_, 2
.loop5:
	sound_call .sub2
	volume_envelope 10, 3
	octave 3
	note E_, 2
	sound_loop 2, .loop5
	sound_call .sub2
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 3
	note G_, 1
	note A_, 1
	volume_envelope 10, 5
	note B_, 4
	octave 2
	note B_, 4
	octave 3
	note G_, 4
	octave 2
	note G_, 4
.sub2:
	volume_envelope 10, 2
	octave 2
	note B_, 1
	note B_, 3
	note B_, 1
	note B_, 3
	note B_, 1
	note B_, 3
	note B_, 1
	note B_, 1
	sound_ret

Music_EquintoLeague_Ch2:
	duty_cycle 3
	vibrato 15, 7, 4
	note_type 12, 12, 1
	octave 2
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 2
.mainloop:
	volume_envelope 12, 2
	note F_, 2
.loop1:
	sound_call .sub2
	volume_envelope 12, 2
	note B_, 2
	sound_loop 3, .loop1
	sound_call .sub2
	volume_envelope 12, 2
	note G#, 2
.loop2:
	sound_call .sub2
	volume_envelope 12, 2
	note B_, 2
	sound_loop 2, .loop2
	sound_call .sub2
	sound_call .sub1
	sound_call .sub2
	volume_envelope 12, 2
	note G#, 2
.loop3:
	sound_call .sub2
	volume_envelope 12, 2
	note B_, 2
	sound_loop 3, .loop3
	sound_call .sub2
	volume_envelope 12, 2
	note F_, 2
.loop4:
	sound_call .sub2
	volume_envelope 12, 2
	note B_, 2
	sound_loop 3, .loop4
	sound_call .sub2
	volume_envelope 12, 2
	note G#, 2
.loop5:
	sound_call .sub2
	volume_envelope 12, 2
	note B_, 2
	sound_loop 2, .loop5
	sound_call .sub2
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	volume_envelope 12, 2
	octave 3
	note C_, 1
	note D_, 1
	volume_envelope 12, 4
	note E_, 4
	octave 2
	note E_, 4
	octave 3
	note D_, 4
	octave 2
	note D_, 4
.sub2:
	volume_envelope 12, 1
	note E_, 1
	note E_, 3
	note E_, 1
	note E_, 3
	note E_, 1
	note E_, 3
	note E_, 1
	note E_, 1
	sound_ret

Music_EquintoLeague_Ch3:
	vibrato 9, 1, 3
	note_type 3, 1, 4
	octave 4
	note E_, 2
	rest 14
	note E_, 2
	rest 14
	note E_, 2
	rest 14
	note E_, 2
	rest 6
.mainloop:
	note F_, 8
	sound_call .sub1
	note B_, 8
	sound_call .sub1
	octave 5
	note C_, 8
	sound_call .sub1
	note B_, 8
	sound_call .sub1
	note D#, 8
	sound_call .sub1
	note B_, 8
	sound_call .sub3
	volume_envelope 1, -3
	octave 4
	note A#, 1
	note B_, 15
	note B_, 4
	note E_, 4
	note A_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 16
	volume_envelope 1, 4
	sound_call .sub2
	note D#, 8
	sound_call .sub1
	note B_, 8
	volume_envelope 1, -3
	octave 5
	note D#, 1
	note E_, 15
	note E_, 4
	note F_, 4
	note D_, 8
	note E_, 16
	volume_envelope 1, 4
	octave 4
	sound_call .sub2
	octave 5
	note C_, 8
	octave 4
	sound_call .sub1
	note B_, 8
	volume_envelope 1, -3
	octave 5
	note C#, 1
	note D_, 15
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	note G#, 16
	volume_envelope 1, 4
	sound_call .sub2
	note F_, 8
	sound_call .sub1
	note B_, 8
	volume_envelope 1, -3
	octave 5
	note D#, 1
	note E_, 15
	note E_, 4
	note F#, 4
	note G_, 8
	note G#, 16
	volume_envelope 1, 4
	octave 4
	sound_call .sub2
	octave 5
	note C_, 8
	octave 4
	sound_call .sub1
	note B_, 8
	sound_call .sub1
	note D#, 8
	sound_call .sub1
	note B_, 8
	sound_call .sub3
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 4
	note E_, 2
	rest 2
	note E_, 2
	rest 10
	sound_loop 3, .sub1
.sub2:
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	sound_ret

.sub3:
	note B_, 7
	rest 1
	sound_loop 8, .sub3
.sub3loop1:
	octave 5
	note C_, 7
	rest 1
	sound_loop 7, .sub3loop1
	note C_, 4
	note D_, 4
	note E_, 16
	octave 4
	note E_, 16
	octave 5
	note F_, 16
	note F_, 16
	sound_ret

Music_EquintoLeague_Ch4:
	toggle_noise 2
	drum_speed 3
	drum_note 2, 16
	drum_note 2, 16
	drum_note 2, 16
	drum_note 2, 8
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
.loop1:
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
	sound_loop 2, .loop1
.mainloop:
	sound_call .sub1
	sound_loop 5, .mainloop
	sound_call .sub2
.loop2:
	sound_call .sub1
	sound_loop 12, .loop2
	sound_call .sub2
.loop3:
	sound_call .sub1
	sound_loop 3, .loop3
	sound_jump .mainloop

.sub1:
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 3, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

.sub2:
	drum_note 2, 16
	drum_note 2, 16
	drum_note 2, 16
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret
