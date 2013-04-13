;MouseEnhance.ahk

;SetPoint連携+++++++++++++++++++++++++++++++++++
;ホイール左：^!L
;ホイール右：^!R
;+++++++++++++++++++++++++++++++++++++++++++++++

;かざぐるマウス連携+++++++++++++++++++++++++++++
;非アクティブウィンドウのスクロール可
;Shift + スクロール        -> 水平スクロール３行
;Shift + Ctrl + スクロール -> 上端・下端ジャンプ
;+++++++++++++++++++++++++++++++++++++++++++++++

global RState    := ""
global winTitle := ""

;--------------------------------
;全てのスクリプトの初めに呼ばれる
;--------------------------------
getRClickStateAndWinTitle()
{
	;右クリックが押されているか
	GetKeyState, RState, RButton

	;アクティブウィンドウのタイトル
	WinGetTitle, winTitle, A, , ,
}

;----------------
;ホイールクリック
;----------------
MButton::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;ホイールクリック（SetPoint連携）
		MouseClick, M
	}

	if RState = D
	{
		;ctrl + w
		Send, ^w
	}
return

;----------------
;ホイール上
;----------------
WheelUp::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;上スクロール
		Send {Click, WheelUp}
	}

	if RState = D
	{
		;上端ジャンプ（かざぐるマウス連携）
		Send ^+{Click, WheelUp}
	}
return

;----------------
;ホイール下
;----------------
WheelDown::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;下スクロール
		Send {Click, WheelDown}
	}

	if RState = D
	{
		;下端ジャンプ（かざぐるマウス連携）
		Send ^+{Click, WheelDown}
	}
return

;----------------------------------------------------
;ホイール左（SetPoint連携）
;----------------------------------------------------
^!L::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;FireFox
		IfInString, winTitle, Firefox
		{
			;リロード
			Send, {F5}
			return
		}

		;Chrome
		IfInString, winTitle, Chrome
		{
			;リロード
			Send, {F5}
			return
		}

		;Excel
		IfInString, winTitle, Excel
		{
			;左スクロール（かざぐるマウス連携）
			Send +{Click, WheelUp}
			return
		}

		else
			;閉じる
			Send, !{F4}
	}

	if RState = D
	{
		MsgBox, left
	}
return

;----------------------------------------------------
;ホイール右（SetPoint連携）
;----------------------------------------------------
^!R::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;FireFox
		IfInString, winTitle, Firefox
		{
			;ブックマーク
			Send, ^d
			return
		}

		;Excel
		IfInString, winTitle, Excel
		{
			;右スクロール（かざぐるマウス連携）
			Send +{Click, WheelDown}
			return
		}
	}

	if RState = D
	{
		MsgBox, right
	}
return

;----------------------
;戻るボタン
;----------------------
XButton2::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;Excel
		IfInString, winTitle, Excel
		{
			;左シートへ移動
			Send, ^{PgUp}
			return
		}

		else
			;戻るボタン（SetPoint連携）
			Send, {XButton1}
	}

	if RState = D
	{
		;左タブへ移動
		Send, ^+{Tab}
	}
return

;----------------------
;進むボタン
;----------------------
XButton1::
	getRClickStateAndWinTitle()

	if RState = U
	{
		;Excel
		IfInString, winTitle, Excel
		{
			;右シートへ移動
			Send, ^{PgDn}
			return
		}

		else
			;進むボタン（SetPoint連携）
			Send, {XButton2}
	}

	if RState = D
	{
		;右タブへ移動
		Send, ^{Tab}
	}
return
