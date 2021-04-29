SECTION "Scratch", SRAM

sScratch::

UNION
sDecompressScratch:: ds $188
sDecompressBuffer:: ds 7 * 7 tiles

NEXTU
sScratchTilemap:: ds BG_MAP_WIDTH * BG_MAP_HEIGHT
sScratchAttrmap:: ds $200
ENDU


SECTION "SRAM Bank 0", SRAM

sPartyMail::
sPartyMon1Mail:: mailmsg sPartyMon1Mail ; a600
sPartyMon2Mail:: mailmsg sPartyMon2Mail ; a630
sPartyMon3Mail:: mailmsg sPartyMon3Mail ; a660
sPartyMon4Mail:: mailmsg sPartyMon4Mail ; a690
sPartyMon5Mail:: mailmsg sPartyMon5Mail ; a6c0
sPartyMon6Mail:: mailmsg sPartyMon6Mail ; a6f0

sPartyMailBackup::
sPartyMon1MailBackup:: mailmsg sPartyMon1MailBackup ; a720
sPartyMon2MailBackup:: mailmsg sPartyMon2MailBackup ; a750
sPartyMon3MailBackup:: mailmsg sPartyMon3MailBackup ; a780
sPartyMon4MailBackup:: mailmsg sPartyMon4MailBackup ; a7b0
sPartyMon5MailBackup:: mailmsg sPartyMon5MailBackup ; a7e0
sPartyMon6MailBackup:: mailmsg sPartyMon6MailBackup ; a810

sMailboxCount:: db ; a840
sMailbox::
sMailbox1::  mailmsg sMailbox1  ; a841
sMailbox2::  mailmsg sMailbox2  ; a871
sMailbox3::  mailmsg sMailbox3  ; a8a1
sMailbox4::  mailmsg sMailbox4  ; a8d1
sMailbox5::  mailmsg sMailbox5  ; a901
sMailbox6::  mailmsg sMailbox6  ; a931
sMailbox7::  mailmsg sMailbox7  ; a961
sMailbox8::  mailmsg sMailbox8  ; a991
sMailbox9::  mailmsg sMailbox9  ; a9c1
sMailbox10:: mailmsg sMailbox10 ; a9f1

sMailboxCountBackup:: db ; aa21
sMailboxBackup::
sMailbox1Backup::  mailmsg sMailbox1Backup  ; aa22
sMailbox2Backup::  mailmsg sMailbox2Backup  ; aa52
sMailbox3Backup::  mailmsg sMailbox3Backup  ; aa82
sMailbox4Backup::  mailmsg sMailbox4Backup  ; aab2
sMailbox5Backup::  mailmsg sMailbox5Backup  ; aae2
sMailbox6Backup::  mailmsg sMailbox6Backup  ; ab12
sMailbox7Backup::  mailmsg sMailbox7Backup  ; ab42
sMailbox8Backup::  mailmsg sMailbox8Backup  ; ab72
sMailbox9Backup::  mailmsg sMailbox9Backup  ; aba2
sMailbox10Backup:: mailmsg sMailbox10Backup ; abd2

sMysteryGiftItem:: db ; ac02
sMysteryGiftUnlocked:: db ; ac03
sBackupMysteryGiftItem:: db ; ac04
sNumDailyMysteryGiftPartnerIDs:: db ; ac05
sDailyMysteryGiftPartnerIDs:: ds 5 * 2 ; ac06 ; maximum 5 per day, 2 bytes per ID
sMysteryGiftDecorationsReceived:: flag_array NUM_NON_TROPHY_DECOS ; ac10
sMysteryGiftTimer:: db ; ac16
sMysteryGiftTimerStartDay:: db ; ac17
sMysteryGiftTrainerHouseFlag:: db ; ac18
sMysteryGiftPartnerName:: ds NAME_LENGTH ; ac19
sMysteryGiftTrainer:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2 ; ac24
sBackupMysteryGiftItemEnd:: ; ac4a

	ds $16

sRTCStatusFlags:: ds 8 ; ac60
sLuckyNumberDay:: db ; ac68
sLuckyIDNumber::  dw ; ac69


SECTION "Backup Save 1", SRAM

sBackupPlayerData3:: ds wPlayerDataEnd - wPlayerData3 ; ac6b
sBackupPokemonData:: ds wPokemonDataEnd - wPokemonData ; b0e8
sBackupPlayerData1:: ds wPlayerData1End - wPlayerData ; b5c7


SECTION "SRAM Stack", SRAM

sStackTop:: dw ; b7ed
sRTCHaltCheckValue:: db ; b7ef


SECTION "SRAM Window Stack", SRAM

sWindowStackBottom:: ; b800
	ds $800 - 1
sWindowStack::
sWindowStackTop:: ; bfff
	ds 1


SECTION "Save", SRAM

sOptions:: ds wOptionsEnd - wOptions ; a000

sCheckValue1:: db ; a008 ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption

sGameData::
sPlayerData::
sPlayerData1::  ds wPlayerData1End - wPlayerData1 ; a009
sPlayerData2::  ds wPlayerData2End - wPlayerData2 ; a22f
sPlayerData3::  ds wPlayerData3End - wPlayerData3 ; a3d9
sCurMapData::   ds wCurMapDataEnd - wCurMapData ; a856
sPokemonData::  ds wPokemonDataEnd - wPokemonData ; a88a
sGameDataEnd::

