
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
End Sub

Sub MoonLockEjectCallback(ball)
	If Not IsNull(ball) Then
		DropLockPin 1
	Else
		DropLockPin 0
	End If
End Sub


Sub PlungerEjectCallback(ball)
	If s_Plunger1.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, s_Plunger1
	Else
		SoundSaucerKick 0, s_Plunger1
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
		SoundSaucerKick 0,s_Lock1
		For each BP in BP_LockPin: BP.transz = -50: Next
	Else		
		LockPin.isdropped=False
		SoundSaucerKick 0,s_Lock1
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



'  Bumpers
'*******************************************

Sub Bumper1Action(args)
	Dim enabled, ball : enabled = args(0)
    ' If Not IsNull(args(1)) Then
    '     Set ball = args(1)
    ' End If
	If enabled Then RandomSoundBumperMiddle s_Bumper1
End Sub

Sub Bumper2Action(args)
	Dim enabled, ball : enabled = args(0)
    ' If Not IsNull(args(1)) Then
    '     Set ball = args(1)
    ' End If
	If enabled Then RandomSoundBumperTop s_Bumper2
End Sub

Sub Bumper3Action(args)
	Dim enabled, ball : enabled = args(0)
    ' If Not IsNull(args(1)) Then
    '     Set ball = args(1)
    ' End If
	If enabled Then RandomSoundBumperTop s_Bumper3
End Sub

Sub Bumper4Action(args)
	Dim enabled, ball : enabled = args(0)
    ' If Not IsNull(args(1)) Then
    '     Set ball = args(1)
    ' End If
	If enabled Then RandomSoundBumperTop s_Bumper4
End Sub
