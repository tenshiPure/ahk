;YuClock.ahk

;--------------
;�����̓ǂݏグ
;--------------
NumpadSub::
	FormatTime, h, , H
	FormatTime, m, , m

	current_time = %h%��%m%��

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_time%
return

;--------------
;�j���̓ǂݏグ
;--------------
NumpadMult::
	FormatTime, w, , dddd

	current_week = %w%

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_week%
return

;--------------
;�����̓ǂݏグ
;--------------
NumpadDiv::
	FormatTime, m, , M
	FormatTime, d, , d

	current_date = %m%��%d%��

	Run C:\Program Files (x86)\softalk\SofTalk.exe /X:1 /S:100 /V:100 /W:%current_date%
return
