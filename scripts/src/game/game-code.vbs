

' '*********************************************************************************************************
' ' ZGAM : Game code
' '*********************************************************************************************************


' ' SKILLSHOT
' '**********************************************

' Sub UpdateSkillShot 'Updates the skillshot light
' 	SetLampState LM2,2
' 	SetLampColor LM2,"green"
' End Sub

' Sub ResetSkillShotTimer_Timer 'timer to reset the skillshot lights & variables
' 	ResetSkillShotTimer.Interval = 3000
' 	ResetSkillShotTimer.Enabled = False
' 	bSkillShotReady = False
' 	If LampState(LM2) = 2 then 
' 		SetLampState LM2,0
' 		SetLampColor LM2,MysteryColor
' 	End If
' End Sub

' Sub AwardSkillShot
' 	If bSkillShotReady and Not bInnerOrbRecentlyHit Then
' 		AudioCallout "skillshot" 
' 		'DMDBigText "Skill Shot",77,1
' 		ResetSkillShotTimer_Timer
' 		'Award SS
' 		If Player(CurrentPlayer).NumProtonRounds < 6 Then
' 			AddProtonRound
' 			ReloadProtonRound
' 		ElseIf Player(CurrentPlayer).NumClusterRounds < 2 Then
' 			AddClusterRound
' 			ReloadClusterRound
' 		Elseif Player(CurrentPlayer).TotalExtraBallsAwarded < MaxExtraBallsPerGame Then
' 			AwardExtraBall
' 		Else
' 			AwardSpecial
' 		End If
' 	End If
' End Sub

' Sub AwardSecretSkillShot
' 	If bSkillShotReady Then
' 		AudioCallout "secretskillshot"
' 		'DMDBigText "Secret Skill",77,1
' 		ResetSkillShotTimer_Timer
' 		'Award SSS
' 		If Player(CurrentPlayer).NumClusterRounds < 2 Then
' 			AddClusterRound
' 			ReloadClusterRound
' 		Elseif Player(CurrentPlayer).TotalExtraBallsAwarded < MaxExtraBallsPerGame Then
' 			AwardExtraBall
' 		Else
' 			AwardSpecial
' 		End If
' 	End If
' End Sub




' ' EXTRA BALLS
' '**********************************************


' Sub CheckExtraBallAward
' 	If LampState(LEBR)=2 Then
' 		AwardExtraBall
' 	End If
' End Sub

' Sub SetExtraBallReady
' 	If LampState(LEBR)=0 Then
' 		AudioCallout "extra ball lit" 
' 		ChangeLamp LEBR,2,"green",7,3,3,1
' 		'DMDBigText "EB READY",77,1
' 	End If
' End Sub





' ' MYSTERY AWARDS
' '**********************************************

' const MysteryColor = "amber"


' Sub CheckMysteryCharge
' 	If Not Player(CurrentPlayer).bInWave Then
' 		If LampState(LM1)>0 and _
' 		   LampState(LM2)>0 and _
' 		   LampState(LM3)>0 and _
' 	       LampState(LM4)>0 and _
' 	       LampState(LM5)>0 and _
' 		   LampState(LMR)=0 Then
' 			ChangeLamp LM1,1,MysteryColor,7,3,3,1
' 			ChangeLamp LM2,1,MysteryColor,7,3,3,1
' 			ChangeLamp LM3,1,MysteryColor,7,3,3,1
' 			ChangeLamp LM4,1,MysteryColor,7,3,3,1
' 			ChangeLamp LM5,1,MysteryColor,7,3,3,1
' 			ChangeLamp LMR,2,"orange",7,3,3,1
' 			AudioCallout "mystery lit"
' 		End If
' 	End If
' End Sub


' Sub CancelMystery
' 	'Turn off the lamps
' 	bMysteryActive = False
' 	SetLampState LM1,0
' 	SetLampState LM2,0
' 	SetLampState LM3,0
' 	SetLampState LM4,0
' 	SetLampState LM5,0
' 	SetLampState LMR,0
' 	SetLampColor LMR,"orange"
' End Sub


' Sub CheckMysteryAward
' 	Dim Num, NumTries
' 	If Not Player(CurrentPlayer).bInWave Then
' 		If LampState(LMR)>0 Then
' 			bWaveTimerPaused = True
' 			bMysteryActive = True
' 			'Turn off the lamps
' 			ChangeLamp LM1,0,MysteryColor,7,3,3,1
' 			ChangeLamp LM2,0,MysteryColor,7,3,3,1
' 			ChangeLamp LM3,0,MysteryColor,7,3,3,1
' 			ChangeLamp LM4,0,MysteryColor,7,3,3,1
' 			ChangeLamp LM5,0,MysteryColor,7,3,3,1
' 			ChangeLamp LMR,0,"orange",7,3,3,1
' 			'Award the mystery
' 			For NumTries = 0 to 7
' 				Num = RndInt(1,8)
' 				Select Case Num
' 					Case 1
' 						If Player(CurrentPlayer).NumProtonRounds < 6 Then 
' 							WriteToLog "CheckMysteryAward","Added Proton Round"
' 							AddProtonRound
' 							Exit Sub
' 						End If
' 					Case 2
' 						If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then 
' 							WriteToLog "CheckMysteryAward","Loaded Proton Round"
' 							ReloadProtonRound
' 							Exit Sub
' 						End If
' 					Case 3
' 						If Player(CurrentPlayer).NumClusterRounds < 2 Then 
' 							WriteToLog "CheckMysteryAward","Added Cluster Round"
' 							AddClusterRound
' 							Exit Sub
' 						End If
' 					Case 4 
' 						If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
' 							WriteToLog "CheckMysteryAward","Loaded Cluster Round" 
' 							ReloadClusterRound
' 							Exit Sub
' 						End If
' 					Case 5
' 						If Not Player(CurrentPlayer).bInWave Then
' 							WriteToLog "CheckMysteryAward","Full Fortification"
' 							SetLampState LF1,1
' 							SetLampColor LF1,FortifyColor
' 							SetLampState LF2,1
' 							SetLampColor LF2,FortifyColor
' 							CheckFortify
' 							Exit Sub
' 						End If
' 					Case 6
' 						If Not Player(CurrentPlayer).bInWave Then 
' 							WriteToLog "CheckMysteryAward","Full Time Warp"
' 							SetBlinkState LTW1,2,50,"110" 
' 							SetLampColor LTW1,TimeWarpColor
' 							SetBlinkState LTW2,2,50,"110" 
' 							SetLampColor LTW2,TimeWarpColor
' 							SetBlinkState LTW3,2,50,"110" 
' 							SetLampColor LTW3,TimeWarpColor
' 							bWaveTimerPaused = True
' 							bMysteryActive = False
' 							CheckTimeWarp
' 							Exit Sub
' 						End If
' 					Case 7
' 						If Not Player(CurrentPlayer).bInWave Then
' 							WriteToLog "CheckMysteryAward","Full Shields"
' 							SetLampState LSC1,1
' 							SetLampColor LSC1,ShieldsColor 
' 							SetLampState LSC2,1
' 							SetLampColor LSC2,ShieldsColor 
' 							SetLampState LSC3,1
' 							SetLampColor LSC3,ShieldsColor 
' 							CheckShieldCharge
' 							Exit Sub
' 						End If
' 					Case 8
' 							WriteToLog "CheckMysteryAward","Full Health"
' 							AudioCallout "mystery full repairs" 
' 							SetHealth 9
' 							Exit Sub
' 				End Select
' 			Next
' 			'Default behavior if all random choices fail too many times
' 			WriteToLog "CheckMysteryAward","Full Health (default)"
' 			AudioCallout "mystery full repairs" 
' 			SetHealth 9
' 		End If
' 	End If
' End Sub




