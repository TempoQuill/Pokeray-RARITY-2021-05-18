Music_TradeMenuPart1:
; engine
; JUN 11 2020
	channel_count 4
	channel 1, Music_TradeMenu_Ch1
	channel 2, Music_TradeMenu_Ch3
	channel 3, Music_TradeMenu_Ch5
	channel 4, Music_TradeMenu_Ch7

Music_TradeMenuPart2:
; engine
; JUN 10 2020
	channel_count 4
	channel 1, Music_TradeMenu_Ch2
	channel 2, Music_TradeMenu_Ch4
	channel 3, Music_TradeMenu_Ch6
	channel 4, Music_TradeMenu_Ch8

Music_TradeMenu_Ch1:
	tempo 139
	volume 7, 7
	old_panning %1111, %0110
	pitch_inc_switch
	duty_cycle 1
	note_type 12, 10, 1
	rest 4
.mainloop:
	octave 3
	note F_, 4
	sound_loop 10, .mainloop
	note E_, 4
	note E_, 4
.loop1:
	note F_, 4
	sound_loop 14, .loop2
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 4
.loop2:
	note F_, 4
	sound_loop 26, .loop2
	note G_, 4
	note G_, 4
	note F_, 4
	note F_, 4
	note F_, 4
	note F_, 4
.loop3:
	note G_, 4
	sound_loop 8, .loop3
	sound_jump .mainloop

Music_TradeMenu_Ch2:
	tempo 139
	volume 7, 7
	old_panning %0110, %1111
	pitch_inc_switch
	duty_cycle 1
	note_type 12, 10, 1
	octave 1
	note C_, 2
.mainloop:
	octave 1
	note F_, 2
	octave 2
	note A_, 2
	note C_, 2
	note A_, 2
	sound_call .sub2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note A_, 2
	octave 2
	note A#, 2
	octave 1
	note G_, 2
	octave 2
	note A#, 2
	note D_, 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note G_, 2
	octave 2
	note A#, 2
	octave 1
	note F_, 2
	octave 2
	note A_, 2
	note C_, 2
	note A_, 2
	sound_call .sub2
	sound_call .sub8
	octave 1
	note G_, 2
	octave 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note D_, 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note C_, 2
	note A#, 2
	note E_, 2
	note A#, 2
	note G_, 2
	note A#, 2
	note D_, 2
	note A#, 2
	sound_call .sub14
.loop1:
	sound_call .sub3
	sound_call .sub8
	sound_loop 3, .loop1
	octave 1
	note G_, 2
	octave 2
	note A#, 2
	note D_, 2
	note A#, 2
	octave 1
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	sound_call .sub7
	octave 1
	note B_, 1
	octave 2
	note G_, 2
	note D_, 2
	note G_, 2
	sound_call .sub14
	sound_call .sub14
	sound_jump .mainloop

.sub2:
	octave 1
	note F_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
.sub3:
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note F_, 2
	octave 2
	note A#, 2
.sub7:
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note D_, 2
	note A#, 2
	sound_ret

.sub8:
	octave 2
	note F_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note C_, 2
	note A_, 2
	sound_ret

.sub14:
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	octave 3
	note C_, 2
	sound_ret

Music_TradeMenu_Ch3:
	duty_cycle 3
	vibrato 10, 5, 3
	note_type 12, 12, 3
	octave 3
	note C_, 2
.mainloop:
	octave 3
	note F_, 4
	note G_, 4
	note A_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note A#, 4
	note A_, 2
	note G_, 2
	note A#, 4
	note G_, 4
	note E_, 2
	note A#, 4
	note E_, 4
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note F_, 2
	octave 4
	note D_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A#, 4
	note G_, 4
	note F_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note F_, 4
	note E_, 4
	note D_, 2
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 6
	note G_, 6
	note F_, 4
	note E_, 6
	note E_, 2
	note D_, 4
	note C_, 4
	note D_, 2
	note F_, 4
	note F_, 2
	note E_, 4
	note D_, 1
	note E_, 1
	note D_, 2
	note E_, 2
	note F_, 2
	note F_, 4
	note F_, 2
	note D_, 2
	note E_, 2
	note E_, 2
	note D_, 2
	note F_, 4
	note D_, 2
	note E_, 1
	note F_, 1
	note E_, 4
	note G_, 2
	note E_, 2
	note F_, 4
	note E_, 1
	note F_, 1
	note G_, 1
	note E_, 1
	note F_, 4
	note F_, 4
	note A#, 6
	octave 4
	note C_, 4
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	octave 3
	note A#, 4
	note A_, 6
	note A#, 2
	note A_, 4
	note G_, 2
	note F_, 2
	note D_, 4
	note F_, 4
	note E_, 4
	note G_, 4
	note F_, 4
	note A_, 4
	note G_, 4
	note B_, 4
	octave 4
	note C_, 6
	note C_, 6
	octave 3
	note A_, 4
	note G_, 4
	note G_, 4
	note G_, 2
	note A_, 2
	note A#, 2
	octave 4
	note C_, 2
	sound_jump .mainloop

