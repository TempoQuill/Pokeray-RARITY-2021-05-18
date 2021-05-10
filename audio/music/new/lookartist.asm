Music_LookArtist:
; NOV 30 2019
	channel_count 3
	channel 1, Music_LookArtist_Ch1
	channel 2, Music_LookArtist_Ch2
	channel 3, Music_LookArtist_Ch3

Music_LookArtist_Ch1:
	tempo 165
	volume 7, 7
	duty_cycle 3
	note_type 6, 10, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note G_, 1
	note A_, 1
	volume_envelope 10, 5
	note B_, 16
.mainloop:
	octave 2
	note G_, 16
	note A_, 8
	octave 3
	note F_, 8
	note C_, 8
	rest 8
	note F_, 8
	note G_, 4
	note F_, 4
	note E_, 8
	note D_, 8
	note C_, 12
	note E_, 4
	note F#, 8
	note E_, 4
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	note D_, 4
	note F_, 4
	sound_jump .mainloop

Music_LookArtist_Ch2:
	duty_cycle 2
	note_type 12, 10, 5
	rest 2
	octave 2
	note G_, 6
	octave 3
	note D_, 2
.mainloop:
	note E_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note G_, 2
	note A_, 8
	note B_, 8
	note A_, 6
	note G_, 2
	note A_, 4
	note G_, 2
	note F#, 2
	note G_, 8
	sound_jump .mainloop

Music_LookArtist_Ch3:
	note_type 6, 1, 3
	octave 5
	note G_, 1
	note B_, 1
	octave 6
	note D_, 1
	note F_, 1
	note G_, 3
	volume_envelope 2, 3
	note G_, 3
	volume_envelope 3, 3
	note G_, 3
	rest 3
	vibrato 12, 5, 3
	volume_envelope 1, 3
	octave 2
	note B_, 4
.mainloop:
	octave 3
	note C_, 16
	note D_, 16
	note E_, 8
	rest 8
	octave 4
	note C_, 8
	octave 3
	note B_, 4
	note A_, 4
	note G_, 16
	note F_, 16
	note E_, 4
	note D_, 4
	rest 12
	note G_, 16
	sound_jump .mainloop