' ' POWER UP: PROTON CANNON
' '**********************************************

' const ProtonColor = "blue"

' dim ibaProton : ibaProton = 1
' dim ProtonRoundsArray 
' ProtonRoundsArray = Array(LPR1,LPR2,LPR3,LPR4,LPR5,LPR6)


' Sub CheckProtonCharge
' 	BlinkTrail baProtonCharge,ProtonColor,1,10,1,5,1

' 	'This can NOT happen during Meteor MBs
' 	if Not Player(CurrentPlayer).bInWave Then
' 		'Check if we can reload a round. 
' 		If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then
' 			If LampState(LPC1) = 0 Then
' 				SetLampState LPC1,1
' 				SetLampColor LPC1,ProtonColor
' 			Elseif LampState(LPC2) = 0 Then
' 				SetLampState LPC2,1
' 				SetLampColor LPC2,ProtonColor
' 			Elseif LampState(LPC3) = 0 Then
' 				SetLampState LPC3,1
' 				SetLampColor LPC3,ProtonColor
' 				ReloadProtonRound
' 			End If
' 		Else
' 			SetLampState LPC1,0
' 			SetLampState LPC2,0
' 			SetLampState LPC3,0
' 		End If
		
' 	End If
' End Sub

' 'This is called from CheckCombo
' Sub AddProtonRound
' 	If Player(CurrentPlayer).NumProtonRounds < 6 Then
' 		AudioCallout "add proton capacity" 
' 		Player(CurrentPlayer).NumProtonRounds = Player(CurrentPlayer).NumProtonRounds + 1
' 		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonRounds-1),"white"
' 		SetLampState ProtonRoundsArray(Player(CurrentPlayer).NumProtonRounds-1),1
' 		Select Case ibaProton
' 			Case 1: BlinkTrail baProtonRounds1,"white",1,10,1,5,1  : ibaProton=2
' 			Case 2: BlinkTrail baProtonRounds2,"white",1,10,1,5,1  : ibaProton=1
' 		End Select
' 	Else
' 		'Rounds maxed out
' 	End If
' End Sub


' Sub ReloadProtonRound
' 	If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then
' 		'Load round
' 		AudioCallout "load proton"
' 		Player(CurrentPlayer).NumProtonLoaded = Player(CurrentPlayer).NumProtonLoaded + 1
' 		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonLoaded-1),ProtonColor
' 		SetLampState LPC1,0
' 		SetLampState LPC2,0
' 		SetLampState LPC3,0
' 		'Light show
' 		Select Case ibaProton
' 			Case 1: BlinkTrail baProtonRounds1,ProtonColor,1,10,1,5,1  : ibaProton=2
' 			Case 2: BlinkTrail baProtonRounds2,ProtonColor,1,10,1,5,1  : ibaProton=1
' 		End Select
' 	Else
' 		'All available rounds are loaded already
' 	End If
' End Sub


' Sub FireProtonRound
' 	dim ID
' 	If Player(CurrentPlayer).NumProtonLoaded > 0 and NumMeteorsActive > 0 Then
' 		'Unload round
' 		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonLoaded-1),"white"
' 		Player(CurrentPlayer).NumProtonLoaded = Player(CurrentPlayer).NumProtonLoaded - 1
' 		'Light show
' 		BlinkLamp LMR1,ProtonColor,7,3,3,1
' 		BlinkLamp LMR2,ProtonColor,7,3,3,1	
' 		BlinkLamp LCR1,ProtonColor,7,3,3,1
' 		BlinkLamp LCR2,ProtonColor,7,3,3,1	
' 		dim i : for i = 0 to 5
' 			BlinkLamp ProtonRoundsArray(i),ProtonColor,13,3,3,1
' 		next
' 		If Player(CurrentPlayer).NumProtonLoaded <= 0 Then
' 			SetLampState LPF,0
' 			SetLampState LPC4,0
' 			SetLampState LPC5,0
' 		End If
' 		ID = ClosestMeteorID
' 		WriteToLog "FireProtonRound", "ClosestMeteorID = " & ID
' 		BlinkLamp MeteorLights(ID-1),ProtonColor,13,3,3,1
' 		'Destroy Meteor
' 		DestroyMeteor ID
' 	Else
' 		'There are no loaded rounds
' 		'AudioCallout "proton empty"
' 	End If
' End Sub



' ' POWER UP: CLUSTER BOMBS
' '**********************************************

' const ClusterColor = "magenta"

' dim ClusterRoundsArray 
' ClusterRoundsArray = Array(LCR1,LCR2)


' Sub CheckClusterCharge
' 	BlinkTrail baClusterCharge,ClusterColor,1,10,1,5,1

' 	'This can happen during Meteor MBs
' 	'Check if we can reload a round. 
' 	If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
' 		If LampState(LCC1) = 0 Then
' 			SetLampState LCC1,1
' 			SetLampColor LCC1,ClusterColor
' 		Elseif LampState(LCC2) = 0 Then
' 			SetLampState LCC2,1
' 			SetLampColor LCC2,ClusterColor
' 		Elseif LampState(LCC3) = 0 Then
' 			SetLampState LCC3,1
' 			SetLampColor LCC3,ClusterColor
' 			ReloadClusterRound
' 		End If
' 	Else
' 		SetLampState LCC1,0
' 		SetLampState LCC2,0
' 		SetLampState LCC3,0
' 	End If
' End Sub


