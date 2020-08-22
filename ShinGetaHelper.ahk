#Include  %A_ScriptDir%\IME.ahk

;=============================
; 新下駄配列ヘルパー
;
;=============================

+^h::
	ime_mode := IME_GET()
	IME_SET(0)
	curTypingMode := MenuTypingValue

	MenuTypingValue = 0
	InputBox, UserInput, 新下駄配列ヘルパー, 入力方法を調べたい文字のローマ字を入力, , 300, 130
	MenuTypingValue := curTypingMode
	IME_SET(ime_mode)
	If (ErrorLevel = 0)
	{
		StringReplace, UserInput, UserInput, %A_Space% , , All
		StringReplace, UserInput, UserInput, 　 , , All

		If (UserInput = "a")
		{
			MsgBox, D + J
		}
		Else If  (UserInput = "i")
		{
			MsgBox, K
		}
		Else If  (UserInput = "u")
		{
			MsgBox, J
		}
		Else If  (UserInput = "e")
		{
			MsgBox, D + `;
		}
		Else If  (UserInput = "o")
		{
			MsgBox, D + L
		}
		Else If  (UserInput = "ka")
		{
			MsgBox, D
		}
		Else If  (UserInput = "ki")
		{
			MsgBox, C
		}
		Else If  (UserInput = "ku")
		{
			MsgBox, H
		}
		Else If  (UserInput = "ke")
		{
			MsgBox, E + L
		}
		Else If  (UserInput = "ko")
		{
			MsgBox, I
		}
		Else If  (UserInput = "sa")
		{
			MsgBox, S + L
		}
		Else If  (UserInput = "si" || UserInput = "shi")
		{
			MsgBox, L
		}
		Else If  (UserInput = "su")
		{
			MsgBox, Z
		}
		Else If  (UserInput = "se")
		{
			MsgBox, D + N
		}
		Else If  (UserInput = "so")
		{
			MsgBox, S + `;
		}
		Else If  (UserInput = "ta")
		{
			MsgBox, M
		}
		Else If  (UserInput = "ti" || UserInput = "chi")
		{
			MsgBox, T
		}
		Else If  (UserInput = "tu" || UserInput = "tsu")
		{
			MsgBox, B
		}
		Else If  (UserInput = "te")
		{
			MsgBox, N
		}
		Else If  (UserInput = "to")
		{
			MsgBox, S
		}
		Else If  (UserInput = "na")
		{
			MsgBox, `;
		}
		Else If  (UserInput = "ni")
		{
			MsgBox, W
		}
		Else If  (UserInput = "nu")
		{
			MsgBox, B + L
		}
		Else If  (UserInput = "ne")
		{
			MsgBox, D + M
		}
		Else If  (UserInput = "no")
		{
			MsgBox, A
		}
		Else If  (UserInput = "ha")
		{
			MsgBox, E
		}
		Else If  (UserInput = "hi")
		{
			MsgBox, P
		}
		Else If  (UserInput = "hu" || UserInput = "fu")
		{
			MsgBox, E + K
		}
		Else If  (UserInput = "he")
		{
			MsgBox, D + H
		}
		Else If  (UserInput = "ho")
		{
			MsgBox, A + K
		}
		Else If  (UserInput = "ma")
		{
			MsgBox, X
		}
		Else If  (UserInput = "mi")
		{
			MsgBox, D + O
		}
		Else If  (UserInput = "mu")
		{
			MsgBox, V + K
		}
		Else If  (UserInput = "me")
		{
			MsgBox, W + L
		}
		Else If  (UserInput = "mo")
		{
			MsgBox, F + K
		}
		Else If  (UserInput = "ya")
		{
			MsgBox, S + O
		}
		Else If  (UserInput = "yu")
		{
			MsgBox, G + K
		}
		Else If  (UserInput = "yo")
		{
			MsgBox, D + I
		}
		Else If  (UserInput = "ra")
		{
			MsgBox, S + J
		}
		Else If  (UserInput = "ri")
		{
			MsgBox, F + L
		}
		Else If  (UserInput = "ru")
		{
			MsgBox, V
		}
		Else If  (UserInput = "re")
		{
			MsgBox, D + K
		}
		Else If  (UserInput = "ro")
		{
			MsgBox, V + L
		}
		Else If  (UserInput = "wa")
		{
			MsgBox, S + N
		}
		Else If  (UserInput = "wo")
		{
			MsgBox, A + L
		}
		Else If  (UserInput = "n" || UserInput = "nn")
		{
			MsgBox, F
		}
		Else If  (UserInput = "ga")
		{
			MsgBox, O
		}
		Else If  (UserInput = "gi")
		{
			MsgBox, C + L
		}
		Else If  (UserInput = "gu")
		{
			MsgBox, Y
		}
		Else If  (UserInput = "ge")
		{
			MsgBox, @
		}
		Else If  (UserInput = "go")
		{
			MsgBox, W + K
		}
		Else If  (UserInput = "za")
		{
			MsgBox, X + L
		}
		Else If  (UserInput = "zi" || UserInput = "ji")
		{
			MsgBox, S + K
		}
		Else If  (UserInput = "zu")
		{
			MsgBox, G + L
		}
		Else If  (UserInput = "ze")
		{
			MsgBox, Z + L
		}
		Else If  (UserInput = "zo")
		{
			MsgBox, X + K
		}
		Else If  (UserInput = "da")
		{
			MsgBox, S + M
		}
		Else If  (UserInput = "di")
		{
			MsgBox, Q + L
		}
		Else If  (UserInput = "du")
		{
			MsgBox, Z + K
		}
		Else If  (UserInput = "de")
		{
			MsgBox, `,
		}
		Else If  (UserInput = "do")
		{
			MsgBox, S + I
		}
		Else If  (UserInput = "ba")
		{
			MsgBox, U
		}
		Else If  (UserInput = "bi")
		{
			MsgBox, S + H
		}
		Else If  (UserInput = "bu")
		{
			MsgBox, /
		}
		Else If  (UserInput = "be")
		{
			MsgBox, D + `,
		}
		Else If  (UserInput = "bo")
		{
			MsgBox, C + K
		}
		Else If  (UserInput = "pa")
		{
			MsgBox, D + U
		}
		Else If  (UserInput = "pi")
		{
			MsgBox, S + `,
		}
		Else If  (UserInput = "pu")
		{
			MsgBox, D + .
		}
		Else If  (UserInput = "pe")
		{
			MsgBox, S + U
		}
		Else If  (UserInput = "po")
		{
			MsgBox, S + .
		}
		Else If (UserInput = "fa")
		{
			MsgBox, Q + K
		}
		Else If (UserInput = "fi")
		{
			MsgBox, R + K
		}
		Else If (UserInput = "fe")
		{
			MsgBox, T + K
		}
		Else If (UserInput = "fo")
		{
			MsgBox, B + K
		}
		Else If (UserInput = "wi")
		{
			MsgBox, D + Y
		}
		Else If (UserInput = "we")
		{
			MsgBox, D + P
		}
		Else If (UserInput = "vu")
		{
			MsgBox, D + /
		}
		Else If (UserInput = "texi" || UserInput = "thi")
		{
			MsgBox, R + L
		}
		Else If (UserInput = "dexi" || UserInput = "dhi")
		{
			MsgBox, T + L
		}
		Else If (UserInput = "che" || UserInput = "tye")
		{
			MsgBox, S + /
		}
		Else If (UserInput = "kyu")
		{
			MsgBox, R + I
		}
		Else If (UserInput = "kyo")
		{
			MsgBox, F + I
		}
		Else If (UserInput = "kya")
		{
			MsgBox, V + I
		}
		Else If (UserInput = "cyu" || UserInput = "tyu" || UserInput = "chu")
		{
			MsgBox, T + I
		}
		Else If (UserInput = "cyo" || UserInput = "tyo" || UserInput = "cho")
		{
			MsgBox, G + I
		}
		Else If (UserInput = "cya" || UserInput = "tya" || UserInput = "cha")
		{
			MsgBox, B + I
		}
		Else If (UserInput = "hyo")
		{
			MsgBox, A + I
		}
		Else If (UserInput = "hya")
		{
			MsgBox, Z + I
		}
		Else If (UserInput = "qe")
		{
			MsgBox, X + I
		}
		Else If (UserInput = "sha" || UserInput = "sya")
		{
			MsgBox, C + I
		}
		Else If (UserInput = "hyu")
		{
			MsgBox, Q + I
		}
		Else If (UserInput = "shu")
		{
			MsgBox, W + I
		}
		Else If (UserInput = "syo" || UserInput = "sho")
		{
			MsgBox, E + I
		}
		; Else If (UserInput = "hya")
		; {
		; 	MsgBox, E + Y
		; }
		; Else If (UserInput = "hyo")
		; {
		; 	MsgBox, E + H
		; }
		; Else If (UserInput = "hyu")
		; {
		; 	MsgBox, E + N
		; }
		; Else If (UserInput = "kya")
		; {
		; 	MsgBox, E + U
		; }
		; Else If (UserInput = "kyo")
		; {
		; 	MsgBox, E + J
		; }
		; Else If (UserInput = "kyu")
		; {
		; 	MsgBox, E + M
		; }
		; Else If (UserInput = "hye")
		; {
		; 	MsgBox, 新下駄にはなし。ひ＋ぇ
		; }
		; Else If (UserInput = "tha")
		; {
		; 	MsgBox, 新下駄にはなし。て＋ゃ
		; }
		; Else If (UserInput = "thu")
		; {
		; 	MsgBox, 新下駄にはなし。て＋ゅ
		; }
		; Else If (UserInput = "tho")
		; {
		; 	MsgBox, 新下駄にはなし。て＋ょ
		; }
		Else If (UserInput = "gyu")
		{
			MsgBox, R + O
		}
		Else If (UserInput = "gyo")
		{
			MsgBox, F + O
		}
		Else If (UserInput = "gya")
		{
			MsgBox, V + O
		}
		Else If (UserInput = "nyu")
		{
			MsgBox, T + O
		}
		Else If (UserInput = "nyo")
		{
			MsgBox, G + O
		}
		Else If (UserInput = "nya")
		{
			MsgBox, B + O
		}
		Else If (UserInput = "ryo")
		{
			MsgBox, A + O
		}
		Else If (UserInput = "rya")
		{
			MsgBox, Z + O
		}
		Else If (UserInput = "gwe")
		{
			MsgBox, X + O
		}
		Else If (UserInput = "ja")
		{
			MsgBox, C + O
		}
		Else If (UserInput = "ryu")
		{
			MsgBox, Q + O
		}
		Else If (UserInput = "ju")
		{
			MsgBox, W + O
		}
		Else If (UserInput = "jo")
		{
			MsgBox, E + O
		}
		; Else If (UserInput = "bya")
		; {
		; 	MsgBox, W + Y
		; }
		; Else If (UserInput = "byo")
		; {
		; 	MsgBox, W + H
		; }
		; Else If (UserInput = "byu")
		; {
		; 	MsgBox, W + N
		; }
		; Else If (UserInput = "gya")
		; {
		; 	MsgBox, W + U
		; }
		; Else If (UserInput = "gyo")
		; {
		; 	MsgBox, W + J
		; }
		; Else If (UserInput = "gyu")
		; {
		; 	MsgBox, W + M
		; }
		; Else If (UserInput = "bye")
		; {
		; 	MsgBox, W + `;
		; }
		; Else If (UserInput = "dha")
		; {
		; 	MsgBox, W + `,
		; }
		; Else If (UserInput = "dhu")
		; {
		; 	MsgBox, W + .
		; }
		; Else If (UserInput = "dho")
		; {
		; 	MsgBox, W + /
		; }
		; Else If (UserInput = "rya")
		; {
		; 	MsgBox, R + `;
		; }
		; Else If (UserInput = "ryo")
		; {
		; 	MsgBox, F + `;
		; }
		; Else If (UserInput = "ryu")
		; {
		; 	MsgBox, V + `;
		; }
		; Else If (UserInput = "mya")
		; {
		; 	MsgBox, T + `;
		; }
		; Else If (UserInput = "myo")
		; {
		; 	MsgBox, G + `;
		; }
		; Else If (UserInput = "myu")
		; {
		; 	MsgBox, B + `;
		; }
		; Else If (UserInput = "tsa")
		; {
		; 	MsgBox, A + `;
		; }
		; Else If (UserInput = "tsi")
		; {
		; 	MsgBox, Z + `;
		; }
		; Else If (UserInput = "tse")
		; {
		; 	MsgBox, X + `;
		; }
		; Else If (UserInput = "tso")
		; {
		; 	MsgBox, C + `;
		; }
		; Else If (UserInput = "rye")
		; {
		; 	MsgBox, Q + `;
		; }
		; Else If (UserInput = "pya")
		; {
		; 	MsgBox, A + Y
		; }
		; Else If (UserInput = "pyo")
		; {
		; 	MsgBox, A + H
		; }
		; Else If (UserInput = "pyu")
		; {
		; 	MsgBox, A + N
		; }
		; Else If (UserInput = "nya")
		; {
		; 	MsgBox, A + U
		; }
		; Else If (UserInput = "nyo")
		; {
		; 	MsgBox, A + J
		; }
		; Else If (UserInput = "nyu")
		; {
		; 	MsgBox, A + M
		; }
		; Else If (UserInput = "ye")
		; {
		; 	MsgBox, A + `,
		; }
		; Else If (UserInput = "nye")
		; {
		; 	MsgBox, A + .
		; }
		; Else If (UserInput = "mye")
		; {
		; 	MsgBox, A + /
		; }
		; Else If (UserInput = "pye")
		; {
		; 	MsgBox, A + P
		; }
		; Else If (UserInput = "sye")
		; {
		; 	MsgBox, R + J
		; }
		; Else If (UserInput = "je")
		; {
		; 	MsgBox, T + J
		; }
		; Else If (UserInput = "thi")
		; {
		; 	MsgBox, G + J
		; }
		; Else If (UserInput = "fa")
		; {
		; 	MsgBox, V + J
		; }
		; Else If (UserInput = "fi")
		; {
		; 	MsgBox, B + J
		; }
		; Else If (UserInput = "wi")
		; {
		; 	MsgBox, Z + J
		; }
		; Else If (UserInput = "we")
		; {
		; 	MsgBox, X + J
		; }
		; Else If (UserInput = "who")
		; {
		; 	MsgBox, C + J
		; }
		; Else If (UserInput = "dile")
		; {
		; 	MsgBox, F + Y
		; }
		; Else If (UserInput = "che")
		; {
		; 	MsgBox, F + U
		; }
		; Else If (UserInput = "dhi")
		; {
		; 	MsgBox, F + H
		; }
		; Else If (UserInput = "fe")
		; {
		; 	MsgBox, F + N
		; }
		; Else If (UserInput = "fo")
		; {
		; 	MsgBox, F + M
		; }
		; Else If (UserInput = "twu")
		; {
		; 	MsgBox, F + `,
		; }
		; Else If (UserInput = "dwu")
		; {
		; 	MsgBox, F + .
		; }
		; Else If (UserInput = "fyu")
		; {
		; 	MsgBox, F + /
		; }
		; Else If (UserInput = "va")
		; {
		; 	MsgBox, A + @
		; }
		; Else If (UserInput = "vi")
		; {
		; 	MsgBox, S + @
		; }
		; Else If (UserInput = "uxo")
		; {
		; 	MsgBox, D + @
		; }
		; Else If (UserInput = "ve")
		; {
		; 	MsgBox, F + @
		; }
		; Else If (UserInput = "vo")
		; {
		; 	MsgBox, G + @
		; }
		Else If (UserInput = "she")
		{
			MsgBox, S + Y
		}
		Else If (UserInput = "je")
		{
			MsgBox, S + P
		}
		Else If (UserInput = "xa" || UserInput = "la")
		{
			MsgBox, 1 + K
		}
		Else If (UserInput = "xi" || UserInput = "li")
		{
			MsgBox, 2 + K
		}
		Else If (UserInput = "xu" || UserInput = "lu")
		{
			MsgBox, 3 + K
		}
		Else If (UserInput = "xe" || UserInput = "le")
		{
			MsgBox, 4 + K
		}
		Else If (UserInput = "xo" || UserInput = "lo")
		{
			MsgBox, 5 + K
		}
		Else If (UserInput = "xya" || UserInput = "lya")
		{
			MsgBox, 1 + L
		}
		Else If (UserInput = "mya")
		{
			MsgBox, 2 + L
		}
		Else If (UserInput = "myu")
		{
			MsgBox, 3 + L
		}
		Else If (UserInput = "myo")
		{
			MsgBox, 4 + L
		}
		Else If (UserInput = "xwa" || UserInput = "lwa")
		{
			MsgBox, 5 + L
		}
		Else If (UserInput = "xyu" || UserInput = "lyu")
		{
			MsgBox, 1 + I
		}
		Else If (UserInput = "bya")
		{
			MsgBox, 2 + I
		}
		Else If (UserInput = "byu")
		{
			MsgBox, 3 + I
		}
		Else If (UserInput = "byo")
		{
			MsgBox, 4 + I
		}
		Else If (UserInput = "xyo" || UserInput = "lyo")
		{
			MsgBox, 1 + O
		}
		Else If (UserInput = "pya")
		{
			MsgBox, 2 + O
		}
		Else If (UserInput = "pyu")
		{
			MsgBox, 3 + O
		}
		Else If (UserInput = "pyo")
		{
			MsgBox, 4 + O
		}
		Else If (UserInput = "")
		{
			; 何もしない
		}
		Else
		{
			MsgBox, 新下駄にはないか、ローマ字入力が想定外。
		}	
	}
Return