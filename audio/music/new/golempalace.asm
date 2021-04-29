Music_GolemPalace:
; FEB 13 2020
	channel_count 3
	channel 1, Music_GolemPalace_Ch1
	channel 2, Music_GolemPalace_Ch2
	channel 3, Music_GolemPalace_Ch3
	channel 4 ; from the National Park music

Music_GolemPalace_Ch1:
	tempo 176
	volume 7, 7
	duty_cycle 3
	note_type 12, 7, 7
	rest 2
.mainloop:
	sound_call .sub1
	octave 2
	note A_, 6
	octave 3
	note C_, 2
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 8
	note C_, 8
	octave 2
	note A_, 4
	note G_, 4
	note A_, 4
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 6
	octave 2
	note B_, 1
	note A_, 1
	note B_, 8
	sound_call .sub1
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	note G_, 2
	note A_, 1
	note B_, 1
	octave 3
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	note C_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 4
	octave 3
	note B_, 2
	note G_, 2
	note E_, 16
	sound_jump .mainloop

.sub1:
	octave 2
	note G_, 8
	octave 3
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 12
	note D_, 4
	note C_, 4
	note D_, 4
	note E_, 2
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	note G_, 8
	note G_, 4
	octave 3
	note C_, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	sound_ret

Music_GolemPalace_Ch2:
	duty_cycle 3
	vibrato 17, 3, 4
	note_type 12, 12, 7
.mainloop:
	octave 3
	note C_, 1
	note D_, 1
	sound_call .sub1
	note F_, 8
	note G_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note E_, 8
	note F_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 8
	note C_, 4
	note E_, 4
	note D_, 8
	note_type 8, 12, 7
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note_type 12, 12, 7
	sound_call .sub1
	note F_, 4
	note E_, 4
	note D_, 6
	note C_, 1
	note D_, 1
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 6
	octave 3
	note G_, 1
	note A_, 1
	note G_, 4
	note F_, 2
	note E_, 2
	note D_, 6
	note E_, 2
	note C_, 14
	sound_jump .mainloop

.sub1:
	note E_, 6
	note E_, 1
	note F_, 1
	note G_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 14
	note G_, 1
	note G#, 1
	note A_, 8
	note G_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note E_, 14
	note D_, 1
	note E_, 1
	sound_ret

Music_GolemPalace_Ch3:
	vibrato 25, 4, 3
	note_type 12, 1, 1
	rest 2
.mainloop:
	octave 3
	note C_, 8
	note D_, 8
	note E_, 2
	rest 2
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note C_, 4
	octave 2
	note A_, 8
	note B_, 8
	octave 3
	note C_, 2
	rest 2
	note G_, 4
	octave 4
	note C_, 8
	note D_, 4
	octave 3
	note C_, 4
	octave 2
	note B_, 2
	rest 2
	octave 3
	note G_, 2
	note A_, 2
	note G_, 4
	octave 2
	note A#, 4
	note A_, 2
	rest 2
	octave 3
	note E_, 4
	note F_, 8
	note F#, 8
	volume_envelope 1, -6
	note G_, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 8
	octave 3
	note C_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note D_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note D_, 2
	note B_, 2
	note C_, 2
	note A_, 2
	note E_, 2
	note G_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	note E_, 2
	note A_, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note C_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 2
	note F_, 2
	octave 3
	note A_, 2
	note C_, 2
	note A_, 2
	octave 2
	note G_, 2
	octave 3
	note B_, 2
	note D_, 2
	note B_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 2
	note G_, 2
	octave 4
	note C_, 2
	octave 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note E_, 2
	octave 4
	note C#, 2
	octave 3
	note D_, 2
	octave 4
	note C_, 2
	octave 2
	note A_, 2
	octave 4
	note C_, 2
	octave 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note D_, 2
	note B_, 2
	note C_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
	note C_, 2
	note E_, 2
	octave 2
	note G_, 2
	volume_envelope 1, 1
	note B_, 2
	sound_jump .mainloop