#Include  %A_ScriptDir%\IME.ahk

;=============================
; 新下駄配列ヘルパー
;
;=============================

Global flg_log
Global intInputX, intInputY
Global intHelpX, intHelpY
; 設定ファイル読み込み（ShinGetaHelper.ini）
IniRead, str_hotkey, %A_ScriptDir%\ShinGetaHelper.ini, Main, HKey , +^k
IniRead, flg_log, %A_ScriptDir%\ShinGetaHelper.ini, Main, EnableLog , 0
IniRead, intInputX, %A_ScriptDir%\ShinGetaHelper.ini, Main, InputX , 
IniRead, intInputY, %A_ScriptDir%\ShinGetaHelper.ini, Main, InputY , 
IniRead, intHelpX, %A_ScriptDir%\ShinGetaHelper.ini, Main, HelpX , 200
IniRead, intHelpY, %A_ScriptDir%\ShinGetaHelper.ini, Main, HelpY , 200

; iniのInputX、InputYが空文字の場合はそれぞれの方向の中央にする。
;      HelpX、HelpYが空文字の場合も同様だが、InputBoxはデフォルト中央なので手当不要。
If (intHelpX is integer)
{
	intHelpX = X%intHelpX%
}
Else
{
	intHelpX = XCenter
}

If (intHelpY is integer)
{
	intHelpY = X%intHelpY%
}
Else
{
	intHelpY = YCenter
}

Hotkey, %str_hotkey%, ShowDialog
Return

