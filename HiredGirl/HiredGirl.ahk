;HiredGirl.ahk
;HiredGirl �̃R�}���h���͗pGUI

+Enter::
	;inputbox ���w��̍��W�A�T�C�Y�ō쐬����
	InputBox, input_value, Hired Girl, , , 150, 100, 1750, 20

	global category_list := "C_Process C_Window C_SendKey C_Kill C_SS C_OS C_HiredGirl"
	global command_num   := 0
	global command_one   := ""
	global command_two   := ""
	global category_one  := "C_NoRegistered"
	global category_two  := "C_NoRegistered"

	;���͒l����͂���
	myFunc_Analyzer_Analyze(input_value)

	;�R�}���h���s�����ۂ����m�F
	result = % myFunc_Analyzer_isExecutable()
	
	if result = NG
		return

	;�R�}���h�����s����
	myFunc_CommandExecute_commandExecute()

return
