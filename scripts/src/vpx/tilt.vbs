

'********************************************
' ZTLT : Tilt
'********************************************


'NOTE: The TiltDecreaseTimer Subtracts .01 from the "Tilt" variable every round
Sub CheckTilt                                    	'Called when table is nudged
	If Not bGameInPlay Then Exit Sub
	Tilt = Tilt + TiltSensitivity                	'Add to tilt count
	TiltDecreaseTimer.Enabled = True
	If(Tilt > TiltSensitivity) AND (Tilt <= 15) Then ShowTiltWarning 'show a warning
	If Tilt > 15 Then TiltMachine  					'If more than 15 then TILT the table
End Sub

Sub CheckMechTilt                                	'Called when mechanical tilt bob switch closed
	If Not bGameInPlay Then Exit Sub
	If Not bMechTiltJustHit Then
		MechTilt = MechTilt + 1               		'Add to tilt count
		If(MechTilt > 0) AND (MechTilt <= 2) Then ShowTiltWarning 'show a warning
		If MechTilt > 2 Then TiltMachine  			'If more than 2 then TILT the table
		bMechTiltJustHit = True
		TiltDebounceTimer.Enabled = True
	End If
End Sub

Sub ShowTiltWarning
	AudioCallout "tilt warning"
	'DMDBigText "TILT WARNING",77,1
	'pNote "CAREFUL!","TILT WARNING"
	'PlaySound "buzz"
End Sub

Sub TiltMachine
	AudioCallout "tilt"
	bTilted = True
	'DMDBigText "TILT!",77,1
	'pNote "TILT",""
	'PlaySound "powerdownn"
	'PuPlayer.playlistplayex pBackglass,"videotilt","",100,4
	DisableTable True
	TiltRecoveryTimer.Enabled = True 'start the Tilt delay to check for all the balls to be drained
End Sub


Sub TiltDecreaseTimer_Timer
	' DecreaseTilt
	If Tilt> 0 Then
		Tilt = Tilt - 0.1
	Else
		TiltDecreaseTimer.Enabled = False
	End If
End Sub


Sub TiltDebounceTimer_Timer
	bMechTiltJustHit = False
	TiltDebounceTimer.Enabled = False
End Sub


Sub DisableTable(Enabled)
	If Enabled Then
		'GiOff
		' Add tilt messages and sounds
		LeftFlipper.RotateToStart
		RightFlipper.RotateToStart
		RightFlipper1.RotateToStart
		LeftSlingshot.Disabled = 1
		RightSlingshot.Disabled = 1
		bFlippersEnabled = False
	Else
		'GiOn
		LeftSlingshot.Disabled = 0
		RightSlingshot.Disabled = 0
		bFlippersEnabled = True
	End If
End Sub


Sub TiltRecoveryTimer_Timer()
	If (BallsOnPlayfield = 0) Then
		EndOfBall
		TiltRecoveryTimer.Enabled = False
	End If
End Sub
