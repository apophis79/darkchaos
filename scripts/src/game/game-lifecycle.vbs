


' '*********************************************************************************************************
' ' ZLIF : Game Lifecycle
' '*********************************************************************************************************



' ' BALL FUNCTIONS & DRAINS
' '**********************************************


' Sub ResetForNewGame
' 	WriteTOLog "-------------","NEW GAME"

' 	GameInit

' 	bIntroSegmentRan = False
' 	bGameInPlay = True
' 	StopAttractMode

' 	TotalGamesPlayed = TotalGamesPlayed + 1
' 	Savegp

' 	dim p : for each p in Player : p.reset : Next
	
' 	ResetForNewPlayerBall
' 	ReleaseNewBall

' End Sub



' Sub EndOfGame
' 	WriteTOLog "-------------","GAME OVER"
' 	'DMDBigText "GAME OVER",77,1
' 	DisableWaveTimer
' 	TurnOffPlayfieldLights
' 	StartAttractMode
' 	bGameInPlay = False
' 	bJustStarted = False
' 	SolLockPin False
' 	SolDiverterPin False
' 	BallsOnPlayfield = BallsOnPlayfield + BallsLocked
' 	BallsLocked = 0
' End Sub




' Sub ResetForNewPlayerBall
' 	WriteToLog "ResetForNewPlayerBall", ""
' 	If PlayersPlayingGame > 1 Then
' 		If CurrentPlayer = 1 Then

' 		Elseif currentplayer = 2 Then

' 		Elseif currentplayer = 3 Then

' 		Elseif currentplayer = 4 Then

' 		End If
' 	Else

' 	End If
' 	AddScore 0

' 	Player(CurrentPlayer).BonusPoints = 0

' 	ResetNewBallVariables
' 	ResetNewBallLights
' 	EnableWaveTimer TimeBtwWaves

' End Sub



' AutoPlungerDelay.interval = 350

' sub AutoPlungerDelay_timer
' 	WriteToLog "autoplunger", "Autofire the ball"
' 	PlungerIM.AutoFire
' 	SoundSaucerKick 1,swPlungerIM
' 	bAutoPlunger = False
' 	Me.enabled = False
' end sub


' Sub ReleaseNewBall
' 	AudioCallout "ball release"
' 	if Not bIntroSegmentRan Then 
' 		AudioCallout "intro segment 1" : AudioCallout "intro segment 2" : AudioCallout "intro segment 3"
' 		bIntroSegmentRan = True
' 	end if
' 	Balls2Eject = Balls2Eject + 1
' 	WriteToLog "ReleaseNewBall", "Balls2Eject = "  & Balls2Eject
' 	ReleaseBallTimer.Enabled = True
' End Sub


' Sub AddMultiball(nballs)
' 	bAutoPlunger = True
' 	Balls2Eject = Balls2Eject + nballs
' 	WriteToLog "AddMultiball", "Balls2Eject = "  & Balls2Eject
' 	ReleaseBallTimer.Enabled = True
' End Sub


' Sub KickoutNewBall
' 	SolRelease True
' 	Balls2Eject = Balls2Eject - 1
' 	BallsOnPlayfield = BallsOnPlayfield + 1
' 	WriteToLog "Balls2Eject", "Balls2Eject = "  & Balls2Eject
' 	WriteToLog "KickoutNewBall", "BallsOnPlayfield = "  & BallsOnPlayfield
' 	If BallsOnPlayfield > 1 Then
' 		bMultiBallMode = True
' 		bAutoPlunger = True
' 	End If
' End Sub


' ReleaseBallTimer.interval = 600  'this must be larger than AutoPlungerDelay timer interval
' Dim ReleaseTimeout : ReleaseTimeout = 0
' Sub ReleaseBallTimer_Timer()
' 	If bBallInPlungerLane or swTrough1.BallCntOver=0 Then
' 		ReleaseTimeout = ReleaseTimeout + 1
' 		WriteToLog "ReleaseBallTimer", "Not ready to release: BIP=" & bBallInPlungerLane & " BIT=" & swTrough1.BallCntOver & " ReleaseTimeout=" & ReleaseTimeout
' 		If ReleaseTimeout > 10 Then  'Timeout ball release if all are in play
' 			ReleaseTimeout = 0
' 			Balls2Eject = 0
' 			Me.Enabled = False
' 		End If
' 	Else
' 		KickoutNewBall
' 		ReleaseTimeout = 0
' 		If Balls2Eject = 0 Then 
' 			Me.Enabled = False
' 		End If
' 	End If
' End Sub




