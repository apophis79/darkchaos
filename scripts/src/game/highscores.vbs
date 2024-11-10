

'*******************************************
' ZHIG : Highscores
'*******************************************

Const bResetHighscores = False

Dim bHSModeActive:bHSModeActive = False
Dim HighScore(3)
Dim HighScoreName(3)
Dim hschecker:hschecker = 0

Sub Loadhs

	If bResetHighscores Then
		HighScore(0) = 50000000
		HighScore(1) = 30000000
		HighScore(2) = 10000000

		HighScoreName(0) = "VPX"
		HighScoreName(1) = "VPX"
		HighScoreName(2) = "VPX"
		Savehs

	Else
		Dim x
		x = LoadValue(TableName, "HighScore1")
		If(x <> "") Then HighScore(0) = CDbl(x) Else HighScore(0) = 50000000 End If

		x = LoadValue(TableName, "HighScore1Name")
		If(x <> "") Then HighScoreName(0) = x Else HighScoreName(0) = "VPX" End If

		x = LoadValue(TableName, "HighScore2")
		If(x <> "") then HighScore(1) = CDbl(x) Else HighScore(1) = 30000000 End If

		x = LoadValue(TableName, "HighScore2Name")
		If(x <> "") then HighScoreName(1) = x Else HighScoreName(1) = "VPX" End If

		x = LoadValue(TableName, "HighScore3")
		If(x <> "") then HighScore(2) = CDbl(x) Else HighScore(2) = 10000000 End If

		x = LoadValue(TableName, "HighScore3Name")
		If(x <> "") then HighScoreName(2) = x Else HighScoreName(2) = "VPX" End If

		x = LoadValue(TableName, "HighScore4")
		If(x <> "") then HighScore(3) = CDbl(x) Else HighScore(3) = 10000000 End If

		x = LoadValue(TableName, "Credits")
		If(x <> "") then Credits = CInt(x) Else Credits = 0 End If

		x = LoadValue(TableName, "TotalGamesPlayed")
		If(x <> "") then TotalGamesPlayed = CInt(x) Else TotalGamesPlayed = 0 End If

		If hschecker = 0 Then
			CheckHSOrder
		End If
	End If

End Sub


Sub CheckHSOrder
	Dim hs3,hs2,hs1,hs0,hsn3,hsn2,hsn1,hsn0
	hschecker = 1
	hs3 = HighScore(3)
	hs2 = HighScore(2)
	hs1 = HighScore(1)
	hs0 = HighScore(0)
	hsn3 = HighScoreName(3)
	hsn2 = HighScoreName(2)
	hsn1 = HighScoreName(1)
	hsn0 = HighScoreName(0)
	If hs3 > hs0 Then
		HighScore(0) = hs3
		HighScoreName(0) = hsn3	
		HighScore(1) = hs0
		HighScoreName(1) = hsn0	
		HighScore(2) = hs1
		HighScoreName(2) = hsn1	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2

	ElseIf hs3 > hs1 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs3
		HighScoreName(1) = hsn3	
		HighScore(2) = hs1
		HighScoreName(2) = hsn1	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2
	ElseIf hs3 > hs2 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs1
		HighScoreName(1) = hsn1	
		HighScore(2) = hs3
		HighScoreName(2) = hsn3	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2
	ElseIf hs3 < hs2 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs1
		HighScoreName(1) = hsn1	
		HighScore(2) = hs2
		HighScoreName(2) = hsn2	
		HighScore(3) = hs3
		HighScoreName(3) = hsn3
	End If

	Savehs
End Sub



Sub Savehs
	SaveValue TableName, "HighScore1", HighScore(0)
	SaveValue TableName, "HighScore1Name", HighScoreName(0)
	SaveValue TableName, "HighScore2", HighScore(1)
	SaveValue TableName, "HighScore2Name", HighScoreName(1)
	SaveValue TableName, "HighScore3", HighScore(2)
	SaveValue TableName, "HighScore3Name", HighScoreName(2)
	SaveValue TableName, "HighScore4", HighScore(3)
	SaveValue TableName, "HighScore4Name", HighScoreName(3)
