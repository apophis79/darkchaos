
'*******************************************
' ZSWI : Switch hits and handling
'*******************************************



' Sub swPlunger1_Hit
' 	SwitchWasHit "swPlunger1"
' 	bBallInPlungerLane = True
' 	If bAutoPlunger or SwitchRecentlyHit("swPlunger2") or Not bStartOfNewBall Then
' 		autoplungerdelay.enabled = True
' 	End If
' 	If bSkillShotReady Then
' 		UpdateSkillshot
' 	End If
' End Sub

' Sub swPlunger1_UnHit
' 	bBallInPlungerLane = False
' 	If bSkillShotReady Then
' 		ResetSkillShotTimer.Enabled = True
' 	End If
' 	If bStartOfNewBall Then
' 		bStartOfNewBall = False
' 		bWaveTimerPaused = False
' 	End If
' End Sub


' Sub swPlunger2_Hit
' 	SwitchWasHit "swPlunger2"
' 	If (bBallSaverReady = True) And (bBallSaverActive = False) Then
' 		EnableBallSaver 10
' 	End If
' End Sub



' Sub swLeftOutlane_Hit
' 	SwitchWasHit "swLeftOutlane"
' 	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LLO,1,MoonMissleColor,7,3,3,1
' 	CheckMoonLockReady
' 	If Player(CurrentPlayer).bShieldsOn and Not bBallSaverActive Then 
' 		AddMultiball 1
' 		ShieldsDown
' 	End If
' End Sub

' Sub swLeftInlane_Hit
' 	SwitchWasHit "swLeftInlane"
' 	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LLI,1,MoonMissleColor,7,3,3,1
' 	CheckMoonLockReady
' 	activeball.vely = activeball.vely*0.9
' 	activeball.angmomz = 0
' End Sub

' Sub swRightInlane_Hit
' 	SwitchWasHit "swRightInlane"
' 	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LRI,1,MoonMissleColor,7,3,3,1
' 	CheckMoonLockReady
' 	activeball.vely = activeball.vely*0.9
' 	activeball.angmomz = 0
' End Sub

' Sub swRightOutlane_Hit
' 	SwitchWasHit "swRightOutlane"
' 	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LRO,1,MoonMissleColor,7,3,3,1
' 	CheckMoonLockReady
' 	If Player(CurrentPlayer).bShieldsOn and Not bBallSaverActive Then 
' 		AddMultiball 1
' 		ShieldsDown
' 	End If
' End Sub



' Sub swLeftBumper1_Hit
' 	SwitchWasHit "swLeftBumper1"
' 	If SwitchRecentlyHit("swLeftBumper2") Then 
' 		DebugPrint "Left SemiOrb - Down"
' 		AwardSecretSkillShot
' 		CheckCombo
' 	End If
' End Sub

' Sub swLeftBumper2_Hit
' 	SwitchWasHit "swLeftBumper2"
' 	If SwitchRecentlyHit("swLeftBumper1") Then 
' 		DebugPrint "Left SemiOrb - Up"
' 		CheckCombo
' 	End If
' End Sub

' Sub swCenterOrb1_Hit
' 	SwitchWasHit "swCenterOrb1"
' 	If SwitchRecentlyHit("swCenterOrb3") and SwitchRecentlyHit("swCenterOrb2")  Then 
' 		DebugPrint "Center Orbit - Counter Clockwise"
' 		CheckProtonCharge
' 		CheckCombo
' 		FireProtonRound
' 		BlinkTrail baProtonChargeCCW,ProtonColor,2,5,10,5,1  
' 	End If
' End Sub

' Sub swCenterOrb2_Hit
' 	SwitchWasHit "swCenterOrb2"
' End Sub

' Sub swCenterOrb3_Hit
' 	SwitchWasHit "swCenterOrb3"
' 	If SwitchRecentlyHit("swCenterOrb1") and SwitchRecentlyHit("swCenterOrb2")  Then 
' 		DebugPrint "Center Orbit - Clockwise"
' 		CheckProtonCharge
' 		CheckCombo
' 		FireProtonRound
' 		BlinkTrail baProtonChargeCW,ProtonColor,2,5,10,5,1  
' 	End If
' End Sub

