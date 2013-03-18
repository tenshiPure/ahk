;Category.ahk
;HiredGirl の分類毎のコマンド

;指定されたカテゴリに属するコマンドリストを返却する
myFunc_Category_getArray(category)
{
	if category = C_Process
		return "fire paint ahk cp vim astah cygwin itunes gimp pj vba joy skype ce chrome nva c d down box vimdir xampp trash"

	if category = C_Window
		return "top 0 1 2 3 4 5 6 7 8 9 11 22 33 44 55 66 77 88 99"

	if category = C_SendKey
		return "cls r pu"

	if category = C_SS
		return "ss"

	if category = C_OS
		return "sleep"

	if category = C_HiredGirl
		return "list"

	if category = C_Kill
		return "exit kill"
}