Music_TradeMenu_Ch4:
	note_type 6, 0, 0
	rest 4
.mainloop:
	vibrato 7, 4, 2
	note_type 6, 9, 8
	rest 16
	sound_loop 7, .mainloop
	rest 8
	duty_cycle 2
	octave 3
	note C_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 12
	volume_envelope 8, 7
	note A#, 8
	volume_envelope 9, 8
	note A#, 4
	note A_, 4
	note A#, 4
	octave 4
	note C_, 12
	volume_envelope 8, 7
	note C_, 8
	volume_envelope 9, 8
	octave 3
	note A_, 4
	note G_, 4
	note A_, 4
	note A#, 12
	note A_, 4
	volume_envelope 9, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note A#, 4
	note A_, 2
	note A#, 2
	volume_envelope 9, 7
	octave 4
	note C_, 12
	note C_, 12
	note D_, 4
	octave 3
	note A#, 4
	octave 4
	note C_, 12
	note C_, 4
	octave 3
	note A#, 8
	note A_, 4
	note G_, 4
	duty_cycle 1
	vibrato 0, 4, 2
	volume_envelope 7, 8
	octave 2
	note A#, 4
	octave 3
	note D_, 6
	rest 2
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note A#, 4
	octave 3
	note C_, 10
	rest 2
	note C_, 4
	note D_, 4
	note C_, 4
	octave 2
	note A#, 4
	note A_, 4
	note F_, 4
	octave 3
	note C_, 4
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	note E_, 4
	note F_, 4
	note G_, 4
	note E_, 4
	note F_, 4
	note G#, 1
	note A_, 5
	rest 2
	note F_, 4
	note C_, 8
	note F_, 2
	note G_, 2
	note A_, 2
	octave 4
	note C_, 2
	volume_envelope 7, 7
	note D_, 4
	octave 3
	note F_, 8
	note A_, 8
	note F_, 2
	note G_, 2
	note F_, 8
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	note D#, 8
	note D_, 4
	note C_, 4
	note_type 8, 7, 7
	note A#, 4
	note A_, 4
	note G_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note A_, 4
	octave 4
	note D_, 4
	note C_, 4
	octave 3
	note A#, 4
	octave 4
	note E_, 4
	note F_, 4
	note D_, 4
	note_type 12, 7, 7
	note E_, 4
	note D_, 4
	note C_, 4
	note C_, 4
	note C_, 16
	sound_jump .mainloop

Music_TradeMenu_Ch5:
	note_type 12, 1, 4
	octave 2
	note C_, 1
	rest 1
.mainloop:
	sound_call .sub1
	octave 2
	note F_, 1
	sound_call .sub3
	octave 2
	note A_, 1
	sound_call .sub3
	sound_call .sub4
	octave 2
	note A#, 1
	sound_call .sub5
	octave 2
	note A_, 1
	sound_call .sub5
	sound_call .sub6
	octave 2
	note A#, 1
	sound_call .sub3
	octave 2
	note G_, 1
	sound_call .sub3
	sound_call .sub1
	octave 2
	note F_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	octave 2
	note A_, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	sound_call .sub4
	sound_call .sub9
	octave 3
	note F_, 1
	sound_call .sub2
	octave 2
	note A_, 1
	sound_call .sub2
	octave 2
	note G_, 1
	sound_call .sub5
	octave 2
	note A#, 1
	sound_call .sub7
	octave 2
	note A#, 1
	sound_call .sub5
	sound_call .sub10
	octave 3
	note G_, 1
	rest 1
	octave 4
	note E_, 1
	sound_call .sub8
	sound_call .sub10
	sound_call .sub11