' Sub EndOfBall
' 	WriteToLog "EndOfBall", ""
' 	bMultiBallMode = False
' 	Player(CurrentPlayer).bInWave = False
' 	bOnTheFirstBall = False
' 	If NOT bTilted Then
' 		vpmtimer.addtimer 500, "EndOfBall2 '"
' 	Else 
' 		vpmtimer.addtimer 500, "EndOfBall2 '"
' 	End If
' End Sub



' Sub EndOfBall2
' 	WriteToLog "EndOfBall2", ""
' 	bTilted = False
' 	Tilt = 0
' 	MechTilt = 0
' 	DisableTable False
' 	If(Player(CurrentPlayer).ExtraBallsAwards <> 0) Then
' 		Player(CurrentPlayer).ExtraBallsAwards = Player(CurrentPlayer).ExtraBallsAwards - 1
' 		If(Player(CurrentPlayer).ExtraBallsAwards = 0) Then
' 			SetLampState LSA, 0
' 		End If
' 		SetHealth 9
' 		Player(CurrentPlayer).SaveLamps
' 		ResetForNewPlayerBall
' 		ReleaseNewBall
' 		'DMDBigText "SHOOT AGAIN",77,1
' 	Else
' 		Player(CurrentPlayer).BallsRemaining = Player(CurrentPlayer).BallsRemaining - 1
' 		DebugPrint "Player(CurrentPlayer).BallsRemaining = "&Player(CurrentPlayer).BallsRemaining 
' 		If(Player(CurrentPlayer).BallsRemaining <= 0) Then
' 			CheckHighScore
' 		Else
' 			EndOfBallComplete
' 		End If
' 	End If
' End Sub


' Sub EndOfBallComplete
' 	WriteToLog "EndOfBallComplete", ""
' 	ResetNewBallVariables
' 	Dim NextPlayer
' 	If(PlayersPlayingGame> 1) Then
' 		NextPlayer = CurrentPlayer + 1
' 		If(NextPlayer> PlayersPlayingGame) Then
' 			NextPlayer = 1
' 		End If
' 	Else
' 		NextPlayer = CurrentPlayer
' 	End If
' 	If (Player(CurrentPlayer).BallsRemaining <= 0) And (Player(NextPlayer).BallsRemaining <= 0) Then
' 		EndOfGame
' 	Else
' 		SetHealth 9
' 		Player(CurrentPlayer).SaveLamps
' 		CurrentPlayer = NextPlayer
' 		ResetForNewPlayerBall
' 		ReleaseNewBall
' 		If PlayersPlayingGame > 1 Then
' 			'PlaySound "vo_player" &CurrentPlayer
' 		End If
' 	End If
' End Sub


' Sub HandleDrain
' 	BallsOnPlayfield = BallsOnPlayfield - 1
' 	WriteToLog "Drain_Hit", "BallsOnPlayfield = "  & BallsOnPlayfield
' 	If bTilted Then
' 		StopEndOfBallMode
' 	End If
' 	If(bGameInPLay = True) And (bTilted = False) Then
' 		If (bBallSaverActive = True) Then
' 			AddMultiball 1
' 			If bMultiBallMode = False Then
' 				'Ballsaved
' 				AudioCallout "ballsave"
' 				'DMDBigText "Ball Saved",77,1
' 				BallSaverCancel
' 			End If
' 		Else
' 			If(BallsOnPlayfield = 1) Then
' 				bMultiBallMode = False		
' 			End If
' 			If(BallsOnPlayfield = 0) Then
' 				AudioCallout "drain"
' 				'DMDBigText "Ball Drained",77,1
' 				vpmtimer.addtimer 1000, "BallDrained '"
' 				vpmtimer.addtimer 2000, "EndOfBall '"
' 				StopEndOfBallMode
' 			End If
' 		End If
' 	End If
' End Sub


' Sub BallDrained

' End Sub



' ' BALL SAVE & LAUNCH
' '**********************************************