' 'This is called from CheckCombo
' Sub AddClusterRound
' 	If Player(CurrentPlayer).NumClusterRounds < 2 Then
' 		AudioCallout "add cluster capacity"
' 		Player(CurrentPlayer).NumClusterRounds = Player(CurrentPlayer).NumClusterRounds + 1
' 		SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterRounds-1),"white"
' 		SetLampState ClusterRoundsArray(Player(CurrentPlayer).NumClusterRounds-1),1
' 		'BlinkTrail baProtonRounds,"white",1,10,1,5,1
' 		BlinkLamp LCR1,"white",7,3,3,1
' 		BlinkLamp LCR2,"white",7,3,3,1
' 	Else
' 		'Rounds maxed out so load a round instead 
' 		'ReloadClusterRound  ' -- disabled for now
' 	End If
' End Sub


' Sub ReloadClusterRound
' 	If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
' 		AudioCallout "load cluster bomb"
' 		Player(CurrentPlayer).NumClusterLoaded = Player(CurrentPlayer).NumClusterLoaded + 1
' 		SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),ClusterColor
' 		SetLampState LCC1,0
' 		SetLampState LCC2,0
' 		SetLampState LCC3,0
' 		BlinkTrail baClusterRounds,ClusterColor,1,10,1,5,1
' 	Else
' 		'All available rounds are loaded already
' 	End If
' End Sub


' Sub FireClusterRound
' 	dim i 
' 	'This can ONLY happen during Meteor MBs
' 	if Player(CurrentPlayer).bInWave Then
' 		If Player(CurrentPlayer).NumClusterLoaded > 0 Then
' 			'Remove cluster round
' 			SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),"white"
' 			SetLampState ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),1
' 			Player(CurrentPlayer).NumClusterLoaded = Player(CurrentPlayer).NumClusterLoaded - 1
' 			'Light show
' 			BlinkLamp LMR1,ClusterColor,7,3,3,1
' 			BlinkLamp LMR2,ClusterColor,7,3,3,1	
' 			BlinkLamp LCR1,ClusterColor,7,3,3,1
' 			BlinkLamp LCR2,ClusterColor,7,3,3,1	
' 			for i = 0 to 5
' 				BlinkLamp ProtonRoundsArray(i),ClusterColor,13,3,3,1
' 			next
' 			for i = 0 to 3
' 				BlinkLamp MeteorLights(i),ClusterColor,13,3,3,1
' 			next
' 			'Blow up all meteors that are currently standing
' 			DestroyMeteor 1
' 			DestroyMeteor 2
' 			DestroyMeteor 3
' 			DestroyMeteor 4
' 		Else
' 			'AudioCallout "cluster bombs empty"
' 		End If
' 	End If
' End Sub



' ' POWER UP: MOON MISSILES
' '**********************************************

' const MoonMissleColor = "yellow"
' dim MoonRoundsArray 
' MoonRoundsArray = Array(LMR1,LMR2)
' dim swLock1State : swLock1State = 0
' dim swLock2State : swLock2State = 0
' dim swLock3State : swLock3State = 0
' LockPin.Timerinterval = 280
' swLock1.Timerinterval = 1000
' swLock2.Timerinterval = 1000
' swLock3.Timerinterval = 1000
' dim bAllowMoonLaunch
' bAllowMoonLaunch = true 'TODO: make moon lanuch not possible if last ball hits outlane switch

' Sub CheckMoonLock
' 	'Lock if possible
' 	If LampState(LMLR) > 0 Then
' 		ChangeLamp LLO,0,MoonMissleColor,7,3,3,1
' 		ChangeLamp LLI,0,MoonMissleColor,7,3,3,1
' 		ChangeLamp LRI,0,MoonMissleColor,7,3,3,1
' 		ChangeLamp LRO,0,MoonMissleColor,7,3,3,1
' 		ChangeLamp LMLR,0,MoonMissleColor,7,3,3,1
' 		If swLock2State = 1 Then 'this should never happen
' 			SolLockPin False
' 			LockPin.Timerenabled = True
' 		Else
' 			AudioCallout "moon missile locked"
' 			SolLockPin True
' 			AddMultiball 1
' 			BallsOnPlayfield = BallsOnPlayfield - 1
' 			BallsLocked = BallsLocked + 1
' 			Player(CurrentPlayer).NumMoonLocked = Player(CurrentPlayer).NumMoonLocked + 1
' 			'load moon round
' 			SetLampColor MoonRoundsArray(Player(CurrentPlayer).NumMoonLocked-1),MoonMissleColor
' 			SetLampState MoonRoundsArray(Player(CurrentPlayer).NumMoonLocked-1),1
' 			BlinkLamp LMR1,MoonMissleColor,7,3,3,1
' 			BlinkLamp LMR2,MoonMissleColor,7,3,3,1
' 		End If
' 	Else 
' 		If swLock1State = 1 Then
' 			SolLockPin False
' 			LockPin.Timerenabled = True
' 		End If
' 	End If
' End Sub

' Sub LockPin_Timer
' 	SolLockPin True
' 	LockPin.Timerenabled = False
' End Sub

' Sub swLock1_Timer
' 	swLock1.Timerenabled = False
' 	'handle case where fly ball lands on lock ramp and should not be there
' 	If swLock1State = 1 and Player(CurrentPlayer).NumMoonLocked < 1 Then
' 		SolLockPin False
' 		LockPin.Timerenabled = True
' 	End If
' End Sub

' Sub swLock2_Timer
' 	swLock2.Timerenabled = False
' 	'handle case where fly ball lands on lock ramp and should not be there
' 	If swLock2State = 1 and Player(CurrentPlayer).NumMoonLocked < 2 Then
' 		SolLockPin False
' 		LockPin.Timerenabled = True
' 	End If
' End Sub

' Sub swLock3_Timer
' 	swLock3.Timerenabled = False
' 	'handle case where fly ball lands on lock ramp and should not be there
' 	If swLock3State = 1 Then
' 		SolLockPin False
' 		LockPin.Timerenabled = True
' 	End If
' End Sub


