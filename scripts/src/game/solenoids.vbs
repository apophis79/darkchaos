
' '*******************************************
' '  ZSOL : Other Solenoids
' '*******************************************



'  Kickers, Saucers
'*******************************************

'To include some randomness in the Kicker's kick, use the following parmeters
Const ScoopAngleTol = 1   	 'Number of degrees the kicker angle varies around its intended direction
Const ScoopStrengthTol = 3   'Number of strength units the kicker varies around its intended strength


Sub KickBall(kball, kangle, kvel, kvelz, kzlift)
	dim rangle
	rangle = PI * (kangle - 90) / 180
    
	kball.z = kball.z + kzlift
	kball.velz = kvelz
	kball.velx = cos(rangle)*kvel
	kball.vely = sin(rangle)*kvel
End Sub


Sub ScoopEjectCallback(ball)
	Dim ang, vel
	If swScoop.BallCntOver > 0 Then
		ang = 14.8 + ScoopAngleTol*2*(rnd-0.5)
		vel = 70.0 + ScoopStrengthTol*2*(rnd-0.5)
		KickBall ball, ang, vel, 0, 0
		SoundSaucerKick 1, swScoop
	Else
		SoundSaucerKick 0, swScoop
	End If
End Sub

Sub MoonLockEjectCallback(ball)
	If Not IsNull(ball) Then
		DropLockPin 1
	Else
		DropLockPin 0
	End If
End Sub


Sub PlungerEjectCallback(ball)
	If swPlunger1.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, swPlunger1
	Else
		SoundSaucerKick 0, swPlunger1
	End If
End Sub



'  Grab Magnet
'******************************************* 

Sub GrabMagnetAction(Enabled)
	GrabMag.MagnetOn = Enabled
end sub




'  Diverters
'*******************************************


Sub RaiseDiverterPin(Enabled)
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

Sub DropLockPin(enabled)
	Dim BP
	If Enabled Then
		LockPin.isdropped=True
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = -50: Next
	Else		
		LockPin.isdropped=False
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = 0: Next
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

