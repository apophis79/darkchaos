
' '*******************************************
' ' ZPLA : Player state class 
' '*******************************************

' Class PlayerState

' 	Public Score
' 	Public BonusPoints
' 	Public ExtraBallsAwards
' 	Public TotalExtraBallsAwarded
' 	Public BallsRemaining

' 	Public NumProtonRounds
' 	Public NumClusterRounds
' 	Public NumMoonRounds
' 	Public NumProtonLoaded
' 	Public NumClusterLoaded
' 	Public NumMoonLocked
' 	Public NumRepairHits
' 	Public Health

'     Public WaveTime
'     Public MaxWaveTime
'     Public CurrentWave
'     Public LastWaveCompleted
'     Public bInWave

' 	Public bShieldsOn

' 	Public SavedLampStates(150)
' 	Public SavedLampColors(150)
	
' 	Private xx

' 	Public Sub Class_Initialize 
' 		Reset
' 	End Sub


' 	Public Sub Reset
' 		Score = 0
' 		BonusPoints = 0
' 		ExtraBallsAwards = 0
' 		TotalExtraBallsAwarded = 0
' 		BallsRemaining = 3

' 		NumProtonRounds = 1
' 		NumClusterRounds = 1
' 		NumMoonRounds = 1
' 		NumProtonLoaded = 0
' 		NumClusterLoaded = 0
' 		NumMoonLocked = 0
' 		NumRepairHits = 0
' 		Health = 9

'         WaveTime = 0
'         MaxWaveTime = 60
'         CurrentWave = 0
'         LastWaveCompleted = 0
'         bInWave = False
	
' 		bShieldsOn = False

' 		for xx = 0 to 150 : SavedLampStates(xx) = 0 : next
' 		for xx = 0 to 150 : SavedLampColors(xx) = ColorRGB("white") : next


' 		SavedLampColors(LampNumber(LCC1)) = ColorRGB(ClusterColor)
' 		SavedLampColors(LampNumber(LCC2)) = ColorRGB(ClusterColor)
' 		SavedLampColors(LampNumber(LCC3)) = ColorRGB(ClusterColor)

' 		SavedLampColors(LampNumber(LTW1)) = ColorRGB(TimeWarpColor)
' 		SavedLampColors(LampNumber(LTW2)) = ColorRGB(TimeWarpColor)
' 		SavedLampColors(LampNumber(LTW3)) = ColorRGB(TimeWarpColor)
' 		SavedLampColors(LampNumber(LTW4)) = ColorRGB(TimeWarpColor)

' 		SavedLampColors(LampNumber(LPC1)) = ColorRGB(ProtonColor)
' 		SavedLampColors(LampNumber(LPC2)) = ColorRGB(ProtonColor)
' 		SavedLampColors(LampNumber(LPC3)) = ColorRGB(ProtonColor)

' 		SavedLampColors(LampNumber(LF1)) = ColorRGB(FortifyColor)
' 		SavedLampColors(LampNumber(LF2)) = ColorRGB(FortifyColor)
' 		SavedLampColors(LampNumber(LF3)) = ColorRGB(FortifyColor)

' 		SavedLampColors(LampNumber(LSC1)) = ColorRGB(ShieldsColor)
' 		SavedLampColors(LampNumber(LSC2)) = ColorRGB(ShieldsColor)
' 		SavedLampColors(LampNumber(LSC3)) = ColorRGB(ShieldsColor)
' 		SavedLampColors(LampNumber(LSC4)) = ColorRGB(ShieldsColor)


' 		SavedLampStates(LampNumber(LPR1)) = 1
' 		SavedLampStates(LampNumber(LCR1)) = 1
' 		SavedLampStates(LampNumber(LMR1)) = 1

' 		SavedLampStates(LampNumber(LMLR)) = 2
' 		SavedLampColors(LampNumber(LMLR)) = ColorRGB(MoonMissleColor)

' 		SavedLampStates(LampNumber(LLO)) = 1
' 		SavedLampStates(LampNumber(LLI)) = 1
' 		SavedLampStates(LampNumber(LRI)) = 1
' 		SavedLampStates(LampNumber(LRO)) = 1
' 		SavedLampColors(LampNumber(LLO)) = ColorRGB(MoonMissleColor)
' 		SavedLampColors(LampNumber(LLI)) = ColorRGB(MoonMissleColor)
' 		SavedLampColors(LampNumber(LRI)) = ColorRGB(MoonMissleColor)
' 		SavedLampColors(LampNumber(LRO)) = ColorRGB(MoonMissleColor)

' 		SavedLampStates(LampNumber(LH1)) = 1
' 		SavedLampStates(LampNumber(LH2)) = 1
' 		SavedLampStates(LampNumber(LH3)) = 1
' 		SavedLampStates(LampNumber(LH4)) = 1
' 		SavedLampStates(LampNumber(LH5)) = 1
' 		SavedLampStates(LampNumber(LH6)) = 1
' 		SavedLampStates(LampNumber(LH7)) = 1
' 		SavedLampStates(LampNumber(LH8)) = 1
' 		SavedLampStates(LampNumber(LH9)) = 1
' 		SavedLampColors(LampNumber(LH1)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH2)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH3)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH4)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH5)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH6)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH7)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH8)) = ColorRGB(HealthColor789)
' 		SavedLampColors(LampNumber(LH9)) = ColorRGB(HealthColor789)

' 	End Sub 

' 	Public Sub SaveLamps
' 		for xx = 0 to LenControlLights : SavedLampStates(xx) = LampNrState(xx) : next
' 		for xx = 0 to LenControlLights : SavedLampColors(xx) = LampNrColor(xx) : next
' 	End Sub

' 	Public Sub RestoreLamps
' 		for xx = 0 to LenControlLights : SetLampNrState xx,SavedLampStates(xx) : next
' 		for xx = 0 to LenControlLights : SetLampNrColorRGB xx,SavedLampColors(xx) : next
' 	End Sub

' 	Public Sub RestorLamps_ClusterCharge
' 		xx = LampNumber(LCC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LCC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LCC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub

' 	Public Sub RestorLamps_ProtonCharge
' 		xx = LampNumber(LPC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LPC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LPC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub

' 	Public Sub RestorLamps_Mystery
' 		xx = LampNumber(LM1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LM2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LM3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LM4) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LM5) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LMR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub

' 	Public Sub RestorLamps_Fortify
' 		xx = LampNumber(LF1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LF2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LF3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub

' 	Public Sub RestorLamps_SheildCharge
' 		xx = LampNumber(LSC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LSC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LSC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LSC4) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LSL) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LSR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub

' 	Public Sub RestorLamps_MoonLockLanes
' 		xx = LampNumber(LLO) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LLI) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LRI) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LRO) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 		xx = LampNumber(LMLR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
' 	End Sub


' End Class

