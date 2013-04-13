;YuClock.ahk

;--------------
;時分の読み上げ
;--------------
NumpadSub::
	FormatTime, h, , H
	FormatTime, m, , m

	current_time = %h%時%m%分

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_time%
return

;--------------
;曜日の読み上げ
;--------------
NumpadMult::
	FormatTime, w, , dddd

	current_week = %w%

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_week%
return

;--------------
;月日の読み上げ
;--------------
NumpadDiv::
	FormatTime, m, , M
	FormatTime, d, , d

	current_date = %m%月%d%日

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_date%
return
