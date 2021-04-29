; these sfx were directly ported from
; a vanilla japanese Yoshi ROM into
; the Pokegold/Pokeray format
; Sfx_ShootingStar and Sfx_RBYSing are from Red

Sfx_Flail:
	channel_count 1
	channel 5, Sfx_Flail_Ch5

Sfx_PayDay:
	channel_count 2
	channel 5, Sfx_PayDay_Ch5
	channel 6, Sfx_PayDay_Ch6

Sfx_InLove:
	channel_count 1
	channel 5, Sfx_InLove_Ch5

Sfx_BallShake:
	channel_count 1
	channel 5, Sfx_BallShake_Ch5

Sfx_Amnesia:
	channel_count 1
	channel 5, Sfx_Amnesia_Ch5

Sfx_Mimic1:
	channel_count 1
	channel 5, Sfx_Mimic1_Ch5

Sfx_Mimic2:
	channel_count 1
	channel 5, Sfx_Mimic2_Ch5

Sfx_Mimic3:
	channel_count 1
	channel 5, Sfx_Mimic3_Ch5

Sfx_Mimic4:
	channel_count 1
	channel 5, Sfx_Mimic4_Ch5

Sfx_Mimic5:
	channel_count 1
	channel 5, Sfx_Mimic5_Ch5

Sfx_Mimic6:
	channel_count 1
	channel 5, Sfx_Mimic6_Ch5

Sfx_Mimic7:
	channel_count 1
	channel 5, Sfx_Mimic1_Ch5

Sfx_ExpBarFilled:
	channel_count 2
	channel 5, Sfx_ExpBarFilled_Ch5
	channel 6, Sfx_ExpBarFilled_Ch6

Sfx_EggRoll:
	channel_count 1
	channel 5, Sfx_EggRoll_Ch5

Sfx_Smokescreen:
	channel_count 1
	channel 5, Sfx_Smokescreen

Sfx_BallClose:
	channel_count 1
	channel 5, Sfx_BallClose_Ch5

Sfx_Spikes1:
	channel_count 1
	channel 5, Sfx_Spikes1_Ch5

Sfx_Spikes2:
	channel_count 1
	channel 5, Sfx_Spikes2_Ch5

Sfx_Recover:
	channel_count 1
	channel 5, Sfx_Recover_Ch5

Sfx_LockOn:
	channel_count 2
	channel 5, Sfx_LockOn_Ch5
	channel 6, Sfx_LockOn_Ch6

Sfx_Flail_Ch5:
	set_music
	duty_cycle 2
	note_type 4, 14, 1
	octave 6
	note D_, 1
	note C_, 1
	octave 5
	note B_, 1
	note A_, 1
	sound_ret

; unreferenced
	set_music
	duty_cycle 2
	note_type 4, 14, 1
	octave 5
	note F_, 1
	note A_, 1
	octave 6
	note C_, 1
	note_type 12, 14, 3
	note F_, 16
	sound_ret

; unreferenced
	set_music
	note_type 12, 1, 0
	octave 5
	pitch_slide 1, 2, F_
	note F_, 4
	sound_ret

Sfx_PayDay_Ch5:
	tempo 256
	duty_cycle 2
	square_note 4, 15, 4, 1792
	square_note 1, 10, 1, 1856
	square_note 2, 12, 1, 1920
	square_note 8, 10, 2, 1984
	sound_ret

Sfx_PayDay_Ch6:
	duty_cycle 1
	square_note 1, 2, 1, 1728
	square_note 4, 13, 4, 1792
	square_note 1, 8, 1, 1856
	square_note 2, 10, 1, 1920
	square_note 8, 8, 2, 1984
	sound_ret

Sfx_InLove_Ch5:
	duty_cycle 2
	square_note 0, 4, 2, 1280
	square_note 0, 9, 2, 1664
	square_note 0, 13, 2, 1792
	square_note 0, 15, 2, 1920
	square_note 0, 13, 2, 1792
	square_note 0, 9, 2, 1664
	square_note 10, 4, 1, 1280
	sound_ret

Sfx_BallShake_Ch5:
	duty_cycle 2
	pitch_sweep 3, -2
	square_note 4, 15, 2, 1024
	pitch_sweep 2, 3
	square_note 8, 15, 2, 1536
	pitch_sweep 0, 8
	sound_ret

