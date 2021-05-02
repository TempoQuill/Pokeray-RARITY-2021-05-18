add_stdscript: MACRO
\1StdScript::
	dba \1
ENDM

StdScripts::
	add_stdscript PokecenterNurseScript
	add_stdscript DifficultBookshelfScript
	add_stdscript PictureBookshelfScript
	add_stdscript MagazineBookshelfScript
	add_stdscript IncenseBurnerScript
	add_stdscript MerchandiseShelfScript
	add_stdscript TownMapScript
	add_stdscript WindowScript
	add_stdscript TVScript
	add_stdscript WrongSideScript
	add_stdscript Radio1Script
	add_stdscript Radio2Script
	add_stdscript TrashCanScript
	add_stdscript StrengthBoulderScript
	add_stdscript SmashRockScript
	add_stdscript PokecenterSignScript
	add_stdscript MartSignScript
	add_stdscript ElevatorButtonScript
	add_stdscript DayToTextScript
	add_stdscript InitializeEventsScript
	add_stdscript AskNumber1MScript
	add_stdscript AskNumber2MScript
	add_stdscript RegisteredNumberMScript
	add_stdscript NumberAcceptedMScript
	add_stdscript NumberDeclinedMScript
	add_stdscript PhoneFullMScript
	add_stdscript RematchMScript
	add_stdscript AskNumber1FScript
	add_stdscript AskNumber2FScript
	add_stdscript RegisteredNumberFScript
	add_stdscript NumberAcceptedFScript
	add_stdscript NumberDeclinedFScript
	add_stdscript PhoneFullFScript
	add_stdscript RematchFScript
	add_stdscript GymStatue1Script
	add_stdscript GymStatue2Script
	add_stdscript ReceiveItemScript
	add_stdscript PCScript
	add_stdscript GameCornerCoinVendorScript
	add_stdscript HappinessCheckScript
	add_stdscript ReceiveMultipleItemsScript

PokecenterNurseScript:
	opentext
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	checktime NITE
	iftrue .nite
	sjump .ok

.morn
	writetext NurseMornText
	promptbutton
	sjump .ok

.day
	writetext NurseDayText
	promptbutton
	sjump .ok

.nite
	writetext NurseNiteText
	promptbutton
	sjump .ok

.ok
	writetext NurseAskHealText
	yesorno
	iffalse .done

	writetext NurseTakePokemonText
	pause 20
	turnobject LAST_TALKED, LEFT
	pause 10
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_POKECENTER
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	turnobject LAST_TALKED, DOWN
	pause 10

	checkemail ; elm already called about pokerus
	iftrue .no
	checkflag ENGINE_CAUGHT_POKERUS
	iftrue .no
	special CheckPokerus
	iftrue .pokerus
.no
	writetext NurseReturnPokemonText
	pause 20

.done
	writetext NurseGoodbyeText

	turnobject LAST_TALKED, UP
	pause 10
	turnobject LAST_TALKED, DOWN
	pause 10

	waitbutton
	closetext
	end

.pokerus
	writetext NursePokerusText
	waitbutton
	closetext
	setflag ENGINE_CAUGHT_POKERUS
	specialemail SPECIALCALL_POKERUS
	end

DifficultBookshelfScript:
	jumptext DifficultBookshelfText

PictureBookshelfScript:
	jumptext PictureBookshelfText

MagazineBookshelfScript:
	jumptext MagazineBookshelfText

IncenseBurnerScript:
	jumptext IncenseBurnerText

MerchandiseShelfScript:
	jumptext MerchandiseShelfText

TownMapScript:
	opentext
	writetext LookTownMapText
	waitbutton
	special OverworldTownMap
	closetext
	end

WindowScript:
	jumptext WindowText

TVScript:
	opentext
	writetext TVText
	waitbutton
	closetext
	end

WrongSideScript:
	jumptext WrongSideText

Radio1Script:
	opentext
	setval MAPRADIO_POKEMON_CHANNEL
	special MapRadio
	closetext
	end

Radio2Script:
; Lucky Channel
	opentext
	setval MAPRADIO_LUCKY_CHANNEL
	special MapRadio
	closetext
	end

TrashCanScript:
	jumptext TrashCanText

PCScript:
	opentext
	special PokemonCenterPC
	closetext
	end

ElevatorButtonScript:
	playsound SFX_READ_TEXT_2
	pause 15
	playsound SFX_ELEVATOR_END
	end

StrengthBoulderScript:
	farsjump AskStrengthScript

SmashRockScript:
	farsjump AskRockSmashScript

PokecenterSignScript:
	jumptext PokecenterSignText

MartSignScript:
	jumptext MartSignText

DayToTextScript:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
	getstring STRING_BUFFER_3, .SundayText
	end
.Monday:
	getstring STRING_BUFFER_3, .MondayText
	end
