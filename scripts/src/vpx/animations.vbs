

'******************************************************
'  ZANI: Misc Animations
'******************************************************

' Flippers
Sub LeftFlipper_Animate
	Dim a: a = LeftFlipper.CurrentAngle 
	FlipperLSh.RotZ = a

	Dim v, BP 
	v = 255.0 * (121.0 - LeftFlipper.CurrentAngle) / (121.0 - 69.0)

	For Each BP in BP_Lflip
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_LflipU
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub

Sub RightFlipper_Animate
	Dim a: a = RightFlipper.CurrentAngle 
	FlipperRSh.RotZ = a

	Dim v, BP 
	v = 255.0 * (-121.0 - RightFlipper.CurrentAngle) / (-121.0 + 69.0)

	For Each BP in BP_Rflip
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_RflipU
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub

Sub RightFlipper1_Animate
	Dim a: a = RightFlipper1.CurrentAngle 
	FlipperR1Sh.RotZ = a

	Dim v, BP 
	v = 255.0 * (-161.0 - RightFlipper1.CurrentAngle) / (-161.0 + 108.0)

	For Each BP in BP_Rflip1
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_Rflip1U
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub


' Gates
Sub Gate2_Animate
	Dim a: a = Gate2.CurrentAngle 
	Dim BP : For Each BP in BP_Gate2: BP.RotX = a: Next
End Sub

Sub GateL_Animate
	Dim a: a = -GateL.CurrentAngle
	Dim BP : For Each BP in BP_GateL: BP.RotX = a: Next
End Sub

Sub GateR_Animate
	Dim a: a = GateR.CurrentAngle
	Dim BP : For Each BP in BP_GateR: BP.RotX = a: Next
End Sub



' Bumpers
Sub s_Bumper1_Animate
	Dim z, BP
	z = s_Bumper1.CurrentRingOffset
	For Each BP in BP_BR1 : BP.transz = z: Next
End Sub

Sub s_Bumper2_Animate
	Dim z, BP
	z = s_Bumper2.CurrentRingOffset
	For Each BP in BP_BR2 : BP.transz = z: Next
End Sub

Sub s_Bumper3_Animate
	Dim z, BP
	z = s_Bumper3.CurrentRingOffset
	For Each BP in BP_BR3 : BP.transz = z: Next
End Sub

' Sub s_Bumper4_Animate
' 	Dim z, BP
' 	z = s_Bumper4.CurrentRingOffset
' 	For Each BP in BP_BR4 : BP.transz = z: Next
' End Sub


' Switches
Sub s_CenterOrb1_Animate
	Dim z : z = s_CenterOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC1 : BP.transz = z: Next
End Sub

Sub s_CenterOrb2_Animate
	Dim z : z = s_CenterOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC2 : BP.transz = z: Next
End Sub

Sub s_CenterOrb3_Animate
	Dim z : z = s_CenterOrb3.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC3 : BP.transz = z: Next
End Sub

Sub s_InnerOrb1_Animate
	Dim z : z = s_InnerOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swI1 : BP.transz = z: Next
End Sub

Sub s_InnerOrb2_Animate
	Dim z : z = s_InnerOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swI2 : BP.transz = z: Next
End Sub

Sub s_LeftOrb1_Animate
	Dim z : z = s_LeftOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swL1 : BP.transz = z: Next
End Sub

Sub s_LeftOrb2_Animate
	Dim z : z = s_LeftOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swL2 : BP.transz = z: Next
End Sub

Sub s_LeftBumper1_Animate
	Dim z : z = s_LeftBumper1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLB1 : BP.transz = z: Next
End Sub

Sub s_LeftInlane_Animate
	Dim z : z = s_LeftInlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLI : BP.transz = z: Next
End Sub

Sub s_LeftOutlane_Animate
	Dim z : z = s_LeftOutlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLO : BP.transz = z: Next
End Sub

Sub s_Plunger1_Animate
	Dim z : z = s_Plunger1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swP1 : BP.transz = z: Next
End Sub

Sub s_Plunger2_Animate
	Dim z : z = s_Plunger2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swP2 : BP.transz = z: Next
End Sub

Sub s_RightOrb1_Animate
	Dim z : z = s_RightOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swR1 : BP.transz = z: Next
End Sub

Sub s_RightOrb2_Animate
	Dim z : z = s_RightOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swR2 : BP.transz = z: Next
End Sub

Sub s_RightInlane_Animate
	Dim z : z = s_RightInlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swRI : BP.transz = z: Next
End Sub

Sub s_RightOutlane_Animate
	Dim z : z = s_RightOutlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swRO : BP.transz = z: Next
End Sub


