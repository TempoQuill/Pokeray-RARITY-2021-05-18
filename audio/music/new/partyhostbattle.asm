Music_PartyHostBattle:
; SEP 16 2019
	channel_count 3
	channel 1, Music_PartyHostBattle_Ch1
	channel 2, Music_PartyHostBattle_Ch2
	channel 3, Music_PartyHostBattle_Ch3

Music_PartyHostBattle_Ch1:
	tempo 203
	volume 7, 7
	pitch_offset 2
	duty_cycle 3
	note_type 6, 12, 1
	octave 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 3
	note C_, 1
.mainloop:
	duty_cycle 3
	vibrato 0, 0, 0
	note_type 12, 10, 2
	octave 3
	note E_, 2
	octave 2
	note G_, 1
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	note E_, 1
	note B_, 1
	note G_, 2
	octave 3
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 1
	octave 2
	note F_, 1
	note G_, 1
	note D_, 2
	octave 1
	note B_, 2
	octave 2
	note G_, 2
	note D_, 2
	octave 1
	note G_, 2
	note D_, 2
	note B_, 2
	note G_, 2
	octave 2
	note G_, 2
	octave 3
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	note B_, 2
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note G_, 1
	note G_, 1
	note F_, 1
	sound_call .sub1
	octave 2
	note G_, 1
	note G_, 1
	octave 3
	note C_, 2
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	note G_, 1
	octave 3
	note D_, 1
	note C_, 1
	octave 2
	note B_, 2
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	note G_, 1
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	sound_call .sub1
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note G_, 1
	note F_, 1
	note E_, 1
	octave 2
	note G_, 1
	note G_, 1
	note B_, 1
	octave 3
	note C_, 2
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note G_, 1
	note G_, 2
	note E_, 2
	note C_, 2
	octave 1
	note G_, 2
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	note E_, 2
	note C_, 2
	rest 16
	rest 16
	sound_call .sub2
	sound_call .sub2
	transpose 1, 7
	sound_call .sub2
	sound_call .sub2
	transpose 1, 9
	sound_call .sub2
	transpose 1, 10
	sound_call .sub2
	transpose 0, 0
	sound_call .sub2
	sound_call .sub3
	duty_cycle 0
	vibrato 5, 7, 2
	volume_envelope 6, 8
	note G_, 16
	note D_, 16
	note G_, 16
	note D_, 16
	sound_jump .mainloop

.sub1:
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D_, 2
	octave 2
	note B_, 2
	note G_, 2
	octave 3
	note D_, 2
	sound_ret

.sub2:
	octave 3
	note G#, 1
	note G#, 1
	note C#, 1
	note G#, 1
	note G#, 1
	note C#, 1
	note G#, 1
	note C#, 1
	sound_ret

.sub3:
	octave 3
	note D#, 1
	note D#, 1
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	note D#, 1
	octave 2
	note A#, 1
	octave 3
	note D#, 1
	octave 2
	note A#, 1
	sound_ret

Music_PartyHostBattle_Ch2:
	pitch_inc_switch
	duty_cycle 1
	note_type 6, 12, 1
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
.mainloop:
	duty_cycle 1
	vibrato 0, 0, 0
	note_type 12, 10, 2
	octave 3
	note G_, 2
	note C_, 1
	note D_, 1
	note E_, 1
	note C_, 1
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	note C_, 2
	note F_, 1
	note E_, 1
	note D_, 1
	note D_, 1
	octave 2
	note A_, 1
	note B_, 1
	sound_call .sub1
	octave 3
	note C_, 2
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note D_, 2
	note E_, 1
	note F_, 1
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	vibrato 12, 6, 4
	volume_envelope 12, 7
	note G_, 14
	vibrato 0, 0, 0
	volume_envelope 12, 2
	note D_, 1
	note D_, 1
	note E_, 2
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note F_, 1
	note E_, 1
	note D_, 2
	note E_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note E_, 1
	note F_, 1
	sound_call .sub1
	octave 4
	note C_, 2
	octave 3
	note B_, 1
	note A_, 1
	note G_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 2
	note F_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
	vibrato 12, 6, 4
	volume_envelope 12, 7
	octave 3
	note C_, 16
.loop1:
	transpose 0, 10
	vibrato 0, 0, 0
	volume_envelope 12, 2
	sound_call Music_PartyHostBattle_Ch1.sub3
	sound_call Music_PartyHostBattle_Ch1.sub3
	transpose 0, 5
	sound_call Music_PartyHostBattle_Ch1.sub3
	sound_call Music_PartyHostBattle_Ch1.sub3
	sound_loop 2, .loop1
	transpose 0, 7
	sound_call Music_PartyHostBattle_Ch1.sub3
	transpose 0, 8
	sound_call Music_PartyHostBattle_Ch1.sub3
	transpose 0, 10
	sound_call Music_PartyHostBattle_Ch1.sub3
	transpose 0, 12
	sound_call Music_PartyHostBattle_Ch1.sub3
	transpose 0, 0
	duty_cycle 0
	vibrato 10, 6, 4
	volume_envelope 6, 8
	octave 3
	note C_, 16
	octave 2
	note G_, 16
	octave 3
	note C_, 16
	octave 2
	note G_, 16
	sound_jump .mainloop

.sub1:
	vibrato 12, 6, 4
	volume_envelope 12, 7
	note G_, 16
	vibrato 0, 0, 0
	volume_envelope 12, 2
	sound_ret

Music_PartyHostBattle_Ch3:
	note_type 12, 1, -6
	rest 16
.mainloop:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
.loop1:
	note C_, 1
	note G_, 1
	sound_loop 16, .loop1
	transpose 0, 1
	sound_call .sub1
	sound_call .sub1
	transpose 0, 0
.loop2:
	octave 2
	note A#, 1
	octave 3
	note F_, 1
	sound_loop 4, .loop2
.loop3:
	octave 2
	note B_, 1
	octave 3
	note F#, 1
	sound_loop 4, .loop3
.loop4:
	octave 3
	note C#, 1
	note G#, 1
	sound_loop 4, .loop4
.loop5:
	note D#, 1
	note A#, 1
	sound_loop 4, .loop5
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 3
	note C_, 1
	note G_, 1
	sound_loop 8, .sub1
.sub1loop1:
	octave 2
	note G_, 1
	octave 3
	note D_, 1
	sound_loop 8, .sub1loop1
	sound_ret