' Sub swInnerOrb1_Hit
' 	SwitchWasHit "swInnerOrb1"
' 	ResetSkillShotTimer_Timer
' End Sub


' Sub swInnerOrb2_Hit
' 	SwitchWasHit "swInnerOrb2"
' 	If SwitchRecentlyHit("swInnerOrb1") Then 
' 		DebugPrint "Inner Orbit"
' 		bInnerOrbRecentlyHit = True
' 		vpmTimer.AddTimer 500,"bInnerOrbRecentlyHit = False'"
' 		CheckProtonCharge
' 		CheckCombo
' 	End If
' End Sub

' Sub swLeftOrb1_Hit
' 	SwitchWasHit "swLeftOrb1"
' End Sub

' Sub swLeftOrb2_Hit
' 	SwitchWasHit "swLeftOrb2"
' 	If SwitchRecentlyHit("swLeftOrb1") Then 
' 		DebugPrint "Left Outer Orbit"
' 		CheckClusterCharge
' 		CheckCombo
' 	End If
' End Sub

' Sub swRightOrb1_Hit
' 	SwitchWasHit "swRightOrb1"
' End Sub

' Sub swRightOrb2_Hit
' 	SwitchWasHit "swRightOrb2"
' 	bInnerOrbRecentlyHit = False
' 	If SwitchRecentlyHit("swRightOrb1") Then 
' 		DebugPrint "Right Outer Orbit"
' 		CheckFortify
' 		CheckCombo
' 	End If
' End Sub




'  Ramp Triggers
'*******************************************
Sub swRamp1_hit
	' SwitchWasHit "swRamp1"
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

' Sub swRamp2_hit
' 	SwitchWasHit "swRamp2"
' 	WireRampOff
' 	WireRampOn False 'wire
' 	CheckTimeWarp
' 	CheckCombo
' 	If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot proton" : ReloadProtonRound
' End Sub

Sub swRamp3_hit
	' SwitchWasHit "swRamp3"
	WireRampOff
End Sub

Sub swRamp4_hit
	' SwitchWasHit "swRamp4"
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

Sub swRamp5_hit
	' SwitchWasHit "swRamp5"
	WireRampOff
End Sub

Sub swRamp6_hit
	' SwitchWasHit "swRamp6"
	WireRampOn True 'plastic
End Sub

' Sub swRamp7_hit
' 	SwitchWasHit "swRamp7"
' 	WireRampOff
' 	WireRampOn False 'wire
' 	CheckMoonLock
' 	CheckCombo
' 	If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot cluster" : ReloadClusterRound 
' End Sub

Sub swRamp8_hit
	' SwitchWasHit "swRamp8"
	WireRampOff
End Sub

Sub swRamp9_hit
	WireRampOn False 'wire
End Sub

' '  Lock Triggers
' '*******************************************


' Sub swLock1_Hit
' 	SwitchWasHit "swLock1"
' 	swLock1State = 1
' 	swLock1.Timerenabled = True
' End Sub

' Sub swLock1_UnHit
' 	swLock1State = 0
' 	swLock1.Timerenabled = False
' End Sub

' Sub swLock2_Hit
' 	SwitchWasHit "swLock2"
' 	swLock2State = 1
' 	swLock2.Timerenabled = True
' End Sub

' Sub swLock2_UnHit
' 	swLock2State = 0
' 	swLock2.Timerenabled = False
' End Sub

' Sub swLock3_Hit
' 	SwitchWasHit "swLock3"
' 	swLock3State = 1
' 	swLock3.Timerenabled = True
' End Sub

' Sub swLock3_UnHit
' 	swLock3State = 0
' 	swLock3.Timerenabled = False
' End Sub



' '  Switch Hit Timing Handler
' '*******************************************

' Dim SwitchHitTimes(50)
' Const SwitchHitRecentlyTime = 500  'this threshold determines if a swtich was recently hit

