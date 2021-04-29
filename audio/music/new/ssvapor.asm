Music_SSVapor:
; JUL 19 2019
	channel_count 3
	channel 1, Music_SSVapor_Ch1
	channel 2, Music_SSVapor_Ch2
	channel 3, Music_SSVapor_Ch3
	channel 4 ; from placeholders
	
Music_SSVapor_Ch1:
	tempo 235
	volume 7, 7
	pitch_offset -1
	duty_cycle 3
	vibrato 11, 2, 2
	note_type 12, 6, 5
	octave 3
	note F#, 2
	note G_, 2
	note A_, 4
	note B_, 2
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	rest 2
	note C#, 2
	note D_, 2
	note E_, 2
.mainloop:
	volume_envelope 6, 7
	note F#, 4
	note A_, 4
	octave 4
	note C#, 6
	octave 3
	note B_, 2
	note A_, 2
	note F#, 1
	note G_, 1
	note A_, 2
	octave 4
	note E_, 2
	note D_, 2
	volume_envelope 10, 5
	octave 3
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note E_, 2
	note C#, 1
	note D_, 1
	note E_, 2
	note G_, 2
	note A_, 4
	note G_, 4
	note F#, 2
	note D_, 2
	note F#, 2
	note A_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note C#, 1
	note D_, 1
	note E_, 2
	note G_, 2
	note F#, 2
	note G_, 1
	note F#, 1
	note E_, 2
	note A_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note F#, 1
	note E_, 1
	note D_, 2
	note F#, 2
	note A_, 2
	note E_, 4
	note G_, 4
	note A_, 2
	note G_, 2
	note G_, 2
	note E_, 2
	note F#, 2
	note A_, 2
	note D_, 2
	note F#, 1
	note A_, 1
	note G_, 4
	note A_, 2
	note F#, 2
	note G_, 2
	note G_, 2
	note F#, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note C#, 2
	note G_, 2
	note A_, 1
	note G_, 1
	note F#, 2
	note F#, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note E_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
	note D_, 2
	note E_, 1
	note D_, 1
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 2
	note F#, 2
	note G_, 1
	note E_, 1
	note F#, 1
	note D_, 1
	note E_, 4
	volume_envelope 1, -7
	note D_, 4
	note E_, 4
	note F#, 4
	note A_, 2
	octave 4
	note D_, 4
	volume_envelope 7, -4
	octave 3
	note A_, 2
	volume_envelope 10, 7
	note A_, 2
	volume_envelope 7, -4
	note A_, 2
	volume_envelope 10, 7
	note A_, 6
	note G_, 2
	note F#, 8
	note D_, 16
	volume_envelope 6, -4
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note A_, 2
	note B_, 1
	note G_, 1
	note A_, 1
	note F#, 1
	note G_, 2
	note F#, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
	volume_envelope 3, -5
	note F#, 3
	volume_envelope 8, 7
	note F#, 5
	volume_envelope 3, -5
	note D_, 3
	volume_envelope 8, 7
	note D_, 5
	volume_envelope 3, -5
	note G_, 3
	volume_envelope 8, 7
	note G_, 5
	volume_envelope 3, -5
	note E_, 3
	volume_envelope 8, 7
	note E_, 1
	volume_envelope 3, -5
	note F#, 3
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 3, -5
	note A_, 3
	volume_envelope 8, 7
	note A_, 5
	volume_envelope 3, -5
	note F#, 3
	volume_envelope 8, 7
	note F#, 1
	volume_envelope 3, -5
	note C#, 3
	volume_envelope 8, 7
	note C#, 1
.loop1:
	volume_envelope 3, -5
	octave 3
	note F#, 3
	volume_envelope 8, 7
	note F#, 5
	sound_loop 2, .loop1
	volume_envelope 3, -5
	note D_, 3
	volume_envelope 8, 7
	note D_, 5
	volume_envelope 3, -5
	note C#, 3
	volume_envelope 8, 7
	note C#, 5
	volume_envelope 3, -5
	octave 2
	note B_, 3
	volume_envelope 8, 7
	note B_, 5
	volume_envelope 3, -5
	note A_, 3
	volume_envelope 8, 7
	note A_, 5
	volume_envelope 3, -5
	note B_, 3
	volume_envelope 8, 7
	note B_, 5
	volume_envelope 3, -5
	octave 3
	note C#, 3
	volume_envelope 8, 7
	note C#, 5
	volume_envelope 3, -7
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 2
	octave 4
	note C#, 2
	note D_, 4
	octave 3
	note G_, 4
	note A_, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	sound_jump .mainloop
	
Music_SSVapor_Ch2:
	note_type 12, 8, 4
	rest 4
	duty_cycle 1
	vibrato 28, 2, 4
	octave 2
	note D_, 8
	note A_, 8
	note D_, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note D_, 8
	duty_cycle 0
	volume_envelope 6, 0
	octave 3
	note D_, 8
	octave 2
	note A_, 8
	octave 3
	note D_, 8
	octave 2
	note G_, 4
	note A_, 4
	octave 3
	note A_, 8
	note E_, 4
	note D_, 2
	note C#, 2
	octave 2
	note B_, 4
	note A_, 4
	note G_, 4
	duty_cycle 1
	volume_envelope 12, 5
	note C#, 1
	note D_, 1
	note E_, 1
	note C#, 1