' Sub CheckMoonLockReady
' 	'This can NOT happen during Meteor MBs
' 	if Not Player(CurrentPlayer).bInWave Then
' 		'Ready lock if possible
' 		If LampState(LLO)>0 and _
' 		   LampState(LLI)>0 and _
' 		   LampState(LRI)>0 and _
' 	       LampState(LRO)>0 and _
' 		   LampState(LMLR)=0 Then
' 			ChangeLamp LMLR,2,MoonMissleColor,7,3,3,1
' 			AudioCallout "moon lock ready"
' 			'Add moon round
' 			DebugPrint "Player(CurrentPlayer).NumMoonRounds = "&Player(CurrentPlayer).NumMoonRounds
' 			Player(CurrentPlayer).NumMoonRounds = Player(CurrentPlayer).NumMoonRounds + 1
' 			SetLampColor MoonRoundsArray(Player(CurrentPlayer).NumMoonRounds-1),"white"
' 			SetLampState MoonRoundsArray(Player(CurrentPlayer).NumMoonRounds-1),1
' 			BlinkLamp LMR1,"white",7,3,3,1
' 			BlinkLamp LMR2,"white",7,3,3,1			
' 		End If
' 	End If
' End Sub

' Sub LauchMoonMissiles    'Launches all available moon missiles
' 	If bAllowMoonLaunch = True and Player(CurrentPlayer).NumMoonLocked > 0 and LockPin.Timerenabled=False Then
' 		WriteToLog "LauchMoonMissiles", "Start: NumMoonLocked=" & Player(CurrentPlayer).NumMoonLocked & " BallsLocked=" & BallsLocked & " BallsOnPlayfield=" & BallsOnPlayfield
' 		AudioCallout "moon missile launched"
' 		'Remove moon rounds
' 		SetLampColor MoonRoundsArray(0),"white"
' 		SetLampColor MoonRoundsArray(1),"white"
' 		SetLampState MoonRoundsArray(0),0
' 		SetLampState MoonRoundsArray(1),0
' 		Player(CurrentPlayer).NumMoonRounds = 0
' 		BlinkLamp LMR1,MoonMissleColor,7,3,3,1
' 		BlinkLamp LMR2,MoonMissleColor,7,3,3,1	
' 		BlinkLamp LCR1,MoonMissleColor,7,3,3,1
' 		BlinkLamp LCR2,MoonMissleColor,7,3,3,1	
' 		dim i : for i = 0 to 5
' 			BlinkLamp ProtonRoundsArray(i),MoonMissleColor,13,3,3,1
' 		next
' 		'Launch ball from moon
' 		Player(CurrentPlayer).NumMoonLocked = Player(CurrentPlayer).NumMoonLocked - BallsLocked
' 		If BallsLocked > 0 Then
' 			BallsOnPlayfield = BallsOnPlayfield + BallsLocked
' 			BallsLocked = 0
' 			If BallsOnPlayfield > 1 Then bMultiBallMode = True
' 			SolLockPin False    'launch
' 		End If
' 		'Launch ball from plunger if not on the moon
' 		If Player(CurrentPlayer).NumMoonLocked > 0 Then
' 			AddMultiball Player(CurrentPlayer).NumMoonLocked
' 		End If
' 		Player(CurrentPlayer).NumMoonLocked = 0
' 		WriteToLog "LauchMoonMissiles", "End: NumMoonLocked=" & Player(CurrentPlayer).NumMoonLocked & " BallsLocked=" & BallsLocked & " BallsOnPlayfield=" & BallsOnPlayfield
' 	End If
' End Sub

' Sub RotateLaneLightsLeft
' 	Dim SavedState
' 	SavedState = LampState(LRO)
' 	SetLampState LRO,LampState(LLO)
' 	SetLampState LLO,LampState(LLI)
' 	SetLampState LLI,LampState(LRI)
' 	SetLampState LRI,SavedState
' End Sub

' Sub RotateLaneLightsRight
' 	Dim SavedState
' 	SavedState = LampState(LLO)
' 	SetLampState LLO,LampState(LRO)
' 	SetLampState LRO,LampState(LRI)
' 	SetLampState LRI,LampState(LLI)
' 	SetLampState LLI,SavedState
' End Sub




' ' POWER UP: DEFENSE FORTIFICATION
' '**********************************************

' const FortifyColor = "purple"
' const FortifyTimePerLight = 7

' Sub CheckFortify
' 	BlinkTrail baFortify,FortifyColor,1,10,1,5,1

' 	'This can NOT happen during Meteor MBs
' 	if Not Player(CurrentPlayer).bInWave Then
' 		'Charge fortification if possible
' 		If LampState(LF1) = 0 Then
' 			SetLampState LF1,1
' 			SetLampColor LF1,FortifyColor
' 		Elseif LampState(LF2) = 0 Then
' 			SetLampState LF2,1
' 			SetLampColor LF2,FortifyColor
' 		Elseif LampState(LF3) = 0 Then
' 			SetLampState LF3,1
' 			SetLampColor LF3,FortifyColor
' 			AudioCallout "full fortification"
' 		End If
' 	End If
' End Sub



' Sub FortifyDefenses
' 	dim i, FortifyTime
' 	FortifyTime = 0
' 	If LampState(LF3) > 0 Then     
' 		FortifyTime = FortifyTimePerLight*3
' 	Elseif LampState(LF2) > 0 Then 
' 		FortifyTime = FortifyTimePerLight*2
' 	Elseif LampState(LF1) > 0 Then 
' 		FortifyTime = FortifyTimePerLight
' 	End If
' 	For i = 0 to 2 : SetLampState baFortify(i),0 : next
' 	If FortifyTime > 0 Then 
' 		BlinkTrail baFortify,FortifyColor,1,10,1,5,1
' 		EnableBallSaver FortifyTime
' 	End If
' End Sub




' ' POWER UP: SHILEDS
' '**********************************************

' const ShieldsColor = "darkblue"

' Sub CheckShieldCharge
' 	if Not Player(CurrentPlayer).bInWave Then
' 		BlinkTrail baShieldCharge,ShieldsColor,1,10,1,5,1  
' 		If LampState(LSC1) = 0 Then
' 			SetLampState LSC1,1
' 			SetLampColor LSC1,ShieldsColor
' 		Elseif LampState(LSC2) = 0 Then
' 			SetLampState LSC2,1
' 			SetLampColor LSC2,ShieldsColor
' 		Elseif LampState(LSC3) = 0 Then
' 			SetLampState LSC3,1
' 			SetLampColor LSC3,ShieldsColor
' 		Elseif LampState(LSC4) = 0 Then
' 			SetLampState LSC4,1
' 			SetLampColor LSC4,ShieldsColor
' 			ChangeLamp LSL,1,ShieldsColor,7,2,2,1
' 			ChangeLamp LSR,1,ShieldsColor,7,2,2,1
' 			Player(CurrentPlayer).bShieldsOn = True
' 			AudioCallout "shieldsup"
' 		End If
' 	End If
' End Sub

