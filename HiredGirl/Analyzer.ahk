;Analyzer.ahk
;HiredGirl の入力解析メソッド

;入力値を解析する
myFunc_Analyzer_Analyze(input_value)
{
	;入力値を分割する
	myFunc_Analyzer_parseCommand(input_value)

	if command_num = 1
	{
		;コマンドがどのカテゴリに属するかを判定する
		category_one = % myFunc_Analyzer_decisionCategory(command_one)
	}
	else if command_num = 2
	{
		;コマンドがどのカテゴリに属するかを判定する
		category_one = % myFunc_Analyzer_decisionCategory(command_one)
		category_two = % myFunc_Analyzer_decisionCategory(command_two)
	}
	else
	{
		return
	}
}

;入力値を分割する
myFunc_Analyzer_parseCommand(input_value)
{
	;スペースで入力を分割
	StringSplit, Command, input_value, " ",

	;グローバルにすることで返却をする
	command_num:=Command0
	command_one:=Command1
	command_two:=Command2
}

;コマンドがどのカテゴリに属するかを判定する
myFunc_Analyzer_decisionCategory(input_command)
{
	;配列化
	StringSplit, checking, category_list, " ",

	;カテゴリの種類分、ループをして比較する
	loop, %checking0%
	{
		this_checking:=checking%a_index%

		;指定されたカテゴリに属するコマンドリストを返却する
		command_list = % myFunc_Category_getArray(this_checking)
	
		;コマンドがそのカテゴリに属するかを判定する
		result = % myFunc_Analyzer_isInCategory(input_command, command_list)

		if result = here
			return this_checking
	}

	return "C_NoRegistered"
}

;コマンドがそのカテゴリに属するかを判定する
myFunc_Analyzer_isInCategory(input_command, command_list)
{
	;配列化
	StringSplit, command, command_list, " ",

	;カテゴリ属するコマンドの数分、ループをして比較する
	loop, %command0%
	{
		this_command:=command%a_index%

		;発見したら終了
		if this_command = %input_command%
			return "here"
	}
}

;コマンドが不正か否かを確認
myFunc_Analyzer_isExecutable()
{
	;コマンドが１つ、または２つでない
	if (command_num <> 2 && command_num <> 1)
		return "NG"

	if command_num = 1
	{
		;コマンド１は未登録はあり得ない
		if category_one = C_NoRegistered
			return "NG"
		
		;C_SS なのにコマンド２が無い
		if category_one = C_SS
			return "NG"
	}
	else if command_num = 2
	{
		;コマンド１未登録はあり得ない
		if category_one = C_NoRegistered
			return "NG"

		;コマンド１がC_SS の場合、コマンド２はただのファイル名となるので、カテゴリを問わない
		if category_one = C_SS
		{
		}
		else
		{
			;コマンドが２つでも、コマンド１は必ずC_Process
			if category_one <> C_Process
				return "NG"

			;コマンド２未登録はあり得ない
			if category_two = C_NoRegistered
				return "NG"

			;コマンド数が２にならないコマンド１のカテゴリ
			if category_one = C_SendKey
				return "NG"
			if category_one = C_OS
				return "NG"
			if category_one = C_HiredGirl
				return "NG"

			;コマンド２になり得ないコマンド２のカテゴリ
			if category_two = C_Process
				return "NG"
			if category_two = C_SS
				return "NG"
			if category_two = C_sendKey
				return "NG"
			if category_two = C_OS
				return "NG"
			if category_two = C_HiredGirl
				return "NG"
		}
	}

	return "OK"
}