' Sub SwitchWasHit(swName)
' 	Select Case swName
' 		Case "swPlunger1" 			: SwitchHitTimes(1) = gametime
' 		Case "swPlunger2" 			: SwitchHitTimes(2) = gametime
' 		Case "swLeftOutlane" 		: SwitchHitTimes(3) = gametime
' 		Case "swLeftInlane" 		: SwitchHitTimes(4) = gametime
' 		Case "swRightInlane" 		: SwitchHitTimes(5) = gametime
' 		Case "swRightOutlane" 		: SwitchHitTimes(6) = gametime
' 		Case "swLeftBumper1" 		: SwitchHitTimes(7) = gametime
' 		Case "swLeftBumper2" 		: SwitchHitTimes(8) = gametime
' 		Case "swCenterOrb1" 		: SwitchHitTimes(9) = gametime
' 		Case "swCenterOrb2" 		: SwitchHitTimes(10) = gametime
' 		Case "swCenterOrb3" 		: SwitchHitTimes(11) = gametime
' 		Case "swInnerOrb1" 			: SwitchHitTimes(12) = gametime
' 		Case "swInnerOrb2" 			: SwitchHitTimes(13) = gametime
' 		Case "swLeftOrb1" 			: SwitchHitTimes(14) = gametime
' 		Case "swLeftOrb2" 			: SwitchHitTimes(15) = gametime
' 		Case "swRightOrb1" 			: SwitchHitTimes(16) = gametime
' 		Case "swRightOrb2" 			: SwitchHitTimes(17) = gametime
' 		Case "KickerScoop" 			: SwitchHitTimes(18) = gametime
' 		Case "swRamp1" 				: SwitchHitTimes(19) = gametime
' 		Case "swRamp2" 				: SwitchHitTimes(20) = gametime
' 		Case "swRamp3" 				: SwitchHitTimes(21) = gametime
' 		Case "swRamp4" 				: SwitchHitTimes(22) = gametime
' 		Case "swRamp5" 				: SwitchHitTimes(23) = gametime
' 		Case "swRamp6" 				: SwitchHitTimes(24) = gametime
' 		Case "swRamp7" 				: SwitchHitTimes(25) = gametime
' 		Case "swRamp8" 				: SwitchHitTimes(26) = gametime
' 		Case "TargetMystery1"		: SwitchHitTimes(27) = gametime
' 		Case "TargetMystery2"		: SwitchHitTimes(28) = gametime
' 		Case "TargetMystery3"		: SwitchHitTimes(29) = gametime
' 		Case "TargetMystery4"		: SwitchHitTimes(30) = gametime
' 		Case "TargetMystery5"		: SwitchHitTimes(31) = gametime
' 		Case "TargetShield1"		: SwitchHitTimes(32) = gametime
' 		Case "TargetShield2"		: SwitchHitTimes(33) = gametime
' 		Case "TargetShield3"		: SwitchHitTimes(34) = gametime
' 		Case "TargetShield4"		: SwitchHitTimes(35) = gametime
' 		Case "DTMeteor1"			: SwitchHitTimes(36) = gametime
' 		Case "DTMeteor2"			: SwitchHitTimes(37) = gametime
' 		Case "DTMeteor3"			: SwitchHitTimes(38) = gametime
' 		Case "DTMeteor4"			: SwitchHitTimes(39) = gametime
' 		Case "Bumper1"				: SwitchHitTimes(40) = gametime
' 		Case "Bumper2"				: SwitchHitTimes(41) = gametime
' 		Case "Bumper3"				: SwitchHitTimes(42) = gametime
' 		Case "Bumper4"				: SwitchHitTimes(43) = gametime
' 		Case "RightSlingShot"		: SwitchHitTimes(44) = gametime
' 		Case "LeftSlingShot"		: SwitchHitTimes(45) = gametime
' 		Case "swLock1" 				: SwitchHitTimes(46) = gametime
' 		Case "swLock2" 				: SwitchHitTimes(47) = gametime
' 		Case "swLock3" 				: SwitchHitTimes(48) = gametime
' 	End Select
' End Sub