' Sub ShieldsDown
' 	ChangeLamp LSC1,0,ShieldsColor,7,3,3,1
' 	ChangeLamp LSC2,0,ShieldsColor,7,3,3,1
' 	ChangeLamp LSC3,0,ShieldsColor,7,3,3,1
' 	ChangeLamp LSC4,0,ShieldsColor,7,3,3,1
' 	ChangeLamp LSL,0,ShieldsColor,7,3,3,1
' 	ChangeLamp LSR,0,ShieldsColor,7,3,3,1
' 	Player(CurrentPlayer).bShieldsOn = False
' End Sub



' ' POWER UP: TIME WARP
' '**********************************************

' const TimeWarpColor = "white"
' TimeWarpTimer.Interval = 7000

' Sub CheckTimeWarp
' 	BlinkTrail baTimeWarp,TimeWarpColor,1,10,1,5,1

' 	'This can NOT happen during Meteor MBs
' 	if Not Player(CurrentPlayer).bInWave Then
' 		'Charge fortification if possible
' 		If LampState(LTW1) = 0 Then
' 			SetBlinkState LTW1,2,50,"110" 
' 			SetLampColor LTW1,TimeWarpColor
' 			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True'
' 			'Turn on the time warp here
' 			AudioCallout "time warp intiated" 
' 			bWaveTimerPaused = True
' 		Elseif LampState(LTW2) = 0 Then
' 			SetBlinkState LTW2,2,50,"110" 
' 			SetLampColor LTW2,TimeWarpColor
' 			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
' 		Elseif LampState(LTW3) = 0 Then
' 			SetBlinkState LTW3,2,50,"110" 
' 			SetLampColor LTW3,TimeWarpColor
' 			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
' 		Elseif LampState(LTW4) = 0 Then
' 			SetBlinkState LTW4,2,50,"110" 
' 			SetLampColor LTW4,TimeWarpColor
' 			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
' 			AudioCallout "full time warp"
' 		End If
' 	End If
' End Sub



' Sub CancelTimeWarp
' 	bWaveTimerPaused = False
' 	SetLampState LTW1,0
' 	SetLampState LTW2,0
' 	SetLampState LTW3,0
' 	SetLampState LTW4,0
' End Sub


' Sub TimeWarpTimer_Timer
' 	If LampState(LTW4) > 0 Then
' 		SetLampState LTW4,0
' 	Elseif LampState(LTW3) > 0 Then
' 		SetLampState LTW3,0
' 	Elseif LampState(LTW2) > 0 Then
' 		SetLampState LTW2,0
' 	Elseif LampState(LTW1) > 0 Then
' 		SetLampState LTW1,0
' 		TimeWarpTimer.Enabled = False
' 		'Turn off the time warp here
' 		bWaveTimerPaused = False
' 	End If
' End Sub




' ' POWER UP: REPAIR
' '**********************************************

' const HealthColor789 = "green"  	'7-9
' const HealthColor56 = "yellow"		'5-6
' const HealthColor34 = "orange"		'3-4
' const HealthColor12 = "red"			'1-2
' dim HitsPerRepair : HitsPerRepair = 10


' Sub CheckRepair
' 	dim HealthColor, i
' 	If Player(CurrentPlayer).Health < 9 Then
' 		Player(CurrentPlayer).NumRepairHits = Player(CurrentPlayer).NumRepairHits + 1
' 		If Player(CurrentPlayer).NumRepairHits > HitsPerRepair Then
' 			Player(CurrentPlayer).NumRepairHits  = 0
' 			Player(CurrentPlayer).Health = Player(CurrentPlayer).Health + 1
' 			Select Case Player(CurrentPlayer).Health
' 				Case 1,2: HealthColor = HealthColor12
' 				Case 3,4: HealthColor = HealthColor34
' 				Case 5,6: HealthColor = HealthColor56
' 				Case 7,8,9: HealthColor = HealthColor789
' 			End Select
' 			BlinkTrail baHealth,HealthColor,1,10,1,5,1
' 			For i = 0 to Player(CurrentPlayer).Health-1
' 				SetLampState baHealth(i),1
' 				SetLampColor baHealth(i),HealthColor
' 			Next
' 		End If
' 	End If
' End Sub



' Sub AddDamage
' 	dim HealthColor, i
' 	'Remove health
' 	Player(CurrentPlayer).Health = Player(CurrentPlayer).Health - 1
' 	If Player(CurrentPlayer).Health < 0 Then Player(CurrentPlayer).Health = 0
' 	Select Case Player(CurrentPlayer).Health
' 		Case 0.1,2: HealthColor = HealthColor12
' 		Case 3,4: HealthColor = HealthColor34
' 		Case 5,6: HealthColor = HealthColor56
' 		Case 7,8,9: HealthColor = HealthColor789
' 	End Select
' 	BlinkTrail baHealth,HealthColor,1,10,1,5,-1
' 	SetLampState baHealth(Player(CurrentPlayer).Health),0
' 	If Player(CurrentPlayer).Health = 2 Then AudioCallout "low health"
' 	'Check if flippers should die
' 	If Player(CurrentPlayer).Health <= 0 Then 
' 		DisableTable True
' 		'TODO: Sad light show, etc
' 	Else
' 		For i = 0 to Player(CurrentPlayer).Health-1
' 			SetLampState baHealth(i),1
' 			SetLampColor baHealth(i),HealthColor
' 		Next
' 	End If
' End Sub



' Sub SetHealth(health)
' 	WriteToLog "SetHealth","health = " & health
' 	dim HealthColor, i
' 	Player(CurrentPlayer).Health = health
' 	Select Case Player(CurrentPlayer).Health
' 		Case 1,2: HealthColor = HealthColor12
' 		Case 3,4: HealthColor = HealthColor34
' 		Case 5,6: HealthColor = HealthColor56
' 		Case 7,8,9: HealthColor = HealthColor789
' 	End Select
' 	BlinkTrail baHealth,HealthColor,1,10,1,5,1
' 	For i = 0 to 8 : SetLampState baHealth(i),0 : next
' 	For i = 0 to Player(CurrentPlayer).Health-1
' 		SetLampState baHealth(i),1
' 		SetLampColor baHealth(i),HealthColor
' 	Next
' End Sub




' ' WAVES
' '**********************************************
' Const WaveColor = "red"
' Const MaxTimeBtwMeteors = 5
' Const TimeBtwWaves = 50

