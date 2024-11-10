
'*******************************************
'  ZINI : Table Initialization
'*******************************************

Dim PBall1, PBall2, PBall3, PBall4, PBall5, gBOT
Dim Player0, Player1, Player2, Player3, Player4, Player
Dim GrabMag

Sub Table1_Init

	' Debug logs
	NewLog
	WriteToLog "-------------", "TABLE INIT"

	' Controller
	LoadCoreFiles
	LoadEM

	'Ball initializations need for physical trough
	Set PBall1 = swTrough1.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall2 = swTrough2.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall3 = swTrough3.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall4 = swTrough4.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall5 = swTrough5.CreateSizedballWithMass(Ballsize/2,Ballmass)

	'*** Use gBOT in the script wherever BOT is normally used. Then there is no need for GetBalls calls ***
	gBOT = Array(PBall1, PBall2, PBall3, PBall4, PBall5)

	'Initialize Players
	Set Player0 = New PlayerState
	Set Player1 = New PlayerState
	Set Player2 = New PlayerState
	Set Player3 = New PlayerState
	Set Player4 = New PlayerState
	Player = Array(Player0,Player1,Player2,Player3,Player4)
	

	' Grab magnet
    Set GrabMag= New cvpmMagnet
    With GrabMag
        .InitMagnet GrabMagnet, 16  
        .GrabCenter = False
		.strength = 12
        .CreateEvents "GrabMag"
    End With

	'Impulse Plunger as autoplunger
	Const IMPowerSetting = 60 ' Plunger Power
	Const IMTime = 1.1        ' Time in seconds for Full Plunge
	Set plungerIM = New cvpmImpulseP
	With plungerIM
		.InitImpulseP swPlungerIM, IMPowerSetting, IMTime
		.Random 1.5
		.InitExitSnd SoundFX("mfx_Saucer_Kick", DOFContactors), SoundFX("mfx_Relay_On", DOFContactors)
		.CreateEvents "plungerIM"
	End With

	' Setup lamp assignments
	InitLampStates

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

	' Turn off the bumper lights
	SetLampState LB1,0
	SetLampState LB2,0
	SetLampState LB3,0
	SetLampState LB4,0

	' Turn off the Flashers
	Flash1 False
	Flash2 False
	Flash3 False
	Flash4 False
	Flash5 False
	Flash6 False

	'Drop targets Init (all dropped)
    InitMeteors
	SolDT1 False
	SolDT2 False
	SolDT3 False
	SolDT4 False

	'Segmented Displays
	InitSegDisplays

	' Turn on the GI lights
	dim xx
	For Each xx in GI
		xx.state = 1
	Next

'	' Turn on light squencer
'	LightSeq001.updateinterval = 100
'	LightSeq001.play SeqRandom,2,,1000000


	' Game variables
	GameInit

	' Game
	LoadHS

	StartAttractMode
	'SetLampState LSpot1,1
	LStars.state = 1

	' Spin the asteroid
	'SolSpinAsteroid true

End Sub


Sub Table1_Exit
	WriteToLog "Table1_Exit", ""
	If B2SOn Then
		Controller.Pause = False
		Controller.Stop
	End If
End Sub


Sub Table1_Paused
	WriteToLog "Table1_Paused", ""
End Sub


Sub Table1_UnPaused
	WriteToLog "Table1_UnPaused", ""
End Sub


