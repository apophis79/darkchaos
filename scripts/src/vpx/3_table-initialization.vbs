
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

	' Init some other things
	InitSomeThings
	
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