' WaveTimer.Enabled = False
' WaveTimer.Interval = 1000

' Dim TimePerMeteor : TimePerMeteor = 13
' Dim MeteorLights : MeteorLights = Array(LMet1,LMet2,LMet3,LMet4)
' Dim WaveLights : WaveLights = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9)
' Dim WaveLights10 : WaveLights10 = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9,LWiz)
' Dim WaveNumMeteors : WaveNumMeteors = Array(0,4,7,10,13,16,19,22,25,28)
' Dim Meteor1, Meteor2, Meteor3, Meteor4, Meteors
' Dim NextMeteorIndex, NumMeteorsThisWave, NumMeteorsLeft, NumMeteorsActive, bOnLastMeteor, LastMeteorStatus
' Dim bWaveTimerPaused, bWaveFailed

' Class MeteorTarget
'     Public ID
'     Public MeteorIndex
'     Public TimeLeft
'     Public TimeToNext

' 	Public Sub Class_Initialize 
' 		Reset
' 	End Sub

' 	Public Sub Reset
' 		MeteorIndex = ID
' 		TimeLeft = 0
' 		TimeToNext = RndInt(1,MaxTimeBtwMeteors)
'     End Sub

'     Public Sub Hit  'Note: This sub is called whenever a drop target is dropped
' 		If MeteorIndex > 0 Then  'If meteor active, then destroy it and set default values
' 			SetLampState MeteorLights(ID-1),0
' 			TimeLeft = 0
' 			MeteorIndex = 0
' 			NumMeteorsLeft = NumMeteorsLeft - 1
' 			NumMeteorsActive = NumMeteorsActive - 1
' 			WriteToLog "MetoerTarget.Hit", "NumMeteorsActive = " & NumMeteorsActive
' 			TimeToNext = RndInt(1,MaxTimeBtwMeteors)
' 			'Update segmented Display
' 			ShowMeteorStatus
' 			'Create a pending meteor if there are more left in the wave
' 			If Not bOnLastMeteor Then 
' 				MeteorIndex = NextMeteorIndex
' 				NextMeteorIndex = NextMeteorIndex + 1
' 				WriteToLog "MetoerTarget.Hit", "Meteors Left = " & NumMeteorsLeft
' 				If NumMeteorsLeft = 1 Then bOnLastMeteor = True
' 			Else
' 				'If this is the last meteor, then successfully stop wave
' 				If not bWaveFailed Then CompleteWave
' 			End If
' 		End If
'     End Sub

'     Public Sub Update
'         If MeteorIndex > 0 Then    'If assigned to a meteor
'             'If this is an active meter and it has not hit Earth yet
'             If TimeLeft > 0 Then 
'                 TimeLeft = TimeLeft - 1
'                 If TimeLeft = 0 Then  'HIT EARTH !!!!
' 					WriteToLog "Meteors(" & ID & ").Update", "HIT EARTH !!!!"
'                     'Explosion Light Show
' 					EarthHitLights
' 					'Destroy meteor on impact and add earth damage
' 					SetLampState MeteorLights(ID-1),0
' 					DestroyMeteor ID
'                     AddDamage
' 					ShowMeteorStatus
'                 ElseIf TimeLeft < TimePerMeteor*0.3 Then
' 					SetLampColor MeteorLights(ID-1),"red"
' 					SetBlinkState MeteorLights(ID-1),2,60,"10" 
'                 ElseIf TimeLeft < TimePerMeteor*0.6 Then
' 					SetLampColor MeteorLights(ID-1),"yellow"
' 					SetBlinkState MeteorLights(ID-1),2,120,"10" 
'                 ElseIf TimeLeft <= TimePerMeteor    Then 
' 					SetLampColor MeteorLights(ID-1),"white"
' 					SetBlinkState MeteorLights(ID-1),2,250,"10" 
'                 End If
' 				WriteToLog "Meteors(" & ID & ").Update", "TimeLeft = " & TimeLeft
'             'If this is a meteor that is about to become active
'             ElseIf TimeToNext > 0  and MeteorIndex <= NumMeteorsThisWave Then
'                 TimeToNext = TimeToNext - 1
' 				WriteToLog "Meteors(" & ID & ").Update", "TimeToNext = " & TimeToNext
'                 'Make meteor active
'                 If TimeToNext <= 0 Then
'                     'Pop up the drop target
' 					NumMeteorsActive = NumMeteorsActive + 1
'                     Select Case ID
'                         Case 1: SolDT1 True
'                         Case 2: SolDT2 True
'                         Case 3: SolDT3 True
'                         Case 4: SolDT4 True
'                     End Select
'                     'Start the timer for Earth hit
'                     TimeLeft = TimePerMeteor
'                 End If
'             End If
'         End If
'     End Sub

' End Class


' Sub EarthHitLights
' 	If Not bEarthJustHit Then
' 		bEarthJustHit = True
' 		SetLampColor LWiz,"white"
' 		SetLampColor LSL,"white"  
' 		SetLampColor LSR,"white"
' 		SetLampColor LLO,"white"
' 		SetLampColor LLI,"white"
' 		SetLampColor LRI,"white"
' 		SetLampColor LRO,"white"
' 		LightSeqEarthHit.TimerInterval = 400
' 		LightSeqEarthHit.TimerEnabled = True
' 		LightSeqEarthHit.UpdateInterval = 8
' 		LightSeqEarthHit.Play SeqCircleOutOn, 13
' 	End If
' End Sub
' Sub LightSeqEarthHit_Timer
' 	bEarthJustHit = False
' 	LightSeqEarthHit.StopPlay
' 	SetLampColor LWiz,"red"
' 	SetLampColor LSL,ShieldsColor
' 	SetLampColor LSR,ShieldsColor
' 	SetLampColor LLO,MysteryColor
' 	SetLampColor LLI,MysteryColor
' 	SetLampColor LRI,MysteryColor
' 	SetLampColor LRO,MysteryColor
' End Sub


' Sub InitMeteors
'     Set Meteor1 = New MeteorTarget : Meteor1.ID = 1
'     Set Meteor2 = New MeteorTarget : Meteor2.ID = 2
'     Set Meteor3 = New MeteorTarget : Meteor3.ID = 3
'     Set Meteor4 = New MeteorTarget : Meteor4.ID = 4
'     Meteors = Array(Meteor1, Meteor2, Meteor3, Meteor4)
' End Sub


