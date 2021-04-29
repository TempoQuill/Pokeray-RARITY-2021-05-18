NameMenuHeader:
	db STATICMENU_NO_TOP_SPACING
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Names
	db 1

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"

PlayerNameArray:
IF DEF(_RAY)
	db "SONNY@"
	db "DJINN@"
	db "INALI@"
	db "TYR@"
ELIF DEF(_SHADE)
	db "SHAGGY@"
	db "KAMON@"
	db "OSCAR@"
	db "LOKI@"
ENDC
	db 2
	db "NAME@" ; title
