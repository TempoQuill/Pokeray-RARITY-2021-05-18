INCLUDE "constants.asm"

INCLUDE "macros/wram.asm"


INCLUDE "vram.asm"


SECTION "Audio RAM", WRAM0

wMusic::

; nonzero if playing
wMusicPlaying:: db ; c000

wChannels::
wChannel1:: channel_struct wChannel1 ; c001
wChannel2:: channel_struct wChannel2 ; c033
wChannel3:: channel_struct wChannel3 ; c065
wChannel4:: channel_struct wChannel4 ; c097

wSFXChannels::
wChannel5:: channel_struct wChannel5 ; c0c9
wChannel6:: channel_struct wChannel6 ; c0fb
wChannel7:: channel_struct wChannel7 ; c12d
wChannel8:: channel_struct wChannel8 ; c15f


wCurTrackDuty:: db ; c191
wCurTrackVolumeEnvelope:: db ; c192
wCurTrackFrequency:: dw ; c193
wUnusedBCDNumber:: db ; c195 ; BCD value, dummied out
wCurNoteDuration:: db ; c196 ; used in Music_PitchSlide and LoadNote

wCurMusicByte:: db ; c197
wCurChannel:: db ; c198

wVolume:: ; c199
; corresponds to rNR50
; Channel control / ON-OFF / Volume (R/W)
;   bit 7 - Vin->SO2 ON/OFF
;   bit 6-4 - SO2 output level (volume) (# 0-7)
;   bit 3 - Vin->SO1 ON/OFF
;   bit 2-0 - SO1 output level (volume) (# 0-7)
	db

wSoundOutput:: ; c19a
; corresponds to rNR51
; bit 4-7: ch1-4 so2 on/off
; bit 0-3: ch1-4 so1 on/off
	db

wPitchSweep:: ; c19b
; corresponds to rNR10
; bit 7:   sweep
; bit 4-6: sweep time
; bit 3:   sweep direction
; but 0-2: sweep shift
	db

wMusicID:: dw ; c19c
wMusicBank:: db ; c19e
wNoiseSampleAddress:: dw ; c19f
wNoiseSampleDelay:: db ; c1a1
wMusicNoiseSampleSet:: db ; c1a2
wSFXNoiseSampleSet:: db ; c1a3

wLowHealthAlarm:: ; c1a4
; bit 7: on/off
; bit 4: pitch
; bit 0-3: counter
	db

wMusicFade:: ; c1a5
; fades volume over x frames
; bit 7: fade in/out
; bit 0-5: number of frames for each volume level
; $00 = none (default)
	db

wMusicFadeCount:: db ; c1a6
wMusicFadeID:: dw ; c1a7
wCryPitch:: dw ; c1a9
wCryLength:: dw ; c1ab
wLastVolume:: db ; c1ad
wSoundEventFlag:: db ; c1ae
wSFXPriority:: ; c1af
; if nonzero, turn off music when playing sfx
	db

wChannel1JumpCondition:: db ; c1b0
wChannel2JumpCondition:: db ; c1b1
wChannel3JumpCondition:: db ; c1b2
wChannel4JumpCondition:: db ; c1b3
wStereoPanningMask:: db ; c1b4

wCryTracks:: ; c1b5
; plays only in left or right track depending on what side the monster is on
; both tracks active outside of battle
	db

wSFXDuration:: db ; c1b6
wCurSFX:: ; c1b7
; id of sfx currently playing
	db

wChannelsEnd:: ; c1b8

wMapMusic:: db
wDontPlayMapMusicOnReload:: db ; c1b9
wFrameSwap:: db ; c1ba
wMusicEnd:: ; c1bb

	ds 7

SECTION "WRAM", WRAM0

wLZAddress:: dw ; c1c2
wLZBank::    db ; c1c4

wInputType::        db ; c1c5
wAutoInputAddress:: dw ; c1c6
wAutoInputBank::    db ; c1c8
wAutoInputLength::  db ; c1c9

wDebugFlags:: db ; c1ca
wGameLogicPaused:: db ; c1cb
wSpriteUpdatesEnabled:: db ; c1cc
wUnusedScriptByteBuffer:: db ; c1cd
wMapTimeOfDay:: db ; c1ce


wPrinterConnectionOpen:: db ; c1cf
wPrinterOpcode:: db ; c1d0
wPrevDexEntry:: db ; c1d1
wDisableTextAcceleration:: db ; c1d2
wPCItemsCursor:: db ; c1d3
wPCItemsScrollPosition:: db ; c1d4

	ds 43 ; c1d5


SECTION "GBC Palettes", WRAM0

; eight 4-color palettes each
wBGPals1:: ds 8 palettes ; c200
wOBPals1:: ds 8 palettes ; c240
wBGPals2:: ds 8 palettes ; c280
wOBPals2:: ds 8 palettes ; c2c0


SECTION "Sprites", WRAM0

wVirtualOAM:: ; c300
wVirtualOAMSprite00:: sprite_oam_struct wVirtualOAMSprite00 ; c300
wVirtualOAMSprite01:: sprite_oam_struct wVirtualOAMSprite01 ; c304
wVirtualOAMSprite02:: sprite_oam_struct wVirtualOAMSprite02 ; c308
wVirtualOAMSprite03:: sprite_oam_struct wVirtualOAMSprite03 ; c30c
wVirtualOAMSprite04:: sprite_oam_struct wVirtualOAMSprite04 ; c310
wVirtualOAMSprite05:: sprite_oam_struct wVirtualOAMSprite05 ; c314
wVirtualOAMSprite06:: sprite_oam_struct wVirtualOAMSprite06 ; c318
wVirtualOAMSprite07:: sprite_oam_struct wVirtualOAMSprite07 ; c31c
wVirtualOAMSprite08:: sprite_oam_struct wVirtualOAMSprite08 ; c320
wVirtualOAMSprite09:: sprite_oam_struct wVirtualOAMSprite09 ; c324
wVirtualOAMSprite10:: sprite_oam_struct wVirtualOAMSprite10 ; c328
wVirtualOAMSprite11:: sprite_oam_struct wVirtualOAMSprite11 ; c32c
wVirtualOAMSprite12:: sprite_oam_struct wVirtualOAMSprite12 ; c330
wVirtualOAMSprite13:: sprite_oam_struct wVirtualOAMSprite13 ; c334
wVirtualOAMSprite14:: sprite_oam_struct wVirtualOAMSprite14 ; c338
wVirtualOAMSprite15:: sprite_oam_struct wVirtualOAMSprite15 ; c33c
wVirtualOAMSprite16:: sprite_oam_struct wVirtualOAMSprite16 ; c340
wVirtualOAMSprite17:: sprite_oam_struct wVirtualOAMSprite17 ; c344
wVirtualOAMSprite18:: sprite_oam_struct wVirtualOAMSprite18 ; c348
wVirtualOAMSprite19:: sprite_oam_struct wVirtualOAMSprite19 ; c34c
wVirtualOAMSprite20:: sprite_oam_struct wVirtualOAMSprite20 ; c350
wVirtualOAMSprite21:: sprite_oam_struct wVirtualOAMSprite21 ; c354
wVirtualOAMSprite22:: sprite_oam_struct wVirtualOAMSprite22 ; c358
wVirtualOAMSprite23:: sprite_oam_struct wVirtualOAMSprite23 ; c35c
wVirtualOAMSprite24:: sprite_oam_struct wVirtualOAMSprite24 ; c360
wVirtualOAMSprite25:: sprite_oam_struct wVirtualOAMSprite25 ; c364
wVirtualOAMSprite26:: sprite_oam_struct wVirtualOAMSprite26 ; c368
wVirtualOAMSprite27:: sprite_oam_struct wVirtualOAMSprite27 ; c36c
wVirtualOAMSprite28:: sprite_oam_struct wVirtualOAMSprite28 ; c370
wVirtualOAMSprite29:: sprite_oam_struct wVirtualOAMSprite29 ; c374
wVirtualOAMSprite30:: sprite_oam_struct wVirtualOAMSprite30 ; c378
wVirtualOAMSprite31:: sprite_oam_struct wVirtualOAMSprite31 ; c37c
wVirtualOAMSprite32:: sprite_oam_struct wVirtualOAMSprite32 ; c380
wVirtualOAMSprite33:: sprite_oam_struct wVirtualOAMSprite33 ; c384
wVirtualOAMSprite34:: sprite_oam_struct wVirtualOAMSprite34 ; c388
wVirtualOAMSprite35:: sprite_oam_struct wVirtualOAMSprite35 ; c38c
wVirtualOAMSprite36:: sprite_oam_struct wVirtualOAMSprite36 ; c390
wVirtualOAMSprite37:: sprite_oam_struct wVirtualOAMSprite37 ; c394
wVirtualOAMSprite38:: sprite_oam_struct wVirtualOAMSprite38 ; c398
wVirtualOAMSprite39:: sprite_oam_struct wVirtualOAMSprite39 ; c39c
wVirtualOAMEnd:: ; c3a0


SECTION "Tilemap", WRAM0

wTilemap:: ; c3a0
; 20x18 grid of 8x8 tiles
	ds SCREEN_WIDTH * SCREEN_HEIGHT
wTilemapEnd:: ; c508


SECTION "Miscellaneous", WRAM0

; This union spans 480 bytes. (c508-c6e8)
UNION ; c508
; surrounding tiles
; This buffer determines the size for the rest of the union;
; it uses exactly 480 bytes.
wSurroundingTiles:: ds SURROUNDING_WIDTH * SURROUNDING_HEIGHT

NEXTU
; box save buffer
; SaveBoxAddress uses this buffer in three steps because it
; needs more space than the buffer can hold.
wBoxPartialData:: ds 480
wBoxPartialDataEnd::

NEXTU
; 20x18 grid of 8x8 tiles
wTempTilemap::
	ds SCREEN_WIDTH * SCREEN_HEIGHT

NEXTU
; unown puzzle
wUnownPuzzle::
	ds 200
wPuzzlePieces:: ds 6 * 6
	ds 244
wUnownPuzzleEnd::

NEXTU

; This union spans 200 bytes.
UNION ; c508
; wSpriteAnimDict is a 10x2 dictionary
; keys: taken from third column of SpriteAnimSeqData
; values: vTiles
wSpriteAnimDict:: ds 10 * 2

wSpriteAnimationStructs::
; field  0:   index
; fields 1-3: loaded from SpriteAnimSeqData
wSpriteAnim1::  sprite_anim_struct wSpriteAnim1
wSpriteAnim2::  sprite_anim_struct wSpriteAnim2
wSpriteAnim3::  sprite_anim_struct wSpriteAnim3
wSpriteAnim4::  sprite_anim_struct wSpriteAnim4
wSpriteAnim5::  sprite_anim_struct wSpriteAnim5
wSpriteAnim6::  sprite_anim_struct wSpriteAnim6
wSpriteAnim7::  sprite_anim_struct wSpriteAnim7
wSpriteAnim8::  sprite_anim_struct wSpriteAnim8
wSpriteAnim9::  sprite_anim_struct wSpriteAnim9
wSpriteAnim10:: sprite_anim_struct wSpriteAnim10
wSpriteAnimationStructsEnd::

wSpriteAnimCount:: db
wCurSpriteOAMAddr:: db

wCurIcon:: db

wCurIconTile:: db
wSpriteAnimAddrBackup::
wSpriteAnimIDBuffer::
wCurSpriteOAMFlags::
	dw
wCurAnimVTile:: db
wCurAnimXCoord:: db
wCurAnimYCoord:: db
wCurAnimXOffset:: db
wCurAnimYOffset:: db
wGlobalAnimYOffset:: db
wGlobalAnimXOffset:: db
wSpriteAnimsEnd::
	ds 7

NEXTU
; timeset temp storage
wTimeSetBuffer::
	ds 20
wInitHourBuffer:: db
	ds 9
wInitMinuteBuffer:: db
	ds 19
wTimeSetBufferEnd::

NEXTU
; hall of fame temp struct
wHallOfFameTemp:: hall_of_fame wHallOfFameTemp

NEXTU
; link engine data
wLink_c508:: ds 10
wc512:: ds 10

NEXTU
; unused (engine/menus/debug.asm)
wc508:: ds 13
ENDU ; c5d0

; This union spans 304 bytes. (c5d0 - c700)
UNION ; c5d0
; pokedex
wPokedexDataStart::
wPokedexOrder:: ds $100 ; >= NUM_POKEMON
wPokedexOrderEnd::
wDexListingScrollOffset:: db ; offset of the first displayed entry from the start
wDexListingCursor:: dw ; Dex cursor
wDexListingEnd:: dw ; Last mon to display
wDexListingHeight:: db ; number of entries displayed at once in the dex listing
wCurDexMode:: db ; Pokedex Mode
wDexSearchMonType1:: db ; first type to search
wDexSearchMonType2:: db ; second type to search
wDexSearchResultCount:: db
wDexArrowCursorPosIndex:: db
wDexArrowCursorDelayCounter:: db
wDexArrowCursorBlinkCounter:: db
wDexSearchSlowpokeFrame:: db
wUnlockedUnownMode:: db
wDexCurUnownIndex:: db
wDexUnownCount:: db
wDexConvertedMonType:: db ; mon type converted from dex search mon type
wDexListingScrollOffsetBackup:: db
wDexListingCursorBackup:: dw
wBackupDexListingCursor:: dw
wBackupDexListingPage:: db
wDexCurLocation:: db
wPokedexDataEnd::
	ds 23

NEXTU
; pokegear
wPokegearPhoneLoadNameBuffer:: db
wPokegearPhoneCursorPosition:: db
wPokegearPhoneScrollPosition:: db
wPokegearPhoneSelectedPerson:: db
wPokegearPhoneSubmenuCursor:: db
wPokegearMapCursorObjectPointer:: dw
wPokegearMapCursorLandmark:: db
wPokegearMapPlayerIconLandmark:: db
wPokegearRadioChannelBank:: db
wPokegearRadioChannelAddr:: dw
wPokegearRadioMusicPlaying:: db

NEXTU
; trade
wTrademons::
wPlayerTrademon:: trademon wPlayerTrademon
wOTTrademon::     trademon wOTTrademon
wTrademonsEnd::
wTradeAnimAddress:: dw
wLinkPlayer1Name:: ds NAME_LENGTH
wLinkPlayer2Name:: ds NAME_LENGTH
wLinkTradeSendmonSpecies:: dw
wLinkTradeGetmonSpecies::  dw

NEXTU
; naming screen
wNamingScreenDestinationPointer:: dw
wNamingScreenCurNameLength:: db
wNamingScreenMaxNameLength:: db
wNamingScreenType:: db
wNamingScreenCursorObjectPointer:: dw
wNamingScreenLastCharacter:: db
wNamingScreenStringEntryCoord:: dw

NEXTU
; slot machine
wSlots::
wReel1:: slot_reel wReel1
wReel2:: slot_reel wReel2
wReel3:: slot_reel wReel3
wReel1Stopped:: ds 3
wReel2Stopped:: ds 3
wReel3Stopped:: ds 3
wSlotBias:: db
wSlotBet:: db
wFirstTwoReelsMatching:: db
wFirstTwoReelsMatchingSevens:: db
wSlotMatched:: db
wCurReelStopped:: ds 3
wPayout:: dw
wCurReelXCoord:: db
wCurReelYCoord:: db
	ds 2
wSlotBuildingMatch:: db
wSlotsDataEnd::
	ds 28
wSlotsEnd::

NEXTU
; card flip
wCardFlip::
wDeck:: ds 24
wDeckEnd::
wCardFlipNumCardsPlayed:: db
wCardFlipFaceUpCard:: db
wDiscardPile:: ds 24
wDiscardPileEnd::
wCardFlipEnd::

NEXTU
; dummy game
wDummyGame::
wDummyGameCards:: ds 9 * 5
wDummyGameCardsEnd::
wDummyGameLastCardPicked:: db
wDummyGameCard1:: db
wDummyGameCard2:: db
wDummyGameCard1Location:: db
wDummyGameCard2Location:: db
wDummyGameNumberTriesRemaining:: db
wDummyGameLastMatches:: ds 5
wDummyGameCounter:: db
wDummyGameNumCardsMatched:: db
wDummyGameEnd::

NEXTU
; beta poker game
	ds 50
wBetaPokerSGBPals:: db
	ds 2
wBetaPokerSGBAttr:: db
wBetaPokerSGBCol:: db
wBetaPokerSGBRow:: db
ENDU ; c6e8

ENDU ; c700



SECTION "Overworld Map", WRAM0

UNION ; c700
; overworld map blocks
wOverworldMapBlocks:: ds 1300
wOverworldMapBlocksEnd:: ; cc14

NEXTU
; decompress buffer in wram
wDecompressScratch:: ds 40 tiles

NEXTU
; GB Printer screen RAM
wGameboyPrinterRAM::
wGameboyPrinterScreen:: ds SCREEN_HEIGHT * SCREEN_WIDTH
wGameboyPrinterScreenEnd::

NEXTU
; GB Printer data
wGameboyPrinter2bppSource:: ds 40 tiles
wGameboyPrinter2bppSourceEnd::
wc980:: db
wPrinterRowIndex:: db

; Printer data
wPrinterData:: ds 4
wPrinterChecksum:: dw
wPrinterHandshake:: db
wPrinterStatusFlags::
; bit 7: set if error 1 (battery low)
; bit 6: set if error 4 (too hot or cold)
; bit 5: set if error 3 (paper jammed or empty)
; if this and the previous byte are both $ff: error 2 (connection error)
	db

wHandshakeFrameDelay:: db
wPrinterSerialFrameDelay:: db
wPrinterSendByteOffset:: dw
wPrinterSendByteCounter:: dw

; tilemap backup?
wPrinterTilemapBuffer:: ds SCREEN_HEIGHT * SCREEN_WIDTH
wPrinterTilemapBufferEnd::
wPrinterStatus:: db
	ds 1
; High nibble is for margin before the image, low nibble is for after.
wPrinterMargins:: db
wPrinterExposureTime:: db
	ds 16
wGameboyPrinterRAMEnd::

NEXTU
; bill's pc data
wBillsPCData::
wBillsPCPokemonList::
; (species, box number, list index) x30
	ds 3 * 30
	ds 720
wBillsPC_ScrollPosition:: db
wBillsPC_CursorPosition:: db
wBillsPC_NumMonsInBox:: db
wBillsPC_NumMonsOnScreen:: db
wBillsPC_LoadedBox:: db ; 0 if party, 1 - 14 if box, 15 if active box
wBillsPC_BackupScrollPosition:: db
wBillsPC_BackupCursorPosition:: db
wBillsPC_BackupLoadedBox:: db
wBillsPC_MonHasMail:: db
	ds 5
wBillsPCDataEnd::

NEXTU
; Hall of Fame data
wHallOfFamePokemonList:: hall_of_fame wHallOfFamePokemonList

NEXTU
; raw link data
wLinkData:: ds $514
wLinkDataEnd::

NEXTU
; unused (engine/gfx/sprite_anims.asm)
	ds 4
wc704:: ds 19
wc717:: ds 1

NEXTU ; c700
; link data members
wLinkPlayerName:: ds NAME_LENGTH ; c700
wLinkPartyCount:: db ; c70b
wLinkPartySpecies:: ds PARTY_LENGTH * 2 ; c70c
wLinkPartyEnd:: db ; c718 ; older code doesn't check PartyCount

UNION ; c719
; time capsule party data
wTimeCapsulePlayerData::
wTimeCapsulePartyMon1:: gold_party_struct wTimeCapsulePartyMon1 ; c719
wTimeCapsulePartyMon2:: gold_party_struct wTimeCapsulePartyMon2 ; c749
wTimeCapsulePartyMon3:: gold_party_struct wTimeCapsulePartyMon3 ; c779
wTimeCapsulePartyMon4:: gold_party_struct wTimeCapsulePartyMon4 ; c7a9
wTimeCapsulePartyMon5:: gold_party_struct wTimeCapsulePartyMon5 ; c7d9
wTimeCapsulePartyMon6:: gold_party_struct wTimeCapsulePartyMon6 ; c809
wTimeCapsulePartyMonOTNames:: ds PARTY_LENGTH * NAME_LENGTH ; c839
wTimeCapsulePartyMonNicks:: ds PARTY_LENGTH * MON_NAME_LENGTH ; c88b
wTimeCapsulePlayerDataEnd:: ; c8cd

NEXTU ; c719
; link player data
wLinkPlayerData::
wLinkPlayerPartyMon1:: party_struct wLinkPlayerPartyMon1 ; c719
wLinkPlayerPartyMon2:: party_struct wLinkPlayerPartyMon2 ; c745
wLinkPlayerPartyMon3:: party_struct wLinkPlayerPartyMon3 ; c771
wLinkPlayerPartyMon4:: party_struct wLinkPlayerPartyMon4 ; c79d
wLinkPlayerPartyMon5:: party_struct wLinkPlayerPartyMon5 ; c7c9
wLinkPlayerPartyMon6:: party_struct wLinkPlayerPartyMon6 ; c7f5
wLinkPlayerPartyMonOTNames:: ds PARTY_LENGTH * NAME_LENGTH ; c821
wLinkPlayerPartyMonNicks:: ds PARTY_LENGTH * MON_NAME_LENGTH ; c863
wLinkPlayerDataEnd:: ; c8a5
ENDU ; c8cd

NEXTU
; mystery gift data
wMysteryGiftPartyTemp:: ; ds PARTY_LENGTH * (1 + 1 + NUM_MOVES)
wMysteryGiftStaging::
wc700:: ds 80

wMysteryGiftTrainerData:: ds (1 + 1 + NUM_MOVES) * PARTY_LENGTH + 2
wMysteryGiftTrainerDataEnd::

	ds 138

wMysteryGiftPartnerData::
wc800:: db
wMysteryGiftPartnerID:: dw
wMysteryGiftPartnerName:: ds NAME_LENGTH
wMysteryGiftPartnerDexCaught:: db
wc80f::
wMysteryGiftPartnerSentDeco:: db
wMysteryGiftPartnerWhichItem:: db
wMysteryGiftPartnerWhichDeco:: db
wMysteryGiftPartnerBackupItem:: db
	ds 1
wMysteryGiftPartnerDataEnd::

	ds 60

wMysteryGiftPlayerData::
	ds 1
wMysteryGiftPlayerID:: dw
wMysteryGiftPlayerName:: ds NAME_LENGTH
wMysteryGiftPlayerDexCaught:: db
wMysteryGiftPlayerSentDeco:: db
wMysteryGiftPlayerWhichItem:: db
wMysteryGiftPlayerWhichDeco:: db
wMysteryGiftPlayerBackupItem:: db
	ds 1
wMysteryGiftPlayerDataEnd::

	ds 144

wc8f4:: ds 5
wc8f9:: ds 7

NEXTU
; LCD expects wLYOverrides to have an alignment of $100
wLYOverrides:: ds SCREEN_HEIGHT_PX
wLYOverridesEnd::

UNION ; c7a0
	ds 16
wLYOverrides2:: ds SCREEN_HEIGHT_PX
wLYOverrides2End::

NEXTU
	ds $100 - SCREEN_HEIGHT_PX
wLYOverridesBackup:: ds SCREEN_HEIGHT_PX
wLYOverridesBackupEnd:: ds $100 - SCREEN_HEIGHT_PX
ENDU ; c900

UNION ; c900
; blank credits tile buffer
wCreditsBlankFrame2bpp:: ds 4 * 4 tiles
wCreditsBlankFrame2bppEnd::

NEXTU
; mystery gift data
wc900:: db
wc901:: db
wc902:: db

NEXTU
; link
	ds 191
wc9bf:: ds 79
wca0e:: ds 5
wca13:: ds 113
wca84:: ds 100
wcae8:: dw
wLinkOTPartyMonTypes:: ds 2 * PARTY_LENGTH
	ds 84
wcb4a:: ds 84
wcb9e:: ds 130

NEXTU
; battle
wBattleAnimTileDict:: ds 10 ; c900

wActiveAnimObjects:: ; c90a
wAnimObject01:: battle_anim_struct wAnimObject01
wAnimObject02:: battle_anim_struct wAnimObject02
wAnimObject03:: battle_anim_struct wAnimObject03
wAnimObject04:: battle_anim_struct wAnimObject04
wAnimObject05:: battle_anim_struct wAnimObject05
wAnimObject06:: battle_anim_struct wAnimObject06
wAnimObject07:: battle_anim_struct wAnimObject07
wAnimObject08:: battle_anim_struct wAnimObject08
wAnimObject09:: battle_anim_struct wAnimObject09
wAnimObject10:: battle_anim_struct wAnimObject10
wActiveAnimObjectsEnd:: ; c9fa

wActiveBGEffects::
wBGEffect1:: battle_bg_effect wBGEffect1
wBGEffect2:: battle_bg_effect wBGEffect2
wBGEffect3:: battle_bg_effect wBGEffect3
wBGEffect4:: battle_bg_effect wBGEffect4
wBGEffect5:: battle_bg_effect wBGEffect5
wActiveBGEffectsEnd::

wLastAnimObjectIndex:: db

wBattleAnimFlags:: db
wBattleAnimAddress:: dw
wBattleAnimDelay:: db
wBattleAnimParent:: dw
wBattleAnimLoops:: db
wBattleAnimVar:: db
wBattleAnimByte:: db
wBattleAnimOAMPointerLo:: db

UNION ; ca19
; unidentified
wBattleAnimTemp0:: db
wBattleAnimTemp1:: db
wBattleAnimTemp2:: db
wBattleAnimTemp3:: db

NEXTU
wBattleObjectTempID:: db
wBattleObjectTempXCoord:: db
wBattleObjectTempYCoord:: db
wBattleObjectTempParam:: db

NEXTU
wBattleAnimTempOAMFlags:: db
wBattleAnimTempField02:: db
wBattleAnimTempTileID:: db
wBattleAnimTempXCoord:: db
wBattleAnimTempYCoord:: db
wBattleAnimTempXOffset:: db
wBattleAnimTempYOffset:: db
wBattleAnimTempFrameOAMFlags:: db
wBattleAnimTempPalette:: db
ENDU ; ca22

UNION ; ca22
	ds $32
wBattleAnimEnd::

NEXTU
wSurfWaveBGEffect:: ds $40
wSurfWaveBGEffectEnd::
ENDU ; ca62


wBattleMon:: battle_struct wBattleMon

	ds 100

wBattle:: ; cae8
wEnemyMoveStruct:: move_struct wEnemyMoveStruct
wPlayerMoveStruct:: move_struct wPlayerMoveStruct

wEnemyMonNick:: ds MON_NAME_LENGTH
wBattleMonNick:: ds MON_NAME_LENGTH

; intro water/grass/fire cutscene data
	ds 4
wIntroJumptableIndex:: db
wIntroBGMapPointer:: dw
wIntroTilemapPointer:: dw
wIntroTilesPointer:: dw
wIntroFrameCounter1:: db
wIntroFrameCounter2:: db
wcb19:: db
ENDU ; cb2c

	ds 2

wEnemyTrainerItem1:: db ; cb2e
wEnemyTrainerItem2:: db ; cb2f
wEnemyTrainerBaseReward:: db ; cb30

	ds 2

wOTClassName:: ds TRAINER_CLASS_NAME_LENGTH ; cb33

wCurOTMon:: dw ; cb40

wBattleParticipantsNotFainted:: ; cb42
; Bit array.  Bits 0 - 5 correspond to party members 1 - 6.
; Bit set if the mon appears in battle.
; Bit cleared if the mon faints.
; Backed up if the enemy switches.
; All bits cleared if the enemy faints.
	db

wTypeModifier:: ; cb43
; >10: super-effective
;  10: normal
; <10: not very effective
; bit 7: stab
	db

wCriticalHit:: ; cb44
; 0 if not critical
; 1 for a critical hit
; 2 for a OHKO
	db

wAttackMissed:: ; cb45
; nonzero for a miss
	db

wPlayerSubStatus1:: cb46
; bit
; 0 nightmare/1 curse/2 protect/3 id'd/4 perish song/5 endure/6 rollout/7 love
	db
wPlayerSubStatus2:: ; cb47
; bit 0 curled/1-7 unused
	db
wPlayerSubStatus3:: ; cb48
; bit
; 0 bide/1 rampage/2 loop/3 flinch/4 charge/5 underground/6 flying/7 confused
	db
wPlayerSubStatus4:: ; cb49
; bit
; 0 x acc./1 mist/2 focus energy/3/4 substitute/5 recharge/6 rage/7 leech seed
	db
wPlayerSubStatus5:: ; cb4a
; bit 0 toxic/1/2/3 transformed/4 encored/5 lock-on/6 destiny bond/7 can't run
	db

wEnemySubStatus1:: ; cb4b
; see wPlayerSubStatus1
	db
wEnemySubStatus2:: ; cb4c
; see wPlayerSubStatus2
	db
wEnemySubStatus3:: ; cb4d
; see wPlayerSubStatus3
	db
wEnemySubStatus4:: ; cb4e
; see wPlayerSubStatus4
	db
wEnemySubStatus5:: ; cb4f
; see wPlayerSubStatus5
	db

wPlayerRolloutCount:: db ; cb50
wPlayerConfuseCount:: db ; cb51
wPlayerToxicCount:: db ; cb52
wPlayerDisableCount:: db ; cb53
wPlayerEncoreCount:: db ; cb54
wPlayerPerishCount:: db ; cb55
wPlayerFuryCutterCount:: db ; cb56
wPlayerProtectCount:: db ; cb57

wEnemyRolloutCount:: db ; cb58
wEnemyConfuseCount:: db ; cb59
wEnemyToxicCount:: db ; cb5a
wEnemyDisableCount:: db ; cb5b
wEnemyEncoreCount:: db ; cb5c
wEnemyPerishCount:: db ; cb5d
wEnemyFuryCutterCount:: db ; cb5e
wEnemyProtectCount:: db ; cb5f

wPlayerDamageTaken:: dw ; cb60
wEnemyDamageTaken:: dw ; cb62

wBattleReward:: ds 3 ; cb64

wBattleAnimParam:: db ; cb67

wBattleScriptBuffer:: ds 40 ; cb68

wBattleScriptBufferBank:: db ; cb90
wBattleScriptBufferAddress:: dw ; cb91
wTurnEnded:: db ; cb93

wPlayerStats::
wPlayerAttack:: dw ; cb94
wPlayerDefense:: dw ; cb96
wPlayerSpeed:: dw ; cb98
wPlayerSpAtk:: dw ; cb9a
wPlayerSpDef:: dw ; cb9c
	ds 1

wEnemyStats::
wEnemyAttack:: dw ; cb9f
wEnemyDefense:: dw ; cba1
wEnemySpeed:: dw ; cba3
wEnemySpAtk:: dw ; cba5
wEnemySpDef:: dw ; cba7
	ds 1

wPlayerStatLevels::
; 07 neutral
wPlayerAtkLevel:: db ; cbaa
wPlayerDefLevel:: db ; cbab
wPlayerSpdLevel:: db ; cbac
wPlayerSAtkLevel:: db ; cbad
wPlayerSDefLevel:: db ; cbae
wPlayerAccLevel:: db ; cbaf
wPlayerEvaLevel:: db ; cbb0
	ds 1
wPlayerStatLevelsEnd::

wEnemyStatLevels::
; 07 neutral
wEnemyAtkLevel:: db ; cbb2
wEnemyDefLevel:: db ; cbb3
wEnemySpdLevel:: db ; cbb4
wEnemySAtkLevel:: db ; cbb5
wEnemySDefLevel:: db ; cbb6
wEnemyAccLevel:: db ; cbb7
wEnemyEvaLevel:: db ; cbb8
	ds 1

wEnemyTurnsTaken:: db ; cbba
wPlayerTurnsTaken:: db ; cbbb
	ds 1

wPlayerSubstituteHP:: db ; cbbd
wEnemySubstituteHP:: db ; cbbe

wUnusedPlayerLockedMove:: db ; cbbf
	ds 1

wCurPlayerMove:: db ; cbc1
wCurEnemyMove:: db ; cbc2

wLinkBattleRNCount:: ; cbc3
; how far through the prng stream
	db

wEnemyItemState:: db ; cbc4
	ds 2
wCurEnemyMoveNum:: db ; cbc7

wEnemyHPAtTimeOfPlayerSwitch:: dw ; cbc8
wPayDayMoney:: ds 3 ; cbca

UNION ; cbcd
wSafariMonAngerCount:: db
wSafariMonEating:: db
	ds 1
NEXTU
wPowerBallMoney:: ds 3
ENDU ; cbd0
wEnemyBackupDVs:: dw ; used when enemy is transformed
wAlreadyDisobeyed:: db ; cbd2

wDisabledMove:: db ; cbd3
wEnemyDisabledMove:: db ; cbd4
wWhichMonFaintedFirst:: db ; cbd5

; exists so you can't counter on switch
wLastPlayerCounterMove:: db ; cbd6
wLastEnemyCounterMove:: db ; cbd7

wEnemyMinimized:: db ; cbd8

wAlreadyFailed:: db ; cbd9

wBattleParticipantsIncludingFainted:: db ; cbda
wBattleLowHealthAlarm:: db ; cbdb
wPlayerMinimized:: db ; cbdc
wPlayerScreens:: ; cbdd
; bit 0 spikes/1/2 safeguard/3 light screen/4 reflect/5-7 unused
	db

wEnemyScreens:: ; cbde
; see wPlayerScreens
	db

wPlayerSafeguardCount:: db ; cbdf
wPlayerLightScreenCount:: db ; cbe0
wPlayerReflectCount:: db ; cbe1
	ds 1

wEnemySafeguardCount:: db ; cbe3
wEnemyLightScreenCount:: db ; cbe4
wEnemyReflectCount:: db ; cbe5
	ds 2

wBattleWeather:: ; cbe8
; 00 normal
; 01 rain
; 02 sun
; 03 sandstorm
; 04 rain stopped
; 05 sunliight faded
; 06 sandstorm subsided
	db

wWeatherCount:: ; cbe9
; # turns remaining
	db

wLoweredStat:: db ; cbea
wEffectFailed:: db ; cbeb
wFailedMessage:: db ; cbec
wEnemyGoesFirst:: db ; cbed

wPlayerIsSwitching:: db ; cbee
wEnemyIsSwitching:: db ; cbef

wPlayerUsedMoves:: ; cbf0
; add a move that has been used once by the player
; added in order of use
	ds NUM_MOVES

wEnemyAISwitchScore:: db ; cbf4
wEnemySwitchMonParam:: db ; cbf5
wEnemySwitchMonIndex:: db ; cbf6
wTempLevel:: db ; cbf7
wLastPlayerMon:: db ; cbf8
wLastPlayerMove:: db ; cbf9
wLastEnemyMove:: db ; cbfa

wPlayerFutureSightCount:: db ; cbfb
wEnemyFutureSightCount:: db ; cbfc

wGivingExperienceToExpShareHolders:: db ; cbfd

wBackupEnemyMonBaseStats:: ds 5 ; cbfe
wBackupEnemyMonCatchRate:: db ; cc03
wBackupEnemyMonBaseExp:: db ; cc04

wPlayerFutureSightDamage:: dw ; cc05
wEnemyFutureSightDamage:: dw ; cc07
wPlayerRageCounter:: db ; cc09
wEnemyRageCounter:: db ; cc0a

wBeatUpHitAtLeastOnce:: db ; cc0b

wPlayerTrappingMove:: db ; cc0c
wEnemyTrappingMove:: db ; cc0d
wPlayerWrapCount:: db ; cc0e
wEnemyWrapCount:: db ; cc0f
wPlayerCharging:: db ; cc10
wEnemyCharging:: db ; cc11

wBattleEnded:: db ; cc12

wWildMonMoves:: ds NUM_MOVES ; cc13
wWildMonPP:: ds NUM_MOVES ; cc17

wAmuletCoin:: db ; cc1b

wSomeoneIsRampaging:: db ; cc1c

wPlayerJustGotFrozen:: db ; cc1d
wEnemyJustGotFrozen:: db ; cc1e
wBattleEnd:: ; cc1f

	ds 1

ENDU ; cc20


SECTION "Video", WRAM0

; wBGMapBuffer
wBGMapBuffer::     ds 40 ; cc20
wBGMapPalBuffer::  ds 40 ; cc48
wBGMapBufferPtrs:: ds 40 ; cc70 ; 20 bg map addresses (16x8 tiles)
wBGMapBufferEnd::

wDefaultSGBLayout:: db ; cc98

wPlayerHPPal:: db ; cc99
wPlayerHPPalBank:: db
wEnemyHPPal:: db ; cc9a
wEnemyHPPalBank:: db

wHPPals:: ds PARTY_LENGTH ; cc9b
wCurHPPal:: db ; cca1
wCurHPPalBank:: db

	ds 4

wSGBPals:: ds 48 ; cca9

wAttrmap:: ; ccd9
; 20x18 grid of bg tile attributes for 8x8 tiles
; read horizontally from the top row
;		bit 7: priority
;		bit 6: y flip
;		bit 5: x flip
;		bit 4: pal # (non-cgb)
;		bit 3: vram bank (cgb only)
;		bit 2-0: pal # (cgb only)
	ds SCREEN_WIDTH * SCREEN_HEIGHT
wAttrmapEnd::

wTileAnimBuffer:: ds 1 tiles ; ce41

wOtherPlayerLinkMode:: db ; ce51
wOtherPlayerLinkAction::
wBattleAction:: db ; ce52
	ds 3
wPlayerLinkAction:: db ; ce56
wce57:: db
	ds 2
wLinkTimeoutFrames:: dw ; ce5b
wce5d:: dw

wMonType:: db ; ce5f

wCurSpecies:: dw ; ce60

wNamedObjectTypeBuffer:: db ; ce62

wJumptableIndex:: dw ; ce63

UNION ; ce64
; unidentified
wce64:: db
wce65:: db
wce66:: db

NEXTU
; intro data
wIntroSceneFrameCounter:: db
wIntroSceneTimer:: db

NEXTU
; title data
wTitleScreenSelectedOption:: db
wTitleScreenTimer:: dw

NEXTU
; credits data
wCreditsBorderFrame:: db
wCreditsBorderMon:: db
wCreditsLYOverride:: db

NEXTU
; pokedex
wPrevDexEntryJumptableIndex:: db
wPrevDexEntryBackup::
wPokedexStatus:: db

NEXTU
; pokegear
wPokegearCard:: db
wPokegearMapRegion:: db

NEXTU
; pack
wPackJumptableIndex:: db
wCurPocket:: db
wPackUsedItem:: db

NEXTU
; trainer card badges
wTrainerCardBadgeFrameCounter:: db
wTrainerCardBadgeTileID:: db
wTrainerCardBadgeAttributes:: db

NEXTU
; card flip data
wCardFlipCursorY:: db
wCardFlipCursorX:: db
wCardFlipWhichCard:: db

NEXTU
; magnet train
wMagnetTrainOffset:: db
wMagnetTrainPosition:: db
wMagnetTrainWaitCounter:: db

NEXTU
; unown puzzle data
wHoldingUnownPuzzlePiece:: db
wUnownPuzzleCursorPosition:: db
wUnownPuzzleHeldPiece:: db

NEXTU
; miscellaneous
wFrameCounter::
wMomBankDigitCursorPosition::
wNamingScreenLetterCase::
wHallOfFameMonCounter::
wSlotsDelay::
	db
wPrinterQueueLength:: db
ENDU ; ce67

wRequested2bpp::
wRequested2bppSize:: db ; ce67
wRequested2bppSource:: dw ; ce68
wRequested2bppDest:: dw ; ce6a

wRequested1bpp::
wRequested1bppSize:: db ; ce6c
wRequested1bppSource:: dw ; ce6d
wRequested1bppDest:: dw ; ce6f

wSecondsSince:: db ; ce71
wMinutesSince:: db ; ce72
wHoursSince:: db ; ce73
wDaysSince:: db ; ce74

	ds 12

wPlayerBGMapOffsetX:: db ; ce81 ; used in FollowNotExact; unit is pixels
wPlayerBGMapOffsetY:: db ; ce82 ; used in FollowNotExact; unit is pixels

wPlayerStepVectorX:: db ; ce83
wPlayerStepVectorY:: db ; ce84
wPlayerStepFlags:: db ; ce85
wPlayerStepDirection:: db ; ce86

wPlayerNextMovement:: db ; ce87
wPlayerMovement:: db ; ce88

	ds 2

wMovementObject:: db ; ce8b
wMovementDataBank:: db ; ce8c
wMovementDataAddress:: dw ; ce8d
wce8f:: dw ; ce8f

	ds 2

wMovementByteWasControlSwitch:: db ; ce83

UNION ; ce84
wObjectPriorities:: ds NUM_OBJECT_STRUCTS

NEXTU
wMovementPointer:: dw
	ds 3
wTempObjectCopyMapObjectIndex:: db
wTempObjectCopySprite:: db
wTempObjectCopySpriteVTile:: db
wTempObjectCopyPalette:: db
wTempObjectCopyMovement:: db
wTempObjectCopyRange:: db
wTempObjectCopyX:: db
wTempObjectCopyY:: db
wTempObjectCopyRadius:: db
ENDU ; cea2

	ds 1

wTileDown::  db ; cea3
wTileUp::    db ; cea4
wTileLeft::  db ; cea5
wTileRight:: db ; cea6

wTilePermissions:: db ; cea7

wWindowStackPointer:: dw ; cea8
wMenuJoypad:: db ; ceaa
wMenuSelection:: db ; ceab
wMenuSelectionQuantity:: db ; ceac
wWhichIndexSet:: db ; cead
wScrollingMenuCursorPosition:: db ; ceae
wWindowStackSize:: db ; ceaf

	ds 8

; menu header
wMenuHeader::
wMenuFlags:: db ; ceb8
wMenuBorderTopCoord:: db ; ceb9
wMenuBorderLeftCoord:: db ; ceba
wMenuBorderBottomCoord:: db ; cebb
wMenuBorderRightCoord:: db ; cebc
wMenuDataPointer:: dw ; cebd
wMenuCursorBuffer:: dw ; cebf
	ds 7
wMenuHeaderEnd::

wMenuData::
wMenuDataFlags:: db ; cec8

UNION ; cec9
; Vertical Menu/DoNthMenu/SetUpMenu
wMenuDataItems:: db
wMenuDataIndicesPointer:: dw
wMenuDataDisplayFunctionPointer:: dw
wMenuDataPointerTableAddr:: dw

NEXTU
; 2D Menu
wMenuData_2DMenuDimensions:: db
wMenuData_2DMenuSpacing:: db
wMenuData_2DMenuItemStringsBank:: db
wMenuData_2DMenuItemStringsAddr:: dw
wMenuData_2DMenuFunctionBank:: db
wMenuData_2DMenuFunctionAddr:: dw

NEXTU
; Scrolling Menu
wMenuData_ScrollingMenuHeight:: db
wMenuData_ScrollingMenuWidth:: db
wMenuData_ScrollingMenuItemFormat:: db
wMenuData_ItemsPointerBank:: db
wMenuData_ItemsPointerAddr:: dw
wMenuData_ScrollingMenuFunction1:: ds 3
wMenuData_ScrollingMenuFunction2:: ds 3
wMenuData_ScrollingMenuFunction3:: ds 3
ENDU ; ced8
wMenuDataEnd::

w2DMenuData::
w2DMenuCursorInitY:: db ; ced8
w2DMenuCursorInitX:: db ; ced9
w2DMenuNumRows:: db ; ceda
w2DMenuNumCols:: db ; cedb
w2DMenuFlags1:: ; cedc
; bit 7: Disable checking of wMenuJoypadFilter
; bit 6: Enable sprite animations
; bit 5: Wrap around vertically
; bit 4: Wrap around horizontally
; bit 3: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 5 is disabled and we tried to go too far down
; bit 2: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 5 is disabled and we tried to go too far up
; bit 1: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 4 is disabled and we tried to go too far left
; bit 0: Set bit 7 in w2DMenuFlags2 and exit the loop if bit 4 is disabled and we tried to go too far right
	db
w2DMenuFlags2:: db ; cedd
w2DMenuCursorOffsets:: db ; cede
wMenuJoypadFilter:: db ; cedf
w2DMenuDataEnd::
wMenuCursorY:: db ; cee0
wMenuCursorX:: db ; cee1
wCursorOffCharacter:: db ; cee2
wCursorCurrentTile:: dw ; cee3

	ds 1
wLinkMusic:: dw

wOverworldDelay:: db ; cee8
wTextDelayFrames:: db ; cee9
wVBlankOccurred:: db ; ceea

wceeb:: db

wDefaultSpawnpoint:: db ; ceec

UNION ; ceed
; mail temp storage
wTempMail:: mailmsg wTempMail

NEXTU
; magnet train
wMagnetTrain:: ; used only for BANK(wMagnetTrain)
wMagnetTrainDirection:: db
wMagnetTrainInitPosition:: db
wMagnetTrainHoldPosition:: db
wMagnetTrainFinalPosition:: db
wMagnetTrainPlayerSpriteInitX:: db

NEXTU
; credits
wCreditsPos:: dw
wCreditsTimer:: db

NEXTU
; mon buffer
wBufferMonNick:: ds MON_NAME_LENGTH
wBufferMonOT:: ds NAME_LENGTH
wBufferMon:: party_struct wBufferMon
	ds 8

NEXTU
; bug-catching contest leftover ram
wLeftoversResults::
	bugcontestwinner wLeftoversFirstPlace
	bugcontestwinner wLeftoversSecondPlace
	bugcontestwinner wLeftoversThirdPlace
wLeftoversWinnersEnd::
	bugcontestwinner wLeftoversTemp
	ds 4
wcf05:: ds NAME_LENGTH

NEXTU
; mart items
wMartItem1BCD:: ds 3
wMartItem2BCD:: ds 3
wMartItem3BCD:: ds 3
wMartItem4BCD:: ds 3
wMartItem5BCD:: ds 3
wMartItem6BCD:: ds 3
wMartItem7BCD:: ds 3
wMartItem8BCD:: ds 3
wMartItem9BCD:: ds 3
wMartItem10BCD:: ds 3

NEXTU
; town map data
wTownMapPlayerIconLandmark:: db
UNION ; ceee
wTownMapCursorLandmark:: db
wTownMapCursorObjectPointer:: dw
NEXTU
wTownMapCursorCoordinates:: dw
ENDU ; cef1

NEXTU
; phone call data
wPhoneScriptBank:: db
wPhoneCaller:: dw

NEXTU
; radio data
wCurRadioLine:: db
wNextRadioLine:: db
wRadioTextDelay:: db
wNumRadioLinesPrinted:: db
wOaksPKMNTalkSegmentCounter:: db
	ds 5
wRadioText:: ds 2 * SCREEN_WIDTH
wRadioTextEnd::

NEXTU
; lucky number show
wLuckyNumberDigitsBuffer:: ds 5

NEXTU
; movement buffer data
wMovementBufferCount:: db
wMovementBufferObject:: db
wUnusedMovementBufferBank:: db
wUnusedMovementBufferPointer:: dw
wMovementBuffer:: ds 55

NEXTU
; box printing
wWhichBoxMonToPrint:: db
wFinishedPrintingBox:: db
wAddrOfBoxToPrint:: dw
wBankOfBoxToPrint:: db
wWhichBoxToPrint:: db

NEXTU
; trainer HUD data
	ds 1
wPlaceBallsDirection:: db
wTrainerHUDTiles:: ds 4

NEXTU
; earthquake data buffer
wEarthquakeMovementDataBuffer:: ds 5

NEXTU
; miscellaneous
wTempDayOfWeek::
wKeepSevenBiasChance:: ; used in the slots to handle the favoring of 7 symbol streaks
	db
	ds 2
wStartFlypoint:: db
wEndFlypoint:: db

NEXTU
; unidentified
wceed:: db
wceee:: db
wceef:: ds 9
wcef8:: ds 2
wcefa:: ds 2
wcefc:: ds 1
wcefd:: ds 44

UNION ; cf29
; trainer data
wSeenTrainerBank:: db
wSeenTrainerDistance:: db
wSeenTrainerDirection:: db
wTempTrainer::
wTempTrainerEventFlag:: dw
wTempTrainerClass:: db
wTempTrainerID:: db
wSeenTextPointer:: dw
wWinTextPointer:: dw
wLossTextPointer:: dw
wScriptAfterPointer:: dw
wRunningTrainerBattleScript:: db
wTempTrainerEnd::

NEXTU
; menu items list
wMenuItemsList:: ds 16
wMenuItemsListEnd::

NEXTU
; fruit tree data
wCurFruitTree:: db
wCurFruit:: db

NEXTU
; item ball data
wItemBallData::
wItemBallItemID:: db
wItemBallQuantity:: db
wItemBallDataEnd::

NEXTU
; hidden item data
wHiddenItemData::
wHiddenItemEvent:: dw
wHiddenItemID:: db
wHiddenItemDataEnd::

NEXTU
; elevator data
wElevatorData::
wElevatorPointerBank:: db
wElevatorPointer:: dw
wElevatorOriginFloor:: db
wElevatorDataEnd::

NEXTU
; coord event data
wCurCoordEvent::
wCurCoordEventSceneID:: db
wCurCoordEventMapY:: db
wCurCoordEventMapX:: db
	ds 1
wCurCoordEventScriptAddr:: dw

NEXTU
; BG event data
wCurBGEvent::
wCurBGEventYCoord:: db
wCurBGEventXCoord:: db
wCurBGEventType:: db
wCurBGEventScriptAddr:: dw

NEXTU
; mart data
wMartType:: db
wMartPointerBank:: db
wMartPointer:: dw
wMartJumptableIndex:: db
wBargainShopFlags:: db

NEXTU
; player movement data
wCurInput::
wFacingTileID:: db
wWalkingIntoNPC:: db
wWalkingIntoLand:: db
wWalkingIntoEdgeWarp:: db
wMovementAnimation:: db
wWalkingDirection:: db
wFacingDirection:: db
wWalkingX:: db
wWalkingY:: db
wWalkingTile:: db
	ds 6
wPlayerTurningDirection:: db

NEXTU
; std script buffer
	ds 1
wJumpStdScriptBuffer:: ds 3

NEXTU
; phone script data
wCheckedTime:: db
wEMailListIndex:: db
wNumAvailableCallers:: db
wAvailableCallers:: ds CONTACT_LIST_SIZE

NEXTU
; phone caller contact
	ds 1
wCallerContact:: ds EMAIL_CONTACT_SIZE

NEXTU
; backup menu data
	ds 7
wMenuCursorBufferBackup:: db
wMenuScrollPositionBackup:: db

NEXTU
; poison step data
wPoisonStepData::
wPoisonStepFlagSum:: db
wPoisonStepPartyFlags:: ds PARTY_LENGTH
wPoisonStepDataEnd::
ENDU ; cf3b

wBoxAlignment:: db
wUnusedBufferCF3C:: dw
wFXAnimID:: dw
ENDU ; cf40

wPlaceBallsX:: db ; cf40
wPlaceBallsY:: db ; cf41
wTileAnimationTimer:: db ; cf42

; palette backups?
wBGP:: db ; cf43
wOBP0:: db ; cf44
wOBP1:: db ; cf45

wNumHits:: db ; cf46

	ds 1

wMonOrItemNameBuffer:: ds 22 ; cf48
wTMHMMoveNameBackup:: ds MOVE_NAME_LENGTH ; cf5e

wStringBuffer1:: ds 19 ; cf6b
wStringBuffer2:: ds 19 ; cf7e
wStringBuffer3:: ds 19 ; cf91
wStringBuffer4:: ds 19 ; cfa4
wStringBuffer5:: ds 13 ; cfb7

wBattleMenuCursorBuffer:: dw ; cfc4
wCurBattleMon:: db ; cfc6
wCurMoveNum:: db ; cfc7
wLastPocket:: db ; cfc8

wPartyMenuCursor:: db ; cfc9
wItemsPocketCursor:: db ; cfca
wKeyItemsPocketCursor:: db ; cfcb
wBallsPocketCursor:: db ; cfcc
wTMHMPocketCursor:: db ; cfcd

	ds 1

wItemsPocketScrollPosition:: db ; cfcf
wKeyItemsPocketScrollPosition:: db ; cfd0
wBallsPocketScrollPosition:: db ; cfd1
wTMHMPocketScrollPosition:: db ; cfd2

; cfd3
wSwitchMon::
wSwitchItem::
wMoveSwapBuffer::
	db

wMenuScrollPosition:: ds 4 ; cfd4

wQueuedScriptBank:: db ; cfd8
wQueuedScriptAddr:: dw ; cfd9

wPredefID:: db ; cfdb
wPredefTemp:: dw ; cfdc
wPredefAddress:: dw ; cfde
wFarCallBCBuffer:: dw ; cfe0
	ds 1

wNumMoves:: db ; cfe3

; cfe4
wFieldMoveSucceeded::
wItemEffectSucceeded::
wBattlePlayerAction::
; 0 - use move/1 - use item/2 - switch
wSolvedUnownPuzzle::
	db

wVramState:: ; cfe5
; bit 0: overworld sprite updating on/off
; bit 6: something to do with text
; bit 7: on when surf initiates
;        flickers when climbing waterfall
	db

	ds 3

wBattleResult:: ; cfe9
; WIN, LOSE, or DRAW
; bit 7: box full
	db

	ds 1

wUsingItemWithSelect:: db ; cfeb

UNION ; cfec
; mart data
wCurMart:: ds 16
wCurMartEnd::

NEXTU
; elevator data
wCurElevator:: db
wCurElevatorFloors:: db

NEXTU
; mailbox data
wCurMessageScrollPosition:: db
wCurMessageIndex:: db
wMailboxCount:: db
wMailboxItems:: ds MAILBOX_CAPACITY
wMailboxEnd::
ENDU ; cffc

wListPointer:: dw ; cffc
wUnusedCFFE:: dw


SECTION "WRAM 1", WRAMX

wItemAttributesPtr:: dw ; d000

wCurItem:: db ; d002
wCurItemQuantity::
wMartItemID::
	db ; d003

wCurPartySpecies:: dw ; d004

wCurPartyMon::
; contains which monster in a party
; is being dealt with at the moment
; 0-5
	db ; d006

wWhichHPBar:: ; d007
; 0: Enemy/1: Player/2: Party Menu
	db

wPokemonWithdrawDepositParameter:: ; d008
; 0: Take from PC/1: Put into PC/2: Take from Day-Care/3: Put into Day-Care
	db

wItemQuantityChangeBuffer:: db ; d009
wItemQuantityBuffer:: db ; d00a

wTempMon:: party_struct wTempMon ; d00b

wSpriteFlags:: db ; d037

wHandlePlayerStep:: db ; d038

	ds 5

wPartyMenuActionText:: db ; d03e

wItemAttributeParamBuffer:: db ; d03f

wCurPartyLevel:: db ; d040

wScrollingMenuListSize:: db ; d041

wLinkMode:: db ; d042
; 0 not in link battle
; 1 link battle

; used when following a map warp
wNextWarp:: db ; d043
wNextMapGroup:: db ; d044
wNextMapNumber:: db ; d045
wPrevWarp:: db ; d046
wPrevMapGroup:: db ; d047
wPrevMapNumber:: db ; d048

	ds 17

wUnusedD05A:: db

wBGMapAnchor:: dw ; d05b

wUsedSprites:: ds SPRITE_GFX_LIST_CAPACITY * 2 ; d05d
wUsedSpritesEnd:: ; d075
	ds 8

wOverworldMapAnchor:: dw ; d07d
wMetatileStandingY:: db ; d07f
wMetatileStandingX:: db ; d080

wMapPartial::
wMapAttributesBank:: db ; d081
wMapTileset:: db ; d082
wEnvironment:: db ; d083
wMapAttributesPointer:: dw ; d084
wMapPartialEnd::

wMapAttributes::
wMapBorderBlock:: db ; d086
; width/height are in blocks (2x2 walkable tiles, 4x4 graphics tiles)
wMapHeight:: db ; d087
wMapWidth:: db ; d088
wMapBlocksBank:: db ; d089
wMapBlocksPointer:: dw ; d08a
wMapScriptsBank:: db ; d08c
wMapScriptsPointer:: dw ; d08d
wMapEventsPointer:: dw ; d08f
; bit set
wMapConnections:: db ; d091
wMapAttributesEnd::

wNorthMapConnection:: map_connection_struct wNorth ; d092
wSouthMapConnection:: map_connection_struct wSouth ; d09e
wWestMapConnection::  map_connection_struct wWest  ; d0aa
wEastMapConnection::  map_connection_struct wEast  ; d0b6

wTileset::
wTilesetBank:: db ; d0c2
wTilesetAddress:: dw ; d0c3
wTilesetBlocksBank:: db ; d0c5
wTilesetBlocksAddress:: dw ; d0c6
wTilesetCollisionBank:: db ; d0c8
wTilesetCollisionAddress:: dw ; d0c9
wTilesetAnim:: dw ; bank 3f ; d0cb
wTilesetPalettes:: dw ; bank 3f ; d0cd
wTilesetEnd::

wEvolvableFlags:: flag_array PARTY_LENGTH ; d0cf

wForceEvolution:: db ; d0d0

UNION ; d0d1
; general-purpose buffers
wBuffer1:: db
wBuffer2:: db
wBuffer3:: db
wBuffer4:: db
wBuffer5:: db
wBuffer6:: db

NEXTU
; HP bar animations
wCurHPAnimMaxHP::   dw
wCurHPAnimOldHP::   dw
wCurHPAnimNewHP::   dw
wCurHPAnimPal::     db
wCurHPBarPixels::   db
wNewHPBarPixels::   db
wCurHPAnimDeltaHP:: dw
wCurHPAnimLowHP::   db
wCurHPAnimHighHP::  db

NEXTU
; evolution data
wEvolutionOldSpecies:: dw
wEvolutionNewSpecies:: dw
wEvolutionPicOffset:: db
wEvolutionCanceled:: db

NEXTU

	ds 9

wLinkBattleRNPreamble:: ds 1

NEXTU
; miscellaneous
wSelectedDecoration:: db
wOtherDecoration::    db
wCurEnemyItem:: db
ENDU ; d0e1


wLinkBattleRNs:: ds 10 ; d0e1

wTempEnemyMonSpecies::  dw ; d0eb
wTempBattleMonSpecies:: dw ; d0ed

wEnemyMon:: battle_struct wEnemyMon ; d0ef
wEnemyMonBuild:: db ; d110
wEnemyMonBaseStats:: ds 5 ; d111
wEnemyMonCatchRate:: db ; d116
wEnemyMonBaseExp::   db ; d117
wEnemyMonEnd::

wBattleMode:: ; d118
; 0: overworld
; 1: wild battle
; 2: trainer battle
	db

wTempWildMonSpecies:: dw ; d119

wOtherTrainerClass::
; class (Youngster, Bug Catcher, etc.) of opposing trainer
; 0 if opponent is a wild Pokémon, not a trainer
	db ; d11b

; BATTLETYPE_* values
wBattleType:: db ; d11c


wOtherTrainerID::
; which trainer of the class that you're fighting
; (Joey, Mikey, Albert, etc.)
	db ; d11d

wForcedSwitch:: db ; d11e

wTrainerClass:: db ; d11f

wUnownLetter:: db ; d120

wMoveSelectionMenuType:: db ; d121

; corresponds to the data/pokemon/base_stats/*.asm contents
wCurBaseData::
wBaseDexNo:: dw ; d122
wBaseStats::
wBaseHP:: db ; d124
wBaseAttack:: db ; d125
wBaseDefense:: db ; d126
wBaseSpeed:: db ; d127
wBaseSpecialAttack:: db ; d128
wBaseSpecialDefense:: db ; d129
wBaseType::
wBaseType1:: db ; d12a
wBaseType2:: db ; d12b
wBaseCatchRate:: db ; d12c
wBaseExp:: db ; d12d
wBaseItems::
wBaseItem1:: db ; d12e
wBaseItem2:: db ; d12f
wBaseGender:: db ; d130
wBaseUnknown1:: db ; d131
wBaseEggSteps:: db ; d132
wBaseUnknown2:: db ; d133
wBasePicSize:: db ; d134
wBaseUnusedFrontpic:: dw ; d135
wBaseUnusedBackpic:: dw ; d137
wBaseGrowthRate:: db ; d139
wBaseEggGroups:: db ; d13a
wBaseTMHM:: flag_array NUM_TM_HM ; d13b
wCurBaseDataEnd::

wCurDamage:: dw ; d142

wTempSpecies::
wTempIconSpecies:: dw ; d143

wMornEncounterRate::  db ; d145
wDayEncounterRate::   db ; d146
wNiteEncounterRate::  db ; d147
wWaterEncounterRate:: db ; d148
wListMoves_MoveIndicesBuffer:: ds NUM_MOVES ; d149
wPutativeTMHMMove:: db ; d14d
wInitListType:: db ; d14e
wWildMon:: dw ; d14f
wBattleHasJustStarted:: db ; d151

; wd152 has many different short-term uses
wDeciramBuffer::
wTempByteValue::
wNumSetBits::
wTypeMatchup::
wCurType::
wTempTMHM::
wTempPP::
wNextBoxOrPartyIndex::
wChosenCableClubRoom::
wBreedingCompatibility::
wMoveGrammar::
wApplyStatLevelMultipliersToEnemy::
wUsePPUp::
wd152::
	db

wFailedToFlee:: db ; d153
wNumFleeAttempts:: db ; d154
wMonTriedToEvolve:: db ; d155

wROMBankBackup:: db ; d156
wFarByte::
wTempBank:: db ; d157

wTimeOfDay:: db ; d158

wMapStatus:: db ; d159
wMapEventStatus:: db ; d15a

wScriptFlags:: ; d15b
; bit 3: priority jump
	db
wScriptFlags2:: ; d15c
	db
wScriptFlags3:: ; d15d
; bit 0: count steps
; bit 1: coord events
; bit 2: warps and connections
; bit 4: wild encounters
; bit 5: unknown
	db

wScriptMode:: db ; d15e
wScriptRunning:: db ; d15f
wScriptBank:: db ; d160
wScriptPos:: dw ; d161

wScriptStackSize:: db ; d163
wScriptStack:: ds 3 * 5 ; d164
wScriptVar:: dw ; d173
wScriptDelay:: db ; d174

; d175
wPriorityScriptBank::
wScriptTextBank::
	db
; d176
wPriorityScriptAddr::
wScriptTextAddr::
	dw
wWildEncounterCooldown:: db ; d179
wXYComparePointer:: dw ; c17a

wd17c:: flag_array 32

wBattleScriptFlags:: db ; d180
	ds 1
wPlayerSpriteSetupFlags:: ; d182
	db

wMapReentryScriptQueueFlag:: db ; d183
wMapReentryScriptBank:: db ; d184
wMapReentryScriptAddress:: dw ; d185

wNamedObjectIndexBuffer:: dw
	ds 2

wTimeCyclesSinceLastCall:: db ; d18b
wReceiveCallDelay_MinsRemaining:: db ; d18c
wReceiveCallDelay_StartTime:: ds 3 ; d18d

	ds 3

wLeftoversMinsRemaining:: db ; d193
wLeftoversSecsRemaining:: db ; d194

	ds 2

wMapStatusEnd:: ; d197

	ds 2

wOptions:: ; d199
; bit 0-2: number of frames to delay when printing text
;   fast 1; mid 3; slow 5
; bit 3: ?
; bit 4: no text delay
; bit 5: stereo off/on
; bit 6: battle style shift/set
; bit 7: battle scene off/on
	db

wSaveFileExists:: db ; d19a
wTextboxFrame:: ; d19b
; bits 0-2: textbox frame 0-7
	db

wTextboxFlags:: ; d19c
; bit 0: 1-frame text delay
; bit 1: when unset, no text delay
	db
wGBPrinterBrightness:: ; d19d
; bit 0-6: brightness
;   lightest: $00
;   lighter:  $20
;   normal:   $40 (default)
;   darker:   $60
;   darkest:  $7F
	db
wOptions2:: ; d19e
; bit 0: menu account off/on
	db

	ds 2

wOptionsEnd:: ; d1a1


SECTION "Game Data", WRAMX

; d1a1
wGameData::
wPlayerData::
wPlayerData1::
wPlayerID:: dw

wPlayerName:: ds NAME_LENGTH ; d1a3
wMomsName::   ds NAME_LENGTH ; d1ae
wRivalName::  ds NAME_LENGTH ; d1b9
wRedsName::   ds NAME_LENGTH ; d1c4
wGreensName:: ds NAME_LENGTH ; d1cf

wSavedAtLeastOnce:: db ; d1da
wSpawnAfterChampion:: db ; d1db

; init time set at newgame
wStartDay:: db ; d1dc
wStartHour:: db ; d1dd
wStartMinute:: db ; d1de
wStartSecond:: db ; d1df

wRTC:: ds 4 ; d1e0

wDSTBackupDay:: db ; d1e4
wDSTBackupHours:: db ; d1e5
wDSTBackupMinutes:: db ; d1e6
wDSTBackupSeconds:: db ; d1e7

wDST:: ; d1e8
; bit 7: dst
	db

; used to temporarily store wCurItem before going to \1CaughtItem
wBallUsedBuffer:: db

wGameTimeCap::     db ; d1ea
wGameTimeHours::   dw ; d1eb
wGameTimeMinutes:: db ; d1ed
wGameTimeSeconds:: db ; d1ee
wGameTimeFrames::  db ; d1ef

	ds 2

wCurDay:: db ; d1f2

	ds 1

wObjectFollow_Leader:: db ; d1f4
wObjectFollow_Follower:: db ; d1f5
wCenteredObject:: db ; d1f6
wFollowerMovementQueueLength:: db ; d1f7
wFollowMovementQueue:: ds 5 ; d1f8

wObjectStructs::
wPlayerStruct::   object_struct wPlayer   ; d1fd
wObject1Struct::  object_struct wObject1  ; d225
wObject2Struct::  object_struct wObject2  ; d24d
wObject3Struct::  object_struct wObject3  ; d275
wObject4Struct::  object_struct wObject4  ; d29d
wObject5Struct::  object_struct wObject5  ; d2c5
wObject6Struct::  object_struct wObject6  ; d2ed
wObject7Struct::  object_struct wObject7  ; d315
wObject8Struct::  object_struct wObject8  ; d33d
wObject9Struct::  object_struct wObject9  ; d365
wObject10Struct:: object_struct wObject10 ; d38d
UNION ; d3b5
	ds 18
wPlayerData1End::
wPlayerData2::
NEXTU
wObject11Struct:: object_struct wObject11
wObject12Struct:: object_struct wObject12
wObjectStructsEnd::
ENDU ; d405

wCmdQueue:: ds CMDQUEUE_CAPACITY * CMDQUEUE_ENTRY_SIZE ; d405

	ds 40

wMapObjects::
wPlayerObject:: map_object wPlayer ; d445
wMap1Object::   map_object wMap1
wMap2Object::   map_object wMap2
wMap3Object::   map_object wMap3
wMap4Object::   map_object wMap4
wMap5Object::   map_object wMap5
wMap6Object::   map_object wMap6
wMap7Object::   map_object wMap7
wMap8Object::   map_object wMap8
wMap9Object::   map_object wMap9
wMap10Object::  map_object wMap10
wMap11Object::  map_object wMap11
wMap12Object::  map_object wMap12
wMap13Object::  map_object wMap13
wMap14Object::  map_object wMap14
wMap15Object::  map_object wMap15
wMapObjectsEnd::

wObjectMasks:: ds NUM_OBJECTS ; d545

wVariableSprites:: ds $10 ; d555

wEnteredMapFromContinue:: db ; d565
	ds 2
wTimeOfDayPal:: db ; d568
	ds 4
wTimeOfDayPalFlags:: db ; d56d
wTimeOfDayPalset:: db d56e
wCurTimeOfDay:: db d56f

	ds 1

; d571
wPlayerData2End::
wPlayerData3::
wStatusFlags::
	db
wStatusFlags2:: db ; d572

wMoney:: ds 3 ; d573
wMomsMoney:: ds 3 ; d576

wMomSavingMoney:: ; d579
; bit 0: saving some money
; bit 1: saving half money (unused)
; bit 2: saving all money (unused)
; bit 7: active
	db

wCoins:: dw ; d57a

wBadges::
wEquintoBadges:: flag_array NUM_EQUINTO_BADGES ; d57c
wJohtoBadges:: flag_array NUM_JOHTO_BADGES ; d57d
wKantoBadges:: flag_array NUM_KANTO_BADGES ; d57e

wTMsHMs:: ds NUM_TMS + NUM_HMS ; d57f
wTMsHMsEnd:: ; d5b6
	ds 1

wNumItems:: db ; d5b7
wItems:: ds MAX_ITEMS * 2 + 1 ; d5b8
wItemsEnd::

wNumKeyItems:: db ; d5e1
wKeyItems:: ds MAX_KEY_ITEMS + 1 ; d5e2
wKeyItemsEnd::

wNumBalls:: db ; d5fc
wBalls:: ds MAX_BALLS * 2 + 1 ; d5fd
wBallsEnd::

wNumPCItems:: db ; d616
wPCItems:: ds MAX_PC_ITEMS * 2 + 1 ; d617
wPCItemsEnd::

wPokegearFlags:: ; d67c
; bit 0: map
; bit 1: radio
; bit 2: phone
; bit 3: expn
; bit 7: on/off
	db
wRadioTuningKnob:: db ; d67d
wLastDexMode:: db ; d67e
	ds 1
wWhichRegisteredItem:: db ; d680
wRegisteredItem:: db ; d681

wPlayerState:: db ; d682

wHallOfFameCount:: db ; d683
	ds 1
wTradeFlags:: flag_array NUM_NPC_TRADES ; d685


wMooMooBerries:: db ; d686
wUndergroundSwitchPositions:: db ; d687


wCottageTownSceneID::                             db ; d688
wPlayersHouse1FSceneID::                          db ; d689
wLarchesHouseSceneID::                            db ; d68a
wRoute49HouseSceneID::                            db ; d68b

	ds $12a

wEventFlags:: flag_array NUM_EVENTS ; d7b6

	ds $da ; -36

wd893:: db

wGameTimerPause:: db ; d894

wd895::
; bits 4, 6, or 7 can be used to disable joypad input
; bit 4
; bit 6: mon fainted?
; bit 7: SGB flag?
	db

wCurBox:: db ; d896

; 8 chars + $50
wBoxNames:: ds BOX_NAME_LENGTH * NUM_BOXES ; d897

wBikeFlags:: ; d93f
; bit 0: using strength
; bit 1: always on bike
; bit 2: downhill
	db
	ds 1 ; cleared along with wBikeFlags by ResetBikeFlags

wCurMapSceneScriptPointer:: dw ; d941

wCurCaller:: dw ; d943
wCurMapWarpCount:: db ; d945
wCurMapWarpsPointer:: dw ; d946
wCurMapCoordEventCount:: db ; d948
wCurMapCoordEventsPointer:: dw ; d949
wCurMapBGEventCount:: db ; d94b
wCurMapBGEventsPointer:: dw ; d94c
wCurMapObjectEventCount:: db ; d94e
wCurMapObjectEventsPointer:: dw ; d94f
wCurMapSceneScriptCount:: db ; d951
wCurMapSceneScriptsPointer:: dw ; d952
wCurMapCallbackCount:: db ; d954
wCurMapCallbacksPointer:: dw ; d955

	ds 2

; Sprite id of each decoration
wDecoBed::           db ; d959
wDecoCarpet::        db ; d95a
wDecoPlant::         db ; d95b
wDecoPoster::        db ; d95c
wDecoConsole::       db ; d95d
wDecoLeftOrnament::  db ; d95e
wDecoRightOrnament:: db ; d95f
wDecoBigDoll::       db ; d960

; Items bought from Mom
wWhichMomItem:: db ; d961
wWhichMomItemSet:: db ; d962
wMomItemTriggerBalance:: ds 3 ; d963

wDailyResetTimer:: dw ; d966
wDailyFlags1:: db ; d968
wDailyFlags2:: db ; d969
	ds 3
wTimerEventStartDay:: db ; d96d
	ds 3

wFruitTreeFlags:: flag_array NUM_FRUIT_TREES ; d971

	ds 2

wLuckyNumberDayBuffer:: dw ; d977
	ds 2
wSpecialPhoneCallID:: db ; d97b
	ds 3
wLeftoversStartTime:: ds 4 ; d97f ; day, hour, min, sec
wUnusedTwoDayTimerOn:: db ; d983
wUnusedTwoDayTimer:: db ; d984
wUnusedTwoDayTimerStartDate:: db ; d985

	ds 55

wStepCount:: db ; d9bd
wPoisonStepCount:: db ; d9be
	ds 2
wHappinessStepCount:: db ; d9c1
	ds 1

wParkBallsRemaining::
wSafariBallsRemaining:: db ; d9c3
wSafariTimeRemaining:: dw ; d9c4

wEMailList:: ds CONTACT_LIST_SIZE + 1 ; d9c6

	ds 17

wLuckyNumberShowFlag:: db ; d9e7
	ds 1
wLuckyIDNumber:: dw ; d9e9

wRepelEffect:: db ; d9eb ; If a Repel is in use, it contains the nr of steps it's still active
wBikeStep:: dw ; d9ec

wPlayerData3End::
wPlayerDataEnd::

wCurMapData::

wVisitedSpawns:: flag_array NUM_SPAWNS ; d9ee

wDigWarpNumber:: db ; d9f2
wDigMapGroup::   db ; d9f3
wDigMapNumber::  db ; d9f4

; used on maps like second floor pokécenter, which are reused, so we know which
; map to return to
wBackupWarpNumber:: db ; d9f5
wBackupMapGroup::   db ; d9f6
wBackupMapNumber::  db ; d9f7

	ds 3

wLastSpawnMapGroup:: db ; d9fb
wLastSpawnMapNumber:: db ; d9fc

	ds 2

wWarpNumber:: db ; d9ff
wMapGroup:: db ; da00
wMapNumber:: db ; da01
wYCoord:: db ; da02
wXCoord:: db ; da03
wScreenSave:: ds SCREEN_META_WIDTH * SCREEN_META_HEIGHT ; da04

wCurMapDataEnd:: ; da22


SECTION "Party", WRAMX

wPokemonData::
wPartyCount::   db ; da22
wPartySpecies:: ds PARTY_LENGTH * 2 ; da23
wPartyEnd::     db ; da2f ; older code doesn't check wPartyCount

wPartyMons::
wPartyMon1:: party_struct wPartyMon1 ; da30
wPartyMon2:: party_struct wPartyMon2 ; da5c
wPartyMon3:: party_struct wPartyMon3 ; da88
wPartyMon4:: party_struct wPartyMon4 ; dab4
wPartyMon5:: party_struct wPartyMon5 ; dae0
wPartyMon6:: party_struct wPartyMon6 ; db0c

wPartyMonOT:: ds NAME_LENGTH * PARTY_LENGTH ; db38

wPartyMonNicknames:: ds MON_NAME_LENGTH * PARTY_LENGTH ; db7a
wPartyMonNicknamesEnd:: ; dbbc

	ds 39

wPokedexCaught:: flag_array NUM_POKEMON ; dbe4
wEndPokedexCaught::

wPokedexSeen:: flag_array NUM_POKEMON ; dc04
wEndPokedexSeen::

wUnownDex:: ds NUM_UNOWN ; dc24
wUnlockedUnowns:: db ; dc3e
wFirstUnownSeen:: db ; dc3f

wDayCareMan:: ; dc40
; bit 7: active
; bit 6: egg ready
; bit 5: monsters are compatible
; bit 0: monster 1 in day-care
	db

wBreedMon1::
wBreedMon1Nick::  ds MON_NAME_LENGTH ; dc41
wBreedMon1OT::    ds NAME_LENGTH ; dc4c
wBreedMon1Stats:: box_struct wBreedMon1 ; dc57
	ds 3

wDayCareLady:: ; dc77
; bit 7: active
; bit 0: monster 2 in day-care
	db

wStepsToEgg:: ; dc78
	db
wBreedMotherOrNonDitto:: ; dc79
;  z: yes
; nz: no
	db

wBreedMon2::
wBreedMon2Nick::  ds MON_NAME_LENGTH ; dc7a
wBreedMon2OT::    ds NAME_LENGTH ; dc85
wBreedMon2Stats:: box_struct wBreedMon2 ; dc90
	ds 3

wEggNick:: ds MON_NAME_LENGTH ; dcb0
wEggOT::   ds NAME_LENGTH ; dcbb
wEggMon::  box_struct wEggMon ; dcc6
	ds 3

wLeftoversSecondPartySpecies:: dw ; dce6

wSwarmMapGroup:: db ; dd14
wSwarmMapNumber:: db ; dd15
wFishingSwarmFlag:: db ; dd16

wRoamMon1:: roam_struct wRoamMon1 ; dd17
wRoamMon2:: roam_struct wRoamMon2 ; dd1f
wRoamMon3:: roam_struct wRoamMon3 ; dd27

wRoamMons_CurMapNumber:: db ; dd2f
wRoamMons_CurMapGroup:: db ; dd30
wRoamMons_LastMapNumber:: db ; dd31
wRoamMons_LastMapGroup:: db ; dd32

wBestMagikarpLengthFeet:: db ; dd33
wBestMagikarpLengthInches:: db ; dd34
wMagikarpRecordHoldersName:: ds NAME_LENGTH ; dd35

UNION ; dd40
wPokedexShowPointerAddr:: dw
wPokedexShowPointerBank:: db

NEXTU
wUnusedEggHatchFlag:: db

NEXTU
; enemy party
wOTPlayerName:: ds NAME_LENGTH
wOTPlayerID:: dw
wOTPartyCount::   db
wOTPartySpecies:: ds PARTY_LENGTH * 2
wOTPartyEnd::     db ; older code doesn't check PartyCount
ENDU ; dd5d

; ot party mons
wOTPartyMons::
wOTPartyMon1:: party_struct wOTPartyMon1 ; dd5d
wOTPartyMon2:: party_struct wOTPartyMon2 ; dd89
wOTPartyMon3:: party_struct wOTPartyMon3 ; ddb5
wOTPartyMon4:: party_struct wOTPartyMon4 ; dde1
wOTPartyMon5:: party_struct wOTPartyMon5 ; de0d
wOTPartyMon6:: party_struct wOTPartyMon6 ; de39
wOTPartyMonsEnd::

wOTPartyMonOT:: ds NAME_LENGTH * PARTY_LENGTH ; de65
wOTPartyMonNicknames:: ds MON_NAME_LENGTH * PARTY_LENGTH ; dea7
wOTPartyDataEnd:: ; dee9
	ds $18
wPokemonDataEnd:: ; df01
wGameDataEnd::


SECTION "Stack", WRAMX

	ds 2
wStackBottom::
	ds $fc
wStack::
wStackTop::
	ds 1


INCLUDE "sram.asm"

INCLUDE "hram.asm"
