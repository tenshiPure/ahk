;Commandexecute.ahk
;HiredGirl のコマンドを実行する
	
global process_name := ""
global process_path := ""
global win_class    := ""

global win_var_1 := ""
global win_var_2 := ""
global win_var_3 := ""
global win_var_4 := ""

global to_win_class     := ""
global send_key         := ""
global origin_win_class := ""


;コマンドを実行する
myFunc_CommandExecute_commandExecute()
{
	;コマンドが１つの時の実行窓口
	if command_num = 1
		myFunc_Commandexecute_OneCommandFunction()
	
	;コマンドが２つの時の実行窓口
	if command_num = 2
		myFunc_Commandexecute_TwoCommandFunction()
}

;コマンドが１つの時の実行窓口
myFunc_CommandExecute_oneCommandFunction()
{
	;C_Process : 起動、もしくはアクティブ化して、処理完了を待つ
	if category_one = C_Process
		myFunc_ExecuteFunctions_Process(command_one)

	;C_Window : ウィンドウのサイズ変更や配置変更と最前面トグル設定を行う
	if category_one = C_Window
		myFunc_ExecuteFunctions_Window(command_one)

	;C_Kill : プロセスを終了する
	if category_one = C_Kill
		myFunc_ExecuteFunctions_Kill()

	;C_OS : OS に命令をする
	if category_one = C_OS
		myFunc_ExecuteFunctions_OS()

	;C_SendKey : 指定のウィンドウに指定の入力をする
	if category_one = C_SendKey
		myFunc_ExecuteFunctions_SendKey(command_one)

	;C_HiredGirl : HiredGirl に命令をする
	if category_one = C_HiredGirl
		myFunc_ExecuteFunctions_HiredGirl(command_one)
}

;コマンドが２つの時の実行窓口
myFunc_CommandExecute_twoCommandFunction()
{
	;C_SS : スクリーンショットの撮影
	if category_one = C_SS
		myFunc_ExecuteFunctions_SS(command_two)
		
	;ここに来ている以上、コマンド１は必ずC_Process

	;ウィンドウをアクティブ化して、それを操作する
	if category_two = C_Window
	{
		myFunc_ExecuteFunctions_Process(command_one)
		myFunc_ExecuteFunctions_Window(command_two)
	}
	;ウィンドウをアクティブ化して、それを閉じる
	else if category_two = C_Kill
	{
		myFunc_ExecuteFunctions_Process(command_one)
		myFunc_ExecuteFunctions_Kill()
	}
}
