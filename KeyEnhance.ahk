;KeyEnchance.ahk

;----------------------
;Alt によるテンキー入力
;----------------------
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

;----------------------------------
;Alt+Shift によるテンキー入力+Shift
;----------------------------------
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

;------------------------------
;その他のテンキー周りの入力設定
;------------------------------
!`;::Send,-
!p::Send,=
!+`;::Send,->
!+p::Send,=>
!+h::Send,{Home}

;------------------------
;_ をShift 無しで入力する
;------------------------
SC073::_

;-------------
;音量アップ(2)
;-------------
Numpad8::
	Send, {Volume_Up}
	SoundPlay, *-1
return

;-------------
;音量ダウン(2)
;-------------
Numpad2::
	Send, {Volume_Down}
	SoundPlay, *-1
return

;-------------------
;無変換キーでIME_OFF
;-------------------
vk1Dsc07B::
	IME_SET(0)
return


;----------------
;変換キーでIME_ON
;----------------
vk1Csc079::
	IME_SET(1)
return

;-----------------
;Ctrl + Q で閉じる
;-----------------
^q::
	Send,!{F4}
return

;-----------------
;Ctrl + H で最小化
;-----------------
^h::
	send,#{Down}
return

;--------------------
;R -> 右クリック
;--------------------
;#IfWinActive, ahk_class SunAwtFrame 
;r::MouseClick, R
;#IfWinActive

;------------
;iTunes：次曲
;------------
Numpad6::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, ^{right}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return

;------------
;iTunes：前曲
;------------
Numpad4::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, ^{left}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return

;-----------------------
;iTunes：再生/停止トグル
;-----------------------
Numpad5::
	DetectHiddenWindows , On
	ControlSend , ahk_parent, {space}, iTunes ahk_class iTunes
	DetectHiddenWindows , Off
return