End Sub



Sub SaveCredits
	SaveValue TableName, "Credits", Credits
End Sub



Sub Savegp
	SaveValue TableName, "TotalGamesPlayed", TotalGamesPlayed
	vpmtimer.addtimer 1000, "Loadhs'"
End Sub






' Initials

Dim hsEnteredName
Dim hsEnteredDigits(3)
Dim hsCurrentDigit
Dim hsValidLetters
Dim hsCurrentLetter
Dim hsLetterFlash

' Check the scores to see if you got one

Sub CheckHighscore()
	Dim tmp
	tmp = Player(CurrentPlayer).Score

	If tmp > HighScore(3) Then
		AwardSpecial
		HighScore(3) = tmp
		'enter player's name
		HighScoreEntryInit
	Else
		EndOfBallComplete
	End If
End Sub





Sub HighScoreEntryInit
	bHSModeActive = True
	'DMDBigText "HIGH SCORE!",77,1
	hsEnteredDigits(1) = "A"
	hsEnteredDigits(2) = " "
	hsEnteredDigits(3) = " "

	hsCurrentDigit = 1

	HighScoreDisplayName
	HighScorelabels	
End Sub

' flipper moving around the letters

Sub EnterHighScoreKey(keycode)
	If keycode = LeftFlipperKey Then
		If hsletter = 0 Then
			hsletter = 26
		Else
			hsLetter = hsLetter - 1
		End If
		HighScoreDisplayName
	End If

	If keycode = RightFlipperKey Then
		If hsletter = 26 Then
			hsletter = 0
		Else
			hsLetter = hsLetter + 1
		End If
		HighScoreDisplayName
	End If

	If keycode = StartGameKey or keycode = PlungerKey Then
		If hsCurrentDigit = 3 Then
			If hsletter = 0 Then
				hsCurrentDigit = hsCurrentDigit -1
			Else
				AssignLetter
				vpmtimer.addtimer 700, "HighScoreCommitName'"
			End If
		End If
		If hsCurrentDigit < 3 Then
			If hsletter = 0 Then
				If hsCurrentDigit = 1 Then
				Else
					hsCurrentDigit = hsCurrentDigit -1
				End If
			Else
				AssignLetter
				hsCurrentDigit = hsCurrentDigit + 1
				HighScoreDisplayName

			End If
		End If
	End if
End Sub

Dim hsletter
hsletter = 1

dim hsdigit:hsdigit = 1