Sfx_Amnesia_Ch5:
	duty_cycle 0
	pitch_sweep 2, 2
	square_note 4, 15, 2, 768
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic1_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1984
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic2_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1952
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic3_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1920
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic4_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1888
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic5_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1856
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic6_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1824
	pitch_sweep 0, 8
	sound_ret

Sfx_Mimic7_Ch5:
	duty_cycle 2
	pitch_sweep 2, -5
	square_note 6, 15, 1, 1792
	pitch_sweep 0, 8
	sound_ret

Sfx_ExpBarFilled_Ch5:
	duty_cycle 2
	square_note 0, 12, 1, 1920
	square_note 1, 15, 1, 1952
	square_note 1, 12, 1, 1984
	square_note 4, 15, 1, 2016
	sound_ret

Sfx_ExpBarFilled_Ch6:
	duty_cycle 2
	square_note 0, 9, 1, 1921
	square_note 1, 13, 1, 1953
	square_note 1, 9, 1, 1985
	square_note 4, 13, 1, 2017
	sound_ret

Sfx_EggRoll_Ch5:
	duty_cycle 1
	pitch_sweep 2, 6
	square_note 8, 15, 1, 1856
	pitch_sweep 3, 6
	square_note 4, 14, 1, 1984
	pitch_sweep 0, 8
	sound_ret

Sfx_Smokescreen_Ch5:
	duty_cycle 1
	pitch_sweep 1, 5
	square_note 4, 10, 1, 1856
	pitch_sweep 0, 8
	sound_ret

Sfx_BallClose_Ch5:
	duty_cycle 2
	pitch_sweep 3, 6
	square_note 8, 15, 1, 1792
	pitch_sweep 0, 8
	sound_ret

Sfx_Spikes1_Ch5:
	duty_cycle 2
	pitch_sweep 1, 4
	square_note 8, 7, 1, 1664
	square_note 8, 4, 1, 1792
	pitch_sweep 0, 8
	sound_ret

Sfx_Spikes2_Ch5:
	duty_cycle 2
	pitch_sweep 1, 4
	square_note 8, 13, 1, 1664
	square_note 8, 10, 1, 1792
	pitch_sweep 0, 8
	sound_ret

Sfx_Recover_Ch5:
	duty_cycle 2
	pitch_sweep 3, 6
	square_note 4, 15, 4, 1920
	square_note 3, 12, 1, 1984
	square_note 4, 13, 1, 1952
	pitch_sweep 0, 8
	sound_ret

Sfx_LockOn_Ch5:
	duty_cycle 2
	square_note 3, 13, 1, 1984
	square_note 3, 13, 1, 1920
	square_note 3, 13, 1, 1984
	square_note 3, 13, 1, 1920
	sound_ret

Sfx_LockOn_Ch6:
	duty_cycle 2
	square_note 3, 10, 1, 1985
	square_note 3, 10, 1, 1921
	square_note 3, 10, 1, 1985
	square_note 3, 10, 1, 1921
	sound_ret

Sfx_ShootingStar:
	channel_count 1
	channel 5, Sfx_ShootingStar_Ch5

Sfx_ShootingStar_Ch5:
	duty_cycle_pattern 3, 2, 1, 0
	pitch_sweep 2, -7
	square_note 4, 4, 0, 2016
	square_note 4, 6, 0, 2016
	square_note 4, 8, 0, 2016
	square_note 8, 10, 0, 2016
	square_note 8, 10, 0, 2016
	square_note 8, 8, 0, 2016
	square_note 8, 6, 0, 2016
	square_note 8, 3, 0, 2016
	square_note 15, 1, 2, 2016
	pitch_sweep 0, 8
	sound_ret

Sfx_RBYSing:
	channel_count 2
	channel 5, Sfx_RBYSing_Ch5
	channel 6, Sfx_RBYSing_Ch6

Sfx_RBYSing_Ch5:
	set_music
	vibrato 10, 2, 4
	duty_cycle 2
	note_type 10, 8, 7
	octave 5
	note G#, 8
	octave 6
	note F#, 4
	note E_, 4
	octave 5
	note G#, 8
	sound_ret

Sfx_RBYSing_Ch6:
	set_music
	vibrato 10, 2, 3
	duty_cycle 2
	note_type 11, 6, 7
	octave 5
	note G#, 8
	note_type 10, 6, 7
	octave 6
	note F#, 4
	note E_, 4
	octave 5
	note G#, 8
	sound_ret
