
'*******************************************
'  ZFLP : Flippers
'*******************************************


' Flipper callbacks

Const ReflipAngle = 20
Dim LeftFlipperEnabled: LeftFlipperEnabled = False
Dim RightFlipperEnabled: RightFlipperEnabled = False
Dim RightFlipper1Enabled: RightFlipperEnabled = False

Sub LeftFlipperAction(Enabled)
	If Enabled And LeftFlipperEnabled Then
		DOF 101, DOFOn
		FlipperActivate LeftFlipper, LFPress
		LF.Fire    
		If LeftFlipper.currentangle < LeftFlipper.endangle + ReflipAngle Then 
			RandomSoundReflipUpLeft LeftFlipper
		Else 
			SoundFlipperUpAttackLeft LeftFlipper
			RandomSoundFlipperUpLeft LeftFlipper
		End If
	Else
		DOF 101, DOFOff
		FlipperDeActivate LeftFlipper, LFPress
		LeftFlipper.RotateToStart
		If LeftFlipper.currentangle < LeftFlipper.startAngle - 5 Then
			RandomSoundFlipperDownLeft LeftFlipper
		End If
		FlipperLeftHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub LeftFlipperActionGLF(Enabled)
	If Enabled Then
		If glf_flippers("left").GetValue("enabled") Then
			LeftFlipperEnabled = True
		End If
	Else
		If Not glf_flippers("left").GetValue("enabled") Then
			LeftFlipperEnabled = False
			LeftFlipperAction False
		End If
	End If
End Sub

Sub RightFlipperAction(Enabled)
	If Enabled And RightFlipperEnabled Then
		DOF 102, DOFOn
		FlipperActivate RightFlipper, RFPress
		RF.Fire 
		If StagedFlipper = 0 Then RightFlipper1.rotatetoend
		If RightFlipper.currentangle > RightFlipper.endangle - ReflipAngle Then
			RandomSoundReflipUpRight RightFlipper
		Else 
			SoundFlipperUpAttackRight RightFlipper
			RandomSoundFlipperUpRight RightFlipper
		End If
	Else
		DOF 102, DOFOff
		FlipperDeActivate RightFlipper, RFPress
		RightFlipper.RotateToStart
		If StagedFlipper = 0 Then RightFlipper1.RotateToStart
		If RightFlipper.currentangle > RightFlipper.startAngle + 5 Then
			RandomSoundFlipperDownRight RightFlipper
		End If	
		FlipperRightHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub RightFlipperActionGLF(Enabled)
	If Enabled Then
		If glf_flippers("right").GetValue("enabled") Then
			RightFlipperEnabled = True
		End If
	Else
		If Not glf_flippers("left").GetValue("enabled") Then
			RightFlipperEnabled = False
			RightFlipperAction False
		End If
	End If
End Sub

Sub RightFlipper1Action(Enabled)
	If StagedFlipper = 0 Then Exit Sub
	If Enabled And RightFlipperEnabled Then
		RightFlipper1.rotatetoend
		If RightFlipper1.currentangle > RightFlipper1.endangle - ReflipAngle Then
			RandomSoundReflipUpRight RightFlipper1
		Else 
			SoundFlipperUpAttackRight RightFlipper1
			RandomSoundFlipperUpRight RightFlipper1
		End If
	Else
		RightFlipper1.RotateToStart
		If RightFlipper1.currentangle > RightFlipper1.startAngle + 5 Then
			RandomSoundFlipperDownRight RightFlipper1
		End If	
		FlipperRightHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub RightFlipper1ActionGLF(Enabled)
	If Enabled Then
		If glf_flippers("upper_right").GetValue("enabled") Then
			RightFlipper1Enabled = True
		End If
	Else
		If Not glf_flippers("upper_right").GetValue("enabled") Then
			RightFlipper1Enabled = False
			RightFlipper1Action False
		End If
	End If
End Sub


' Flipper collide subs
Sub LeftFlipper_Collide(parm)
	CheckLiveCatch ActiveBall, LeftFlipper, LFCount, parm
	LF.ReProcessBalls ActiveBall
	LeftFlipperCollide parm
End Sub

Sub RightFlipper_Collide(parm)
	CheckLiveCatch ActiveBall, RightFlipper, RFCount, parm
	RF.ReProcessBalls ActiveBall
	RightFlipperCollide parm
End Sub

Sub RightFlipper1_Collide(parm)
	RightFlipperCollide parm
End Sub