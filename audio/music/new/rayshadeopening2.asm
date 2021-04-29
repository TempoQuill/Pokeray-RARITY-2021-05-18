Music_RayShadeOpening2:
; OCT 2 2019
	channel_count 1
	channel 1, Music_RayShadeOpening2_Ch1
	channel 2, Music_RayShadeOpening2_Ch2
	channel 3, Music_RayShadeOpening2_Ch3
	channel 4, Music_RayShadeOpening2_Ch4

Music_RayShadeOpening2_Ch1:
	tempo 240
	pitch_offset -1
	note_type 12, 12, 1
	rest 16
	rest 16
	rest 4
	tempo 224
	rest 4
	sound_call .sub2
	sound_call .sub1
	octave 4
	note E_, 2
	sound_call .sub2
	sound_call .sub1
	note A_, 2
	sound_call .sub2
	sound_call .sub1
	octave 4
	note G#, 2
	note A#, 4
	octave 3
	note A#, 4
	octave 4
	note F#, 4
	octave 3
	note F#, 4
	sound_call .sub2
	sound_call .sub1
	octave 4
	note E_, 2
	sound_call .sub2
	octave 4
	note F#, 2
	sound_call .sub2
	octave 4
	note G#, 2
	volume_envelope 1, -7
	note G_, 8
	volume_envelope 10, 3
	note D#, 3
	sound_ret

.sub1:
	octave 4
	note D#, 2
.sub2:
	dutycycle 3
	vibrato 0, 0, 0
	volume_envelope 12, 1
	octave 3
	note A#, 1
	note A#, 1
	vibrato 8, 2, 3
	volume_envelope 12, 6
	sound_ret

Music_RayShadeOpening2_Ch2:
	dutycycle 3
	note_type 12, 5, 0
	octave 3
	note A_, 1
	note A#, 7
	octave 4
	note C_, 1
	note C#, 7
	note D#, 1
	note E_, 7
	note F#, 1
	note G_, 3
	note A_, 1
	note A#, 7
	rest 4
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	sound_call .sub2
	note G_, 1
	sound_call .sub1
	sound_call .sub2
	note F_, 1
	note G_, 8
	octave 2
	note D#, 8
	note B_, 8
	note D#, 8
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	note F#, 1
	sound_call .sub2
	note G#, 1
	octave 1
	note D#, 2
	octave 3
	note A#, 2
	octave 1
	note D#, 2
	octave 3
	note A#, 2
	octave 2
	note D#, 2
	octave 3
	note A#, 2
	octave 1
	note A#, 2
	octave 3
	note A#, 2
	volume_envelope 12, 2
	octave 1
	note D#, 6
	sound_ret

.sub1:
	note_type 6, 12, 7
	octave 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 2
	note D#, 1
	note A#, 1
	octave 3
	note D#, 1
	note A#, 1
	sound_ret

.sub2:
	octave 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note G#, 1
	octave 3
	note D_, 1
	sound_ret

Music_RayShadeOpening2_Ch3:
	vibrato 15, 2, 4
	note_type 12, 2, 7
	octave 4
	note D#, 1
	note E_, 7
	note F#, 1
	note G_, 7
	note A_, 1
	note A#, 7
	octave 5
	note C_, 1
	note C#, 3
	note D#, 1
	note E_, 7
	rest 4
	vibrato 8, 1, 3
	note_type 6, 1, 7
	sound_call .sub2
	sound_call .sub1
	note B_, 4
	sound_call .sub2
	sound_call .sub1
	note G_, 4
	sound_call .sub2
	sound_call .sub1
	octave 6
	note D_, 4
	note D#, 8
	octave 5
	note D#, 8
	octave 6
	note C#, 8
	octave 5
	note C#, 8
	sound_call .sub2
	sound_call .sub1
	note B_, 4
	sound_call .sub2
	octave 6
	note C#, 4
	sound_call .sub2
	octave 6
	note D_, 4
	note D#, 15
	note_type 3, 2, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 1, 7
	note D#, 3
	volume_envelope 2, 7
	note D#, 2
	volume_envelope 3, 7
	note D#, 2
	rest 5
	sound_ret

.sub1:
	note A#, 4
.sub2:
	octave 5
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	sound_ret

Music_RayShadeOpening2_Ch4:
	toggle_noise 1
	drum_speed 12
	rest 16
	rest 16
	rest 4
	drum_speed 3
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 4
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 16
	drum_note 10, 16
	drum_note 10, 16
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 16
	drum_note 10, 16
	drum_note 10, 12
	sound_ret

.sub1:
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_ret