ShowDialog:
; +^h::
	ime_mode := IME_GET()
	IME_SET(0)
	InputBox, UserInput, 新下駄配列ヘルパー, 入力方法を調べたい文字のローマ字を入力`n（括弧系はkakko、記号系はkigouと入力）`n`n連続した文字を入力する場合はスペースで区切る（例：ta n go）, , 300, 200, %intInputX%, %intInputY%
	IME_SET(ime_mode)
	If (ErrorLevel = 0)
	{
		
		; StringReplace, UserInput, UserInput, %A_Space% , , All
		StringReplace, UserInput, UserInput, 　 , , All
		; スペースまたはから文字が入力された場合は何も表示せずに終了する
		If (UserInput = "")
		{
			return
		}

		; スペース区切りで分割
		StringSplit, arrUserInput, UserInput , %A_Space% ,

		Gui, +AlwaysOnTop -MaximizeBox -MinimizeBox -Resize
		Gui Font, S11 Q5, Meiryo
		Loop, %arrUserInput0%
		{
			If (arrUserInput%A_Index% != "")
			{
				Gui Add, Text  ,w200 , % GetHelp(arrUserInput%A_Index%)
			}
		}
		Gui Font, S9
		Gui Add, Button,h0 w0 default , 閉じる
		Gui Show, %intHelpX% %intHelpY% AutoSize, 新下駄配列ヘルパー

		return

		Button閉じる:
		Gui, submit,nohide
		Gui, Destroy
		return

		GuiEscape:
		Gui, Destroy
		Return

	}
Return



GetHelp(kana)
{
	; ア行
		If (kana = "a")
		{
			WriteLog("あ")
			Return "【あ】⇒　D + J"
		}
		Else If  (kana = "i")
		{
			WriteLog("い")
			Return "【い】⇒　K"
		}
		Else If  (kana = "u")
		{
			WriteLog("う")
			Return "【う】⇒　J"
		}
		Else If  (kana = "e")
		{
			WriteLog("え")
			Return "【え】⇒　D + `;"
		}
		Else If  (kana = "o")
		{
			WriteLog("お")
			Return "【お】⇒　D + L"
		}
	; カ行
		Else If  (kana = "ka")
		{
			WriteLog("か")
			Return "【か】⇒　D"
		}
		Else If  (kana = "ki")
		{
			WriteLog("き")
			Return "【き】⇒　C"
		}
		Else If  (kana = "ku")
		{
			WriteLog("く")
			Return "【く】⇒　H"
		}
		Else If  (kana = "ke")
		{
			WriteLog("け")
			Return "【け】⇒　E + L"
		}
		Else If  (kana = "ko")
		{
			WriteLog("こ")
			Return "【こ】⇒　I"
		}
	; サ行
		Else If  (kana = "sa")
		{
			WriteLog("さ")
			Return "【さ】⇒　S + L"
		}
		Else If  (kana = "si" || kana = "shi")
		{
			WriteLog("し")
			Return "【し】⇒　L"
		}
		Else If  (kana = "su")
		{
			WriteLog("す")
			Return "【す】⇒　Z"
		}
		Else If  (kana = "se")
		{
			WriteLog("せ")
			Return "【せ】⇒　D + N"
		}
		Else If  (kana = "so")
		{
			WriteLog("そ")
			Return "【そ】⇒　S + `;"
		}
	; タ行
		Else If  (kana = "ta")
		{
			WriteLog("た")
			Return "【た】⇒　M"
		}
		Else If  (kana = "ti" || kana = "chi")
		{
			WriteLog("ち")
			Return "【ち】⇒　T"
		}
		Else If  (kana = "tu" || kana = "tsu")
		{
			WriteLog("つ")
			Return "【つ】⇒　B"
		}
		Else If  (kana = "te")
		{
			WriteLog("て")
			Return "【て】⇒　N"
		}
		Else If  (kana = "to")
		{
			WriteLog("と")
			Return "【と】⇒　S"
		}
	; ナ行
		Else If  (kana = "na")
		{
			WriteLog("な")
			Return "【な】⇒　`;"
		}
		Else If  (kana = "ni")
		{
			WriteLog("に")
			Return "【に】⇒　W"
		}
		Else If  (kana = "nu")
		{
			WriteLog("ぬ")
			Return "【ぬ】⇒　B + L"
		}
		Else If  (kana = "ne")
		{
			WriteLog("ね")
			Return "【ね】⇒　D + M"
		}
		Else If  (kana = "no")
		{
			WriteLog("の")
			Return "【の】⇒　A"
		}
	; ハ行
		Else If  (kana = "ha")
		{
			WriteLog("は")
			Return "【は】⇒　E"
		}
		Else If  (kana = "hi")
		{
			WriteLog("ひ")
			Return "【ひ】⇒　P"
		}
		Else If  (kana = "hu" || kana = "fu")
		{
			WriteLog("ふ")
			Return "【ふ】⇒　E + K"
		}
		Else If  (kana = "he")
		{
			WriteLog("へ")
			Return "【へ】⇒　D + H"
		}
		Else If  (kana = "ho")
		{
			WriteLog("ほ")
			Return "【ほ】⇒　A + K"
		}
	; マ行
		Else If  (kana = "ma")
		{
			WriteLog("ま")
			Return "【ま】⇒　X"
		}
		Else If  (kana = "mi")
		{
			WriteLog("み")
			Return "【み】⇒　D + O"
		}
		Else If  (kana = "mu")
		{
			WriteLog("む")
			Return "【む】⇒　V + K"
		}
		Else If  (kana = "me")
		{
			WriteLog("め")
			Return "【め】⇒　W + L"
		}
		Else If  (kana = "mo")
		{
			WriteLog("も")
			Return "【も】⇒　F + K"
		}
	; ヤ行
		Else If  (kana = "ya")
		{
			WriteLog("や")
			Return "【や】⇒　S + O"
		}
		Else If  (kana = "yu")
		{
			WriteLog("ゆ")
			Return "【ゆ】⇒　G + K"
		}
		Else If  (kana = "yo")
		{
			WriteLog("よ")
			Return "【よ】⇒　D + I"
		}
	; ラ行
		Else If  (kana = "ra")
		{
			WriteLog("ら")
			Return "【ら】⇒　S + J"
		}
		Else If  (kana = "ri")
		{
			WriteLog("り")
			Return "【り】⇒　F + L"
		}
		Else If  (kana = "ru")
		{
			WriteLog("る")
			Return "【る】⇒　V"
		}
		Else If  (kana = "re")
		{
			WriteLog("れ")
			Return "【れ】⇒　D + K"
		}
		Else If  (kana = "ro")
		{
			WriteLog("ろ")
			Return "【ろ】⇒　V + L"
		}
	; ワ行
		Else If  (kana = "wa")
		{
			WriteLog("わ")
			Return "【わ】⇒　S + N"
		}
		Else If  (kana = "wo")
		{
			WriteLog("を")
			Return "【を】⇒　A + L"
		}
		Else If  (kana = "n" || kana = "nn")
		{
			WriteLog("ん")
			Return "【ん】⇒　F"
		}
	; ガ行
		Else If  (kana = "ga")
		{
			WriteLog("が")
			Return "【が】⇒　O"
		}
		Else If  (kana = "gi")
		{
			WriteLog("ぎ")
			Return "【ぎ】⇒　C + L"
		}
		Else If  (kana = "gu")
		{
			WriteLog("ぐ")
			Return "【ぐ】⇒　Y"
		}
		Else If  (kana = "ge")
		{
			WriteLog("げ")
			Return "【げ】⇒　@"
		}
		Else If  (kana = "go")
		{
			WriteLog("ご")
			Return "【ご】⇒　W + K"
		}
	; ザ行
		Else If  (kana = "za")
		{
			WriteLog("ざ")
			Return "【ざ】⇒　X + L"
		}
		Else If  (kana = "zi" || kana = "ji")
		{
			WriteLog("じ")
			Return "【じ】⇒　S + K"
		}
		Else If  (kana = "zu")
		{
			WriteLog("ず")
			Return "【ず】⇒　G + L"
		}
		Else If  (kana = "ze")
		{
			WriteLog("ぜ")
			Return "【ぜ】⇒　Z + L"
		}
		Else If  (kana = "zo")
		{
			WriteLog("ぞ")
			Return "【ぞ】⇒　X + K"
		}
	; ダ行
		Else If  (kana = "da")
		{
			WriteLog("だ")
			Return "【だ】⇒　S + M"
		}
		Else If  (kana = "di")
		{
			WriteLog("ぢ")
			Return "【ぢ】⇒　Q + L"
		}
		Else If  (kana = "du")
		{
			WriteLog("づ")
			Return "【づ】⇒　Z + K"
		}
		Else If  (kana = "de")
		{
			WriteLog("で")
			Return "【で】⇒　`, (カンマ)"
		}
		Else If  (kana = "do")
		{
			WriteLog("ど")
			Return "【ど】⇒　S + I"
		}
	; バ行
		Else If  (kana = "ba")
		{
			WriteLog("ば")
			Return "【ば】⇒　U"
		}
		Else If  (kana = "bi")
		{
			WriteLog("び")
			Return "【び】⇒　S + H"
		}
		Else If  (kana = "bu")
		{
			WriteLog("ぶ")
			Return "【ぶ】⇒　/"
		}
		Else If  (kana = "be")
		{
			WriteLog("べ")
			Return "【べ】⇒　D + `, (カンマ)"
		}
		Else If  (kana = "bo")
		{
			WriteLog("ぼ")
			Return "【ぼ】⇒　C + K"
		}
	; パ行
		Else If  (kana = "pa")
		{
			WriteLog("ぱ")
			Return "【ぱ】⇒　D + U"
		}
		Else If  (kana = "pi")
		{
			WriteLog("ぴ")
			Return "【ぴ】⇒　S + `, (カンマ)"
		}
		Else If  (kana = "pu")
		{
			WriteLog("ぷ")
			Return "【ぷ】⇒　D + . (ピリオド)"
		}
		Else If  (kana = "pe")
		{
			WriteLog("ぺ")
			Return "【ぺ】⇒　S + U"
		}
		Else If  (kana = "po")
		{
			WriteLog("ぽ")
			Return "【ぽ】⇒　S + . (ピリオド)"
		}
	; ファ行
		Else If (kana = "fa")
		{
			WriteLog("ふぁ")
			Return "【ふぁ】⇒　Q + K"
		}
		Else If (kana = "fi")
		{
			WriteLog("ふぃ")
			Return "【ふぃ】⇒　R + K"
		}
		Else If (kana = "fe")
		{
			WriteLog("ふぇ")
			Return "【ふぇ】⇒　T + K"
		}
		Else If (kana = "fo")
		{
			WriteLog("ふぉ")
			Return "【ふぉ】⇒　B + K"
		}
	; ウ系
		Else If (kana = "wi")
		{
			WriteLog("うぃ")
			Return "【うぃ】⇒　D + Y"
		}
		Else If (kana = "we")
		{
			WriteLog("うぇ")
			Return "【うぇ】⇒　D + P"
		}
		Else If (kana = "uxo" || kana = "wlo")
		{
			WriteLog("うぉ")
			Return "【うぉ】⇒　D + @"
		}
		Else If (kana = "vu")
		{
			WriteLog("う゛")
			Return "【う゛】⇒　D + /"
		}
	; テ系
		Else If (kana = "texi" || kana = "thi")
		{
			WriteLog("てぃ")
			Return "【てぃ】⇒　R + L"
		}
		Else If (kana = "dexi" || kana = "dhi")
		{
			WriteLog("でぃ")
			Return "【でぃ】⇒　T + L"
		}
	; キャ行
		Else If (kana = "kya")
		{
			WriteLog("きゃ")
			Return "【きゃ】⇒　V + I"
		}
		Else If (kana = "kyu")
		{
			WriteLog("きゅ")
			Return "【きゅ】⇒　R + I"
		}
		Else If (kana = "kyo")
		{
			WriteLog("きょ")
			Return "【きょ】⇒　F + I"
		}
	; チャ行
		Else If (kana = "cya" || kana = "tya" || kana = "cha")
		{
			WriteLog("ちゃ")
			Return "【ちゃ】⇒　B + I"
		}
		Else If (kana = "cyu" || kana = "tyu" || kana = "chu")
		{
			WriteLog("ちゅ")
			Return "【ちゅ】⇒　T + I"
		}
		Else If (kana = "che" || kana = "tye")
		{
			WriteLog("ちぇ")
			Return "【ちぇ】⇒　S + /"
		}
		Else If (kana = "cyo" || kana = "tyo" || kana = "cho")
		{
			WriteLog("ちょ")
			Return "【ちょ】⇒　G + I"
		}
	; ヒャ行
		Else If (kana = "hya")
		{
			WriteLog("ひゃ")
			Return "【ひゃ】⇒　Z + I"
		}
		Else If (kana = "hyu")
		{
			WriteLog("ひゅ")
			Return "【ひゅ】⇒　Q + I"
		}
		Else If (kana = "hyo")
		{
			WriteLog("ひょ")
			Return "【ひょ】⇒　A + I"
		}
	; シャ行
		Else If (kana = "sha" || kana = "sya")
		{
			WriteLog("しゃ")
			Return "【しゃ】⇒　C + I"
		}
		Else If (kana = "shu")
		{
			WriteLog("しゅ")
			Return "【しゅ】⇒　W + I"
		}
		Else If (kana = "she" || kana = "sye")
		{
			WriteLog("しぇ")
			Return "【しぇ】⇒　S + Y"
		}
		Else If (kana = "syo" || kana = "sho")
		{
			WriteLog("しょ")
			Return "【しょ】⇒　E + I"
		}
	; ギャ行
		Else If (kana = "gya")
		{
			WriteLog("ぎゃ")
			Return "【ぎゃ】⇒　V + O"
		}
		Else If (kana = "gyu")
		{
			WriteLog("ぎゅ")
			Return "【ぎゅ】⇒　R + O"
		}
		Else If (kana = "gyo")
		{
			WriteLog("ぎょ")
			Return "【ぎょ】⇒　F + O"
		}
	; ニャ行
		Else If (kana = "nya")
		{
			WriteLog("にゃ")
			Return "【にゃ】⇒　B + O"
		}
		Else If (kana = "nyu")
		{
			WriteLog("にゅ")
			Return "【にゅ】⇒　T + O"
		}
		Else If (kana = "nyo")
		{
			WriteLog("にょ")
			Return "【にょ】⇒　G + O"
		}
	; リャ行
		Else If (kana = "rya")
		{
			WriteLog("りゃ")
			Return "【りゃ】⇒　Z + O"
		}
		Else If (kana = "ryu")
		{
			WriteLog("りゅ")
			Return "【りゅ】⇒　Q + O"
		}
		Else If (kana = "ryo")
		{
			WriteLog("りょ")
			Return "【りょ】⇒　A + O"
		}
	; ジャ行
		Else If (kana = "ja" || kana = "zya")
		{
			WriteLog("じゃ")
			Return "【じゃ】⇒　C + O"
		}
		Else If (kana = "ju" || kana = "zyu")
		{
			WriteLog("じゅ")
			Return "【じゅ】⇒　W + O"
		}
		Else If (kana = "je" || kana = "zye")
		{
			WriteLog("じぇ")
			Return "【じぇ】⇒　S + P"
		}
		Else If (kana = "jo" || kana = "zyo")
		{
			WriteLog("じょ")
			Return "【じょ】⇒　E + O"
		}

	; 小文字系
		Else If (kana = "xa" || kana = "la")
		{
			WriteLog("ぁ")
			Return "【ぁ】⇒　1 + K"
		}
		Else If (kana = "xi" || kana = "li")
		{
			WriteLog("ぃ")
			Return "【ぃ】⇒　2 + K"
		}
		Else If (kana = "xu" || kana = "lu")
		{
			WriteLog("ぅ")
			Return "【ぅ】⇒　3 + K"
		}
		Else If (kana = "xe" || kana = "le")
		{
			WriteLog("ぇ")
			Return "【ぇ】⇒　4 + K"
		}
		Else If (kana = "xo" || kana = "lo")
		{
			WriteLog("ぉ")
			Return "【ぉ】⇒　5 + K"
		}
		Else If (kana = "xtu" || kana = "ltu" || kana = "ttu" || kana = "xtsu" || kana = "ltsu" || kana = "ttsu")
		{
			WriteLog("っ")
			Return "【っ】⇒　G"
		}
		Else If (kana = "xya" || kana = "lya")
		{
			WriteLog("ゃ")
			Return "【ゃ】⇒　1 + L"
		}
		Else If (kana = "xyu" || kana = "lyu")
		{
			WriteLog("ゅ")
			Return "【ゅ】⇒　1 + I"
		}
		Else If (kana = "xyo" || kana = "lyo")
		{
			WriteLog("ょ")
			Return "【ょ】⇒　1 + O"
		}
		Else If (kana = "xwa" || kana = "lwa")
		{
			WriteLog("ゎ")
			Return "【ゎ】⇒　5 + L"
		}
	; ミャ行
		Else If (kana = "mya")
		{
			WriteLog("みゃ")
			Return "【みゃ】⇒　2 + L"
		}
		Else If (kana = "myu")
		{
			WriteLog("みゅ")
			Return "【みゅ】⇒　3 + L"
		}
		Else If (kana = "myo")
		{
			WriteLog("みょ")
			Return "【みょ】⇒　4 + L"
		}
	; ビャ行
		Else If (kana = "bya")
		{
			WriteLog("びゃ")
			Return "【びゃ】⇒　2 + I"
		}
		Else If (kana = "byu")
		{
			WriteLog("びゅ")
			Return "【びゅ】⇒　3 + I"
		}
		Else If (kana = "byo")
		{
			WriteLog("びょ")
			Return "【びょ】⇒　4 + I"
		}
	; ピャ行
		Else If (kana = "pya")
		{
			WriteLog("ぴゃ")
			Return "【ぴゃ】⇒　2 + O"
		}
		Else If (kana = "pyu")
		{
			WriteLog("ぴゅ")
			Return "【ぴゅ】⇒　3 + O"
		}
		Else If (kana = "pyo")
		{
			WriteLog("ぴょ")
			Return "【ぴょ】⇒　4 + O"
		}
	; 記号系
		Else If (kana = "-")
		{
			WriteLog("ー")
			Return "【ー】⇒　q"
		}
		Else If (kana = ",")
		{
			WriteLog("，、")
			Return "【，】⇒　D + 7`n【、】⇒　R"
		}
		Else If (kana = ".")
		{
			WriteLog("．。")
			Return "【．】⇒　S + 7`n【。】⇒　."
		}
		Else If (kana = ";")
		{
			WriteLog("；")
			Return "【；】⇒　D + 0"
		}
		Else If (kana = "@")
		{
			WriteLog("＠")
			Return "【＠】⇒　D + -"
		}
		Else If (kana = ";")
		{
			WriteLog("：")
			Return "【：】⇒　S + 0"
		}
		Else If (kana = "*")
		{
			WriteLog("＊")
			Return "【＊】⇒　S + -"
		}
		Else If (kana = "kakko")
		{
			WriteLog("括弧")
			Return "【「】⇒　D + 8`n【」】⇒　D + 9`n【（】⇒　S + 8`n【）】⇒　S + 9`n【「」】⇒　F + G`n【（）】⇒　H + J"
		}
		Else If (kana = "kigou")
		{
			WriteLog("記号")
			Return "【・】⇒　R + F or R + G`n【？】⇒　N + J`n【！】⇒　F + V or F + B`n【／】⇒　H + U"
		}

	; 新下駄配列にない系
		Else If (kana = "hye")
		{
			Return "新下駄配列にはなし。ひ＋ぇ"
		}
		Else If (kana = "tha")
		{
			Return "新下駄にはなし。て＋ゃ"
		}
		Else If (kana = "thu")
		{
			Return "新下駄にはなし。て＋ゅ"
		}
		Else If (kana = "tho")
		{
			Return "新下駄にはなし。て＋ょ"
		}

	; 未入力
		Else If (kana = "")
		{
			Return "ローマ字を入力してください。"
		}
	; その他
		Else
		{
			Return "新下駄にはないか、ローマ字入力が想定外。"
		}
}

WriteLog(log)
{
	If (flg_log)
	{
		logText = %A_YYYY%/%A_MM%/%A_DD%,%A_Hour%:%A_Min%:%A_Sec%,%log%
    	FileAppend,  %logText%`n, %A_ScriptDir%\HelperLog.csv
	}
    
}

