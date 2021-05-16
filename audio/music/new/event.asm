Music_Event:
; engine, wav, drum
; AUG 21 2019
	channel_count 4
	channel 1, Music_Event_Ch1
	channel 2, Music_Event_Ch2
	channel 3, Music_Event_Ch3
	channel 4, Music_Event_Ch4

Music_Event_Ch1:
	tempo 128
	volume 7, 7
	vibrato 6, 3, 4
	pitch_inc_switch
	duty_cycle 2
	note_type 12, 9, 2
.loop1:
	octave 3
	pitch_slide 1, 4, A_
	note C_, 1
	pitch_slide 1, 4, A_
	note G_, 1
	sound_loop 2, .loop1
	rest 4
	duty_cycle 3
	old_panning %1110, %1101
.mainloop:
	relative_pitch 0
	sound_call .sub1
	sound_loop 4, .mainloop
	relative_pitch 2
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	note_type 12, 10, 2
	octave 3
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	note_type 12, 10, 4
	note F#, 4
	sound_ret

Music_Event_Ch2:
	duty_cycle 2
	vibrato 8, 2, 5
	note_type 12, 10, 2
	octave 4
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	rest 4
	duty_cycle 3
.mainloop:
	relative_pitch 0
	sound_call .sub1
	note_type 12, 11, 5
	note A_, 4
	sound_call .sub1
	note_type 12, 11, 5
	note B_, 4
	sound_loop 2, .mainloop
	relative_pitch 2
	sound_call .sub1
	note_type 12, 11, 5
	note A_, 4
	sound_call .sub1
	note_type 12, 11, 5
	note B_, 4
	sound_jump .mainloop

.sub1:
	note_type 12, 11, 2
	octave 3
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	sound_ret

Music_Event_Ch3:
	note_type 12, 1, -4
	rest 8
.mainloop:
	relative_pitch 0
	sound_call .sub1
	octave 4
	note A_, 4
	sound_call .sub1
	octave 4
	note B_, 4
	sound_loop 2, .mainloop
	relative_pitch 2
	sound_call .sub1
	octave 4
	note A_, 4
	sound_call .sub1
	octave 4
	note B_, 4
	sound_jump .mainloop

.sub1:
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	sound_ret

Music_Event_Ch4:
	toggle_noise 7
	drum_speed 6
	rest 16
.mainloop:
	drum_note 10, 8
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 10, 8
	drum_note 3, 4
	drum_note 9, 8
	drum_note 10, 12
	drum_note 10, 8
	drum_note 10, 4
.loop1:
	drum_note 9, 1
	sound_loop 8, .loop1
	sound_jump .mainloop
