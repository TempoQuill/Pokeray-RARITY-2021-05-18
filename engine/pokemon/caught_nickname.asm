GiveANickname_YesNo:
	ld hl, CaughtAskNicknameText
	call PrintText
	jp YesNoBox

CaughtAskNicknameText:
	text_far _CaughtAskNicknameText
	text_end