' Sub StartWave
' 	WriteToLog "StartWave", "----- STARTED -----"
' 	'Fortify ball saver if possible
' 	EnableBallSaver 3
' 	FortifyDefenses
' 	'Save lamps and turn off some
' 	Player(CurrentPlayer).SaveLamps
' 	WaveStartTurnOffLamps
'     'Initialize some player variables
'     Player(CurrentPlayer).bInWave = True
'     Player(CurrentPlayer).WaveTime = TimeBtwWaves
'     Player(CurrentPlayer).CurrentWave = Player(CurrentPlayer).LastWaveCompleted + 1
'     'Initialize meteors
'     dim i : for i = 0 to 3
'         Meteors(i).Reset 
'     next
' 	bWaveTimerPaused = False
' 	bWaveFailed = False
'     NextMeteorIndex = 5
' 	NumMeteorsActive = 0
' 	NumMeteorsThisWave = WaveNumMeteors(Player(CurrentPlayer).CurrentWave)
' 	NumMeteorsLeft = NumMeteorsThisWave
'     bOnLastMeteor = False
' 	LastMeteorStatus = 12
' 	'Prepare for meteor falling effect by clearing wave lights
' 	For i = 0 to 8 : SetLampState WaveLights(i),0 : next
' 	For i = 0 to 9 : SetLampColor WaveLights10(i),"red" : next
' 	FallingMeteorAnim_Timer
' 	'Light the proton cannon fire target
' 	If Player(CurrentPlayer).NumProtonLoaded > 0 Then
' 		SetLampColor LPF,ProtonColor
' 		SetLampColor LPC4,ProtonColor
' 		SetLampColor LPC5,ProtonColor
' 		SetBlinkState LPF,2,120,"10"
' 		SetBlinkState LPC4,2,120,"10"
' 		SetBlinkState LPC5,2,120,"10"
' 	End If
' 	'Turn off GI
' 	EnableGI 0
' 	'Clear led display
' 	SegDisplay01.Clear
' 	SegDisplay10.Clear
' 	SegDisplay01.DisplayChar(0)
' 	SegDisplay10.DisplayChar(0)
' 	'Add multiballs
' 	AddMultiball 2
' 	'Diverter Pin
' 	SolDiverterPin True
' End Sub


' Sub CompleteWave
' 	WriteToLog "CompleteWave", "----- COMPLETED -----"
' 	AudioCallout "wave done"
'     If Player(CurrentPlayer).bInWave Then
'         Player(CurrentPlayer).bInWave = False
'         Player(CurrentPlayer).LastWaveCompleted = Player(CurrentPlayer).CurrentWave
' 		'Stop falling meteor animation
' 		FallingMeteorAnim.Enabled = False
' 		for i = 0 to Ubound(WaveLights10)
' 			SetLampFade WaveLights10(i),40,100
' 		next
' 		'Restore inserts as they were
' 		WaveDoneRestoreLamps
' 		'Relight wave lights
' 		dim i : For i = 0 to Player(CurrentPlayer).CurrentWave-1 : SetLampState WaveLights(i),1 : next
'         ChangeLamp WaveLights(Player(CurrentPlayer).CurrentWave-1),1,WaveColor,7,3,3,1
'         'Light EB 
' 		'If Player(CurrentPlayer).LastWaveCompleted=4 Then SetExtraBallReady
' 		If Player(CurrentPlayer).LastWaveCompleted=6 Then SetExtraBallReady
' 		'TODO: Achievement light show
'     End If
' 	EnableGI 1
' 	SolDiverterPin False
' 	NumMeteorsActive = 0
' 	SetLampState LPF,0
' 	SetLampState LPC4,0
' 	SetLampState LPC5,0
' 	CheckMoonLockReady
' End Sub


' Sub FailWave
'     if Player(CurrentPlayer).bInWave Then 
' 		WriteToLog "FailWave", "----- FAILED -----"
'         Player(CurrentPlayer).bInWave = False
' 		'Stop falling meteor animation
' 		FallingMeteorAnim.Enabled = False
' 		for i = 0 to Ubound(WaveLights10)
' 			SetLampFade WaveLights10(i),40,100
' 		next
' 		'Restore inserts as they were
' 		WaveDoneRestoreLamps
' 		'Relight wave lights
' 		dim i : For i = 0 to Player(CurrentPlayer).LastWaveCompleted-1 : SetLampState WaveLights(i),1 : next
'         ChangeLamp WaveLights(Player(CurrentPlayer).CurrentWave-1),0,WaveColor,7,3,3,1
' 		bWaveFailed = True
'         SolDT1 False
'         SolDT2 False
'         SolDT3 False
'         SolDT4 False
'     End If
' 	SolDiverterPin False
' 	NumMeteorsActive = 0
' 	SetLampState LPF,0
' 	SetLampState LPC4,0
' 	SetLampState LPC5,0
' End Sub


' Sub WaveStartTurnOffLamps
' 	SetLampState LCC1,0
' 	SetLampState LCC2,0
' 	SetLampState LCC3,0
' 	SetLampState LPC1,0
' 	SetLampState LPC2,0
' 	SetLampState LPC3,0
' 	SetLampState LM1,0
' 	SetLampState LM2,0
' 	SetLampState LM3,0
' 	SetLampState LM4,0
' 	SetLampState LM5,0
' 	SetLampState LMR,0
' 	SetLampState LF1,0
' 	SetLampState LF2,0
' 	SetLampState LF3,0
' 	SetLampState LSC1,0
' 	SetLampState LSC2,0
' 	SetLampState LSC3,0
' 	SetLampState LSC4,0
' 	SetLampState LLO,0
' 	SetLampState LLI,0
' 	SetLampState LRI,0
' 	SetLampState LRO,0
' 	SetLampState LMLR,0
' End Sub


' Sub WaveDoneRestoreLamps
' 	Player(CurrentPlayer).RestorLamps_ClusterCharge
' 	Player(CurrentPlayer).RestorLamps_ProtonCharge
' 	Player(CurrentPlayer).RestorLamps_Mystery
' 	Player(CurrentPlayer).RestorLamps_Fortify
' 	Player(CurrentPlayer).RestorLamps_MoonLockLanes
' 	If Player(CurrentPlayer).bShieldsOn Then Player(CurrentPlayer).RestorLamps_SheildCharge
' End Sub



' Sub DestroyMeteor(ID)
' 	Select Case ID
' 		Case 1: SolDT1 False
' 		Case 2: SolDT2 False
' 		Case 3: SolDT3 False
' 		Case 4: SolDT4 False
' 	End Select
' End Sub