.mainloop:
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 2
	note D_, 2
	note E_, 4
	note A_, 4
	note D_, 14
	note D_, 2
	note E_, 8
	note A_, 8
	note F#, 2
	note D_, 2
	note F#, 2
	note A_, 2
	note G_, 4
	note F#, 4
	note E_, 2
	volume_envelope 6, 7
	octave 1
	note A_, 1
	octave 2
	note C#, 1
	volume_envelope 12, 7
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note E_, 4
	note A_, 4
	duty_cycle 0
	volume_envelope 6, 0
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note D_, 1
	note C#, 1
	note D_, 2
	octave 3
	note G_, 2
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note F#, 2
	volume_envelope 7, -4
	octave 2
	note G_, 2
	note F#, 2
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note E_, 2
	note F#, 2
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C#, 1
	duty_cycle 2
	volume_envelope 12, 7
	octave 4
	note D_, 1
	note C#, 1
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	note D_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 1
	note E_, 1
	note C#, 2
	note D_, 2
	note E_, 4
	transpose 0, 12
	sound_call .sub1
	note D_, 4
	transpose 0, 0
	duty_cycle 0
	volume_envelope 6, -4
	sound_call .sub1
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 2
	note D_, 2
	note G_, 4
	volume_envelope 6, 0
	sound_call .sub1
	note D_, 2
	note D_, 1
	note E_, 1
	duty_cycle 2
	volume_envelope 7, -7
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 4
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	volume_envelope 4, -7
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 6
	volume_envelope 12, 7
	note A_, 6
	volume_envelope 4, -7
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 6
	volume_envelope 12, 7
	note B_, 6
	volume_envelope 4, -7
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 3
	note C#, 4
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	volume_envelope 1, -7
	note D_, 8
	note C#, 8
	octave 2
	note B_, 8
	note A_, 8
	note G_, 8
	note F#, 8
	note E_, 8
	note A_, 8
	volume_envelope 6, -4
	transpose 2, 0
	sound_call .sub2
	transpose 0, 0
	volume_envelope 1, -4
	octave 2
	note D_, 8
	note E_, 8
	note F#, 8
	note G_, 8
	note A_, 8
	note G_, 4
	note F#, 4
	note E_, 8
	note F#, 4
	volume_envelope 10, 0
	note G_, 2
	volume_envelope 12, 5
	note A_, 2
	duty_cycle 1
	sound_jump .mainloop
	
.sub1:
	octave 3
	note A_, 1
	note F#, 1
	note G_, 1
	note E_, 1
	note F#, 1
	note D_, 1
	note E_, 1
	note C#, 1
	sound_ret
	
.sub2:
	octave 5
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	note A_, 1
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	octave 5
	note D_, 1
	rest 1
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note F#, 1
	note G_, 1
	note A_, 2
	note D_, 2
	note A_, 2
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 1
	note F#, 1
	note G_, 2
	note F#, 1
	note G_, 1
	note A_, 2
	note G_, 1
	note A_, 1
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	sound_ret
	
Music_SSVapor_Ch3:
	vibrato 17, 1, 3
	note_type 6, 1, -4
	octave 5
	note D_, 4
	note E_, 4
	note F#, 7
	rest 1
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	note E_, 4
	note D_, 7
	rest 1
	note E_, 7
	rest 1
	note D_, 4
	octave 4
	note A_, 4
	note G_, 4
	note A_, 4
	sound_call .sub1
	note F#, 7
	rest 1
	note E_, 4
	note D_, 2
	note E_, 2
.mainloop:
	note F#, 4
	note D_, 4
	note F#, 4
	note A_, 4
	note G_, 4
	note D_, 4
	note F#, 4
	note D_, 4
	note E_, 4
	octave 4
	note A_, 4
	octave 5
	note E_, 4
	note G_, 4
	note F#, 4
	note G_, 2
	note F#, 2
	note E_, 7
	rest 5
	volume_envelope 1, -4
	note D_, 2
	note E_, 2
	note F#, 4
	note G_, 2
	note F#, 2
	note E_, 4
	note C#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	note A_, 4
	octave 5
	note C#, 4
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	octave 5
	note F#, 4
	octave 4
	note A_, 4
	octave 5
	note F#, 4
	note G_, 4
	note E_, 2
	note F#, 2
	note G_, 4
	note D_, 4
	note C#, 4
	note G_, 4
	note E_, 4
	note G_, 4
	note F#, 4
	note D_, 2
	note E_, 2
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note D_, 4
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G_, 14
	rest 2
	sound_call .sub2
	sound_call .sub2
	volume_envelope 1, 2
	octave 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 4
	note E_, 4
	note F#, 4
	note D_, 4
	note E_, 8
	note D_, 8
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	octave 4
	note C#, 4
	note D_, 2
	rest 14
	note_type 12, 2, 6
	sound_call Music_SSVapor_Ch2.sub1
	note D_, 4
	rest 12
	transpose 0, 12
	volume_envelope 1, 3
	sound_call Music_SSVapor_Ch2.sub1
	transpose 0, 0
	octave 4
	note D_, 2
	note D_, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note G_, 2
	note G_, 2
	note F#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 4
	note A_, 8
	note F#, 8
	note B_, 8
	note G_, 8
	octave 5
	note C#, 8
	octave 4
	note A_, 8
	sound_call Music_SSVapor_Ch2.sub2
	note_type 6, 1, 0
	octave 5
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note C#, 4
	note E_, 4
	note F#, 16
	note A_, 16
	sound_call .sub2
	sound_call .sub1
	note F#, 4
	note D_, 4
	note E_, 7
	rest 1
	sound_jump .mainloop

.sub1:
	octave 5
	note D_, 4
	octave 4
	note A_, 4
	octave 5
	note D_, 4
	note F#, 4
	note E_, 4
	octave 4
	note A_, 4
	octave 5
	note E_, 4
	note G_, 4
	note F#, 4
	note D_, 2
	note E_, 2
	note F#, 4
	note G_, 4
	sound_ret
	
.sub2:
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 3
	rest 1
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 4
	note B_, 4
	octave 5
	note D_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 7
	rest 1
	sound_ret
