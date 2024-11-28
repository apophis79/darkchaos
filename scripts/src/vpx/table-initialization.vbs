
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
        .InitMagnet GrabMagnet, 16  
        .GrabCenter = False
		.strength = 12
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices
	Glf_Init

	' 'Initialize Players
	' Set Player0 = New PlayerState
	' Set Player1 = New PlayerState
	' Set Player2 = New PlayerState
	' Set Player3 = New PlayerState
	' Set Player4 = New PlayerState
	' Player = Array(Player0,Player1,Player2,Player3,Player4)

	' Setup lamp assignments
	'InitLampStates 

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

	

	' 'Drop targets Init (all dropped)
    ' 'InitMeteors
	' SolDT1 False
	' SolDT2 False
	' SolDT3 False
	' SolDT4 False

	'Segmented Displays
	'InitSegDisplays

	' Game variables
	' GameInit

	' Game
	' LoadHS

	' StartAttractMode
	'SetLampState LSpot1,1
	LStars.state = 1

	' Spin the asteroid
	SolSpinAsteroid true
	
	RaiseDiverterPin false
	GrabMagnetAction false

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
