specialcall: MACRO
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	specialcall SpecialCallOnlyWhenOutside, EMAILCONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, EMAILCONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, EMAILCONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, EMAILCONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  EMAILCONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  EMAILCONTACT_BIKESHOP, BikeShopPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  EMAILCONTACT_MOM,      MomPhoneLectureScript
	specialcall SpecialCallOnlyWhenOutside, EMAILCONTACT_ELM,      ElmPhoneCallerScript
