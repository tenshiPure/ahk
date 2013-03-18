;MouseEnhance.ahk
;マウスの強化

;右ボタン+マウスボタンの操作

;+ホイールボタン
;ctrl + w
MButton::
	GetKeyState, State, RButton
	if State = U
		MouseClick, M
	if State = D
	{
		Send, ^w
	}
return

;+ホイールボタン（左）
;リロード
^+!A::
	GetKeyState, State, RButton
	if State = U
	{
		WinGetTitle, winTitle, A, , ,
		
		IfInString, winTitle, Firefox
			Send, {F5}
		else
			Send, !{F4}
	}

	if State = D
	{
		MsgBox, left
	}
return

;+ホイールボタン（右）
;ブックマーク
^+!B::
	GetKeyState, State, RButton
	if State = U
		Send, ^d
	if State = D
	{
		MsgBox, right
	}
return

;+進むボタン
;左のタブへ
XButton2::
	GetKeyState, State, RButton
	if State = U
		Send, {XButton1}
	if State = D
	{
		Send, ^+{Tab}
	}
return

;+戻るボタン
;右のタブへ
XButton1::
	GetKeyState, State, RButton
	if State = U
		Send, {XButton2}
	if State = D
	{
		Send, ^{Tab}
	}
return
