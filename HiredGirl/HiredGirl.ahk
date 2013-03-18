;HiredGirl.ahk
;HiredGirl のコマンド入力用GUI

+Enter::
	;inputbox を指定の座標、サイズで作成する
	InputBox, input_value, Hired Girl, , , 150, 100, 1750, 20

	global category_list := "C_Process C_Window C_SendKey C_Kill C_SS C_OS C_HiredGirl"
	global command_num   := 0
	global command_one   := ""
	global command_two   := ""
	global category_one  := "C_NoRegistered"
	global category_two  := "C_NoRegistered"

	;入力値を解析する
	myFunc_Analyzer_Analyze(input_value)

	;コマンドが不正か否かを確認
	result = % myFunc_Analyzer_isExecutable()
	
	if result = NG
		return

	;コマンドを実行する
	myFunc_CommandExecute_commandExecute()

return
