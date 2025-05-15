
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
	If s_Scoop.BallCntOver > 0 Then
		ang = 14.8 + ScoopAngleTol*2*(rnd-0.5)
		vel = 70.0 + ScoopStrengthTol*2*(rnd-0.5)
		KickBall ball, ang, vel, 0, 0
		SoundSaucerKick 1, s_Scoop
	Else
		SoundSaucerKick 0, s_Scoop
	End If
	DOF 109, DOFPulse
End Sub

' Sub MoonLockEjectCallback(ball)
' 	If Not IsNull(ball) Then
' 		DropLockPin 1
' 	Else
' 		DropLockPin 0
' 	End If
' End Sub


Sub PlungerEjectCallback(ball)
	If s_Plunger1.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, s_Plunger1
	Else
		SoundSaucerKick 0, s_Plunger1
	End If
	DOF 110, DOFPulse
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
		For Each BP in BP_DiverterPin : BP.transz = -50: Next 
	End If
	DOF 111, DOFPulse
End Sub


'  Lock Pin
'*******************************************

Sub DropLockPin(enabled)
	Dim BP,b
	If Enabled Then
		LockPin.isdropped=True
		SoundSaucerKick 0,s_Lock1
		For each BP in BP_LockPin: BP.transz = -50: Next
	Else		
		LockPin.isdropped=False
		SoundSaucerKick 0,s_Lock1
		For each BP in BP_LockPin: BP.transz = 0: Next
	End If
	DOF 112, DOFPulse
	'balls are sinking into ramp and getting stuck, so move balls up a little for a hacky fix
	For each b in gBOT
		If b.z > 50 Then
			b.z = b.z + 3
		End If
	Next
End Sub 



'  Knocker
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid 'Add knocker position object
		DOF 113, DOFPulse
	End If
End Sub



'  Bumpers
'*******************************************

Sub Bumper1Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper1.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperMiddle s_Bumper1
		DOF 105, DOFPulse
	End If
End Sub

Sub Bumper1Disabled()
	s_Bumper1.Threshold = 100
End Sub

Sub Bumper1Enabled()
	s_Bumper1.Threshold = 1.5
End Sub


Sub Bumper2Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper2.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperTop s_Bumper2
		DOF 108, DOFPulse
	End If
End Sub

Sub Bumper2Disabled()
	s_Bumper2.Threshold = 100
End Sub

Sub Bumper2Enabled()
	s_Bumper2.Threshold = 1.5
End Sub


Sub Bumper3Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper3.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperTop s_Bumper3
		DOF 106, DOFPulse
	End If
End Sub

Sub Bumper3Disabled()
	s_Bumper3.Threshold = 100
End Sub

Sub Bumper3Enabled()
	s_Bumper3.Threshold = 1.5
End Sub


' Sub Bumper4Action(args)
' 	Dim enabled, ball : enabled = args(0)
'     If IsNull(args(1)) And enabled Then
'         s_Bumper4.PlayHit()
'     End If
' 	If enabled Then
' 		RandomSoundBumperTop s_Bumper4
' 		DOF 107, DOFPulse
' 	End If
' End Sub

' Sub Bumper4Disabled()
' 	s_Bumper4.Threshold = 100
' End Sub

' Sub Bumper4Enabled()
' 	s_Bumper4.Threshold = 1.5
' End Sub