' Function ClosestMeteorID
' 	Dim i, LowestTime
' 	ClosestMeteorID = 0
' 	LowestTime = 1000
' 	For i = 0 to 3
' 		If Meteors(i).MeteorIndex > 0 and Meteors(i).TimeLeft > 0 Then
' 			If Meteors(i).TimeLeft < LowestTime Then
' 				LowestTime = Meteors(i).TimeLeft
' 				ClosestMeteorID = Meteors(i).ID
' 			End If
' 		End If
' 	Next
' End Function




' Sub EnableWaveTimer(seconds)
' 	'Set display to x seconds
' 	SetDisplayNumber seconds
' 	Player(CurrentPlayer).WaveTime = seconds
' 	WaveTimer.Enabled = True
' End Sub


' Sub DisableWaveTimer
' 	SegDisplay01.Clear
' 	SegDisplay10.Clear
' 	WaveTimer.Enabled = False
' End Sub


' Sub WaveTimer_Timer
' 	dim i
'     If Player(CurrentPlayer).bInWave Then
'         for i = 0 to 3
'             Meteors(i).Update
'         next
' 		ShowMeteorStatus
'     Else
'         If Not bWaveTimerPaused Then 
' 			Player(CurrentPlayer).WaveTime = Player(CurrentPlayer).WaveTime - 1
' 			WriteToLog "WaveTimer_Timer", "Count down time = " & Player(CurrentPlayer).WaveTime
' 			SetDisplayNumber Player(CurrentPlayer).WaveTime
' 			If Player(CurrentPlayer).WaveTime = 5 Then AudioCallout "sensors scanning"
' 			If Player(CurrentPlayer).WaveTime = 2 Then AudioCallout "wave started"
' 			If Player(CurrentPlayer).WaveTime <= 0 Then StartWave
' 		End If
'     End If
' End Sub


' Sub ShowMeteorStatus
' 	Dim Status, Num, i
' 	Status = NumMeteorsLeft / NumMeteorsThisWave
' 	Status = Int(Status*12)
' 	WriteToLog "ShowMeteorStatus","LastMeteorStatus = " & LastMeteorStatus & " Status = " & Status
' 	Num = LastMeteorStatus - Status
' 	If Num > 0 Then
' 		For i = 1 to Num
' 			If SegDisplay01.bSegsOff Then
' 				SegDisplay10.RandomSegOff
' 			ElseIf SegDisplay10.bSegsOff Then
' 				SegDisplay01.RandomSegOff
' 			Else
' 				Select Case (Int(rnd*2)+1)
' 					Case 1: SegDisplay01.RandomSegOff
' 					Case 2: SegDisplay10.RandomSegOff
' 				End Select
' 			End If
' 		Next
' 		LastMeteorStatus = Status
' 	End If
' End Sub


' Sub SetDisplayNumber(val)
' 	Dim tens, ones
' 	tens = Int(val/10)
' 	ones = Int(val-tens*10)
' 	if val >= 10 then 
' 		SegDisplay10.DisplayChar(tens)
' 		SegDisplay01.DisplayChar(ones)
' 	else
' 		SegDisplay10.DisplayChar(0)
' 		SegDisplay01.DisplayChar(ones)
' 	end if
' End Sub


' FallingMeteorAnim.Enabled = False
' FallingMeteorAnim.Interval = 1800
	
' Sub FallingMeteorAnim_Timer
' 	dim i
' 	If FallingMeteorAnim.Enabled = False Then
' 		FallingMeteorAnim.Enabled = True
' 		for i = 0 to Ubound(WaveLights10)
' 			SetLampFade WaveLights10(i),40,400
' 		next
' 	End If
' 	BlinkTrail WaveLights10,"orange",1,10,1,5,1
' End Sub






' ' WIZARD: COMBO COMMAND
' '**********************************************

' Const ComboColor = "white"

' ComboTimer.Interval = 5000
' Dim ComboCount : ComboCount = 0
' Dim ComboLights : ComboLights = Array(LC1,LC2,LC3,LC4,LC5,LC6,LC7,LC8)

' Sub CheckCombo
' 	'This can NOT happen during Meteor MBs
' 	If Not Player(CurrentPlayer).bInWave Then
' 		ComboTimer.Enabled = False : ComboTimer.Enabled = True  'Reset timer
' 		ComboCount = ComboCount + 1
' 		SetComboLights ComboCount
' 		If ComboCount = 3 Then 
' 			AudioCallout "proton combo" 
' 			If Player(CurrentPlayer).NumProtonRounds < 6 Then 
' 				AddProtonRound 
' 			Else
' 				ReloadProtonRound
' 			End If
' 		ElseIf ComboCount = 5 Then
' 			AudioCallout "cluster bomb combo" 
' 			If Player(CurrentPlayer).NumClusterRounds < 2 Then
' 				AddClusterRound 
' 			Else
' 				ReloadClusterRound
' 			End If 
' 		ElseIf ComboCount = 8 Then 
' 			AudioCallout "start combo command mode" 
' 			StartComboWizard
' 			ComboCount=0
' 		End If
' 		WriteToLog "CheckCombo", "ComboCount = " & ComboCount
' 	End If
' End Sub


' Sub SetComboLights(val)
' 	dim i
' 	Select Case val
' 		Case 0: For i = 0 to 7 : BlinkLamp ComboLights(i),ComboColor,3,3,3,1 : next
' 		Case 3: BlinkTrail ComboLights,ProtonColor,1,10,1,5,1
' 		Case 6: BlinkTrail ComboLights,ClusterColor,1,10,1,5,1
' 		Case 8: BlinkTrail ComboLights,ComboColor,1,10,1,5,1
' 	End Select
' 	For i = 0 to 7 : SetLampState ComboLights(i),0 : next
' 	If val > 0 Then
' 		For i = 0 to val-1
' 			SetLampState ComboLights(i),1
' 			SetLampColor ComboLights(i),ComboColor
' 		Next
' 	End If
' End Sub


' Sub ComboTimer_Timer
' 	ComboCount = 0
' 	SetComboLights ComboCount
' 	ComboTimer.Enabled = False
' End Sub



' Sub StartComboWizard
' 	'TODO: Wizard mode stuff
' End Sub






' ' WIZARD: FULLY LOADED
' '**********************************************





' ' WIZARD: EARTH KILLER
' '**********************************************


' Sub StartEarthKillerWizard
' 	WriteToLog "StartEarthKillerWizard","START"
' 	'DisableTable True
' End Sub
