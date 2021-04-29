rating: MACRO
; count, sfx, text
	dbww \1, \2, \3
ENDM

OakRatings:
; if you caught at most this many, play this sound, load this text
; (text is defined in engine/events/prof_oaks_pc.asm)
	rating   9, SFX_FAIL,                     OakRating01
	rating  19, SFX_FAIL,                     OakRating02
	rating  34, SFX_GEN_1_DEX_REWARD,         OakRating03
	rating  49, SFX_GEN_1_DEX_REWARD,         OakRating04
	rating  64, SFX_ITEM,                     OakRating05
	rating  79, SFX_ITEM,                     OakRating06
	rating  94, SFX_TRADE_COMPLETE,           OakRating07
	rating 109, SFX_TRADE_COMPLETE,           OakRating08
	rating 124, SFX_CAUGHT_MON,               OakRating09
	rating 139, SFX_CAUGHT_MON,               OakRating10
	rating 154, SFX_KEEP_AT_IT,               OakRating11
	rating 169, SFX_KEEP_AT_IT,               OakRating12
	rating 184, SFX_NOT_TOO_SHABBY,           OakRating13
	rating 199, SFX_NOT_TOO_SHABBY,           OakRating14
	rating 214, SFX_ALMOST_FINISHED,          OakRating15
	rating 229, SFX_ALMOST_FINISHED,          OakRating16
	rating 239, SFX_COMPLETED_DEX,            OakRating17
	rating 248, SFX_COMPLETED_DEX,            OakRating18
	rating 255, SFX_COMPLETED_DEX,            OakRating19