' Sub EnableBallSaver(seconds)
' 	bBallSaverActive = True
' 	bBallSaverReady = False
' 	BallSaverTimerExpired.Interval = 1000 * seconds
' 	BallSaverTimerExpired.Enabled = True
' 	BallSaverSpeedUpTimer.Interval = 1000 * seconds -(1000 * seconds) / 3
' 	BallSaverSpeedUpTimer.Enabled = True
' 	' if you have a ball saver light you might want to turn it on at this point (or make it flash)
' 	SetBlinkState LSA,2,160,"10"
' End Sub

' ' The ball saver timer has expired.  Turn it off AND reset the game flag
' '
' Sub BallSaverTimerExpired_Timer
' 	'DebugPrint "Ballsaver ended"
' 	BallSaverTimerExpired.Enabled = False
' 	vpmtimer.addtimer 2000, "BallSaveGrace'"
' 	' if you have a ball saver light then turn it off at this point
' 	If Player(CurrentPlayer).ExtraBallsAwards > 0 Then
' 		SetLampState LSA,1
' 	Else
' 		SetLampState LSA,0
' 	End If
' End Sub

' Sub BallSaveGrace
' 	bBallSaverActive = False
' End Sub

' Sub BallSaverSpeedUpTimer_Timer()
' 	'DebugPrint "Ballsaver Speed Up Light"
' 	BallSaverSpeedUpTimer.Enabled = False
' 	' Speed up the blinking
' 	SetBlinkState LSA,2,80,"10"
' End Sub

' Sub BallSaverCancel
' 	bBallSaverActive = False
' 	BallSaverTimerExpired.Enabled = False
' 	BallSaverSpeedUpTimer.Enabled = False
' 	If Player(CurrentPlayer).ExtraBallsAwards > 0 Then
' 		SetLampState LSA,1
' 	Else
' 		SetLampState LSA,0
' 	End If
' End Sub




' ' GAME STARTING & RESETS
' '**********************************************


' Sub GameInit	'called at the start of a new game
' 	'Reset game variables
' 	Tilt = 0
' 	MechTilt = 0
' 	TiltSensitivity = 5
' 	bTilted = False
' 	bMechTiltJustHit = False

' 	Balls2Eject = 0
' 	BallsOnPlayfield = 0
' 	BallsLocked = 0

' 	bAutoPlunger = False
' 	bAttractMode = False
' 	bGameInPlay = False

' 	bMysteryActive = False
' 	bWaveTimerPaused = False
' 	bMultiBallMode = False
' 	bBallInPlungerLane = False
' 	bBallSaverActive = False
' 	bBallSaverReady = False
' 	bMusicOn = True
' 	bJustStarted = True
' 	bStartOfNewBall = False
' 	bFlippersEnabled = True

' 	CurrentPlayer = 1
' 	PointMultiplier = 1
' 	PointMultiplierLimit = True
' 	bOnTheFirstBall = True
' 	bSkillshotAvailable = True

' 	bEarthJustHit = False

' 	SolLockPin False
' 	SolDiverterPin False

' 	DisableWaveTimer
' End Sub


' Sub StopEndOfBallMode	'this sub is called after the last ball is drained
' 	ResetSkillShotTimer_Timer
' 	FailWave
' 	CancelTimeWarp
' 	CancelMystery
' 	bMultiBallMode = False
' 	Player(CurrentPlayer).bInWave = False
' 	bWaveTimerPaused = True
' 	If Not bFlippersEnabled Then SetHealth 9  'set health back to full if death due to damage
' End Sub


' Sub ResetNewBallVariables
' 	bStartOfNewBall = True
' 	bWaveTimerPaused = True
' 	bWaveFailed = False
' 	bMysteryActive = False
' 	bBallSaverReady = True
' 	bSkillShotReady = True
' 	bFlippersEnabled = True
' End Sub


' Sub TurnOffPlayfieldLights
' 	Dim a
' 	For each a in AllControlLights
' 		SetLampState a,0
' 	Next
' End Sub

' Sub ResetNewBallLights		'turn on or off the needed lights before a new ball is released
' 	TurnOffPlayfieldLights
' 	Player(CurrentPlayer).RestoreLamps
' 	CheckMoonLockReady
' End Sub

