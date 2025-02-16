
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
		.strength = 15
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices
	Glf_Init

	' Desktop lights
	Dim x: For Each x In DesktopLights: x.visible = DesktopMode: Next

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

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
