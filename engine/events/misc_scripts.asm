FindItemInBallScript::
	callasm .TryReceiveItem
	iffalse .no_room
	disappear LAST_TALKED
	opentext
	writetext .FoundItemText
	specialsound
	pause 60
	itemnotify
	closetext
	end

.no_room
	opentext
	writetext .FoundItemText
	waitbutton
	writetext .CantCarryItemText
	waitbutton
	closetext
	end

.FoundItemText:
	text_far _FoundItemText
	text_end

.CantCarryItemText:
	text_far _CantCarryItemText
	text_end

.TryReceiveItem:
	xor a
	ld [wScriptVar], a
	ld a, [wItemBallItemID]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wItemBallItemID]
	ld [wCurItem], a
	ld a, [wItemBallQuantity]
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [wScriptVar], a
	ret