' Standup Targets
Sub UpdateStandupTargets
	dim BP, ty

    ty = BM_TM1.transy
	For each BP in BP_TM1 : BP.transy = ty: Next

    ty = BM_TM2.transy
	For each BP in BP_TM2 : BP.transy = ty: Next

    ty = BM_TM3.transy
	For each BP in BP_TM3 : BP.transy = ty: Next

    ty = BM_TM4.transy
	For each BP in BP_TM4 : BP.transy = ty: Next

    ty = BM_TM5.transy
	For each BP in BP_TM5 : BP.transy = ty: Next

    ty = BM_TS1.transy
	For each BP in BP_TS1 : BP.transy = ty: Next

    ty = BM_TS2.transy
	For each BP in BP_TS2 : BP.transy = ty: Next

    ty = BM_TS3.transy
	For each BP in BP_TS3 : BP.transy = ty: Next

    ty = BM_TS4.transy
	For each BP in BP_TS4 : BP.transy = ty: Next

End Sub


' Drop Targets
Sub UpdateDropTargets
	dim BP, tz, rx, ry

    tz = BM_TMet1.transz
	rx = BM_TMet1.rotx
	ry = BM_TMet1.roty
	For each BP in BP_TMet1 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet2.transz
	rx = BM_TMet2.rotx
	ry = BM_TMet2.roty
	For each BP in BP_TMet2 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet3.transz
	rx = BM_TMet3.rotx
	ry = BM_TMet3.roty
	For each BP in BP_TMet3 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet4.transz
	rx = BM_TMet4.rotx
	ry = BM_TMet4.roty
	For each BP in BP_TMet4 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next
End Sub



' Spinner
Dim LMs_Spin, LMs_SpinU

InitSpinner
Sub InitSpinner 
	Dim i, LM
	BM_Spin.Visible = 1
	BM_SpinU.Visible = 0
	' Create LM arrays
	ReDim LMs_Spin(UBound(BP_Spin)-1)
	ReDim LMs_SpinU(UBound(BP_SpinU)-1)
	For i = 0 to (UBound(BP_Spin)-1): Set LMs_Spin(i) = BP_Spin(i+1): Next
	For i = 0 to (UBound(BP_SpinU)-1): Set LMs_SpinU(i) = BP_SpinU(i+1): Next
	'Scale down the inner spinner a little more in y-dir
'	Dim BP
'	For Each BP in BP_Spin
'		BP.Size_X = BP.Size_X * 0.99
'		BP.Size_Y = BP.Size_Y * 0.99
'		BP.Size_Z = BP.Size_Z * 0.99
'	Next
	s_spinner_animate
End Sub

Sub s_spinner_animate
	Dim LM, a, b, c, offset
	a = -s_spinner.currentangle
	c = 360+a
	If c >= 0 And c < 60 Then
        b = 0
    ElseIf c >= 60 And c < 120 Then
        b = (c - 60) / 60
    ElseIf c >= 120 And c < 240 Then
        b = 1
    ElseIf c >= 240 And c < 300 Then
        b = 1 + (240 - c) / 60
    Else
        b = 0
    End If

	BM_Spin.RotX = a
	For Each LM in LMs_Spin
		LM.RotX = a
		LM.Opacity = 100 * (1 - b)
	Next
	For Each LM in LMs_SpinU
		LM.RotX = a + 180
		LM.Opacity = 100 * b
	Next
	For Each LM in BP_SpinWire: LM.RotX = a: Next
End Sub



'******************************************************
'	ZAST: Asteroid Animation
'******************************************************


Const AstVel = 0.01
Dim AstAngle, SpinAst, AstDelta
Dim LMs_Asteroid1 ', LMs_Asteroid2, LMs_Asteroid3, LMs_Asteroid4

InitAsteroid
Sub InitAsteroid
	Dim i, LM
	' Init angle and visibility
	AstAngle = 0
	AstDelta = 0
	SpinAst = False
	BM_Asteroid1.Visible = 1
	'BM_Asteroid2.Visible = 0
	'BM_Asteroid3.Visible = 0
	'BM_Asteroid4.Visible = 0
	' Create LM arrays
	ReDim LMs_Asteroid1(UBound(BP_Asteroid1)-1)
'	ReDim LMs_Asteroid2(UBound(BP_Asteroid2)-1)
'	ReDim LMs_Asteroid3(UBound(BP_Asteroid3)-1)
'	ReDim LMs_Asteroid4(UBound(BP_Asteroid4)-1)
	For i = 0 to (UBound(BP_Asteroid1)-1): Set LMs_Asteroid1(i) = BP_Asteroid1(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid2)-1): Set LMs_Asteroid2(i) = BP_Asteroid2(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid3)-1): Set LMs_Asteroid3(i) = BP_Asteroid3(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid4)-1): Set LMs_Asteroid4(i) = BP_Asteroid4(i+1): Next
	LM_F_FL7_Asteroid1.Visible = 1
	LM_F_FL7_Asteroid2.Visible = 0
	LM_F_FL7_Asteroid3.Visible = 0
	LM_F_FL7_Asteroid4.Visible = 0
	' Adjust size to eliminate zfighting
	BM_Asteroid1.Size_X = BM_Asteroid1.Size_X*0.999 '0.998
	BM_Asteroid1.Size_Y = BM_Asteroid1.Size_Y*0.999 '0.998
	BM_Asteroid1.Size_Z = BM_Asteroid1.Size_Z*0.999 '0.998
