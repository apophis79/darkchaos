
'****************************************************************
'  ZSLN : Slingshots
'****************************************************************

Dim LStep : LStep = 0 : s_LeftSlingshot.TimerEnabled = 1
Dim RStep : RStep = 0 : s_RightSlingshot.TimerEnabled = 1


Sub LeftSlingshotAction(args)
	Dim enabled, ball : enabled = args(0)
	If enabled then
		If Not IsNull(args(1)) Then
			LS.VelocityCorrect(args(1))
		End If
		LStep = 0
		s_LeftSlingshot_Timer
		s_LeftSlingshot.TimerEnabled = 1
		s_LeftSlingshot.TimerInterval = 17
		RandomSoundSlingshotLeft BM_LArm
		DOF 103, DOFPulse
	End If
End Sub

Sub LeftSlingshotDisabled()
	s_LeftSlingshot.Disabled = True
End Sub

Sub LeftSlingshotEnabled()
	s_LeftSlingshot.Disabled = False
End Sub

Sub s_LeftSlingshot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case LStep
        Case 3:x1 = False:x2 = True:y = 10
        Case 4:x1 = False:x2 = False:y = 0: s_LeftSlingshot.TimerEnabled = 0
    End Select
	
	For Each BL in BP_LSling1 : BL.Visible = x1: Next
	For Each BL in BP_LSling2 : BL.Visible = x2: Next
	For Each BL in BP_LArm : BL.transx = y: Next

    LStep = LStep + 1
End Sub


Sub RightSlingshotAction(args)
	Dim enabled, ball : enabled = args(0)
	If enabled then
		If Not IsNull(args(1)) Then
			RS.VelocityCorrect(args(1))
		End If
		RStep = 0
		s_RightSlingshot_Timer
		s_RightSlingshot.TimerEnabled = 1
		s_RightSlingshot.TimerInterval = 17
		RandomSoundSlingshotRight BM_RArm
		DOF 104, DOFPulse
	End If
End Sub

Sub RightSlingshotDisabled()
	s_RightSlingshot.Disabled = True
End Sub

Sub RightSlingshotEnabled()
	s_RightSlingshot.Disabled = False
End Sub


Sub s_RightSlingshot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case RStep
        Case 2:x1 = False:x2 = True:y = 10
        Case 3:x1 = False:x2 = False:y = 0: s_RightSlingshot.TimerEnabled = 0
    End Select

	For Each BL in BP_RSling1 : BL.Visible = x1: Next
	For Each BL in BP_RSling2 : BL.Visible = x2: Next
	For Each BL in BP_RArm : BL.transx = y: Next

    RStep = RStep + 1
End Sub





