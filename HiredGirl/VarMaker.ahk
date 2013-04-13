;VarMaker.ahk
;HiredGirl の変数を返す関数群

;process_name, process_path, win_text を取得する
myFunc_VarMaker_makeProcessVar(command)
{
	if % myFunc_GetEnv_GetEnv() = "ryo"
		myFunc_VarMaker_Ryo_makeProcessVar(command)
	else
		myFunc_VarMaker_Nebig_makeProcessVar(command)
}

;win_var_1 ～ win_var_4 を取得する
myFunc_VarMaker_makeWindowVar(command)
{
	if % myFunc_GetEnv_GetEnv() = "ryo"
		myFunc_VarMaker_Ryo_makeWindowVar(command)
	else
		myFunc_VarMaker_Nebig_makeWindowVar(command)
}

;to_win_title, send_key, origin_win_title を取得する
myFunc_VarMaker_makeSendKeyVar(command)
{
	if % myFunc_GetEnv_GetEnv() = "ryo"
		myFunc_VarMaker_Ryo_makeSendKeyVar(command)
}

;PHPUnit の引数のため、現在編集中のファイル名を得る
myFunc_VarMaker_makePHPUnitFilename()
{
	if % myFunc_GetEnv_GetEnv() = "ryo"
		myFunc_VarMaker_Ryo_makePHPUnitFilename()
}