Sub AssignLetter
	if hscurrentdigit = 1 Then
		hsdigit = 1
	End If
	if hscurrentdigit = 2 Then
		hsdigit = 2
	End If
	if hscurrentdigit = 3 Then
		hsdigit = 3
	End If
	If hsletter = 1 Then 
		hsEnteredDigits(hsdigit) = "A"
	End If
	If hsletter = 2 Then 
		hsEnteredDigits(hsdigit) = "B"
	End If
	If hsletter = 3 Then 
		hsEnteredDigits(hsdigit) = "C"
	End If
	If hsletter = 4 Then 
		hsEnteredDigits(hsdigit) = "D"
	End If
	If hsletter = 5 Then 
		hsEnteredDigits(hsdigit) = "E"
	End If
	If hsletter = 6 Then 
		hsEnteredDigits(hsdigit) = "F"
	End If
	If hsletter = 7 Then 
		hsEnteredDigits(hsdigit) = "G"
	End If
	If hsletter = 8 Then 
		hsEnteredDigits(hsdigit) = "H"
	End If
	If hsletter = 9 Then 
		hsEnteredDigits(hsdigit) = "I"
	End If
	If hsletter = 10 Then 
		hsEnteredDigits(hsdigit) = "J"
	End If
	If hsletter = 11 Then 
		hsEnteredDigits(hsdigit) = "K"
	End If
	If hsletter = 12 Then 
		hsEnteredDigits(hsdigit) = "L"
	End If
	If hsletter = 13 Then 
		hsEnteredDigits(hsdigit) = "M"
	End If
	If hsletter = 14 Then 
		hsEnteredDigits(hsdigit) = "N"
	End If
	If hsletter = 15 Then 
		hsEnteredDigits(hsdigit) = "O"
	End If
	If hsletter = 16 Then 
		hsEnteredDigits(hsdigit) = "P"
	End If
	If hsletter = 17 Then 
		hsEnteredDigits(hsdigit) = "Q"
	End If
	If hsletter = 18 Then 
		hsEnteredDigits(hsdigit) = "R"
	End If
	If hsletter = 19 Then 
		hsEnteredDigits(hsdigit) = "S"
	End If
	If hsletter = 20 Then 
		hsEnteredDigits(hsdigit) = "T"
	End If
	If hsletter = 21 Then 
		hsEnteredDigits(hsdigit) = "U"
	End If
	If hsletter = 22 Then 
		hsEnteredDigits(hsdigit) = "V"
	End If
	If hsletter = 23 Then 
		hsEnteredDigits(hsdigit) = "W"
	End If
	If hsletter = 24 Then 
		hsEnteredDigits(hsdigit) = "X"
	End If
	If hsletter = 25 Then 
		hsEnteredDigits(hsdigit) = "Y"
	End If
	If hsletter = 26 Then 
		hsEnteredDigits(hsdigit) = "Z"
	End If

End Sub

Sub HighScorelabels
'	PuPlayer.LabelSet pBackglass,"HighScore","YOU GOT A\rHIGH SCORE!",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL4",Score(CurrentPlayer),1,""
	hsletter = 1
End Sub

Sub HighScoreDisplayName

'	Select case hsLetter
'		Case 0
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","<",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","<",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","<",1,""
'		Case 1
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","A",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","A",1,""
'		Case 2
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","B",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","B",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","B",1,""
'		Case 3
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","C",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","C",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","C",1,""
'		Case 4
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","D",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","D",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","D",1,""
'		Case 5
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","E",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","E",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","E",1,""
'		Case 6
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","F",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","F",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","F",1,""
'		Case 7
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","G",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","G",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","G",1,""
'		Case 8
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","H",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","H",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","H",1,""
'		Case 9
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","I",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","I",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","I",1,""
'		Case 10
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","J",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","J",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","J",1,""
'		Case 11
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","K",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","K",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","K",1,""
'		Case 12
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","L",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","L",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","L",1,""
'		Case 13
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","M",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","M",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","M",1,""
'		Case 14
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","N",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","N",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","N",1,""
'		Case 15
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","O",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","O",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","O",1,""
'		Case 16
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","P",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","P",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","P",1,""
'		Case 17
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Q",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Q",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Q",1,""
'		Case 18
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","R",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","R",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","R",1,""
'		Case 19
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","S",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","S",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","S",1,""
'		Case 20
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","T",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","T",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","T",1,""
'		Case 21
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","U",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","U",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","U",1,""
'		Case 22
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","V",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","V",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","V",1,""
'		Case 23
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","W",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","W",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","W",1,""
'		Case 24
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","X",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","X",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","X",1,""
'		Case 25
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Y",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Y",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Y",1,""
'		Case 26
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Z",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Z",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Z",1,""
'	End Select
End Sub

' post the high score letters


Sub HighScoreCommitName
	hsEnteredName = hsEnteredDigits(1) & hsEnteredDigits(2) & hsEnteredDigits(3)
	HighScoreName(3) = hsEnteredName
	CheckHSOrder
	EndOfBallComplete
'	PuPlayer.LabelSet pBackglass,"HighScore","",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL1","",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
End Sub
