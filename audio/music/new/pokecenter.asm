Music_PokemonCenter:
; wav, drum
; MAY 31 2020
	channel_count 4
	channel 1, Music_PokemonCenter_Ch1
	channel 2, Music_PokemonCenter_Ch2
	channel 3, Music_PokemonCenter_Ch3
	channel 4, Music_PokemonCenter_Ch4

Music_PokemonCenter_Ch1:
	tempo 145
	volume 7, 7
	duty_cycle 3
	note_type 6, 10, 2
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 4
.mainloop:
	sound_call .sub1
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	sound_call .sub1
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	note B_, 4
	note F#, 4
	note E_, 4
	note D_, 8
	note E_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 8
	note C#, 4
	note D_, 4
	note E_, 4
	note G_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	octave 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 8
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 8
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 8
	note G_, 4
	note A_, 4
	note B_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 4
	sound_jump .mainloop

.sub1:
	vibrato 4, 3, 4
	volume_envelope 10, 2
	note F#, 4
	note F_, 4
	note F#, 3
	volume_envelope 7, 1
	octave 4
	note C#, 1
	volume_envelope 10, 3
	note D_, 8
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note F#, 4
	note G_, 4
	note A_, 4
	volume_envelope 10, 2
	note A_, 4
	note E_, 4
	note A_, 3
	volume_envelope 7, 1
	octave 4
	note C_, 1
	volume_envelope 10, 3
	note C#, 8
	octave 3 
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	sound_ret
	
Music_PokemonCenter_Ch2:
	duty_cycle 1
	note_type 6, 10, 2
	octave 4
	note F#, 4
	note A_, 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
.mainloop:
	sound_call .sub1
	note D_, 4
	note F#, 12
	duty_cycle 2
	volume_envelope 10, 5
	note F#, 8
	note E_, 8
	sound_call .sub1
	note D_, 16
	volume_envelope 7, 5
	note D_, 8
	note E_, 7
	volume_envelope 10, 1
	note F_, 1
	volume_envelope 13, 6
	note F#, 16
	note A_, 16
	note G_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 16
	note C#, 16
	note E_, 15
	sound_call .sub2
	note F#, 15
	volume_envelope 10, 1
	note G#, 1
	volume_envelope 13, 6
	note A_, 16
	note G_, 4
	note F#, 4
	note G_, 4
	note A_, 3
	volume_envelope 10, 1
	note A#, 1
	volume_envelope 13, 6
	note B_, 16
	note A_, 8
	note G_, 4
	note F#, 4
	note G_, 15
	sound_call .sub2
	sound_loop .mainloop
	
.sub1:
	duty_cycle 1
	vibrato 20, 2, 3
	volume_envelope 10, 2
	note D_, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 3
	note G#, 1
	volume_envelope 13, 3
	note A_, 8
	note G_, 8
	note F#, 4
	note E_, 4
	note C#, 12
	duty_cycle 2
	volume_envelope 10, 5
	note D_, 8
	note C#, 8
	duty_cycle 1
	volume_envelope 10, 2
	note C#, 4
	octave 3
	note A_, 4
	octave 4
	note C#, 3
	note F_, 1
	volume_envelope 13, 3
	note F#, 8
	note E_, 8
	note C#, 4
	sound_ret
	
.sub2:
	volume_envelope 10, 1
	note F_, 1
	volume_envelope 13, 6
	note F#, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 16
	sound_ret

Music_PokemonCenter_Ch3:
	note_type 12, 1, -4
	rest 10
	vibrato 7, 2, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note C#, 2
.mainloop:
	note D_, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note F#, 2
	note D_, 2
	note C#, 2
	note E_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note E_, 2
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note C#, 2
	note E_, 2
	note D_, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	sound_loop 2, .mainloop
.loop1:    
	note D_, 2
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	note D_, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note B_, 2
	octave 3
	note A_, 2
	note C#, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note D_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	sound_loop 2, .loop1
	sound_jump .mainloop
	
Music_PokemonCenter_Ch4:
	toggle_noise 7
	drum_speed 6
	rest 16
	rest 8
.mainloop:
	drum_note 8, 1
	sound_loop 8, .mainloop
	drum_note 9, 12
	drum_note 9, 12
	drum_note 9, 4
	drum_note 9, 4
	drum_note 9, 12
	drum_note 9, 8
	drum_note 9, 4
	sound_jump .mainloop
