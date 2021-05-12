Music_TraversalCity:
; engine
; AUG 15 2020
	channel_count 3
	channel 1, Music_TraversalCity_Ch1
	channel 2, Music_TraversalCity_Ch2
	channel 3, Music_TraversalCity_Ch3
	channel 4 ; from Mushroom BGM and Cherrygrove City

Music_TraversalCity_Ch1:
	tempo 239
	volume 7, 7
	note_type 12, 10, 3
	rest 6
	pitch_inc_switch
	duty_cycle 1
	octave 3
	note E_, 2
	note D_, 1
	note E_, 2
	note D_, 1
	note C#, 16
	rest 8
.mainloop:
	volume_envelope 10, 2
	note E_, 2
	note E_, 1
	note F#, 2
	note E_, 1
	note A_, 2
	note A_, 2
	note A_, 1
	note B_, 1
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note C#, 1
	octave 3
	note A_, 1
	note A_, 1
	note F#, 1
	note A_, 1
	note G#, 3
	note A_, 2
	note E_, 1
	note F#, 2
	note E_, 1
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	octave 3
	note A_, 1
	note F#, 1
	note D#, 1
	note F#, 1
	note A_, 1
	octave 4
	note C#, 3
	octave 3
	note B_, 3
	sound_call .sub1
	octave 1
	note A_, 2
	octave 3
	note A_, 1
	note E_, 2
	note D_, 1
	note E_, 2
	octave 1
	note A_, 1
	octave 2
	note C#, 2
	note A_, 1
	octave 3
	note A_, 2
	note C#, 2
	note F#, 1
	note G#, 1
	note A_, 3
	note G#, 1
	note A_, 1
	note G#, 1
	note E_, 4
	note B_, 1
	note A_, 1
	note G#, 6
	sound_call .sub1
	octave 3
	note G#, 2
	note G#, 1
	note E_, 2
	note D_, 1
	note E_, 2
	note A#, 1
	octave 4
	note E_, 2
	octave 3
	note A#, 1
	note F#, 1
	octave 2
	note B_, 1
	octave 3
	note F#, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note E_, 2
	note G#, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	sound_call .sub2
	rest 1
	sound_jump .mainloop

.sub1:
	note D_, 1
	note A_, 2
	note A_, 2
	note A_, 1
	note G#, 2
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note F#, 1
	note A_, 1
	sound_ret

.sub2:
	octave 3
	note C#, 1
	note E_, 2
	note D_, 1
	note F#, 1
	note E_, 1
	note E_, 1
	note E_, 3
	sound_ret

Music_TraversalCity_Ch2:
	duty_cycle 2
	note_type 3, 13, 2
	octave 3
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note E_, 2
	rest 2
	note F#, 4
	note G#, 4
	note A_, 4
	note G#, 2
	rest 2
	note F#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note_type 12, 10, 2
	sound_call Music_TraversalCity_Ch1.sub2
	note_type 3, 13, 1
	rest 1
	octave 4
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 4
	note_type 12, 10, 2
	sound_call Music_TraversalCity_Ch1.sub2
.mainloop:
	note_type 3, 13, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 12
	note D_, 8
	note E_, 2
	note F#, 2
	note E_, 15
	note G#, 1
	note A_, 4
	note G#, 4
	note A_, 12
	note F#, 8
	note D_, 4
	note C#, 4
	octave 3
	note D_, 4
	note F#, 4
	note B_, 8
	note A_, 2
	note B_, 2
	octave 4
	note C#, 12
	note D_, 12
	note E_, 16
	note D_, 4
	note E_, 4
	note F#, 7
	note G#, 1
	note A_, 12
	note F#, 4
	note E_, 8
	octave 3
	note E_, 8
	duty_cycle 3
	vibrato 6, 4, 2
	volume_envelope 13, 7
	octave 4
	note D_, 4
	note E_, 4
	note F#, 8
	note D_, 12
	note C#, 4
	octave 3
	note B_, 16
	octave 4
	note C#, 4
	note D_, 4
	note E_, 8
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 8
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note F#, 8
	note A_, 8
	octave 4
	note D_, 4
	note E_, 4
	note F#, 12
	octave 3
	note B_, 4
	note A_, 4
	note B_, 3
	octave 4
	note C_, 1
	note C#, 16
	note D_, 4
	note C#, 4
	note_type 6, 13, 7
	octave 3
	note B_, 10
	octave 4
	note D_, 1
	note E_, 1
	note F#, 8
	note F#, 2
	note G#, 2
	note A_, 4
	note E_, 6
	note E_, 1
	note F#, 1
	note E_, 8
	note D_, 2
	note E_, 2
	note C#, 8
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 6
	octave 3
	note A_, 2
	note B_, 2
	note A_, 2
	note_type 3, 13, 7
	note G#, 11
	note A#, 1
	note B_, 8
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note_type 12, 13, 7
	note A_, 11
	duty_cycle 2
	vibrato 0, 0, 0
	sound_jump .mainloop

Music_TraversalCity_Ch3:
	note_type 6, 1, 6
	rest 12
	octave 3
	note E_, 3
	rest 1
	octave 2
	note B_, 1
	rest 1
	note G#, 2
	note F#, 2
	note E_, 2
	sound_call .sub1
