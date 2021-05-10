Music_LookYouth:
; NOV 27 2019
	channel_count 3
	channel 1, Music_LookYouth_Ch1
	channel 2, Music_LookYouth_Ch2
	channel 3, Music_LookYouth_Ch3

Music_LookYouth_Ch1:
	tempo 137
	volume 7, 7
	pitch_offset -1
	duty_cycle 3
	note_type 12, 10, 4
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note G_, 1
	note A_, 1
	note B_, 4
	note A_, 4
	note G_, 4
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note F#, 1
	rest 9
	note D_, 2
	note D_, 2
	note C_, 2
.mainloop:
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	note G_, 8
	note E_, 4
	note C_, 4
	note G_, 4
	note A_, 2
	note G_, 2
	note B_, 4
	note G_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note G_, 8
	note G_, 4
	note E_, 4
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F#, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note B_, 6
	note B_, 4
	note A_, 4
	note G_, 2
	sound_jump .mainloop

Music_LookYouth_Ch2:
	duty_cycle 3
	vibrato 10, 5, 3
	note_type 12, 13, 3
	octave 3
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	volume_envelope 4, -7
	note D_, 12
	volume_envelope 13, 3
	note D_, 1
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	rest 1
	octave 3
	note D_, 4
	octave 1
	note D_, 4
	octave 2
	note D_, 2
	note E_, 2
	note F#, 2
.mainloop:
	note G_, 2
	note B_, 2
	note D_, 2
	octave 3
	note C_, 2
	octave 1
	note G_, 2
	octave 3
	note D_, 2
	octave 1
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C#, 2
	note B_, 2
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	octave 1
	note A_, 2
	octave 3
	note C_, 2
	octave 1
	note F#, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note F#, 1
	note A_, 1
	octave 1
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	octave 1
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note D_, 2
	note B_, 2
	sound_jump .mainloop

Music_LookYouth_Ch3:
	note_type 6, 1, 5
	octave 3
	note G_, 2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	note G_, 2
	rest 2
	octave 3
	note G_, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note G_, 2
	rest 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	note C#, 2
	rest 2
	note G_, 2
	note A_, 2
	note D_, 2
	rest 2
	octave 2
	note A_, 6
	rest 1
	volume_envelope 1, 4
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	note F#, 2
	volume_envelope 2, 4
	note F#, 2
	volume_envelope 3, 4
	note F#, 2
	rest 1
	volume_envelope 1, 2
	note F#, 4
	note G_, 4
	note A_, 4
.mainloop:
	note G_, 8
	rest 4
	note G_, 2
	note A_, 2
	note B_, 8
	octave 5
	note C#, 1
	note D_, 7
	note C_, 10
	rest 2
	octave 4
	note G_, 4
	octave 5
	note E_, 10
	rest 2
	note E_, 2
	note F#, 2
	note G_, 8
	rest 4
	note A_, 2
	note G_, 2
	note F#, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 16
	rest 16
	volume_envelope 1, 6
	note G_, 8
	rest 4
	note G_, 2
	note A_, 2
	note B_, 8
	octave 5
	note C#, 1
	note D_, 7
	note E_, 10
	rest 2
	note E_, 2
	note F#, 2
	note G_, 4
	note F#, 4
	note E_, 4
	note C#, 4
	note D_, 4
	octave 4
	note D_, 4
	rest 4
	note D_, 2
	note E_, 2
	note F#, 8
	rest 4
	note G#, 1
	note A_, 3
	note G_, 16
	rest 12
	volume_envelope 1, 2
	note D_, 2
	note F#, 2
	sound_jump .mainloop
