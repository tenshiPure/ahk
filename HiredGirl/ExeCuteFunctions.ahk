;ExecuteFunctions.ahk
;HiredGirl のカテゴリ毎の処理内容

;C_Process : 起動、もしくはアクティブ化して、処理完了を待つ
myFunc_ExecuteFunctions_Process(command)
{
	;process_name, process_path, win_text を取得する
	myFunc_VarMaker_makeProcessVar(command)

	;すでにそのプロセスがあるか否か
	Process, Exist, %process_name%
	
	;存在するならば、アクティブにする
	if ErrorLevel <> 0
		WinActivate, ahk_pid %ErrorLevel%

	;そうでなければ、起動させ、アクティブ化を待つ
	else
	{
		Run, %process_path%
		WinWait, ahk_class %win_class%, , 1, ,
	}
}

;C_Window : ウィンドウのサイズ変更や配置変更と最前面トグル設定を行う
myFunc_ExecuteFunctions_Window(command)
{
	;最前面トグル設定を行う
	if command = top
	{
		WinSet, TopMost, Toggle, A
	}
	;最小化を行う
	else if command = 00
	{
		WinMinimize, A
	}
	;四隅の座標を設定する
	else
	{
		;win_var_1 ～ win_var_4 を取得する
		myFunc_VarMaker_makeWindowVar(command)

		WinMove, A, , %win_var_1%, %win_var_2%, %win_var_3%, %win_var_4%
	}
}

;C_Kill : プロセスを終了する
myFunc_ExecuteFunctions_Kill()
{
	WinGetTitle, result, A

	IfInString, result, JoyToKey
	{
		myFunc_ExecuteFunctions_SendKey("kill")
	}
	else
	{
		WinKill, A
	}
}

;C_OS : OS に命令をする
myFunc_ExecuteFunctions_OS()
{
	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
}

;C_SendKey : 指定のウィンドウに指定の入力をする
myFunc_ExecuteFunctions_SendKey(command)
{
	;to_win_title, send_key, origin_win_title を取得する
	myFunc_VarMaker_makeSendKeyVar(command)

	;送り先のウィンドウをアクティブ化
	WinActivate, ahk_class %to_win_class%
	;キー入力
	Send, %send_key%
	;送り元のウィンドウをアクティブ化
	WinActivate, ahk_class %origin_win_class%
}

;C_HiredGirl : HiredGirl に命令をする
myFunc_ExecuteFunctions_HiredGirl(command)
{
	if command = list
	{
		;配列化
		StringSplit, category, category_list, " ",

		;カテゴリの種類分、ループをして比較する
		loop, %category0%
		{
			;最終出力
			output := ""

			this_category:=category%a_index%
			
			;指定されたカテゴリに属するコマンドリストを返却する
			command_list = % myFunc_Category_getArray(this_category)
			
			StringReplace, command_list, command_list, %A_Space% , `r`n, All

			output := output . "--" . this_category . "--" . "`r`n`r`n"
			output := output . command_list
			
			MsgBox, %output%
		}
	}
}

;C_SS : スクリーンショットの撮影
myFunc_ExecuteFunctions_SS(filename)
{
	;ファイル名に埋め込むタイムスタンプ
	FormatTime, timestamp, , 'ScreenShot'_yyyyMMdd_HHmmss_

	;タイムスタンプとコマンド２でファイル名を作成
	filename := timestamp . filename

	;process_name, process_path, win_text を取得する
	myFunc_VarMaker_makeProcessVar("paint")

	Send, {PrintScreen}
	Run, %process_path%
	WinWait, ahk_class %win_class%, , 1, ,
	Send, ^v
	Send, ^s
	WinWait, ahk_class #32770
	Send, D:\MyPicture\ScreenShot\%filename%.png
	Send, {Enter}
	WinWait, ahk_class %win_class%, , 1, ,
	WinKill, A
}
