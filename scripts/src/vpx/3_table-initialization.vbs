
'*******************************************
'  ZINI : Table Initialization
'*******************************************

Sub Table1_Init

	' Controller
	LoadCoreFiles
	LoadEM

    ' Grab magnet
    Set GrabMag = New cvpmMagnet
    With GrabMag
        .InitMagnet GrabMagnet, 30  
        .GrabCenter = False
		.strength = 20
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices
	Glf_Init(Table1)

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection
	LStep = 0 : s_LeftSlingshot.TimerEnabled = 1
	RStep = 0 : s_RightSlingshot.TimerEnabled = 1
	TStep = 0 : s_TopSlingshot.TimerEnabled = 1

	' Init VR things
	InitVR

End Sub


Sub Table1_Exit
	Glf_Exit
	If B2SOn Then
		Controller.Pause = False
		Controller.Stop
	End If
End Sub


Sub Table1_Paused
End Sub


Sub Table1_UnPaused
End Sub
