;GetEnv.ahk
;実行環境を判断する

myFunc_GetEnv_GetEnv()
{
	SysGet, result, 0

	if result = 1920
		return "ryo"
	else
		return "nebig"
}