'	BM_Asteroid3.Size_X = BM_Asteroid1.Size_X*0.999
'	BM_Asteroid3.Size_Y = BM_Asteroid1.Size_Y*0.999
'	BM_Asteroid3.Size_Z = BM_Asteroid1.Size_Z*0.999
	'BM_Asteroid3.material = "VLM.Bake.Active"
	' Initial draw
	DrawAsteroid AstAngle
End Sub

Sub SolSpinAsteroid(Enabled)
	AstDelta = AstVel
	If Enabled <> False And SpinAst = False Then
		PlaySoundAtLevelStaticLoop "mfx_Motor", MechVol*0.02, BM_Asteroid1
	ElseIf Enabled = False Then
		StopSound "mfx_Motor"
	End If
	SpinAst = Enabled
End Sub

Sub UpdateAsteroid
	If AstDelta > 0.005 Then
		If SpinAst <> False Then
			AstDelta = AstVel 
		Else
			AstDelta = AstDelta - FrameTime*AstVel/2000  'Deceleration
			If AstDelta < 0.005 Then AstDelta = 0
		End If
		AstAngle = AstAngle + AstDelta*FrameTime  
		If AstAngle >= 360 Then AstAngle = AstAngle - 360
		DrawAsteroid AstAngle
	End If
End Sub


Sub DrawAsteroid(a)
	Dim LM, v1, v2, v3, v4, op13, op24
	v1 = ((a > 270) or (a < 90))
	v2 = ((a > 180) and (a < 360))
	v3 = ((a > 90) and (a < 270))
	v4 = ((a > 0) and (a < 180))
	op13 = abs(100*dCos(a))
	op24 = abs(100*dSin(a))
	op24 = abs(100*dSin(a))

	BM_Asteroid1.RotZ = a
'	BM_Asteroid3.RotZ = a
'	BM_Asteroid3.Visible = v3
'	BM_Asteroid3.Opacity = op13

	LM_F_FL7_Asteroid1.RotZ = a

	For each LM in LMs_Asteroid1
		LM.Visible = v1
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid2
		LM.Visible = v2
		LM.Opacity = op24
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid3
		LM.Visible = v3
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid4
		LM.Visible = v4
		LM.Opacity = op24
		LM.RotZ = a
	Next
'	debug.print "AstAngle = "&a
'	debug.print "Asteroid1  Visible = "&v1&"  Opacity = "&op13
'	debug.print "Asteroid2  Visible = "&v2&"  Opacity = "&op24
'	debug.print "Asteroid3  Visible = "&v3&"  Opacity = "&op13
'	debug.print "Asteroid4  Visible = "&v4&"  Opacity = "&op24
End Sub




'******************************************************
'	ZSHP:  Ship Wobble Animations   (based on code from rothbauerw)
'******************************************************

' Wobble Script to animate objects when the table is nudged. The below shows how to animate a single axis. Additional scripting is needed to animate for another axis.
'
'  You'll need variables for each object to:
'   1 - track time interval (objtime)
'   2 - two to track velocity (objvel, objvel2)
'   3 - track the displacement (objdisp)
'   4 - define the maximum movement of the object (objmaxmovement)
'   5 - define the acceleration of the object, or how fast it moves (objacc)
'   6 - define the how fast the object movement decays (objdecay)
'
'  NudgeAnim should be placed in a frame timer (interval = -1)
'   - NudgeAnim should be used to read any analog nudges, and if so, apply an impulse to the object
'   - NudgeAnim should also call the animation sub for the object
'
'  A sub should be created to apply an impulse to the object when the table is nudged. It will be placed in the NudgeAnim sub for analog nudges and the nudge key presses for digital nudge  
'
'	Sub ObjNudge(namp, ndir)
'		CalcVelTime namp - rnd * namp * 0.1 , ndir, objvel, objtime, objvel2, objmaxmovement, objacc 	'adds some randomness to the impulse
'	End Sub 
'
'   Where:
'	 - namp is the amplitude of the impulse
'	 - ndir is the direction of the impulse
'
'  A sub should be created to update the displacement of the object. It will be placed in the NudgeAnim sub.  
'
'	Sub ObjUpdate()
'		CalcDisplacement objvel, objtime, objdisp, objvel2, objmaxmovement, objacc, objdecay
'		obj.transy = - objdisp
'	End Sub


