Music_TitleScreen:
; JUL 15 2019
	channel_count 4
	channel 1, Music_TitleScreen_Ch1
	channel 2, Music_TitleScreen_Ch2
	channel 3, Music_TitleScreen_Ch3
	channel 4, Music_TitleScreen_Ch4

Music_TitleScreen_Ch1:
	tempo 145
	volume 7, 7
	duty_cycle 3
	vibrato 7, 2, 2
	note_type 6, 7, 7
	octave 3
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 2
	rest 16
.loop1:
	octave 3
	note E_, 1
	rest 1
	note C#, 1
	rest 1
	sound_loop 3, .loop1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	rest 16
.loop2:
	octave 4
	note C#, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	sound_loop 2, .loop2
	octave 4
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 10
	rest 16
	note E_, 1
	note A_, 1
	octave 5
	note C#, 1
	note E_, 1
	rest 7
	rest 16
	volume_envelope 11, 7
	octave 3
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note_type 12, 11, 7
	sound_call .sub1
	note D_, 4
	note E_, 3
	note D_, 3
	note F#, 2
	note A_, 10
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	sound_call .sub1
	note E_, 2
	note G_, 2
	note A_, 2
	note E_, 4
	note A_, 2
	octave 3
	note A_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note G_, 2
.loop3:
	note E_, 6
	note C_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	transpose 0, 2
	sound_loop 2, .loop3
	transpose 0, 0
	sound_call .sub2
	note_type 12, 11, 7
	note F#, 2
	note D_, 1
	note F#, 3
	ntoe G_, 2
	sound_call .sub2
	note_type 6, 11, 7
	octave 3
	note F#, 4
	note D_, 2
	note F#, 6
	note A_, 4
	octave 4
	note C#, 8
	octave 3
	note A_, 8
	octave 4
	note C#, 1
	note D_, 11
	note C#, 2
	octave 3
	note B_, 2
	note_type 12, 11, 7
	octave 4
	note C#, 12
	sound_ret

.sub1:
	note E_, 6
	note C#, 2
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note B_, 6
	note G_, 2
	note D_, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 6
	note D#, 1
	note D_, 1
	note C#, 10
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 6
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note B_, 6
	note G_, 2
	note D_, 4
	octave 3
	note B_, 2
	note A_, 1
	note B_, 1
	octave 5
	note C#, 4
	sound_ret

.sub2:
	note G#, 1
.sub2loop1:
	note_type 6, 7, 7
	octave 3
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 11, 7
	note G#, 1
	rest 1
	sound_loop 4, .sub2loop1
.sub2loop2:
	volume_envelope 7, 7
	note G#, 1
	rest 1
	volume_envelope 11, 7
	note G#, 1
	rest 1
	sound_loop 2, .sub2loop2
.sub2loop3:
	volume_envelope 7, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	volume_envelope 11, 7
	note G#, 1
	rest 1
	sound_loop 2, .sub2loop2
	volume_envelope 7, 7
	note G#, 1
	rest 1
	sound_ret

Music_TitleScreen_Ch2:
	duty_cycle 2
	vibrato 11, 6, 2
	transpose 1, 7
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
.loop2:
	sound_call .sub1
	sound_call .sub1
	transpose 1, 5
	sound_call .sub1
	transpose 1, 7
	sound_call .sub1
	sound_loop 4, .loop2
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 7, 2
	note D_, 2
	note D_, 1
	transpose 1, 5
	sound_call .sub2
	transpose 1, 10
	sound_call .sub1
	sound_call .sub1
	transpose 0, 0
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	octave 3
	note D_, 6
	octave 2
	note B_, 4
	sound_call .sub3
	note D_, 6
	note E_, 4
	note_type 12, 15, 7
	note A_, 14
	note D_, 1
	note E_, 1
	octave 1
	note A_, 12
	sound_ret

.sub1:
	note_type 12, 12, 2
	octave 2
	note D_, 3
	volume_envelope 7, 2
	note D_, 2
	note D_, 1
.sub2:
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 7, 2
	note D_, 2
	note D_, 1
	volume_envelope 12, 2
	note D_, 1
	volume_envelope 7, 2
	note D_, 1
	note D_, 1
	note D_, 1
	sound_ret

.sub3:
	note_type 6, 12, 2
	note E_, 2
.sub3loop1:
	volume_envelope 7, 2
	octave 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 12, 2
	note E_, 1
	rest 1
	sound_loop 4, .sub3loop1
.sub3loop2:
	volume_envelope 7, 2
	note E_, 1
	rest 1
	volume_envelope 12, 2
	note E_, 1
	rest 1
	sound_loop 2, .sub3loop2
.sub3loop3:
	volume_envelope 7, 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 12, 2
	note E_, 1
	rest 1
	sound_loop 2, .sub3loop3
	volume_envelope 7, 2
	note E_, 1
	rest 1
	volume_envelope 12, 2
	octave 2
	note D_, 4
	note A_, 2
	sound_ret

