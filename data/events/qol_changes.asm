
QualityOfLifeChanges:
; change if QOL < 100, change if QOL < 200, change otherwise
	db  +5,  +3,  +2 ; Gained a level
	db  +5,  +3,  +2 ; Item
	db  +7,  +6,  +4 ; Revival
	db  +0,  -1,  -2 ; X Item
	db  +3,  +2,  +1 ; Battled a Gym Leader
	db  +1,  +1,  +0 ; Learned a move
	db  -1,  -1,  -1 ; Lost to an enemy
	db  -5,  -5, -10 ; Fainted due to poison
	db  -5,  -5, -10 ; Lost to a much stronger enemy
	db  -5,  -5, -10 ; Statused (poison, leech seed, etc)
	db -10, -10, -15 ; Confused
	db  +1,  +1,  +0 ; Infatuated
	db +12, +10,  +6 ; Grooming