.mainloop:
	sound_call .sub1
	sound_call .sub2
	volume_envelope 1, 6
	octave 3
	note C#, 4
	volume_envelope 2, 5
	note A_, 4
	octave 4
	note F#, 4
	volume_envelope 1, 6
	octave 3
	note E_, 4
	octave 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 6
	rest 2
	note F#, 2
	note G#, 2
	sound_call .sub2
	volume_envelope 1, 6
	octave 3
	note D#, 4
	volume_envelope 2, 5
	note B_, 4
	octave 4
	note F#, 4
	sound_call .sub4
	note A_, 4
	sound_call .sub4
	note G#, 4
	sound_call .sub3
	sound_call .sub3
	volume_envelope 1, 6
	octave 3
	note D_, 4
	note_type 2, 1, 0
	octave 5
	note F#, 3
	note A_, 3
	octave 6
.loop1:
	note D_, 2
	note E_, 2
	sound_loop 4, .loop1
	note D_, 2
	note C#, 3
	note D_, 3
	note C#, 6
	note_type 3, 2, 5
	octave 3
	note A_, 4
	octave 4
	note E_, 4
	sound_call .sub5
	note E_, 4
	volume_envelope 1, 6
	octave 3
	note C#, 4
	volume_envelope 1, 0
	octave 4
	note A_, 4
	octave 5
	note E_, 3
	note G#, 1
	note A_, 4
	note G#, 4
	note F#, 4
	sound_call .sub5
	note D_, 4
	sound_call .sub5
	note F#, 4
	volume_envelope 1, 6
	octave 2
	note B_, 4
	volume_envelope 2, 5
	octave 4
	note D_, 4
	note A_, 4
	volume_envelope 1, 6
	octave 3
	note D_, 4
	volume_envelope 2, 5
	octave 4
	note A_, 4
	octave 5
	note C#, 4
	volume_envelope 1, 6
	octave 3
	note E_, 4
	volume_envelope 2, 5
	octave 4
	note A_, 4
	octave 5
	note E_, 4
	volume_envelope 1, 6
	octave 3
	note E_, 4
	volume_envelope 2, 5
	octave 4
	note F#, 4
	note E_, 4
.loop2:
	volume_envelope 1, 6
	octave 3
	note E_, 4
	volume_envelope 2, 5
	octave 4
	note G#, 4
	octave 5
	note E_, 4
	sound_loop 2, .loop2
	sound_call .sub3
	sound_call .sub3
	volume_envelope 1, 6
	octave 3
	note D_, 4
	volume_envelope 1, 0
	octave 5
	note F#, 2
	rest 2
	note A_, 2
	rest 1
	octave 6
	note C#, 1
	note D_, 4
	octave 5
	note A_, 4
	note D_, 4
	volume_envelope 1, 6
	octave 3
	note C#, 4
	sound_call .sub6
	octave 2
	note G#, 4
	sound_call .sub6
	transpose 0, 2
	octave 2
	note E_, 4
	sound_call .sub6
	octave 2
	note B_, 4
	sound_call .sub6
	transpose 0, 0
	sound_call .sub5
	note D_, 4
	sound_call .sub3
	transpose 0, 2
	sound_call .sub3
	transpose 0, 0
	volume_envelope 1, 6
	octave 3
	note E_, 4
	volume_envelope 2, 5
	octave 4
	note E_, 4
	note G#, 4
	sound_jump .mainloop

.sub1:
	note_type 3, 1, 6
	octave 2
	note A_, 4
	volume_envelope 2, 5
	octave 3
	note A_, 4
	octave 4
	note C#, 4
	volume_envelope 1, 6
	octave 2
	note E_, 4
	volume_envelope 2, 5
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	volume_envelope 1, 6
	octave 2
	note A_, 4
	volume_envelope 2, 5
	octave 3
	note A_, 4
	octave 4
	note C#, 4
	volume_envelope 1, 6
	octave 2
	note E_, 4
	note F#, 4
	note G#, 4
	sound_ret
	
.sub2:
	volume_envelope 1, 6
	note A_, 4
	volume_envelope 2, 5
	octave 3
	note A_, 4
	octave 4
	note C#, 4
	volume_envelope 1, 6
	octave 2
	note B_, 4
	volume_envelope 2, 5
	octave 3
	note A_, 4
	octave 4
	note C#, 4
	volume_envelope 1, 6
	octave 3
	note C_, 4
	volume_envelope 2, 5
	note A_, 4
	octave 4
	note E_, 4
	volume_envelope 1, 6
	octave 3
	note C#, 4
	volume_envelope 2, 5
	note A_, 4
	octave 4
	note E_, 4
.sub3:
	volume_envelope 1, 6
	octave 3
	note D_, 4
	volume_envelope 2, 5
	note A_, 4
	octave 4
	note F#, 4
	sound_ret
	
.sub4:
	volume_envelope 1, 6
	octave 3
	note E_, 4
	volume_envelope 2, 5
	octave 4
	note D_, 4
	sound_ret
	
.sub5:
	volume_envelope 1, 6
	octave 2
	note B_, 4
	volume_envelope 2, 5
	octave 3
	note A_, 4
	octave 4
	sound_ret
	
.sub6:
	volume_envelope 2, 5
	octave 3
	note G#, 4
	octave 4
	note E_, 4
	volume_envelope 1, 6
	sound_ret
