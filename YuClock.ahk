;YuClock.ahk

;--------------
;•ª‚Ì“Ç‚İã‚°
;--------------
NumpadSub::
	FormatTime, h, , H
	FormatTime, m, , m

	current_time = %h%%m%•ª

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_time%
return

;--------------
;—j“ú‚Ì“Ç‚İã‚°
;--------------
NumpadMult::
	FormatTime, w, , dddd

	current_week = %w%

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_week%
return

;--------------
;Œ“ú‚Ì“Ç‚İã‚°
;--------------
NumpadDiv::
	FormatTime, m, , M
	FormatTime, d, , d

	current_date = %m%Œ%d%“ú

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_date%
return
