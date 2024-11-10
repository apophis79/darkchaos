
'****************************************************************
'  ZSLN : Slingshots
'****************************************************************

Dim LStep : LStep = 0 : LeftSlingShot.TimerEnabled = 1
Dim RStep : RStep = 0 : RightSlingShot.TimerEnabled = 1

Sub RightSlingShot_Slingshot
	SwitchWasHit "RightSlingShot"
	Flash6 True
	RS.VelocityCorrect(ActiveBall)
	Addscore 10
	RStep = 0
	RightSlingShot_Timer
	RightSlingShot.TimerEnabled = 1
	RightSlingShot.TimerInterval = 17
	RandomSoundSlingshotRight BM_RArm
End Sub

Sub RightSlingShot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case RStep
        Case 2:x1 = False:x2 = True:y = 10
        Case 3:x1 = False:x2 = False:y = 0:RightSlingShot.TimerEnabled = 0
    End Select

	For Each BL in BP_RSling1 : BL.Visible = x1: Next
	For Each BL in BP_RSling2 : BL.Visible = x2: Next
	For Each BL in BP_RArm : BL.transx = y: Next

    RStep = RStep + 1
End Sub



Sub LeftSlingShot_Slingshot
	SwitchWasHit "LeftSlingShot"
	Flash5 True
	LS.VelocityCorrect(ActiveBall)
	Addscore 10
	LStep = 0
	LeftSlingShot_Timer
	LeftSlingShot.TimerEnabled = 1
	LeftSlingShot.TimerInterval = 17
	RandomSoundSlingshotLeft BM_LArm
End Sub

Sub LeftSlingShot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case LStep
        Case 3:x1 = False:x2 = True:y = 10
        Case 4:x1 = False:x2 = False:y = 0:LeftSlingShot.TimerEnabled = 0
    End Select
	
	For Each BL in BP_LSling1 : BL.Visible = x1: Next
	For Each BL in BP_LSling2 : BL.Visible = x2: Next
	For Each BL in BP_LArm : BL.transx = y: Next

    LStep = LStep + 1
End Sub