Dim ShipTimeX:ShipTimeX=0
Dim Ship1TimeX:Ship1TimeX=0

Dim ShipVelX, ShipVelX2:ShipVelX = 0: ShipVelX2 = 0
Dim Ship1VelX, Ship1VelX2:Ship1VelX = 0: Ship1VelX2 = 0

Dim ShipDispX:ShipDispX = 0
Dim Ship1DispX:Ship1DispX = 0

Dim ShipTimeY:ShipTimeY=0
Dim Ship1TimeY:Ship1TimeY=0

Dim ShipVelY, ShipVelY2:ShipVelY = 0: ShipVelY2 = 0
Dim Ship1VelY, Ship1VelY2:Ship1VelY = 0: Ship1VelY2 = 0

Dim ShipDispY:ShipDispY = 0
Dim Ship1DispY:Ship1DispY = 0


Const ShipMaxMovement = 5
Const ShipDecay = 0.90
Const ShipAcc = 3000

Sub NudgeAnim() 'Call from FrameTimer
    Dim X, Y
    NudgeSensorStatus X, Y
	'debug.print "X = "&X&"  Y = "&Y

	'Add impulse to any objects that wobble around the y-axis
    If ABS(X) > 0.05 Then
		ShipNudge Abs(x)/0.125, x/Abs(x), ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
    End If

	'Add impulse to any objects that wobble around the x-axis
    If ABS(Y) > 0.05 Then
		ShipNudge Abs(y)/0.125, y/Abs(y), ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
    End If

    ShipUpdate
End Sub

Sub ShipNudge(namp, ndir, Vel, nTime, Vel2, MaxMovement, Acc)
	CalcVelTime namp - rnd * namp * 0.1 , ndir, Vel, nTime, Vel2, MaxMovement, Acc 	'adds some randomness to the impulse
End Sub 

Sub ShipUpdate()
	Dim BP
	CalcDisplacement ShipVelX, ShipTimeX, ShipDispX, ShipVelX2, ShipMaxMovement, ShipAcc, ShipDecay
	CalcDisplacement ShipVelY, ShipTimeY, ShipDispY, ShipVelY2, ShipMaxMovement, ShipAcc, ShipDecay
	BM_Ship.roty = ShipDispX
	BM_Ship.rotx = ShipDispY

	'debug.print "ShipDispX = "&ShipDispX&"  ShipDispY = "&ShipDispY
	For each BP in BP_Ship: BP.rotx = BM_Ship.rotx: BP.roty = BM_Ship.roty:Next
End Sub

Sub RndShipNudge
	ShipNudge 0.7-(0.5*Rnd),Sgn(rnd-0.5), ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
	ShipNudge 0.7-(0.5*Rnd),Sgn(rnd-0.5), ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
End Sub


' Wobble Supporting Functions
'*****************************

' Calculate the change in velocity of the object due to the impulse from the nudge
Sub CalcVelTime(simpulse, sidir, svel, stime, nvel, smaxmovement, sacc)
	if simpulse > 1 then simpulse = 1

	if svel = 0 Then
		svel = simpulse * sidir * Vel0(sMaxMovement, sacc)
		stime = GameTime
		nvel = 0
	else
		nvel = simpulse * sidir * Vel0(sMaxMovement, sacc)
	end If
End Sub

Function Vel0(displacement, acceleration)
	Vel0 = SQR(acceleration* ABS(displacement) * 2)
End Function

' Calculate the current displacement of the object
Sub CalcDisplacement(svel, stime, sdisp, nvel, smaxmovement, sacc, sdecay)
	dim velM, accM , stimef, stimec

	stimec = Gametime - stime	
	stimef = TimeF(MaxDisplacement(svel, sacc), sacc)

	If stimec > stimef Then 
		stimec = stimec - stimef
		stime = Gametime - stimec
		
		If nvel <> 0 Then
			if abs(nvel) > abs(svel) then 
				svel = -sgn(svel)*abs(nvel)
			Else
				svel = -svel * sdecay
			End If

			nvel = 0
		Else
			svel = -svel * sdecay
		End If

		stimef = TimeF(MaxDisplacement(svel, sacc), sacc)

		If stimec > stimef Then
			svel = 0
			sdisp  = 0			
		End If
	End If

	velM = svel * stimec / 1000
	accM = (sacc * (stimec / 1000)^2) / 2

	If svel < 0 Then
		sdisp = velM + accM
	ElseIf svel > 0 Then
		sdisp = velM - accM
	End If
End Sub

Function MaxDisplacement(velocity, acceleration)
	MaxDisplacement = Velocity^2/(2*acceleration)
End Function

Function TimeF(displacement, acceleration)
	TimeF = 1000*2*SQR(Abs(displacement)*acceleration*2)/acceleration
End Function



