;VarMaker.ahk
;HiredGirl の変数を返す関数群

;process_name, process_path, win_text を取得する
myFunc_VarMaker_makeProcessVar(command)
{
	if command = fire
	{
		process_name := "firefox.exe"
		process_path := "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
		win_class := "MozillaWindowClass"
	}

	else if command = paint
	{
		process_name := "mspaint.exe"
		process_path := "C:\Windows\System32\mspaint.exe"
		win_class := "MSPaintApp"
	}

	else if command = ahk
	{
		process_name := "ahk"
		process_path := "C:\Program Files\AutoHotkey\AutoHotKeyU64.exe"
		win_class := ""
	}

	else if command = cp
	{
		process_name := "cmd.exe"
		process_path := "C:\Windows\System32\cmd.exe"
		win_class := "ConsoleWindowClass"
	}

	else if command = vim
	{
		process_name := "gvim.exe"
		process_path := "C:\Program Files (x86)\vim\gvim.exe"
		win_class := "Vim"
	}

	else if command = astah
	{
		process_name := "astah-com.exe"
		process_path := "C:\Program Files\astah-community\astah-com.exe"
		win_class := "SunAwtFrame"
	}

	else if command = cygwin
	{
		process_name := "Cygwin.bat"
		process_path := "C:\cygwin\Cygwin.bat"
		win_class := "ahk_class ConsoleWindowClass"
	}

	else if command = itunes
	{
		process_name := "iTunes.exe"
		process_path := "C:\Program Files (x86)\iTunes\iTunes.exe"
		win_class := "iTunes"
	}

	else if command = gimp
	{
		process_name := "GIMPPortable.exe"
		process_path := "C:\Program Files (x86)\GIMP\GIMPPortable.exe"
		win_class := "ahk_class gdkWindowToplevel"
	}

	else if command = pj
	{
		process_name := "Project64k.exe"
		process_path := "C:\Program Files\Project64k\Project64k.exe"
		win_class := "Project64k Version 0.13 Core 1.4"
	}

	else if command = vba
	{
		process_name := "VisualBoyAdvance.exe"
		process_path := "D:\Game\emulator\GBA\VisualBoyAdvanceLink\VisualBoyAdvance.exe"
		win_class := "Afx:400000:0:0:1900011:3a6d0763"
	}

	else if command = joy
	{
		process_name := "JoyToKey.exe"
		process_path := "C:\Program Files\JoyToKey\JoyToKey.exe"
		win_class := "TMainForm"
	}

	else if command = skype
	{
		process_name := "Skype.exe"
		process_path := "C:\Program Files (x86)\Skype\Phone\Skype.exe"
		win_class := "tSkMainForm"
	}

	else if command = ce
	{
		process_name := "CravingExplorer.exe"
		process_path := "C:\Program Files (x86)\CravingExplorer\CravingExplorer.exe"
		win_class := "Craving Explorer"
	}

	else if command = chrome
	{
		process_name := "chrome.exe"
		process_path := "C:\Users\Administrator\AppData\Local\Google\Chrome\Application\chrome.exe"
		win_class := "Chrome_WidgetWin_1"
	}

	else if command = nva
	{
		process_name := "dir"
		process_path := "C:\Program Files\NVIDIA Corporation\Control Panel Client\nvcplui.exe"
		win_class := "NVIDIA"
	}

	else if command = c
	{
		process_name := "dir"
		process_path := "C:"
		win_class := "CabinetWClass"
	}
			
	else if command = d
	{
		process_name := "dir"
		process_path := "D:"
		win_class := "CabinetWClass"
	}
			
	else if command = down
	{
		process_name := "dir"
		process_path := "D:\Download"
		win_class := "CabinetWClass"
	}
			
	else if command = box
	{
		process_name := "dir"
		process_path := "D:\Dropbox"
		win_class := "CabinetWClass"
	}
			
	else if command = vimdir
	{
		process_name := "dir"
		process_path := "D:\Dropbox\share\vim"
		win_class := "CabinetWClass"
	}
			
	else if command = xampp
	{
		process_name := "dir"
		process_path := "C:\xampp"
		win_class := "CabinetWClass"
	}
			
	else if command = trash
	{
		process_name := "dir"
		process_path := "C:\$Recycle.Bin\S-1-5-21-1672928867-819109563-735477428-500"
		win_class := "CabinetWClass"
	}

	return
}

;win_var_1 ～ win_var_4 を取得する
myFunc_VarMaker_makeWindowVar(command)
{
	if command = 01
	{
		win_var_1 := 0
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 02
	{
		win_var_1 := 0
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 03
	{
		win_var_1 := A_ScreenWidth  / 2
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 04
	{
		win_var_1 := 0
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight
	}

	else if command = 05
	{
		win_var_1 := 0
		win_var_2 := 0
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight
	}

	else if command = 06
	{
		win_var_1 := A_ScreenWidth  / 2
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight
	}

	else if command = 07
	{
		win_var_1 := 0
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 08
	{
		win_var_1 := 0
		win_var_2 := 0
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 09
	{
		win_var_1 := A_ScreenWidth  / 2
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 11
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 22
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 33
	{
		win_var_1 := A_ScreenWidth  / 2 * 3
		win_var_2 := A_ScreenHeight / 2
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 44
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight
	}

	else if command = 55
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := 0
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight
	}

	else if command = 66
	{
		win_var_1 := A_ScreenWidth / 2 * 3
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight
	}

	else if command = 77
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 88
	{
		win_var_1 := A_ScreenWidth
		win_var_2 := 0
		win_var_3 := A_ScreenWidth
		win_var_4 := A_ScreenHeight / 2
	}

	else if command = 99
	{
		win_var_1 := A_ScreenWidth / 2 * 3
		win_var_2 := 0
		win_var_3 := A_ScreenWidth  / 2
		win_var_4 := A_ScreenHeight / 2
	}

	return
}

;to_win_title, send_key, origin_win_title を取得する
myFunc_VarMaker_makeSendKeyVar(command)
{
	if command = cls
	{
		to_win_class     = ConsoleWindowClass
		send_key         = cls{Enter}
		origin_win_class = Vim
	}
	else if command = r
	{
		to_win_class     = Chrome_WidgetWin_1
		send_key         = {F5}
		origin_win_class = Vim
	}
	else if command = pu
	{
		;PHPUnit の引数のため、現在編集中のファイル名を得る
		Filename = % myFunc_VarMaker_makePHPUnitFilename()

		to_win_class     = ConsoleWindowClass
		send_key         = {Esc}phpunit %Filename%{Enter}
		origin_win_class = Vim
	}
	else if command = kill
	{
		to_win_class     = TMainForm
		send_key         = {Alt}fx
		origin_win_class = 
	}
}

;PHPUnit の引数のため、現在編集中のファイル名を得る
myFunc_VarMaker_makePHPUnitFilename()
{
	;タイトル名取得
	WinGetActiveTitle, Title
	
	;"php" を検索
	StringGetPos, Pos, Title, .php, 
	
	;"php" の末尾まで切り出し
	StringLeft, Filename, Title, Pos + 4

	return Filename
}