Music_TitleScreen_Ch3:
	vibrato 0, 1, 1
	note_type 6, 1, -5
	octave 6
	note E_, 1
	note F#, 1
	note G#, 1
	sound_call .sub1
	sound_call .sub1
	volume_envelope 1, 8
	note A_, 1
	rest 1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	note D_, 6
	note C#, 1
	note D_, 1
	note E_, 8
	vibrato 11, 1, 3
	volume_envelope 1, -4
	octave 5
	note G_, 3
	note F#, 3
	note D_, 2
	note E_, 10
	note C#, 2
	note D_, 2
	note E_, 2
	sound_call .sub3
	note G_, 3
	note F#, 3
	note G_, 2
	note A_, 6
	octave 7
	note C_, 2
	octave 6
	note A_, 16
	vibrato 11, 1, 3
	volume_envelope 1, -3
	octave 5
	note B_, 6
	note A_, 1
	note B_, 1
	octave 6
	note C_, 6
	octave 5
	note G_, 2
	note G_, 16
	octave 6
	note C_, 4
	note C#, 4
	note D_, 6
	octave 5
	note A_, 2
	note A_, 16
	volume_envelope 1, -2
	octave 6
	note D_, 4
	note D#, 4
	sound_call .sub4
	note D#, 2
	sound_call .sub4
	note C#, 2
	octave 5
	note A_, 6
	volume_envelope 2, -2
	note A_, 8
	volume_envelope 1, -2
	note A_, 1
	note G#, 1
	note A_, 12
	sound_ret

.sub1:
	note A_, 1
	rest 1
	vibrato 0, 0, 0
	volume_envelope 2, 0
.sub2:
	octave 5
	note A_, 1
	rest 1
	volume_envelope 3, 0
	note A_, 1
	rest 1
	volume_envelope 1, 0
	note G#, 1
	rest 1
	volume_envelope 2, 0
	note G#, 1
	rest 1
	volume_envelope 3, 0
	note G#, 1
	rest 1
	volume_envelope 1, 0
	note A_, 1
	rest 1
	volume_envelope 2, 0
	note A_, 1
	rest 1
	volume_envelope 3, 0
	note A_, 1
	rest 1
	volume_envelope 1, 0
	note E_, 1
	rest 1
	volume_envelope 2, 0
	note E_, 1
	rest 1
	volume_envelope 3, 0
	note E_, 1
	rest 1
	volume_envelope 1, 0
	note A_, 1
	rest 1
	volume_envelope 2, 0
	note A_, 1
	rest 1
	volume_envelope 1, 0
	note G#, 1
	rest 1
	volume_envelope 2, 0
	note G#, 1
	rest 1
	volume_envelope 1, 0
	sound_ret

.sub3:
	vibrato 0, 1, 3
	note_type 12, 1, 2
	note A_, 6
	octave 6
	note C#, 2
	note E_, 15
	note_type 6, 1, 2
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 11
	note F#, 2
	note F_, 2
	note E_, 16
	vibrato 11, 1, 3
	note_type 12, 1, -4
	octave 5
	note G_, 6
	note F#, 1
	note F_, 1
	note E_, 10
	note D_, 2
	note C#, 2
	note D_, 2
	vibrato 0, 1, 3
	volume_envelope 1, 2
	note A_, 6
	octave 6
	note C#, 2
	note E_, 16
	sound_ret

.sub4:
	note E_, 1
.sub4loop1:
	note_type 6, 2, -3
	octave 5
	note E_, 1
	rest 1
	volume_envelope 3, -3
	note E_, 1
	rest 1
	volume_envelope 1, -3
	note E_, 1
	rest 1
	sound_loop 4, .sub4loop1
.sub4loop2:
	volume_envelope 2, -3
	note E_, 1
	rest 1
	volume_envelope 1, -3
	note E_, 1
	rest 1
	sound_loop 2, .sub4loop2
.sub4loop3:
	volume_envelope 2, -3
	note E_, 1
	rest 1
	volume_envelope 3, -3
	note E_, 1
	rest 1
	volume_envelope 1, -3
	note E_, 1
	rest 1
	sound_loop 2, .sub4loop3
	volume_envelope 2, -3
	note E_, 1
	rest 1
	note_type 12, 1, -2
	octave 6
	note D_, 2
	octave 5
	note A_, 1
	octave 6
	note D_, 3
	sound_ret

Music_TitleScreen_Ch4:
	toggle_noise 5
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 9, 6
	sound_call .sub4
.loop1:
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub3
	sound_loop 4, .loop1
.loop2:
	sound_call .sub1
	sound_call .sub3
	sound_loop 2, .loop2
.loop3:
	drum_note 9, 6
	sound_call .sub2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 9, 6
	sound_call .sub5
	sound_loop 2, .loop3
	drum_note 9, 16
	sound_ret

.sub1:
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
.sub2:
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	sound_ret

.sub3:
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 3, 2
.sub4:
	drum_note 1, 2
	drum_note 3, 2
.sub5:
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_ret
