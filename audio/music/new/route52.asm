Music_Route52:
; wav
; AUG 20 2019
	channel_count 4
	channel 1, Music_Route52_Ch1
	channel 2, Music_Route52_Ch2
	channel 3, Music_Route52_Ch3
	channel 4, Music_Route52_Ch4

Music_Route52_Ch1:
	tempo 160
	volume 7, 7
	pitch_offset -1
	duty_cycle 2
	note_type 12, 10, 2
	rest 16
	rest 2
	sound_call .sub1
	rest 6
	note F_, 4
	note F_, 6
	note F_, 2
	note F_, 2
	note D#, 2
	note D#, 2
	note D_, 4
	note D_, 12
	note D_, 2
	note C_, 2
	octave 3
	note A#, 14
	note A#, 2
	note G#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	octave 4
	note F_, 2
	note C#, 2
	octave 3
	note A#, 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C_, 2
	octave 3
	note F_, 2
	note A_, 2
	sound_call .sub2
.mainloop:
	sound_call .sub2
	transpose 0, 5
	sound_call .sub3
	note_type 6, 10, 2
	octave 2
	note F_, 1
	note A#, 1
	note_type 12, 10, 2
	octave 3
	note D_, 15
	sound_call .sub3
	transpose 0, 2
	sound_call .sub4
	note D#, 15
	transpose 0, 0
	sound_call .sub4
	note D_, 15
	sound_call .sub4
	note D#, 15
	transpose 0, 1
	sound_call .sub3
	transpose 0, 0
	sound_call .sub3
	sound_call .sub5
	octave 3
	note A#, 8
	note A#, 4
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	note G_, 2
	sound_call .sub6
	octave 3
	note A#, 4
	octave 4
	note D#, 4
	note D_, 4
	sound_call .sub5
	octave 3
	note A#, 8
	octave 4
	note C_, 4
	octave 2
	note A_, 1
	octave 3
	note C_, 1
	note F_, 2
	octave 4
	note C_, 2
	note D_, 2
	note D#, 4
	note C_, 4
	note C_, 4
	octave 3
	note A_, 4
	octave 4
	note D#, 4
	note D_, 4
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 2
	sound_call .sub6
	note A#, 4
	octave 5
	note C_, 4
	note D_, 4
	octave 2
	note G_, 1
	note A#, 1
	octave 3
	note D#, 2
	octave 4
	note A#, 4
	note A#, 4
	note G_, 4
	note F_, 2
	note G_, 2
	note A#, 4
	note G_, 4
	note D#, 4
	transpose 0, 1
	sound_call .sub3
	transpose 0, 0
	sound_call .sub3
.loop1:
	octave 4
	note G_, 2
	note A_, 2
	note A#, 2
	note F_, 4
	note G_, 2
	note F_, 2
	note D#, 4
	note D_, 2
	note C_, 2
	octave 3
	note A#, 4
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 4
	sound_call .sub7
	note C_, 2
	octave 3
	note F_, 2
	note A#, 2
	note A_, 2
	octave 4
	note F_, 4
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note G_, 2
	note A_, 2
	note A#, 2
	note F_, 4
	note A#, 2
	octave 5
	note C_, 2
	note D_, 4
	note C_, 2
	octave 4
	note A#, 2
	note F_, 4
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note F_, 2
	note C_, 4
	note F_, 4
	note A_, 4
	note G_, 2
	note F_, 2
	octave 5
	note C_, 4
	octave 4
	note A_, 2
	note A#, 2
	note A_, 2
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 4
	note A#, 2
	note A#, 2
	note A_, 2
	note A_, 2
	note G_, 4
	note F_, 4
	sound_ret

.sub2:
	note_type 12, 10, 3
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D#, 2
	note D_, 10
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note F_, 4
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	sound_ret

.sub3:
	note_type 6, 10, 3
	octave 2
	note F_, 1
	note A_, 1
	note_type 12, 10, 3
	octave 3
	note C_, 15
	sound_ret

.sub4:
	note_type 6, 10, 3
	octave 2
	note G_, 1
	note A#, 1
	note_type 12, 10, 3
	octave 3
	sound_ret

.sub5:
	note_type 6, 10, 1
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	note F_, 2
.sub6:
	octave 4
	note D_, 2
	note D#, 2
	note F_, 4
	note D_, 4
	note D_, 4
	sound_ret

.sub7:
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 4
	octave 3
	note A#, 4
	octave 4
	sound_ret

Music_Route52_Ch2:
	duty_cycle 3
	note_type 12, 13, 1
	sound_call .sub1
	note F_, 2
	note F_, 2
	note D#, 2
	note D_, 1
	note D#, 1
	note F_, 2
	note C_, 2
	octave 3
	note A#, 2
	sound_call .sub1
	note D_, 2
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	octave 4
	note F_, 2
	sound_call .sub1
	note F_, 2
	note F_, 2
	note D#, 2
	note D_, 1
	note C_, 1
	octave 3
	note A#, 2
	note G_, 2
	note A#, 2
	octave 4
	note C#, 2
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 4
	octave 3
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note A_, 4
	note A#, 2
	octave 4
	note C_, 2
	note D#, 2
	sound_call .sub2
.mainloop
	sound_call .sub2
	duty_cycle 2
	note_type 6, 9, 7
