email: MACRO
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to EMAIL_* constants
	email TRAINER_NONE, EMAIL_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	email TRAINER_NONE, EMAILCONTACT_MOM,      PLAYERS_HOUSE_1F,          ANYTIME, MomPhoneCalleeScript,     0,       UnusedPhoneScript
	email TRAINER_NONE, EMAILCONTACT_BIKESHOP, N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	email TRAINER_NONE, EMAILCONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
	email TRAINER_NONE, EMAILCONTACT_ELM,      N_A,                       ANYTIME, ElmPhoneCalleeScript,     0,       ElmPhoneCallerScript
	email TRAINER_NONE, EMAILCONTACT_LARCH,    LARCHS_LAB,                ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	email SCHOOLBOY,    JACK1,                 N_A,                       ANYTIME, JackPhoneCalleeScript,    ANYTIME, JackPhoneCallerScript
	email POKEFANF,     BEVERLY1,              N_A,                       ANYTIME, BeverlyPhoneCalleeScript, ANYTIME, BeverlyPhoneCallerScript
	email SAILOR,       HUEY1,                 N_A,                       ANYTIME, HueyPhoneCalleeScript,    ANYTIME, HueyPhoneCallerScript
	email TRAINER_NONE, EMAIL_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	email TRAINER_NONE, EMAIL_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	email COOLTRAINERM, GAVEN3,                N_A,                       ANYTIME, GavenPhoneCalleeScript,   ANYTIME, GavenPhoneCallerScript
	email COOLTRAINERF, BETH1,                 N_A,                       ANYTIME, BethPhoneCalleeScript,    ANYTIME, BethPhoneCallerScript
	email BIRD_KEEPER,  JOSE2,                 N_A,                       ANYTIME, JosePhoneCalleeScript,    ANYTIME, JosePhoneCallerScript
	email COOLTRAINERF, REENA1,                N_A,                       ANYTIME, ReenaPhoneCalleeScript,   ANYTIME, ReenaPhoneCallerScript
	email YOUNGSTER,    JOEY1,                 N_A,                       ANYTIME, JoeyPhoneCalleeScript,    ANYTIME, JoeyPhoneCallerScript
	email BUG_CATCHER,  WADE1,                 N_A,                       ANYTIME, WadePhoneCalleeScript,    ANYTIME, WadePhoneCallerScript
	email FISHER,       RALPH1,                N_A,                       ANYTIME, RalphPhoneCalleeScript,   ANYTIME, RalphPhoneCallerScript
	email PICNICKER,    LIZ1,                  N_A,                       ANYTIME, LizPhoneCalleeScript,     ANYTIME, LizPhoneCallerScript
	email HIKER,        ANTHONY2,              N_A,                       ANYTIME, AnthonyPhoneCalleeScript, ANYTIME, AnthonyPhoneCallerScript
	email CAMPER,       TODD1,                 N_A,                       ANYTIME, ToddPhoneCalleeScript,    ANYTIME, ToddPhoneCallerScript
	email PICNICKER,    GINA1,                 N_A,                       ANYTIME, GinaPhoneCalleeScript,    ANYTIME, GinaPhoneCallerScript
	email JUGGLER,      IRWIN1,                N_A,                       ANYTIME, IrwinPhoneCalleeScript,   ANYTIME, IrwinPhoneCallerScript
	email BUG_CATCHER,  ARNIE1,                N_A,                       ANYTIME, ArniePhoneCalleeScript,   ANYTIME, ArniePhoneCallerScript
	email SCHOOLBOY,    ALAN1,                 N_A,                       ANYTIME, AlanPhoneCalleeScript,    ANYTIME, AlanPhoneCallerScript
	email TRAINER_NONE, EMAIL_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	email LASS,         DANA1,                 N_A,                       ANYTIME, DanaPhoneCalleeScript,    ANYTIME, DanaPhoneCallerScript
	email SCHOOLBOY,    CHAD1,                 N_A,                       ANYTIME, ChadPhoneCalleeScript,    ANYTIME, ChadPhoneCallerScript
	email POKEFANM,     DEREK1,                N_A,                       ANYTIME, DerekPhoneCalleeScript,   ANYTIME, DerekPhoneCallerScript
	email FISHER,       CHRIS1,                N_A,                       ANYTIME, ChrisPhoneCalleeScript,   ANYTIME, ChrisPhoneCallerScript
	email POKEMANIAC,   BRENT1,                N_A,                       ANYTIME, BrentPhoneCalleeScript,   ANYTIME, BrentPhoneCallerScript
	email PICNICKER,    TIFFANY3,              N_A,                       ANYTIME, TiffanyPhoneCalleeScript, ANYTIME, TiffanyPhoneCallerScript
	email BIRD_KEEPER,  VANCE1,                N_A,                       ANYTIME, VancePhoneCalleeScript,   ANYTIME, VancePhoneCallerScript
	email FISHER,       WILTON1,               N_A,                       ANYTIME, WiltonPhoneCalleeScript,  ANYTIME, WiltonPhoneCallerScript
	email BLACKBELT_T,  KENJI3,                N_A,                       ANYTIME, KenjiPhoneCalleeScript,   ANYTIME, KenjiPhoneCallerScript
	email HIKER,        PARRY1,                N_A,                       ANYTIME, ParryPhoneCalleeScript,   ANYTIME, ParryPhoneCallerScript
	email PICNICKER,    ERIN1,                 N_A,                       ANYTIME, ErinPhoneCalleeScript,    ANYTIME, ErinPhoneCallerScript
