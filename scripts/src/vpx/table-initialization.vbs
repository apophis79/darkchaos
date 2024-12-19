
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
        .InitMagnet GrabMagnet, 20  
        .GrabCenter = False
		.strength = 15
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices
	Glf_Init


	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

	' StartAttractMode
	'SetLampState LSpot1,1
	LStars.state = 1       	'FIXME need to do this using GLF

	' Spin the asteroid
	SolSpinAsteroid true	'FIXME need to do this using GLF
	
	RaiseDiverterPin false	'FIXME need to do this using GLF
	GrabMagnetAction false	'FIXME need to do this using GLF

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
