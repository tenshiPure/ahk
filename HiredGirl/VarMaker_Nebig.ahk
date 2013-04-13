;VarMaker_Nebig.ahk
;HiredGirl の変数を返す関数群（家用）

;process_name, process_path, win_text を取得する
myFunc_VarMaker_Nebig_makeProcessVar(command)
{
	if command = fire
	{
		process_name := "firefox.exe"
		process_path := ""
		win_class := "MozillaWindowClass"
	}

	else if command = paint
	{
		process_name := "mspaint.exe"
		process_path := ""
		win_class := "MSPaintApp"
	}

	else if command = ahk
	{
		process_name := "ahk"
		process_path := ""
		win_class := ""
	}

	else if command = cp
	{
		process_name := "cmd.exe"
		process_path := ""
		win_class := "ConsoleWindowClass"
	}

	else if command = vim
	{
		process_name := "gvim.exe"
		process_path := ""
		win_class := "Vim"
	}

	else if command = chrome
	{
		process_name := "chrome.exe"
		process_path := ""
		win_class := "Chrome_WidgetWin_1"
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
		process_path := ""
		win_class := "CabinetWClass"
	}
			
	else if command = vimdir
	{
		process_name := "dir"
		process_path := ""
		win_class := "CabinetWClass"
	}
			
	else if command = trash
	{
		process_name := "dir"
		process_path := ""
		win_class := "CabinetWClass"
	}

	return
}

;win_var_1 ～ win_var_4 を取得する
myFunc_VarMaker_Nebig_makeWindowVar(command)
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
