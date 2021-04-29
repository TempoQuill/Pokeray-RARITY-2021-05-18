Drumkits:
	dw Drumkit0
	dw Drumkit1
	dw Drumkit2
	dw Drumkit3
	dw Drumkit4
	dw Drumkit5
; new kits
	dw Drumkit6
	dw Drumkit7
	dw Drumkit8

; gen 1
Drumkit0:
	dw NoPerc1
	dw Snare1_C
	dw Snare1_B
	dw Snare1_A
	dw Snare1_8
	dw CymbalRev
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare2
	dw Snare3
	dw Snare4
	dw HiHat2

NoPerc1:
	noise_note 0, 1, 1, 0
	sound_ret

Snare1_C:
	noise_note 0, 12, 1, 51
	sound_ret

Snare1_B:
	noise_note 0, 11, 1, 51
	sound_ret

Snare1_A:
	noise_note 0, 10, 1, 51
	sound_ret

Snare1_8:
	noise_note 0, 8, 1, 51
	sound_ret

CymbalRev:
	noise_note 6, 8, 4, 55
	noise_note 5, 8, 4, 54
	noise_note 4, 8, 3, 53
	noise_note 3, 8, 3, 52
	noise_note 2, 8, 2, 51
	noise_note 1, 8, 1, 50
	sound_ret

Triangle1:
	noise_note 0, 5, 1, 42
	sound_ret

Triangle2:
	noise_note 0, 4, 1, 43
	noise_note 0, 6, 1, 42
	sound_ret

HiHat1:
	noise_note 0, 8, 1, 16
	sound_ret

Snare2:
	noise_note 0, 8, 2, 35
	sound_ret

Snare3:
	noise_note 0, 8, 2, 37
	sound_ret

Snare4:
	noise_note 0, 8, 2, 38
	sound_ret

HiHat2:
	noise_note 0, 10, 1, 16
	sound_ret

Drumkit1:
	dw NoPerc1
	dw HiHat1
	dw Snare2
	dw Snare3
	dw Snare4
	dw HiHat2
	dw HiHat3
	dw Snare5
	dw Triangle3
	dw Triangle4
	dw Snare6_9
	dw Snare6_7
	dw Snare6_6

HiHat3:
	noise_note 0, 10, 2, 17
	sound_ret

Snare5:
	noise_note 0, 10, 2, 80
	sound_ret

Triangle3:
	noise_note 0, 10, 1, 24
	noise_note 0, 3, 1, 51
	sound_ret

Triangle4:
	noise_note 1, 9, 1, 40
	noise_note 0, 7, 1, 24
	sound_ret

Snare6_9:
	noise_note 0, 9, 1, 34
	sound_ret

Snare6_7:
	noise_note 0, 7, 1, 34
	sound_ret

Snare6_6:
	noise_note 0, 6, 1, 34
	sound_ret

Drumkit2:
	dw NoPerc1
	dw Snare1_C
	dw Snare6_9
	dw Snare6_7
	dw Snare6_6
	dw CymbalRev
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare2
	dw Snare3
	dw Snare4
	dw HiHat2

; gen 2
Drumkit3:
	dw NoPerc3
	dw Snare7
	dw Snare8_5
	dw Snare6_8
	dw Kick1
	dw Triangle5
	dw NoPerc2
	dw OHihat
	dw CHihat1
	dw CHihat2
	dw NoPerc3
	dw Kick2
	dw Crash2

NoPerc2:
	noise_note 32, 1, 1, 17
NoPerc3:
	sound_ret

Snare7:
	noise_note 32, 9, 1, 51
	sound_ret

Snare8_5:
	noise_note 0, 5, 1, 50
	sound_ret

Snare6_8:
	noise_note 32, 8, 1, 49
	sound_ret

Kick1:
	noise_note 32, 8, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret

Triangle5:
	noise_note 48, 9, 1, 24
	sound_ret

OHihat:
	noise_note 39, 9, 2, 16
	sound_ret

CHihat1:
	noise_note 51, 9, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

CHihat2:
	noise_note 51, 9, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Kick2:
	noise_note 32, 10, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret

Crash2:
	noise_note 32, 8, 4, 18
	sound_ret

Drumkit4:
	dw NoPerc3
	dw NoPerc2
	dw Snare8_5
	dw Snare6_8
	dw Kick1
	dw Snare6_A
	dw Triangle5
	dw CHihat3
	dw MuteSnare1
	dw MuteSnare2
	dw CHihat4
	dw Kick2
	dw Crash1

Snare6_A:
	noise_note 32, 10, 1, 49
	sound_ret

CHihat3:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

MuteSnare1:
	noise_note 51, 5, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

MuteSnare2:
	noise_note 51, 5, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret

CHihat4:
	noise_note 51, 8, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Crash1:
	noise_note 51, 8, 8, 21
	noise_note 32, 6, 5, 18
	sound_ret

Drumkit5:
	dw NoPerc1
	dw Snare6_9
	dw Snare6_7
	dw Snare6_6
	dw OHihat
	dw CHihat1
	dw CHihat2
	dw CymbalRev
	dw Triangle1
	dw Crash1
	dw Snare6_8
	dw Snare8_5
	dw Kick2

; gen 3
Drumkit6:
	dw NoPerc1
	dw Kick3
	dw Snare1_A
	dw Tom1_9
	dw Tom1_6
	dw Tom2_7
	dw Tom2_6
	dw Crash3
	dw Snare6_9
	dw Snare6_7
	dw Snare6_6
	dw HiHat4
	dw HiHat5

Kick3:
	noise_note 0, 7, 1, 68
	sound_ret

Tom1_9:
	noise_note 0, 9, 1, 23
	sound_ret

Tom1_6:
	noise_note 0, 6, 1, 23
	sound_ret

Tom2_7:
	noise_note 0, 7, 1, 52
	sound_ret

Tom2_6:
	noise_note 0, 6, 1, 52
	sound_ret

Crash3:
	noise_note 0, 10, 3, 19
	sound_ret

HiHat4:
	noise_note 0, 6, 2, 48
	sound_ret

HiHat5:
	noise_note 0, 6, 2, 64
	sound_ret

Drumkit7:
	dw NoPerc1
	dw Snare9
	dw Snare1_A
	dw HiSnare
	dw Snare6_6
	dw Crash3
	dw LowTom
	dw Snare8_3
	dw Snare8_4
	dw Snare8_5
	dw Snare8_8
	dw Snare8_9
	dw Snare8_A

Snare9:
	noise_note 0, 10, 1, 35
	sound_ret

HiSnare:
	noise_note 0, 10, 1, 19
	sound_ret

LowTom:
	noise_note 0, 10, 1, 67
	sound_ret

Snare8_3:
	noise_note 0, 3, 1, 50
	sound_ret

Snare8_4:
	noise_note 0, 4, 1, 50
	sound_ret

Snare8_8:
	noise_note 0, 8, 1, 50
	sound_ret

Snare8_9:
	noise_note 0, 9, 1, 50
	sound_ret

Snare8_A:
	noise_note 0, 10, 1, 50
	sound_ret

Drumkit8:
	dw NoPerc1
	dw Kick4
	dw Snare1_A
	dw HiSnare
	dw Snare6_6
	dw Crash3
	dw Snare9
	dw Snare8_3
	dw Snare8_4
	dw Snare8_5
	dw Snare8_8
	dw Snare8_9
	dw Snare8_A

Kick4:
	noise_note 0, 10, 1, 152
	sound_ret
