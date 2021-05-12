Music_LookHavoc:
; wav
; NOV 10 2019
	channel_count 4
	channel 1, Music_LookHavoc_Ch1
	channel 2, Music_LookHavoc_Ch2
	channel 3, Music_LookHavoc_Ch3
	channel 4, Music_LookHavoc_Ch4

Music_LookHavoc_Ch1:
	tempo 245
	volume 7, 7
.mainloop:
	transpose 0, 2
	sound_call Music_TeamHavocTheme_Ch1.sub1
	sound_call Music_TeamHavocTheme_Ch1.sub2
	sound_call Music_TeamHavocTheme_Ch1.sub3
	sound_jump .mainloop

Music_LookHavoc_Ch2:
	transpose 0, 2
	sound_call Music_TeamHavocTheme_Ch2.sub1
	sound_call Music_TeamHavocTheme_Ch2.sub2
	sound_call Music_TeamHavocTheme_Ch2.sub3
	sound_call Music_TeamHavocTheme_Ch2.sub3
	sound_call Music_TeamHavocTheme_Ch2.sub2
	sound_call Music_TeamHavocTheme_Ch2.sub4
	sound_call Music_TeamHavocTheme_Ch2.sub3
	sound_call Music_TeamHavocTheme_Ch2.sub3
	sound_call Music_TeamHavocTheme_Ch2.sub5
	sound_call Music_TeamHavocTheme_Ch2.sub2
	sound_call Music_TeamHavocTheme_Ch2.sub3
	sound_call Music_TeamHavocTheme_Ch2.sub6
	sound_jump Music_LookHavoc_Ch2

Music_LookHavoc_Ch3:
	transpose 0, 2
	sound_call Music_TeamHavocTheme_Ch3.sub1
	note F#, 16
	rest 14
	vibrato 9, 1, 4
	sound_call Music_TeamHavocTheme_Ch3.sub2
	sound_call Music_TeamHavocTheme_Ch3.sub3
	sound_jump Music_LookHavoc_Ch3

Music_LookHavoc_Ch4:
	toggle_noise 5
.mainloop:
	sound_call Music_TeamHavocTheme_Ch4.sub1
.loop1:
	sound_call Music_TeamHavocTheme_Ch4.sub2
	sound_loop 15, .loop1
	sound_jump .mainloop
