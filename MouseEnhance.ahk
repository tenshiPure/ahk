;MouseEnhance.ahk
;�}�E�X�̋���

;�E�{�^��+�}�E�X�{�^���̑���

;+�z�C�[���{�^��
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

;+�z�C�[���{�^���i���j
;�����[�h
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

;+�z�C�[���{�^���i�E�j
;�u�b�N�}�[�N
^+!B::
	GetKeyState, State, RButton
	if State = U
		Send, ^d
	if State = D
	{
		MsgBox, right
	}
return

;+�i�ރ{�^��
;���̃^�u��
XButton2::
	GetKeyState, State, RButton
	if State = U
		Send, {XButton1}
	if State = D
	{
		Send, ^+{Tab}
	}
return

;+�߂�{�^��
;�E�̃^�u��
XButton1::
	GetKeyState, State, RButton
	if State = U
		Send, {XButton2}
	if State = D
	{
		Send, ^{Tab}
	}
return
