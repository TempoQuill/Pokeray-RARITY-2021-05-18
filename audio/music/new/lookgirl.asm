Music_LookGirl:
; AUG 24 2019
	channel_count 4
	channel 1, Music_LookGirl_Ch1
	channel 2, Music_LookGirl_Ch2
	channel 3, Music_LookGirl_Ch3
	channel 4, Music_LookGirl_Ch4

Music_LookGirl_Ch1:
	tempo 267
	volume 7, 7
	duty_cycle 2
	vibrato 0, 1, 2
	note_type 3, 10, 7
	rest 16
	rest 16
.mainloop:
	rest 4
	octave 3
	note G#, 2
	note B_, 2
	octave 4
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 1
	rest 1
.loop1:
	octave 4
	note B_, 1
	octave 5
	note C#, 1
	sound_loop 4, .loop1
	octave 4
	note B_, 8
	rest 4
	octave 3
	note B_, 4
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note D#, 2
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note D#, 2
	note C#, 1
	rest 1
	note B_, 1
	rest 1
	octave 2
	note B_, 1
	rest 5
	octave 4
	note E_, 1
	rest 1
	note G#, 1
	rest 1
	note B_, 2
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
.loop2:
	octave 5
	note E_, 1
	note F#, 1
	sound_loop 4, .loop2
	note E_, 8
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note G#, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	sound_jump .mainloop

Music_LookGirl_Ch2:
	duty_cycle 2
	vibrato 10, 3, 3
	note_type 3, 10, 7
	octave 3
	note B_, 1
	rest 3
	octave 4
	note B_, 12
	duty_cycle 3
	volume_envelope 12, 2
	note E_, 4
	note D#, 4
	note C#, 4
	note C_, 4
.mainloop:
	octave 3
	note B_, 8
	octave 4
	note D#, 8
	note E_, 8
	note D#, 8
	note C#, 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 8
	octave 4
	note C#, 8
	octave 3
	note B_, 8
	note A_, 8
	note G#, 4
	note F#, 4
	note E_, 4
	note D#, 4
	note E_, 4
	note F#, 4
	note G#, 4
	note A_, 4
	sound_jump .mainloop

Music_LookGirl_Ch3:
	note_type 6, 1, 4
	rest 8
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
.mainloop:
	note D#, 2
.loop1:
	octave 3
	note E_, 1
	rest 3
	octave 2
	note B_, 1
	rest 3
	sound_loop 3, .loop1
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	sound_jump .mainloop

Music_LookGirl_Ch4:
	toggle_noise 5
	drum_speed 3
	rest 16
	rest 8
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 1, 1
	drum_note 1, 1
.mainloop:
	drum_note 9, 8
	drum_note 1, 12
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 2, 4
	drum_note 1, 8
	drum_note 1, 12
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 10, 2
	sound_jump .mainloop
