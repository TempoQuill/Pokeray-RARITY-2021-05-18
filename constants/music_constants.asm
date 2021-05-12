; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def

	const MUSIC_NONE                         ; 00
	const MUSIC_GS_OPENING                   ; 01 ; RS_OPENING
	const MUSIC_GS_OPENING_2                 ; 02 ; RS_OPENING_2
	const MUSIC_TITLE                        ; 03
	const MUSIC_MAIN_MENU                    ; 04
	const MUSIC_HEAL                         ; 05
	const MUSIC_ROUTE_29                     ; 06 ; ROUTE_49
	const MUSIC_ROUTE_30                     ; 07 ; ROUTE_52
	const MUSIC_ROUTE_36                     ; 08 ; ROUTE_55
	const MUSIC_MOM                          ; 09
	const MUSIC_SHOW_ME_AROUND               ; 0a
	const MUSIC_LAVENDER_TOWN                ; 0b ; RBY_FM_TRADE ; HOUSE_ENROUTE
	const MUSIC_POKEMON_CENTER               ; 0c
	const MUSIC_NEW_BARK_TOWN                ; 0d ; COTTAGE_TOWN
	const MUSIC_CHERRYGROVE_CITY             ; 0e ; A_TYPE ; TRAVERSAL_CITY
	const MUSIC_JOHTO_WILD_BATTLE            ; 0f ; WILD_BATTLE
	const MUSIC_JOHTO_TRAINER_BATTLE         ; 10 ; TRAINER_BATTLE
	const MUSIC_JOHTO_GYM_LEADER_BATTLE      ; 11 ; LEADER_BATTLE
	const MUSIC_RIVAL_BATTLE                 ; 12 ; PARTY_HOST_BATTLE
	const MUSIC_ROCKET_BATTLE                ; 13 ; SHAGGY_BATTLE
	const MUSIC_CHAMPION_BATTLE              ; 14 ; PARKER_BATTLE
	const MUSIC_OFFICER_ENCOUNTER            ; 15
	const MUSIC_LASS_ENCOUNTER               ; 16
	const MUSIC_HIKER_ENCOUNTER              ; 17
	const MUSIC_YOUNGSTER_ENCOUNTER          ; 18
	const MUSIC_BEAUTY_ENCOUNTER             ; 19
	const MUSIC_MT_MOON_SQUARE               ; 1a ; SIBLING_ENCOUNTER
	const MUSIC_BUG_CATCHING_CONTEST_RANKING ; 1b ; PARTY_HOST_ENCOUNTER
	const MUSIC_ECRUTEAK_CITY                ; 1c ; ARTIST_ENCOUNTER
	const MUSIC_RIVAL_ENCOUNTER              ; 1d
	const MUSIC_PROF_ELM                     ; 1e ; PROF_LARCH
	const MUSIC_RIVAL_AFTER                  ; 1f
	const MUSIC_CAPTURE                      ; 20
	const MUSIC_WILD_VICTORY                 ; 21
	const MUSIC_TRAINER_VICTORY              ; 22
	const MUSIC_GYM_VICTORY                  ; 23
	const MUSIC_GYM                          ; 24
	const MUSIC_MAGNET_TRAIN                 ; 25 ; RG_OLD_HEAL ; NON_PC_HEAL
; added after demo build
	const MUSIC_GAME_CORNER                  ; 26
	const MUSIC_BICYCLE                      ; 27 ; c-type
	const MUSIC_HALL_OF_FAME                 ; 28
	const MUSIC_PALLET_TOWN                  ; 29 ; ODDISH_FARM
	const MUSIC_EVOLUTION                    ; 2a
	const MUSIC_CREDITS                      ; 2b
	const MUSIC_DARK_CAVE                    ; 2c ; LANAWE_FOREST
	const MUSIC_SS_AQUA                      ; 2d ; B_TYPE ; SS_VAPOR
	const MUSIC_RUINS_OF_ALPH_INTERIOR       ; 2e ; RBY_POKEMON_CENTER ; DILAP_POKEMON_CENTER
	const MUSIC_LIGHTHOUSE                   ; 2f
	const MUSIC_ROUTE_2                      ; 30 ; EAST_COAST_STOP
	const MUSIC_INDIGO_PLATEAU               ; 31 ; EQUINTO_LEAGUE
	const MUSIC_NATIONAL_PARK                ; 32 ; GOLEM_PALACE
	const MUSIC_CELADON_CITY                 ; 33 ; HYPERCOIN_CITY
	const MUSIC_MT_MOON                      ; 34 ; MT_VACUUM
	const MUSIC_AZALEA_TOWN                  ; 35 ; NORGEO_TOWN
	const MUSIC_GOLDENROD_CITY               ; 36 ; PORTITE_CITY
	const MUSIC_POST_CREDITS                 ; 37
	const MUSIC_PRINTER                      ; 38
	const MUSIC_ROUTE_26                     ; 39 ; ROUTE_61
	const MUSIC_ROCKET_ENCOUNTER             ; 3a ; HAVOC_ENCOUNTER
	const MUSIC_ROCKET_OVERTURE              ; 3b ; HAVOC_THEME
	const MUSIC_POKEMON_MARCH                ; 3c ; RBY_SURF ; SS_VAPOR_DEPARTURE
	const MUSIC_VIOLET_CITY                  ; 3d ; STAMP_TOWN
	const MUSIC_UNION_CAVE                   ; 3e ; SUNKERN_SWAMP
	const MUSIC_SURF                         ; 3f
	const MUSIC_ROCKET_HIDEOUT               ; 40 ; HAVOC_HIDEOUT
	const MUSIC_POKE_FLUTE_CHANNEL           ; 41 ; RBY_BICYCLE ; TRADE_MENU_1
	const MUSIC_POKEMON_LULLABY              ; 42 ; BUG_CATCHING_CONTEST_EXT ; TRADE_MENU_2
NUM_MUSIC_IDS EQU const_value

; speical track behavior regarding linked games
; doesn't effect map music behavior
LINK_MUSIC_1 EQU $41
LINK_MUSIC_2 EQU $42

; map music with this value will be redirected to a valid track
SPECIAL_MAP_MUSIC EQU $fd
; ExitPokegearRadio_HandleMusic uses these values
RESTART_MAP_MUSIC EQU $fe
ENTER_MAP_MUSIC   EQU $ff