.Tuesday:
	getstring STRING_BUFFER_3, .TuesdayText
	end
.Wednesday:
	getstring STRING_BUFFER_3, .WednesdayText
	end
.Thursday:
	getstring STRING_BUFFER_3, .ThursdayText
	end
.Friday:
	getstring STRING_BUFFER_3, .FridayText
	end
.Saturday:
	getstring STRING_BUFFER_3, .SaturdayText
	end
.SundayText:
	db "SUNDAY@"
.MondayText:
	db "MONDAY@"
.TuesdayText:
	db "TUESDAY@"
.WednesdayText:
	db "WEDNESDAY@"
.ThursdayText:
	db "THURSDAY@"
.FridayText:
	db "FRIDAY@"
.SaturdayText:
	db "SATURDAY@"

InitializeEventsScript:
	endcallback

AskNumber1MScript:
	writetext AskNumber1MText
	end

AskNumber2MScript:
	writetext AskNumber2MText
	end

RegisteredNumberMScript:
	writetext RegisteredNumberMText
	playsound SFX_REGISTER_EMAIL
	waitsfx
	promptbutton
	end

NumberAcceptedMScript:
	writetext NumberAcceptedMText
	waitbutton
	closetext
	end

NumberDeclinedMScript:
	writetext NumberDeclinedMText
	waitbutton
	closetext
	end

PhoneFullMScript:
	writetext PhoneFullMText
	waitbutton
	closetext
	end

RematchMScript:
	writetext RematchMText
	waitbutton
	closetext
	end

AskNumber1FScript:
	writetext AskNumber1FText
	end

AskNumber2FScript:
	writetext AskNumber2FText
	end

RegisteredNumberFScript:
	writetext RegisteredNumberFText
	playsound SFX_REGISTER_EMAIL
	waitsfx
	promptbutton
	end

NumberAcceptedFScript:
	writetext NumberAcceptedFText
	waitbutton
	closetext
	end

NumberDeclinedFScript:
	writetext NumberDeclinedFText
	waitbutton
	closetext
	end

PhoneFullFScript:
	writetext PhoneFullFText
	waitbutton
	closetext
	end

RematchFScript:
	writetext RematchFText
	waitbutton
	closetext
	end

GymStatue1Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	writetext GymStatue_CityGymText
	waitbutton
	closetext
	end

GymStatue2Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	writetext GymStatue_CityGymText
	promptbutton
	writetext GymStatue_WinningTrainersText
	waitbutton
	closetext
	end

ReceiveItemScript:
	waitsfx
	writetext ReceivedItemText
	playsound SFX_ITEM
	waitsfx
	end

ReceiveMultipleItemsScript:
	waitsfx
	writetext ReceivedItemGroupText
	playsound SFX_ITEM
	waitsfx
	end

GameCornerCoinVendorScript:
	faceplayer
	opentext
	writetext CoinVendor_WelcomeText
	promptbutton
	checkitem COIN_CASE
	iftrue CoinVendor_IntroScript
	writetext CoinVendor_NoCoinCaseText
	waitbutton
	closetext
	end

CoinVendor_IntroScript:
	writetext CoinVendor_IntroText

.loop
	special DisplayMoneyAndCoinBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Buy50
	ifequal 2, .Buy500
	sjump .Cancel

.Buy50:
	checkcoins MAX_COINS - 50
	ifequal HAVE_MORE, .CoinCaseFull
	checkmoney YOUR_MONEY, 1000
	ifequal HAVE_LESS, .NotEnoughMoney
	givecoins 50
	takemoney YOUR_MONEY, 1000
	waitsfx
	playsound SFX_TRANSACTION
	writetext CoinVendor_Buy50CoinsText
	waitbutton
	sjump .loop

.Buy500:
	checkcoins MAX_COINS - 500
	ifequal HAVE_MORE, .CoinCaseFull
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .NotEnoughMoney
	givecoins 500
	takemoney YOUR_MONEY, 10000
	waitsfx
	playsound SFX_TRANSACTION
	writetext CoinVendor_Buy500CoinsText
	waitbutton
	sjump .loop

.NotEnoughMoney:
	writetext CoinVendor_NotEnoughMoneyText
	waitbutton
	closetext
	end

.CoinCaseFull:
	writetext CoinVendor_CoinCaseFullText
	waitbutton
	closetext
	end

.Cancel:
	writetext CoinVendor_CancelText
	waitbutton
	closetext
	end

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 4, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db " 50 :  ¥1000@"
	db "500 : ¥10000@"
	db "CANCEL@"

HappinessCheckScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	ifless 50, .Unhappy
	ifless 150, .KindaHappy
	writetext HappinessText3
	waitbutton
	closetext
	end

.KindaHappy:
	writetext HappinessText2
	waitbutton
	closetext
	end

.Unhappy:
	writetext HappinessText1
	waitbutton
	closetext
	end
