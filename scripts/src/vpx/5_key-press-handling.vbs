
'*******************************************
'  ZKEY : Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)

	' ANY TIME
	Glf_KeyDown(keycode)
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = PlungerKey Then 
		Plunger.Pullback
		SoundPlungerPull
		TimerPlunger.Enabled = True
		TimerPlunger2.Enabled = False
		'PinCab_Shooter.TransY = 0  'FIXME
	End If
	If keycode = StartGameKey Then SoundStartButton
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
		Nudge 0, 2
		ShipNudge 1, -1, ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
		SoundNudgeCenter
		' CheckTilt
	End If

	'DEBUG - Wizard mode tests 
	If keycode = 33 Then DispatchPinEvent "activate_combo_command_wizard", NULL    	'F key
	If keycode = 34 Then DispatchPinEvent "prime_fully_loaded_wizard", NULL    		'G key
	If keycode = 35 Then DispatchPinEvent "activate_final_wave_wizard", NULL    	'H key
	If keycode = 36 Then DispatchPinEvent "debug_increase_wave", NULL    			'J key

End Sub



Sub Table1_KeyUp(ByVal keycode)

	' ANY TIME
	Glf_KeyUp(keycode)
	
	If KeyCode = PlungerKey Then
		Plunger.Fire
		SoundPlungerReleaseBall
		TimerPlunger.Enabled = False
		TimerPlunger2.Enabled = True
	End If

End Sub



