;KeyEnchance.ahk

;--------------------
;�L�[�}�b�s���O�̕ύX
;--------------------

;Alt �ɂ��e���L�[����
!n::Send,0
!m::Send,1
!,::Send,2
!.::Send,3
!j::Send,4
!k::Send,5
!l::Send,6
!u::Send,7
!i::Send,8
!o::Send,9


;Alt+Shift �ɂ��e���L�[����+Shift
!+m::Send,+1
!+,::Send,+2
 !>::Send,+3
#IfWinActive,ahk_class Vim
!+j::Send,+4
#IfWinActive
!+j::Send,{End}
!+k::Send,+5
!+l::Send,+6
!+u::Send,+7
!+i::Send,+8
!+o::Send,+9
!+y::Send,\


;���̑��̃e���L�[����̓��͐ݒ�
!`;::Send,-
!p::Send,=
!+`;::Send,->
!+p::Send,=>
!+h::Send,{Home}


;_ ��Shift �����œ��͂���
SC073::_


;���ʃA�b�v(2)
Numpad8::
	Send, {Volume_Up}
	SoundPlay, *-1
return


;���ʃ_�E��(2)
Numpad2::
	Send, {Volume_Down}
	SoundPlay, *-1
return


;IME_OFF(���ϊ�)
vk1Dsc07B::
	IME_SET(0)
return


;IME_ON(�ϊ�)
vk1Csc079::
	IME_SET(1)
return


;Ctrl + Q �ŕ���
^q::
	Send,!{F4}
return


;Ctrl + H �ōŏ���
^h::
	send,#{Down}
return


;--------------------
;Minecraft ���̂ݗL��
;--------------------

;#IfWinActive, ahk_class SunAwtFrame 
;r::MouseClick, R
;#IfWinActive


;----------
;iTunes����
;----------

;����
Numpad6::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, ^{right}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return


;�O��
Numpad4::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, ^{left}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return


;�Đ�/��~
Numpad5::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, {space}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return