.loop1
	transpose 1, 10
	sound_call .sub3
	sound_call .sub3
	transpose 1, 3
	sound_call .sub3
	sound_call .sub3
	transpose 1, 10
	sound_call .sub3
	sound_call .sub3
	transpose 1, 5
	sound_call .sub3
	sound_call .sub3
	transpose 1, 7
	sound_call .sub3
	sound_call .sub3
	transpose 1, 3
	sound_call .sub3
	sound_call .sub3
	transpose 1, 6
	sound_call .sub3
	sound_call .sub3
	transpose 1, 5
	sound_call .sub3
	octave 2
	note C_, 2
	octave 3
	note C_, 1
	rest 1
	octave 2
	note E_, 2
	octave 3
	note E_, 1
	rest 1
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	rest 1
	octave 3
	note C_, 2
	octave 4
	note C_, 1
	rest 1
	sound_loop 2, .loop1
	transpose 0, 0
	note_type 12, 13, 3
.loop2:
	rest 16
	duty_cycle 3
	note G_, 2
	note A_, 2
	note A#, 2
	note F_, 4
	note D#, 2
	note D_, 2
	note F_, 2
	note D#, 2
	sound_call Music_Route52_Ch1.sub7
	note C_, 4
	octave 3
	note A#, 2
	note A_, 2
	note F_, 16
	rest 4
	octave 4
	note G_, 2
	note A_, 2
	note A#, 4
	note A_, 2
	note G_, 2
	note D_, 4
	octave 3
	note A#, 2
	note F_, 2
	note A#, 2
	sound_call .sub4
	note F_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	sound_call .sub4
	note D#, 2
	note C_, 2
	note D_, 2
	note C_, 2
	sound_loop 2, .loop2
	sound_jump .mainloop

.sub1:
	octave 2
	note A#, 2
	sound_jump Music_Route52_Ch1.sub1

.sub2:
	note_type 12, 13, 2
	octave 4
	note D_, 2
	note D_, 2
	octave 3
	note A#, 2
	note A#, 2
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note F_, 2
	note F_, 2
	octave 4
	note D_, 2
	note D_, 2
	octave 3
	note A#, 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note F_, 2
	sound_ret

.sub3:
	octave 2
	note C_, 3
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 2
	note C_, 3
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

.sub4:
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	sound_ret

Music_Route52_Ch3:
	note_type 6, 1, -6
	transpose 0, 5
	sound_call .sub1
	transpose 1, 10
	sound_call .sub1
	transpose 0, 5
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	transpose 0, 2
	sound_call .sub1
	note C#, 4
	rest 4
	note C#, 4
	rest 4
	note C#, 4
	rest 4
	note C#, 4
	note D#, 4
	transpose 0, 1
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	sound_call .sub2
.mainloop:
	transpose 1, 0
	sound_call .sub2
	transpose 0, 0
	note_type 12, 1, 2
	rest 2
	sound_call .sub4
	note F_, 3
	rest 1
	note F_, 3
	rest 1
	sound_call .sub4
	sound_call .sub3
	sound_call .sub5
	sound_call .sub3
	sound_call .sub6
	octave 4
	note A#, 1
	rest 1
	volume_envelope 1, 4
	sound_call .sub4
	note F_, 3
	rest 1
	note F_, 3
	rest 1
	sound_call .sub4
	sound_call .sub3
	sound_call .sub5
	sound_call .sub3
	sound_call .sub6
	note_type 6, 1, -6
.loop1:
	transpose 0, 7
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 3
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 10
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 5
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 7
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 3
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	transpose 0, 5
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	sound_call Music_Route52_Ch2.sub3
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 3
	note F_, 4
	rest 4
	note F_, 4
	rest 4
	note F_, 4
	rest 4
	note F_, 4
	rest 4
	sound_ret

.sub2:
	octave 3
	note A#, 6
	rest 6
	note A#, 4
	note A#, 6
	rest 6
	note A#, 4
	note A#, 4
	rest 4
	note A#, 6
	rest 6
	note A#, 4
	note A#, 4
	note A#, 4
	sound_ret

.sub3:
	note F_, 1
	rest 1
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	rest 2
.sub4:
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note D_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	sound_ret

.sub5:
	note F_, 3
	rest 1
	note A_, 3
	rest 1
	note A_, 1
	note A#, 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	sound_ret

.sub6:
	octave 5
	note F_, 1
	rest 1
	note A_, 2
	note A#, 2
	rest 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	note D#, 1
	note F_, 1
	rest 1
	note D_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	note C_, 1
	octave 4
	note A#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note A#, 2
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A_, 3
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	note D#, 2
	note D_, 2
	sound_ret

Music_Route52_Ch4:
	toggle_noise 5
	drum_speed 12
.loop1:
	drum_note 12, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 12, 2
	sound_loop 2, .loop1
.loop2:
	drum_note 12, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
	drum_note 1, 2
	drum_note 12, 2
	sound_loop 2, .loop2
	sound_call .sub1
	drum_note 5, 1
	drum_note 5, 1
.mainloop:
	sound_call .sub1
	drum_note 1, 1
	drum_note 1, 1
.loop3:
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 5, 1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	drum_note 12, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	sound_loop 4, .loop3
	sound_jump .mainloop

.sub1:
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 5, 2
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 12, 2
	drum_note 5, 2
	drum_note 12, 2
	sound_ret

.sub2:
	drum_note 12, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 1, 2
	drum_note 5, 1
	drum_note 5, 1
	sound_ret