' Function SwitchRecentlyHit(swName)
' 	dim delta : delta = SwitchHitRecentlyTime + 1
' 	Select Case swName
' 		Case "swPlunger1" 			: delta = gametime - SwitchHitTimes(1)
' 		Case "swPlunger2" 			: delta = gametime - SwitchHitTimes(2)
' 		Case "swLeftOutlane" 		: delta = gametime - SwitchHitTimes(3)
' 		Case "swLeftInlane" 		: delta = gametime - SwitchHitTimes(4)
' 		Case "swRightInlane" 		: delta = gametime - SwitchHitTimes(5)
' 		Case "swRightOutlane" 		: delta = gametime - SwitchHitTimes(6)
' 		Case "swLeftBumper1" 		: delta = gametime - SwitchHitTimes(7)
' 		Case "swLeftBumper2" 		: delta = gametime - SwitchHitTimes(8)
' 		Case "swCenterOrb1" 		: delta = gametime - SwitchHitTimes(9)
' 		Case "swCenterOrb2" 		: delta = gametime - SwitchHitTimes(10)
' 		Case "swCenterOrb3" 		: delta = gametime - SwitchHitTimes(11)
' 		Case "swInnerOrb1" 			: delta = gametime - SwitchHitTimes(12)
' 		Case "swInnerOrb2" 			: delta = gametime - SwitchHitTimes(13)
' 		Case "swLeftOrb1" 			: delta = gametime - SwitchHitTimes(14)
' 		Case "swLeftOrb2" 			: delta = gametime - SwitchHitTimes(15)
' 		Case "swRightOrb1" 			: delta = gametime - SwitchHitTimes(16)
' 		Case "swRightOrb2" 			: delta = gametime - SwitchHitTimes(17)
' 		Case "KickerScoop" 			: delta = gametime - SwitchHitTimes(18)
' 		Case "swRamp1" 				: delta = gametime - SwitchHitTimes(19)
' 		Case "swRamp2" 				: delta = gametime - SwitchHitTimes(20)
' 		Case "swRamp3" 				: delta = gametime - SwitchHitTimes(21)
' 		Case "swRamp4" 				: delta = gametime - SwitchHitTimes(22)
' 		Case "swRamp5" 				: delta = gametime - SwitchHitTimes(23)
' 		Case "swRamp6" 				: delta = gametime - SwitchHitTimes(24)
' 		Case "swRamp7" 				: delta = gametime - SwitchHitTimes(25)
' 		Case "swRamp8" 				: delta = gametime - SwitchHitTimes(26)
' 		Case "TargetMystery1"		: delta = gametime - SwitchHitTimes(27)
' 		Case "TargetMystery2"		: delta = gametime - SwitchHitTimes(28)
' 		Case "TargetMystery3"		: delta = gametime - SwitchHitTimes(29)
' 		Case "TargetMystery4"		: delta = gametime - SwitchHitTimes(30)
' 		Case "TargetMystery5"		: delta = gametime - SwitchHitTimes(31)
' 		Case "TargetShield1"		: delta = gametime - SwitchHitTimes(32)
' 		Case "TargetShield2"		: delta = gametime - SwitchHitTimes(33)
' 		Case "TargetShield3"		: delta = gametime - SwitchHitTimes(34)
' 		Case "TargetShield4"		: delta = gametime - SwitchHitTimes(35)
' 		Case "DTMeteor1"			: delta = gametime - SwitchHitTimes(36)
' 		Case "DTMeteor2"			: delta = gametime - SwitchHitTimes(37)
' 		Case "DTMeteor3"			: delta = gametime - SwitchHitTimes(38)
' 		Case "DTMeteor4"			: delta = gametime - SwitchHitTimes(39)
' 		Case "Bumper1"				: delta = gametime - SwitchHitTimes(40)
' 		Case "Bumper2"				: delta = gametime - SwitchHitTimes(41)
' 		Case "Bumper3"				: delta = gametime - SwitchHitTimes(42)
' 		Case "Bumper4"				: delta = gametime - SwitchHitTimes(43)
' 		Case "RightSlingShot"		: delta = gametime - SwitchHitTimes(44)
' 		Case "LeftSlingShot"		: delta = gametime - SwitchHitTimes(45)
' 		Case "swLock1" 				: delta = gametime - SwitchHitTimes(46)
' 		Case "swLock2" 				: delta = gametime - SwitchHitTimes(47)
' 		Case "swLock3" 				: delta = gametime - SwitchHitTimes(48)
' 	End Select
' 	If delta < SwitchHitRecentlyTime Then
' 		SwitchRecentlyHit = True
' 	Else
' 		SwitchRecentlyHit = False
' 	End If
' End Function





