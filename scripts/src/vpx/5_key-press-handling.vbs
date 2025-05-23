
'*******************************************
'  ZKEY : Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)

	Glf_KeyDown(keycode)

	If keycode = LeftFlipperKey Then 
		PinCab_LeftFlipperButton.TransX = -10
	End if
    If keycode = RightFlipperKey Then 
		PinCab_RightFlipperButton.TransX = 10
	End if
	If keycode = LeftMagnaSave Then 
		PinCab_LeftMagnaButton.TransX = -10
	End if
    If keycode = RightMagnaSave Then 
		PinCab_RightMagnaButton.TransX = 10
	End if

	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = PlungerKey Then 
		Plunger.Pullback
		SoundPlungerPull
		TimerPlunger.Enabled = True
		TimerPlunger2.Enabled = False
		PinCab_Shooter.TransZ = 0
	End If
	If keycode = StartGameKey Then SoundStartButton
	If keycode = LeftTiltKey Then 
		'Nudge 90, 2 'This is set in GLF
		ShipNudge 1, -1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeLeft
	End If
	If keycode = RightTiltKey Then 
		'Nudge 270, 2
		ShipNudge 1, 1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeRight
	End If
	If keycode = CenterTiltKey Then 
		'Nudge 0, 2
		ShipNudge 1, -1, ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
		SoundNudgeCenter
	End If

	

End Sub



Sub Table1_KeyUp(ByVal keycode)

	' ANY TIME
	Glf_KeyUp(keycode)

	If keycode = LeftFlipperKey Then 
		PinCab_LeftFlipperButton.TransX = 0
	End if
    If keycode = RightFlipperKey Then 
		PinCab_RightFlipperButton.TransX = 0
	End if
	If keycode = LeftMagnaSave Then 
		PinCab_LeftMagnaButton.TransX = 0
	End if
    If keycode = RightMagnaSave Then 
		PinCab_RightMagnaButton.TransX = 0
	End if
	
	If KeyCode = PlungerKey Then
		Plunger.Fire
		SoundPlungerReleaseBall
		TimerPlunger.Enabled = False
		TimerPlunger2.Enabled = True
	End If

End Sub



