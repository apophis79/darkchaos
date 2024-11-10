
'*******************************************
'  ZSOL : Other Solenoids
'*******************************************



'  Kickers, Saucers
'*******************************************

'To include some randomness in the Kicker's kick, use the following parmeters
Const KickerAngleTol = 0.4   		'Number of degrees the kicker angle varies around its intended direction
Const KickerStrengthTol = 3   	'Number of strength units the kicker varies around its intended strength

Sub SolKickerScoop(Enabled)
	'DebugPrint "SolGrabMagnet " & Enabled
	if Enabled then
		SoundSaucerKick 1, KickerScoop
		KickerScoop.Kick 13.8+RndNum(-KickerAngleTol,KickerAngleTol), 75+RndNum(-KickerStrengthTol,KickerStrengthTol)
	end if
End Sub

Sub KickerScoop_Hit
	Addscore 5000
	SoundSaucerLock
	KickerScoop.timerenabled=True
	CheckMysteryAward
	CheckExtraBallAward
End Sub

Sub KickerScoop_Timer
	' Kick out ball
	If bMysteryActive Then
		bMysteryActive = False
		bWaveTimerPaused = False
	End If
	SolKickerScoop True
	KickerScoop.timerenabled=False
End Sub



'  Grab Magnet
'*******************************************

Sub SolGrabMagnet(Enabled)
	'DebugPrint "SolGrabMagnet " & Enabled
	if Enabled then
		GrabMag.MagnetOn = 1
		GrabMagnetTimer.Enabled = true
	Else
		GrabMag.MagnetOn = 0
	end if
end sub

Sub GrabMagnetTimer_Timer
	GrabMagnetTimer.Enabled = false
	SolGrabMagnet False
End Sub



'  Diverters
'*******************************************


Sub SolDiverterPin(Enabled)
	Dim BP
	If Enabled Then
		DiverterPin.isdropped=False
		SoundSaucerKick 0,swRamp6
		For Each BP in BP_DiverterPin : BP.transz = 0: Next
	Else
		DiverterPin.isdropped=True
		SoundSaucerKick 0,swRamp6
		For Each BP in BP_DiverterPin : BP.transz = -50: Next  'FIXME  check height. Animate with flipper?
	End If
End Sub


'  Lock Pin
'*******************************************


Sub SolLockPin(Enabled)
	Dim BP
	If Enabled Then
		LockPin.isdropped=False
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = 0: Next
	Else
		LockPin.isdropped=True
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = -50: Next  'FIXME  check height. Animate with flipper?
	End If
End Sub



'  Knocker
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid 'Add knocker position object
	End If
End Sub



'  Drop Targets
'*******************************************

Sub SolDT1(Enabled)
	If Enabled Then
		DTRaise 1
	Else
		DTDrop 1
	End If 
End Sub

Sub SolDT2(Enabled)
	If Enabled Then
		DTRaise 2
	Else
		DTDrop 2
	End If 
End Sub

Sub SolDT3(Enabled)
	If Enabled Then
		DTRaise 3
	Else
		DTDrop 3
	End If 
End Sub

Sub SolDT4(Enabled)
	If Enabled Then
		DTRaise 4
	Else
		DTDrop 4
	End If 
End Sub

