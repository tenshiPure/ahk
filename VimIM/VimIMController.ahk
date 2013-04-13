;入口はHiredGirl/IM とかでも良いかもしれん
#i::
	;中間一致
	SetTitleMatchMode, 2

	WinGetText, text1, sample1
	MsgBox, %text1%

	WinGetText, text2, sample2
	MsgBox, %text2%
return
