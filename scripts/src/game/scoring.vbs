

'*******************************************
' ZSCO : Scoring
'*******************************************

Sub Addscore(points)
	If Not bTilted Then
		Player(CurrentPlayer).Score = Player(CurrentPlayer).Score + points*PointMultiplier
	End if
End Sub


Sub AddBonus(points)
	If Not bTilted Then
		Player(CurrentPlayer).BonusPoints  = Player(CurrentPlayer).BonusPoints  + points*PointMultiplier
	End if
End Sub


Sub AwardSpecial
	Credits = Credits + 1
	SaveCredits
	SolKnocker true
End Sub


Sub AwardExtraBall 
	Player(CurrentPlayer).TotalExtraBallsAwarded = Player(CurrentPlayer).TotalExtraBallsAwarded + 1
	if Player(CurrentPlayer).TotalExtraBallsAwarded <= MaxExtraBallsPerGame Then
		Player(CurrentPlayer).ExtraBallsAwards = Player(CurrentPlayer).ExtraBallsAwards + 1
		AudioCallout "extraball" 
		'DMDBigText "EXTRA BALL",250,1
		ChangeLamp LSA,1,"white",7,3,3,1
		ChangeLamp LEBR,0,"green",7,3,3,1
	End If 
End Sub