sChecksum:: dw ; ad69

sCheckValue2:: db ; ad6b ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption


SECTION "Active Box", SRAM

sBox:: curbox sBox ; ad6c


SECTION "Link Battle Data", SRAM

sLinkBattleStats::
sLinkBattleWins::   dw ; b184
sLinkBattleLosses:: dw ; b186 
sLinkBattleDraws::  dw ; b188 

sLinkBattleRecord::
sLinkBattleRecord1:: link_battle_record sLinkBattleRecord1 ; b18a
sLinkBattleRecord2:: link_battle_record sLinkBattleRecord2 ; b19c
sLinkBattleRecord3:: link_battle_record sLinkBattleRecord3 ; b1ae
sLinkBattleRecord4:: link_battle_record sLinkBattleRecord4 ; b1c0
sLinkBattleRecord5:: link_battle_record sLinkBattleRecord5 ; b1d2
sLinkBattleStatsEnd:: ; b1e4


SECTION "SRAM Hall of Fame", SRAM

sHallOfFame::
sHallOfFame01:: hall_of_fame sHallOfFame01 ; b1e4
sHallOfFame02:: hall_of_fame sHallOfFame02 ; b24c
sHallOfFame03:: hall_of_fame sHallOfFame03 ; b2b4
sHallOfFame04:: hall_of_fame sHallOfFame04 ; b31c
sHallOfFame05:: hall_of_fame sHallOfFame05 ; b384
sHallOfFame06:: hall_of_fame sHallOfFame06 ; b3ec
sHallOfFame07:: hall_of_fame sHallOfFame07 ; b454
sHallOfFame08:: hall_of_fame sHallOfFame08 ; b4bc
sHallOfFame09:: hall_of_fame sHallOfFame09 ; b524
sHallOfFame10:: hall_of_fame sHallOfFame10 ; b58c
sHallOfFame11:: hall_of_fame sHallOfFame11 ; b5f4
sHallOfFame12:: hall_of_fame sHallOfFame12 ; b65c
sHallOfFame13:: hall_of_fame sHallOfFame13 ; b6c4
sHallOfFame14:: hall_of_fame sHallOfFame14 ; b72c
sHallOfFame15:: hall_of_fame sHallOfFame15 ; b794
sHallOfFame16:: hall_of_fame sHallOfFame16 ; b7fc
sHallOfFame17:: hall_of_fame sHallOfFame17 ; b864
sHallOfFame18:: hall_of_fame sHallOfFame18 ; b8cc
sHallOfFame19:: hall_of_fame sHallOfFame19 ; b934
sHallOfFame20:: hall_of_fame sHallOfFame20 ; b99c
sHallOfFame21:: hall_of_fame sHallOfFame21 ; ba04
sHallOfFame22:: hall_of_fame sHallOfFame22 ; ba6c
sHallOfFame23:: hall_of_fame sHallOfFame23 ; bad4
sHallOfFame24:: hall_of_fame sHallOfFame24 ; bb3c
sHallOfFame25:: hall_of_fame sHallOfFame25 ; bba4
sHallOfFame26:: hall_of_fame sHallOfFame26 ; bc0c
sHallOfFame27:: hall_of_fame sHallOfFame27 ; bc74
sHallOfFame28:: hall_of_fame sHallOfFame28 ; bcdc
sHallOfFame29:: hall_of_fame sHallOfFame29 ; bd44
sHallOfFame30:: hall_of_fame sHallOfFame30 ; bdac
sHallOfFameEnd::


SECTION "Backup Save 2", SRAM

sBackupPlayerData2:: ds wPlayerData2End - wPlayerData2 ; be14


SECTION "Boxes 1-7", SRAM

sBox1::  box sBox1 ; a000
sBox2::  box sBox2 ; a40a
sBox3::  box sBox3 ; a814
sBox4::  box sBox4 ; ac1e
sBox5::  box sBox5 ; b028
sBox6::  box sBox6 ; b432
sBox7::  box sBox7 ; b83c

SECTION "Boxes 8-14", SRAM

sBox8::  box sBox8
sBox9::  box sBox9
sBox10:: box sBox10
sBox11:: box sBox11
sBox12:: box sBox12
sBox13:: box sBox13
sBox14:: box sBox14


SECTION "Boxes 15-21", SRAM

sBox15:: box sBox15
sBox16:: box sBox16
sBox17:: box sBox17
sBox18:: box sBox18
sBox19:: box sBox19
sBox20:: box sBox20
sBox21:: box sBox21


SECTION "Backup Save 3", SRAM

sBackupOptions:: ds wOptionsEnd - wOptions ; bc46
sBackupCheckValue1:: db ; bc4e ; loaded with SAVE_CHECK_VALUE_1, used to check save corruption
sBackupCurMapData:: ds wCurMapDataEnd - wCurMapData ; bc4f
sBackupChecksum:: dw ; bc83
sBackupCheckValue2:: db ; bc85 ; loaded with SAVE_CHECK_VALUE_2, used to check save corruption
; bc86