.loop1:
	sound_call .sub4
	sound_call .sub9
	octave 3
	note F_, 1
	sound_call .sub2
	octave 2
	note A_, 1
	sound_call .sub2
	sound_loop 3, .loop1
	sound_call .sub6
	octave 3
	note A_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	sound_call .sub9
	octave 2
	note B_, 1
	sound_call .sub7
	sound_call .sub10
	sound_call .sub11
	sound_call .sub10
	sound_call .sub11
	sound_jump .mainloop

.sub1:
	octave 2
	note F_, 1
.sub2:
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C_, 1
.sub3:
	rest 1
	octave 4
	note C_, 1
	rest 1
	sound_ret

.sub4:
	octave 2
	note A#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	octave 2
	note F_, 1
.sub5:
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

.sub6:
	octave 2
	note G_, 1
.sub7:
	rest 1
	octave 4
	note D_, 1
.sub8:
	rest 1
	octave 3
	note D_, 1
	sound_jump .sub5

.sub9:
	octave 2
	note A#, 1
	sound_jump .sub7

.sub10:
	octave 3
	note C_, 1
.sub10_f11:
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	sound_ret

.sub11:
	octave 3
	note G_, 1
	sound_jump .sub10_f11

Music_TradeMenu_Ch6:
	vibrato 10, 1, 4
	note_type 6, 1, 4
	octave 4
	note F_, 4
.mainloop:
	octave 4
	note A_, 8
	note A#, 8
	octave 5
	note C_, 8
	note E_, 1
	note F_, 7
	note E_, 12
	note D_, 2
	note E_, 2
	note D_, 16
	rest 4
	octave 4
	note A#, 4
	octave 5
	note C_, 4
	note D_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
	note F_, 8
	rest 4
	note D_, 4
	note C_, 4
	note_type 8, 1, 6
	octave 4
	note F_, 1
	note A_, 1
	octave 5
	note C_, 1
	note D#, 6
	note_type 6, 1, 4
	rest 4
	note E_, 1
	note F_, 3
	note E_, 4
	note F_, 4
	note D_, 12
	rest 8
	note E_, 1
	note F_, 3
	note E_, 4
	note F_, 4
	note C_, 12
	rest 8
	note F_, 8
	note G#, 1
	note A_, 3
	note G_, 4
	note F_, 4
	note E_, 4
	note F_, 4
	note G_, 10
	rest 2
	note G_, 14
	rest 2
	note G_, 2
	note F_, 2
	note E_, 6
	rest 2
	note E_, 16
	rest 8
	volume_envelope 1, 5
	octave 4
	note A#, 6
	rest 6
	note A#, 4
	note B_, 1
	octave 5
	note C_, 3
	octave 4
	note A#, 4
	note A_, 4
	note G_, 4
	note A_, 10
	rest 2
	note A_, 4
	octave 5
	note C_, 1
	octave 4
	note A#, 3
	note A_, 4
	note G_, 4
	note F_, 4
	note A_, 1
	note A#, 3
	note A_, 4
	note G_, 4
	note A#, 4
	octave 5
	note C_, 6
	rest 2
	note D_, 4
	octave 4
	note A#, 4
	note A_, 4
	note B_, 1
	octave 5
	note C_, 5
	rest 2
	octave 4
	note A#, 4
	note A_, 8
	rest 4
	volume_envelope 1, 2
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 4
	note E_, 4
	note D_, 4
	note F_, 4
	note E_, 6
	rest 2
	note D_, 6
	rest 2
	note C_, 4
	note D_, 1
	note D#, 5
	rest 2
	note D_, 4
	note C_, 6
	rest 2
	octave 4
	note A#, 4
	note A_, 4
	note_type 8, 1, 2
	octave 5
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 4
	note A#, 2
	rest 2
	octave 5
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	note F_, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note F_, 2
	rest 2
	note_type 6, 1, 2
	note G_, 12
	note G_, 12
	note F_, 8
	note E_, 8
	note E_, 16
	rest 8
	sound_jump .mainloop

Music_TradeMenu_Ch7:
	toggle_noise 2
	drum_speed 12
	rest 4
.mainloop:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
.sub2:
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 6, 4
	sound_ret

.sub3:
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 1
	drum_note 6, 3
	sound_ret

Music_TradeMenu_Ch8:
	toggle_noise 2
	drum_speed 12
	rest 4
.mainloop:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
.sub2:
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 4, 4
	sound_ret

.sub3:
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 6, 4
	drum_note 4, 1
	drum_note 4, 3
	sound_ret
