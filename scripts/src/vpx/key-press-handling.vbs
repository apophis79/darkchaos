
'*******************************************
'  ZKEY : Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)

	' ANY TIME
	Glf_KeyDown(keycode)
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = PlungerKey Then Plunger.Pullback : SoundPlungerPull 
	If keycode = StartGameKey Then SoundStartButton : AudioCallout "boot"
	If keycode = LeftTiltKey Then 
		Nudge 90, 2
		ShipNudge 1, -1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeLeft
		' CheckTilt
	End If
	If keycode = RightTiltKey Then 
		Nudge 270, 2
		ShipNudge 1, 1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeRight
		' CheckTilt
	End If
	If keycode = CenterTiltKey Then 
		Nudge 0, 3
		ShipNudge 1, -1, ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
		SoundNudgeCenter
		' CheckTilt
	End If

	'IN HIGH SCORE MODE
	' If bHSModeActive = True Then
	' 	EnterHighScoreKey(keycode)


	' ' IN GAME
	' Elseif bGameInPlay Then

	' ' 	If NOT bTilted Then
	' 		If keycode = LeftFlipperKey and bFlippersEnabled Then
	' 			FlipperActivate LeftFlipper, LFPress
	' 			SolLFlipper True						'This would be called by the solenoid callbacks if using a ROM
	' 			RotateLaneLightsLeft
	' 		End If

	' 		If keycode = RightFlipperKey and bFlippersEnabled Then
	' 			FlipperActivate RightFlipper, RFPress
	' 			SolRFlipper True						'This would be called by the solenoid callbacks if using a ROM
	' 			RotateLaneLightsRight
	' 		End If

	' 		If keycode = LeftMagnaSave Then
	' 			FireClusterRound
	' 			LeftMagnaTimer.Enabled = True
	' 		End If

	' 		If keycode = RightMagnaSave Then
	' 			LauchMoonMissiles
	' 		End If


	' 		If keycode = MechanicalTilt Then 
	' 			SoundNudgeCenter
	' 			CheckMechTilt
	' 		End If
	
	' 		If keycode = StartGameKey Then
	' 			If((PlayersPlayingGame <MaxPlayers) AND(bOnTheFirstBall = True) ) Then
	' 				PlayersPlayingGame = PlayersPlayingGame + 1

	' 				If PlayersPlayingGame = 2 Then

	' 				End If

	' 				If PlayersPlayingGame = 3 Then

	' 				End If

	' 				If PlayersPlayingGame = 4 Then

	' 				End If

	' 				TotalGamesPlayed = TotalGamesPlayed + 1
	' 				Savegp
	' 			End If
	' 		End If
	' 	End if


	' ' NOT IN GAME
	' Else
	' 	If NOT bTilted Then
	' 		If keycode = StartGameKey Then 
	' 			If BallsOnPlayfield = 0 Then
	' 				ResetForNewGame
	' 			End If
	' 		End If
	' 	End If
	' End If

End Sub



Sub Table1_KeyUp(ByVal keycode)

	' ANY TIME
	Glf_KeyUp(keycode)
	
	If KeyCode = PlungerKey Then
		Plunger.Fire
		SoundPlungerReleaseBall
	End If


	' If keycode = LeftFlipperKey Then
	' 	FlipperDeActivate LeftFlipper, LFPress
	' 	SolLFlipper False						'This would be called by the solenoid callbacks if using a ROM
	' End If

	' If keycode = RightFlipperKey Then
	' 	FlipperDeActivate RightFlipper, RFPress
	' 	SolRFlipper False						'This would be called by the solenoid callbacks if using a ROM
	' End If


	' ' IN GAME
	' If bGameInPlay and not bHSModeActive Then

	' 	If keycode = LeftMagnaSave Then
	' 		LeftMagnaTimer.Enabled = False
	' 	End If

	' End If


End Sub



' Sub LeftMagnaTimer_Timer
' 	LeftMagnaTimer.Enabled = False
' 	StartEarthKillerWizard
' End Sub
