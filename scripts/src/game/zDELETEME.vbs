
'*******************************************
' ZATT : Attract mode
'*******************************************

' Sub StartAttractMode

' 	bAttractMode = True
' 	StartRainbow AllControlLights
' 	StartLightSeqAttract

' '	UltraDMDTimer.Enabled = 1
' '	StartLightSeq
' '	'ShowTableInfo
' '	DMDintroloop
' '	StartRainbow2 GI
' '	DMDattract.Enabled = 1
' '	intromover.enabled = true

' End Sub

' Sub StopAttractMode

' 	bAttractMode = False
' 	StopRainbow AllControlLights
' 	LightSeqAttract.StopPlay

' '	DMDScoreNow
' '	LightSeqAttract.StopPlay
' '	LightSeqAttract2.StopPlay
' '	StopRainbow2 GI
' '	ResetAllLightsColor
' '	DMDattract.Enabled = 0
' '	intromover.enabled = false

' 	'StopSong
' End Sub


' ' Rainbow Attract Lights
' '*******************************************


' Dim RGBStep, RGBFactor, rRed, rGreen, rBlue, RainbowLights

' Sub StartRainbow(n)
' 	set RainbowLights = n
' 	RGBStep = 0
' 	RGBFactor = 5
' 	rRed = 255
' 	rGreen = 0
' 	rBlue = 0
' 	RainbowTimer.Enabled = True
' End Sub

' Sub StopRainbow(n)
' 	Dim obj
' 	RainbowTimer.Enabled = False
' 	For each obj in RainbowLights
' 		SetLampState obj,0          'off
' 		SetLampColor obj,"white"    'white
' 	Next
' End Sub

' Sub RainbowTimer_Timer 'rainbow led light color changing
' 	Dim obj
' 	Select Case RGBStep
' 		Case 0 'Green
' 			rGreen = rGreen + RGBFactor
' 			If rGreen > 255 then
' 				rGreen = 255
' 				RGBStep = 1
' 			End If
' 		Case 1 'Red
' 			rRed = rRed - RGBFactor
' 			If rRed < 0 then
' 				rRed = 0
' 				RGBStep = 2
' 			End If
' 		Case 2 'Blue
' 			rBlue = rBlue + RGBFactor
' 			If rBlue > 255 then
' 				rBlue = 255
' 				RGBStep = 3
' 			End If
' 		Case 3 'Green
' 			rGreen = rGreen - RGBFactor
' 			If rGreen < 0 then
' 				rGreen = 0
' 				RGBStep = 4
' 			End If
' 		Case 4 'Red
' 			rRed = rRed + RGBFactor
' 			If rRed > 255 then
' 				rRed = 255
' 				RGBStep = 5
' 			End If
' 		Case 5 'Blue
' 			rBlue = rBlue - RGBFactor
' 			If rBlue < 0 then
' 				rBlue = 0
' 				RGBStep = 0
' 			End If
' 	End Select
' 	For each obj in RainbowLights
' 		SetLampRGB obj,RGB(rRed, rGreen, rBlue)
' 	Next
' End Sub


' Sub StartLightSeqAttract()
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 50, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqCircleOutOn, 15, 2
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 10
' 	LightSeqAttract.Play SeqCircleOutOn, 15, 3
' 	LightSeqAttract.UpdateInterval = 5
' 	LightSeqAttract.Play SeqRightOn, 50, 1
' 	LightSeqAttract.UpdateInterval = 5
' 	LightSeqAttract.Play SeqLeftOn, 50, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 50, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 50, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 40, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 40, 1
' 	LightSeqAttract.UpdateInterval = 10
' 	LightSeqAttract.Play SeqRightOn, 30, 1
' 	LightSeqAttract.UpdateInterval = 10
' 	LightSeqAttract.Play SeqLeftOn, 30, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 10
' 	LightSeqAttract.Play SeqCircleOutOn, 15, 3
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 5
' 	LightSeqAttract.Play SeqStripe1VertOn, 50, 2
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqCircleOutOn, 15, 2
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqStripe1VertOn, 50, 3
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqCircleOutOn, 15, 2
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqStripe2VertOn, 50, 3
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 25, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqStripe1VertOn, 25, 3
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqStripe2VertOn, 25, 3
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqUpOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqDownOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqRightOn, 15, 1
' 	LightSeqAttract.UpdateInterval = 8
' 	LightSeqAttract.Play SeqLeftOn, 15, 1
' End Sub

' Sub LightSeqAttract_PlayDone
' 	StartLightSeqAttract
' End Sub

'Sub LightSeqTilt_PlayDone()
'	LightSeqTilt.Play SeqAllOff
'End Sub
'
'Sub LightSeqSkillshot_PlayDone()
'	LightSeqSkillshot.Play SeqAllOff
'End Sub





' '******************************************************
' '****  ZBLS : Blinking Light System
' '******************************************************

' '  individual light sequencer commands (originally by oqqsan, and heavily modified by apophis)

' ' examples
' '			    cLight ,state  ,color , number of blinks, timeon, timeoff, starting delay
' '		ChangeLamp cLight001	,1		,"green"	,7,8,8,1		 '( short delay, color="green", 7 blinks slow, then state = On )
' '		ChangeLamp cLight001	,0		,"red"		,7,2,2,10		 '( long delay, color="red", 7 blinks fast, then state = Off )
' '		ChangeLamp cLight001	,2		,"blue"		,7,2,2,10		 '( long delay, color="blue", 7 blinks fast, then state = Blink )
' '
' '	If LampState(cLight001) = 1 Then .... same as if Blink(LampNumber(cLight001),1)=1 or the old vpx   if cLight001.state=1
' '
' '	Sub swTopLane1_Hit
' '		SwitchWasHit "swTopLane1"
' '		Blink(1,1) = 1  ' normal set state use this format   Lampz nr 2 saved state = 1
' '						' optional: cLight001.blinkinterval=timeon ( need the right name of the clight )
' '						' optional: cLight001.blinkpattern = pattern  ( need the right name of the clight )
' '		BlinkTrail baShieldCharge,color,8,5,2,1,1 ' baShieldCharge array , 8 blinks , 5 timeon, 2 timeoff, 1 delay for each light before blinking start, increasing direction ) 
' '	End Sub 																			'all time values is in updates ( currently 16ms timer )
' '
' '        old                      new
' '   light001.state=1 		->> Blink(1,1)=1
' '   If light001.state=2 	->> If Blink(1,1)=2 
' '		the BLS command overrides the state and blinks away until finished and restore the saved value.. 
' '  		all this can be overridden by a normal VPX lightsequencer at anytime
' ' 		no worries at all set and forget, lampz control everything
' '		VPX lightsequencer > lightsequencer2 > normal state

' '    SetBlinkState cLight,2,100,"01010110010110"   ' Blink(40,1)=2  sets the same state but not interval and pattern
' '    **** Insert nr ,State(0;1;2), interval = how long each part of patterns is displayd in ms, pattern to blink "01" off/on any length of 0's and 1's

' '   individual RGB inserts
' '   SetLampColor  cLight,"green"   
' '    **** insert nr , color ( green yellow red purple blue orange white darklblue ) can add any color to this below


' Dim Blink(150,9)


' ' Blink arrays for the BlinkTrail subroutine
' Dim baClusterCharge : baClusterCharge = Array(LCC3,LCC2,LCC1)
' Dim baClusterRounds : baClusterRounds = Array(LCR2,LCR1)
' Dim baTimeWarp : baTimeWarp = Array(LTW1,LTW2,LTW3,LTW4)
' Dim baProtonCharge : baProtonCharge = Array(LPC3,LPC2,LPC1)
' Dim baProtonChargeCW : baProtonChargeCW = Array(LPC4,LPC5,LPF)
' Dim baProtonChargeCCW : baProtonChargeCCW = Array(LPC5,LPC4,LPF)
' Dim baProtonRounds1 : baProtonRounds1 = Array(LPR6,LPR5,LPR4,LPR2,LPR3,LPR1)
' Dim baProtonRounds2 : baProtonRounds2 = Array(LPR4,LPR5,LPR6,LPR3,LPR2,LPR1)
' Dim baMoonRounds : baMoonRounds = Array(LMR2,LMR1)
' Dim baFortify : baFortify = Array(LF3,LF2,LF1)
' Dim baShieldCharge : baShieldCharge = Array(LSC4,LSC3,LSC2,LSC1)
' Dim baWave : baWave = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9,LWiz)
' Dim baMystery : baMystery = Array(LM1,LM2,LM3,LM4,LM5)
' Dim baHealth : baHealth = Array(LH1,LH2,LH3,LH4,LH5,LH6,LH7,LH8,LH9)
' Dim baMeteor : baMeteor = Array(LMet1,LMet2,LMet3,LMet4)


' Sub ChangeLamp(cLightObj, state, col, blsBlinks, blsOnT, blsOffT, blsDelay)
' 	SetLampState cLightObj,state
' 	SetLampColor cLightObj,col
' 	BlinkLamp cLightObj,col,blsBlinks,blsOnT,blsOffT,blsDelay
' End Sub


' Sub SetLampState(cLightObj,state)
' 	dim nr : nr = LampNumber(cLightObj)
' 	Blink(nr,1) = state
' End Sub

' Sub SetLampNrState(nr,state)
' 	Blink(nr,1) = state
' End Sub

' Function LampState(cLightObj)
' 	dim nr : nr = LampNumber(cLightObj)
' 	LampState = Blink(nr,1)
' End Function


' Function LampNrState(nr)
' 	LampNrState = Blink(nr,1)
' End Function


' Sub SetLampFade(cLightObj,SpeedUp,SpeedDown)
' 	cLightObj.FadeSpeedUp = SpeedUp
' 	cLightObj.FadeSpeedDown = SpeedDown
' End Sub


' Sub BlinkLamp(cLightObj, col, blsBlinks , blsOnT, blsOffT, blsDelay )
' 	Dim nr : nr = LampNumber(cLightObj)
' 	If blsBlinks > 0 Then
' 		Blink(nr,2)=blsBlinks 
' 		Blink(nr,3)=0 
' 		Blink(nr,4)=blsOnT	
' 		Blink(nr,6)=blsOffT	
' 		Blink(nr,8)=blsDelay
' 		Blink(nr,9)=ColorRGB(col)
' 	End If
' End Sub


' Sub BlinkTrail(bArray,col,blinks,timeon,timeoff,delay,bdir)
' 	Dim i,nr,AddedDelay,istart,iend
' 	If bdir > 0 Then 
' 		istart = 0 : iend = UBound(bArray)
' 	Else
' 		istart = UBound(bArray) : iend = 0
' 	End If
' 	AddedDelay = delay
' 	For i = istart to iend step bdir
' 		nr = LampNumber(bArray(i))
' 		ApplyLampColor AllControlLights(nr),col
' 		Blink(nr,2)=blinks
' 		Blink(nr,3)=0 ' flag
' 		Blink(nr,4)=timeon
' 		Blink(nr,6)=timeoff
' 		Blink(nr,8)=AddedDelay
' 		Blink(nr,9)=ColorRGB(col)
' 		AddedDelay = AddedDelay + delay
' 	Next
' End Sub

' Sub SetBlinkState(cLightObj,state,interval,pattern) 
' 	Dim nr : nr = LampNumber(cLightObj)
' 	If Not State = -1 Then Blink(nr,1)=State
' 	cLightObj.blinkinterval= interval
' 	cLightObj.blinkpattern =  pattern
' End Sub


' Sub InitLampStates
' 	dim x : for each x in AllControlLights
' 		SetLampState x,0          'off
' 		SetLampColor x,"white"    'white
' 	next
' End Sub



' BlinkTimer.Interval = 16
' BlinkTimer.Enabled = True

' ' Blink Matrix Description:
' '
' '		Blink(nr,0) 	'Saved light color (RGB)
' '		Blink(nr,1)   	'Saved light state
' '		Blink(nr,2)   	'Number of blinks
' '		Blink(nr,3) 	'Flag
' '		Blink(nr,4)		'On time (timer cycles)
' '		Blink(nr,5)   	'On timer count down
' '		Blink(nr,6)		'Off time (timer cycles)
' '		Blink(nr,7)   	'Off timer count down
' '		Blink(nr,8)		'Delay at beginning of blink pattern
' '		Blink(nr,9)		'Color used during blink (RGB)

' Sub BlinkTimer_Timer
' 	dim L, idx
' 	for each L in AllControlLights
' 		idx = LampNumber(L)
' 		If Blink(idx,2)>0 Then	' Lightsequencer ? + multipleblinks
' 			ApplyLampRGB idx,Blink(idx,9)
' 			If Blink(idx,8)>0 Then ' is there a delay ! ?=
' 				L.state = 0
' 				Blink(idx,8) = Blink(idx,8) - 1
' 			Else
' 				Select Case Blink(idx,3)
' 					Case 0 : L.state = 1 :  Blink(idx,5)=Blink(idx,4) : Blink(idx,3) = 1 
' 					Case 1 : Blink(idx,5)=Blink(idx,5)-1 : If Blink(idx,5) < 1 Then Blink(idx,3) = 2
' 					Case 2 : L.state = 0   :  Blink(idx,7)=Blink(idx,6) : Blink(idx,3) = 3
' 					Case 3 : Blink(idx,7)=Blink(idx,7)-1 
' 							 If Blink(idx,7) < 1 Then
' 								Blink(idx,2)=Blink(idx,2)-1
' 								If Blink(idx,2)<1 Then Blink(idx,2)=0
' 								Blink(idx,3) = 0
' 							 End If
' 				End Select
' 			End If
' 			If Blink(idx,2)=0 Then 'Last Blink
' 				Blink(idx,9) = Blink(idx,0)
' 				ApplyLampRGB idx,Blink(idx,0)
' 				L.state = Blink(idx,1)
' 			End If
' 		Else
' 			If L.state <> Blink(idx,1) Then 
' 				L.state = Blink(idx,1)
' 			End If
' 		End If
' 	Next
' End Sub




' '*  Lamp Colors
' '******************************************************

' Function ColorRGB(col)
' 	Select Case col
' 		Case "red" 		: ColorRGB = RGB(185,0,20)
' 		Case "orange" 	: ColorRGB = RGB(255,65,20)
' 		Case "amber" 	: ColorRGB = RGB(255,153,0)
' 		Case "yellow" 	: ColorRGB = RGB(255,200,0)
' 		Case "darkgreen": ColorRGB = RGB(0,64,0)
' 		Case "green" 	: ColorRGB = RGB(25,205,70)
' 		Case "blue" 	: ColorRGB = RGB(15,128,255)
' 		Case "darkblue" : ColorRGB = RGB(8,60,255)
' 		Case "purple"	: ColorRGB = RGB(85,44,255)
' 		Case "magenta"	: ColorRGB = RGB(255,44,255)
' 		Case "white" 	: ColorRGB = RGB(255,245,235)
' 		Case Else		: ColorRGB = RGB(0,0,0)
' 	End Select
' End Function

' Sub SetLampColor ( cLightObj, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
' 	Dim nr : nr = LampNumber(cLightObj)
' 	Blink(nr,0) = ColorRGB(NewColor)
' 	Blink(nr,9) = ColorRGB(NewColor)
' 	ApplyLampColor cLightObj,NewColor
' End Sub

' Sub SetLampNrColor ( nr, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
' 	Blink(nr,0) = ColorRGB(NewColor)
' 	Blink(nr,9) = ColorRGB(NewColor)
' 	ApplyLampColor AllControlLights(nr),NewColor
' End Sub

' Function LampNrColor(nr)
' 	LampNrColor = Blink(nr,0)
' End Function


' Sub ApplyLampColor ( cLightObj, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
' 	cLightObj.ColorFull = ColorRGB(NewColor)
' 	Dim nr : nr = LampNumber(cLightObj)
' 	Dim BL: For each BL in BL_Array(nr): BL.color = ColorRGB(NewColor): Next
' End Sub

' Sub SetLampRGB ( cLightObj, RGBval ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
' 	Dim nr : nr = LampNumber(cLightObj)
' 	Blink(nr,0) = RGBval
' 	Blink(nr,9) = RGBval
' 	ApplyLampRGB nr,RGBval
' End Sub


' Sub SetLampNrColorRGB ( nr, RGBval ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
' 	Blink(nr,0) = RGBval
' 	Blink(nr,9) = RGBval
' 	ApplyLampRGB nr,RGBval
' End Sub


' Sub ApplyLampRGB( nr, RGBval )
' 	AllControlLights(nr).ColorFull = RGBval
' 	Dim BL: For each BL in BL_Array(nr): BL.color = RGBval: Next
' End Sub



' '*  Lamp Number Lookup 
' '******************************************************


' Function LampNumber(obj)
' 	Select Case obj.name
' 		Case "LB1" 		: LampNumber = 	0
' 		Case "LB2" 		: LampNumber = 	1
' 		Case "LB3" 		: LampNumber = 	2
' 		Case "LB4" 		: LampNumber = 	3
' 		Case "LC1" 		: LampNumber = 	4
' 		Case "LC2" 		: LampNumber = 	5
' 		Case "LC3" 		: LampNumber = 	6
' 		Case "LC4" 		: LampNumber = 	7
' 		Case "LC5" 		: LampNumber = 	8
' 		Case "LC6" 		: LampNumber = 	9
' 		Case "LC7" 		: LampNumber = 	10
' 		Case "LC8" 		: LampNumber = 	11
' 		Case "LCC1" 	: LampNumber = 	12
' 		Case "LCC2" 	: LampNumber = 	13
' 		Case "LCC3" 	: LampNumber = 	14
' 		Case "LCR1" 	: LampNumber = 	15
' 		Case "LCR2" 	: LampNumber = 	16
' 		Case "LCWiz" 	: LampNumber = 	17
' 		Case "LEBR" 	: LampNumber = 	18
' 		Case "LF1" 		: LampNumber = 	19
' 		Case "LF2" 		: LampNumber = 	20
' 		Case "LF3" 		: LampNumber = 	21
' 		Case "LH1" 		: LampNumber = 	22
' 		Case "LH2" 		: LampNumber = 	23
' 		Case "LH3" 		: LampNumber = 	24
' 		Case "LH4" 		: LampNumber = 	25
' 		Case "LH5" 		: LampNumber = 	26
' 		Case "LH6" 		: LampNumber = 	27
' 		Case "LH7" 		: LampNumber = 	28
' 		Case "LH8" 		: LampNumber = 	29
' 		Case "LH9" 		: LampNumber = 	30
' 		Case "LLI" 		: LampNumber = 	31
' 		Case "LLO" 		: LampNumber = 	32
' 		Case "LLWiz" 	: LampNumber = 	33
' 		Case "LM1" 		: LampNumber = 	34
' 		Case "LM2" 		: LampNumber = 	35
' 		Case "LM3" 		: LampNumber = 	36
' 		Case "LM4" 		: LampNumber = 	37
' 		Case "LM5" 		: LampNumber = 	38
' 		Case "LMet1" 	: LampNumber = 	39
' 		Case "LMet2" 	: LampNumber = 	40
' 		Case "LMet3" 	: LampNumber = 	41
' 		Case "LMet4" 	: LampNumber = 	42
' 		Case "LMLR" 	: LampNumber = 	43
' 		Case "LMR" 		: LampNumber = 	44
' 		Case "LMR1" 	: LampNumber = 	45
' 		Case "LMR2" 	: LampNumber = 	46
' 		Case "LPC1" 	: LampNumber = 	47
' 		Case "LPC2" 	: LampNumber = 	48
' 		Case "LPC3" 	: LampNumber = 	49
' 		Case "LPC4" 	: LampNumber = 	50
' 		Case "LPC5" 	: LampNumber = 	51
' 		Case "LPF" 		: LampNumber = 	52
' 		Case "LPR1" 	: LampNumber = 	53
' 		Case "LPR2" 	: LampNumber = 	54
' 		Case "LPR3" 	: LampNumber = 	55
' 		Case "LPR4" 	: LampNumber = 	56
' 		Case "LPR5" 	: LampNumber = 	57
' 		Case "LPR6" 	: LampNumber = 	58
' 		Case "LRI" 		: LampNumber = 	59
' 		Case "LRO" 		: LampNumber = 	60
' 		Case "LS1" 		: LampNumber = 	61
' 		Case "LS2" 		: LampNumber = 	62
' 		Case "LS3" 		: LampNumber = 	63
' 		Case "LS4" 		: LampNumber = 	64
' 		Case "LS5" 		: LampNumber = 	65
' 		Case "LS6" 		: LampNumber = 	66
' 		Case "LSA" 		: LampNumber = 	67
' 		Case "LSC1" 	: LampNumber = 	68
' 		Case "LSC2" 	: LampNumber = 	69
' 		Case "LSC3" 	: LampNumber = 	70
' 		Case "LSC4" 	: LampNumber = 	71
' 		Case "LSL" 		: LampNumber = 	72
' 		Case "LSpot1" 	: LampNumber = 	73
' 		Case "LSpot2" 	: LampNumber = 	74
' 		Case "LSR" 		: LampNumber = 	75
' 		Case "LSwC1" 	: LampNumber = 	76
' 		Case "LSwC2" 	: LampNumber = 	77
' 		Case "LSwC3" 	: LampNumber = 	78
' 		Case "LSwL1" 	: LampNumber = 	79
' 		Case "LSwL2" 	: LampNumber = 	80
' 		Case "LTW1" 	: LampNumber = 	81
' 		Case "LTW2" 	: LampNumber = 	82
' 		Case "LTW3" 	: LampNumber = 	83
' 		Case "LTW4" 	: LampNumber = 	84
' 		Case "LW1" 		: LampNumber = 	85
' 		Case "LW2" 		: LampNumber = 	86
' 		Case "LW3" 		: LampNumber = 	87
' 		Case "LW4" 		: LampNumber = 	88
' 		Case "LW5" 		: LampNumber = 	89
' 		Case "LW6" 		: LampNumber = 	90
' 		Case "LW7" 		: LampNumber = 	91
' 		Case "LW8" 		: LampNumber = 	92
' 		Case "LW9" 		: LampNumber = 	93
' 		Case "LWiz" 	: LampNumber = 	94
' 		Case "LX" 		: LampNumber = 	95
' 		Case Else 		: LampNumber = -1
' 	End Select
' End Function



' CheckLightNums
' Sub CheckLightNums
' 	Dim L, idx
' 	idx = 0
' 	For each L in AllControlLights
' 		If LampNumber(L) <> idx Then
' 			msgbox "Lamp Number Wrong for " & L.name
' 			Exit Sub
' 		End If
' 		idx = idx + 1
' 	Next
' End Sub






'*******************************************
'  ZBMP : Bumpers
'*******************************************
' Sub Bumper1_Hit 
' 	SwitchWasHit "Bumper1"
' 	CheckRepair
' 	Addscore 250
' 	RandomSoundBumperTop Bumper1
' 	SetLampState LB1,1
' 	Bumper1.timerenabled = True
' End Sub

' Sub Bumper1_Timer
' 	SetLampState LB1,0
' End Sub

' Sub Bumper2_Hit 
' 	SwitchWasHit "Bumper2"
' 	CheckRepair
' 	Addscore 250
' 	RandomSoundBumperMiddle Bumper2
' 	SetLampState LB2,1
' 	Bumper2.timerenabled = True
' End Sub

' Sub Bumper2_Timer
' 	SetLampState LB2,0
' End Sub

' Sub Bumper3_Hit 
' 	SwitchWasHit "Bumper3"
' 	CheckRepair
' 	Addscore 250
' 	RandomSoundBumperBottom Bumper3
' 	SetLampState LB3,1
' 	Bumper3.timerenabled = True
' End Sub

' Sub Bumper3_Timer
' 	SetLampState LB3,0
' End Sub

' Sub Bumper4_Hit 
' 	SwitchWasHit "Bumper4"
' 	CheckRepair
' 	Addscore 250
' 	RandomSoundBumperBottom Bumper4
' 	SetLampState LB4,1
' 	Bumper4.timerenabled = True
' End Sub

' Sub Bumper4_Timer
' 	SetLampState LB4,0
' End Sub





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




' ' '****************************************************************
' ' '  ZGIL : GI Lights
' ' '****************************************************************

' dim gilvl:gilvl = 1		
' Sub EnableGI(Enabled)
' 	dim xx
' 	If enabled Then
' 		for each xx in GI:xx.state = 1:Next
' 		gilvl = 1
' 	Else
' 		for each xx in GI:xx.state = 0:Next	
' 		gilvl = 0
' 	End If
' 	Sound_GI_Relay enabled, bumper1
' End Sub






' '*******************************************
' ' ZHIG : Highscores
' '*******************************************

' Const bResetHighscores = False

' Dim bHSModeActive:bHSModeActive = False
' Dim HighScore(3)
' Dim HighScoreName(3)
' Dim hschecker:hschecker = 0

' Sub Loadhs

' 	If bResetHighscores Then
' 		HighScore(0) = 50000000
' 		HighScore(1) = 30000000
' 		HighScore(2) = 10000000

' 		HighScoreName(0) = "VPX"
' 		HighScoreName(1) = "VPX"
' 		HighScoreName(2) = "VPX"
' 		Savehs

' 	Else
' 		Dim x
' 		x = LoadValue(TableName, "HighScore1")
' 		If(x <> "") Then HighScore(0) = CDbl(x) Else HighScore(0) = 50000000 End If

' 		x = LoadValue(TableName, "HighScore1Name")
' 		If(x <> "") Then HighScoreName(0) = x Else HighScoreName(0) = "VPX" End If

' 		x = LoadValue(TableName, "HighScore2")
' 		If(x <> "") then HighScore(1) = CDbl(x) Else HighScore(1) = 30000000 End If

' 		x = LoadValue(TableName, "HighScore2Name")
' 		If(x <> "") then HighScoreName(1) = x Else HighScoreName(1) = "VPX" End If

' 		x = LoadValue(TableName, "HighScore3")
' 		If(x <> "") then HighScore(2) = CDbl(x) Else HighScore(2) = 10000000 End If

' 		x = LoadValue(TableName, "HighScore3Name")
' 		If(x <> "") then HighScoreName(2) = x Else HighScoreName(2) = "VPX" End If

' 		x = LoadValue(TableName, "HighScore4")
' 		If(x <> "") then HighScore(3) = CDbl(x) Else HighScore(3) = 10000000 End If

' 		x = LoadValue(TableName, "Credits")
' 		If(x <> "") then Credits = CInt(x) Else Credits = 0 End If

' 		x = LoadValue(TableName, "TotalGamesPlayed")
' 		If(x <> "") then TotalGamesPlayed = CInt(x) Else TotalGamesPlayed = 0 End If

' 		If hschecker = 0 Then
' 			CheckHSOrder
' 		End If
' 	End If

' End Sub


' Sub CheckHSOrder
' 	Dim hs3,hs2,hs1,hs0,hsn3,hsn2,hsn1,hsn0
' 	hschecker = 1
' 	hs3 = HighScore(3)
' 	hs2 = HighScore(2)
' 	hs1 = HighScore(1)
' 	hs0 = HighScore(0)
' 	hsn3 = HighScoreName(3)
' 	hsn2 = HighScoreName(2)
' 	hsn1 = HighScoreName(1)
' 	hsn0 = HighScoreName(0)
' 	If hs3 > hs0 Then
' 		HighScore(0) = hs3
' 		HighScoreName(0) = hsn3	
' 		HighScore(1) = hs0
' 		HighScoreName(1) = hsn0	
' 		HighScore(2) = hs1
' 		HighScoreName(2) = hsn1	
' 		HighScore(3) = hs2
' 		HighScoreName(3) = hsn2

' 	ElseIf hs3 > hs1 Then
' 		HighScore(0) = hs0
' 		HighScoreName(0) = hsn0	
' 		HighScore(1) = hs3
' 		HighScoreName(1) = hsn3	
' 		HighScore(2) = hs1
' 		HighScoreName(2) = hsn1	
' 		HighScore(3) = hs2
' 		HighScoreName(3) = hsn2
' 	ElseIf hs3 > hs2 Then
' 		HighScore(0) = hs0
' 		HighScoreName(0) = hsn0	
' 		HighScore(1) = hs1
' 		HighScoreName(1) = hsn1	
' 		HighScore(2) = hs3
' 		HighScoreName(2) = hsn3	
' 		HighScore(3) = hs2
' 		HighScoreName(3) = hsn2
' 	ElseIf hs3 < hs2 Then
' 		HighScore(0) = hs0
' 		HighScoreName(0) = hsn0	
' 		HighScore(1) = hs1
' 		HighScoreName(1) = hsn1	
' 		HighScore(2) = hs2
' 		HighScoreName(2) = hsn2	
' 		HighScore(3) = hs3
' 		HighScoreName(3) = hsn3
' 	End If

' 	Savehs
' End Sub



' Sub Savehs
' 	SaveValue TableName, "HighScore1", HighScore(0)
' 	SaveValue TableName, "HighScore1Name", HighScoreName(0)
' 	SaveValue TableName, "HighScore2", HighScore(1)
' 	SaveValue TableName, "HighScore2Name", HighScoreName(1)
' 	SaveValue TableName, "HighScore3", HighScore(2)
' 	SaveValue TableName, "HighScore3Name", HighScoreName(2)
' 	SaveValue TableName, "HighScore4", HighScore(3)
' 	SaveValue TableName, "HighScore4Name", HighScoreName(3)
' End Sub



' Sub SaveCredits
' 	SaveValue TableName, "Credits", Credits
' End Sub



' Sub Savegp
' 	SaveValue TableName, "TotalGamesPlayed", TotalGamesPlayed
' 	vpmtimer.addtimer 1000, "Loadhs'"
' End Sub






' ' Initials

' Dim hsEnteredName
' Dim hsEnteredDigits(3)
' Dim hsCurrentDigit
' Dim hsValidLetters
' Dim hsCurrentLetter
' Dim hsLetterFlash

' ' Check the scores to see if you got one

' Sub CheckHighscore()
' 	Dim tmp
' 	tmp = Player(CurrentPlayer).Score

' 	If tmp > HighScore(3) Then
' 		AwardSpecial
' 		HighScore(3) = tmp
' 		'enter player's name
' 		HighScoreEntryInit
' 	Else
' 		EndOfBallComplete
' 	End If
' End Sub





' Sub HighScoreEntryInit
' 	bHSModeActive = True
' 	'DMDBigText "HIGH SCORE!",77,1
' 	hsEnteredDigits(1) = "A"
' 	hsEnteredDigits(2) = " "
' 	hsEnteredDigits(3) = " "

' 	hsCurrentDigit = 1

' 	HighScoreDisplayName
' 	HighScorelabels	
' End Sub

' ' flipper moving around the letters

' Sub EnterHighScoreKey(keycode)
' 	If keycode = LeftFlipperKey Then
' 		If hsletter = 0 Then
' 			hsletter = 26
' 		Else
' 			hsLetter = hsLetter - 1
' 		End If
' 		HighScoreDisplayName
' 	End If

' 	If keycode = RightFlipperKey Then
' 		If hsletter = 26 Then
' 			hsletter = 0
' 		Else
' 			hsLetter = hsLetter + 1
' 		End If
' 		HighScoreDisplayName
' 	End If

' 	If keycode = StartGameKey or keycode = PlungerKey Then
' 		If hsCurrentDigit = 3 Then
' 			If hsletter = 0 Then
' 				hsCurrentDigit = hsCurrentDigit -1
' 			Else
' 				AssignLetter
' 				vpmtimer.addtimer 700, "HighScoreCommitName'"
' 			End If
' 		End If
' 		If hsCurrentDigit < 3 Then
' 			If hsletter = 0 Then
' 				If hsCurrentDigit = 1 Then
' 				Else
' 					hsCurrentDigit = hsCurrentDigit -1
' 				End If
' 			Else
' 				AssignLetter
' 				hsCurrentDigit = hsCurrentDigit + 1
' 				HighScoreDisplayName

' 			End If
' 		End If
' 	End if
' End Sub

' Dim hsletter
' hsletter = 1

' dim hsdigit:hsdigit = 1

' Sub AssignLetter
' 	if hscurrentdigit = 1 Then
' 		hsdigit = 1
' 	End If
' 	if hscurrentdigit = 2 Then
' 		hsdigit = 2
' 	End If
' 	if hscurrentdigit = 3 Then
' 		hsdigit = 3
' 	End If
' 	If hsletter = 1 Then 
' 		hsEnteredDigits(hsdigit) = "A"
' 	End If
' 	If hsletter = 2 Then 
' 		hsEnteredDigits(hsdigit) = "B"
' 	End If
' 	If hsletter = 3 Then 
' 		hsEnteredDigits(hsdigit) = "C"
' 	End If
' 	If hsletter = 4 Then 
' 		hsEnteredDigits(hsdigit) = "D"
' 	End If
' 	If hsletter = 5 Then 
' 		hsEnteredDigits(hsdigit) = "E"
' 	End If
' 	If hsletter = 6 Then 
' 		hsEnteredDigits(hsdigit) = "F"
' 	End If
' 	If hsletter = 7 Then 
' 		hsEnteredDigits(hsdigit) = "G"
' 	End If
' 	If hsletter = 8 Then 
' 		hsEnteredDigits(hsdigit) = "H"
' 	End If
' 	If hsletter = 9 Then 
' 		hsEnteredDigits(hsdigit) = "I"
' 	End If
' 	If hsletter = 10 Then 
' 		hsEnteredDigits(hsdigit) = "J"
' 	End If
' 	If hsletter = 11 Then 
' 		hsEnteredDigits(hsdigit) = "K"
' 	End If
' 	If hsletter = 12 Then 
' 		hsEnteredDigits(hsdigit) = "L"
' 	End If
' 	If hsletter = 13 Then 
' 		hsEnteredDigits(hsdigit) = "M"
' 	End If
' 	If hsletter = 14 Then 
' 		hsEnteredDigits(hsdigit) = "N"
' 	End If
' 	If hsletter = 15 Then 
' 		hsEnteredDigits(hsdigit) = "O"
' 	End If
' 	If hsletter = 16 Then 
' 		hsEnteredDigits(hsdigit) = "P"
' 	End If
' 	If hsletter = 17 Then 
' 		hsEnteredDigits(hsdigit) = "Q"
' 	End If
' 	If hsletter = 18 Then 
' 		hsEnteredDigits(hsdigit) = "R"
' 	End If
' 	If hsletter = 19 Then 
' 		hsEnteredDigits(hsdigit) = "S"
' 	End If
' 	If hsletter = 20 Then 
' 		hsEnteredDigits(hsdigit) = "T"
' 	End If
' 	If hsletter = 21 Then 
' 		hsEnteredDigits(hsdigit) = "U"
' 	End If
' 	If hsletter = 22 Then 
' 		hsEnteredDigits(hsdigit) = "V"
' 	End If
' 	If hsletter = 23 Then 
' 		hsEnteredDigits(hsdigit) = "W"
' 	End If
' 	If hsletter = 24 Then 
' 		hsEnteredDigits(hsdigit) = "X"
' 	End If
' 	If hsletter = 25 Then 
' 		hsEnteredDigits(hsdigit) = "Y"
' 	End If
' 	If hsletter = 26 Then 
' 		hsEnteredDigits(hsdigit) = "Z"
' 	End If

' End Sub

' Sub HighScorelabels
' '	PuPlayer.LabelSet pBackglass,"HighScore","YOU GOT A\rHIGH SCORE!",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL4",Score(CurrentPlayer),1,""
' 	hsletter = 1
' End Sub

' Sub HighScoreDisplayName

' '	Select case hsLetter
' '		Case 0
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","<",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","<",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","<",1,""
' '		Case 1
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","A",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","A",1,""
' '		Case 2
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","B",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","B",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","B",1,""
' '		Case 3
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","C",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","C",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","C",1,""
' '		Case 4
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","D",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","D",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","D",1,""
' '		Case 5
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","E",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","E",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","E",1,""
' '		Case 6
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","F",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","F",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","F",1,""
' '		Case 7
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","G",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","G",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","G",1,""
' '		Case 8
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","H",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","H",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","H",1,""
' '		Case 9
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","I",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","I",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","I",1,""
' '		Case 10
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","J",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","J",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","J",1,""
' '		Case 11
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","K",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","K",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","K",1,""
' '		Case 12
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","L",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","L",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","L",1,""
' '		Case 13
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","M",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","M",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","M",1,""
' '		Case 14
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","N",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","N",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","N",1,""
' '		Case 15
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","O",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","O",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","O",1,""
' '		Case 16
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","P",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","P",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","P",1,""
' '		Case 17
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Q",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Q",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Q",1,""
' '		Case 18
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","R",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","R",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","R",1,""
' '		Case 19
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","S",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","S",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","S",1,""
' '		Case 20
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","T",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","T",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","T",1,""
' '		Case 21
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","U",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","U",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","U",1,""
' '		Case 22
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","V",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","V",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","V",1,""
' '		Case 23
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","W",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","W",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","W",1,""
' '		Case 24
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","X",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","X",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","X",1,""
' '		Case 25
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Y",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Y",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Y",1,""
' '		Case 26
' '			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Z",1,""
' '			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Z",1,""
' '			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Z",1,""
' '	End Select
' End Sub

' ' post the high score letters


' Sub HighScoreCommitName
' 	hsEnteredName = hsEnteredDigits(1) & hsEnteredDigits(2) & hsEnteredDigits(3)
' 	HighScoreName(3) = hsEnteredName
' 	CheckHSOrder
' 	EndOfBallComplete
' '	PuPlayer.LabelSet pBackglass,"HighScore","",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL1","",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
' '	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
' End Sub





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






' '*******************************************
' ' ZSCO : Scoring
' '*******************************************

' Sub Addscore(points)
' 	If Not bTilted Then
' 		Player(CurrentPlayer).Score = Player(CurrentPlayer).Score + points*PointMultiplier
' 	End if
' End Sub


' Sub AddBonus(points)
' 	If Not bTilted Then
' 		Player(CurrentPlayer).BonusPoints  = Player(CurrentPlayer).BonusPoints  + points*PointMultiplier
' 	End if
' End Sub


' Sub AwardSpecial
' 	Credits = Credits + 1
' 	SaveCredits
' 	SolKnocker true
' End Sub


' Sub AwardExtraBall 
' 	Player(CurrentPlayer).TotalExtraBallsAwarded = Player(CurrentPlayer).TotalExtraBallsAwarded + 1
' 	if Player(CurrentPlayer).TotalExtraBallsAwarded <= MaxExtraBallsPerGame Then
' 		Player(CurrentPlayer).ExtraBallsAwards = Player(CurrentPlayer).ExtraBallsAwards + 1
' 		AudioCallout "extraball" 
' 		'DMDBigText "EXTRA BALL",250,1
' 		ChangeLamp LSA,1,"white",7,3,3,1
' 		ChangeLamp LEBR,0,"green",7,3,3,1
' 	End If 
' End Sub



'********************************************
' ZSPN : Spinners
'********************************************



' Sub Spinner_Spin
' 	Addscore 110
' 	SoundSpinner Spinner
' 	Flash2 True						'Demo of the flasher
' End Sub



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





'
''*******************************************
'' ZSNG : Song Code
''*******************************************
'
'const SongVolume = 1
'dim LoopLength, NumLoops
'
'dim LoopQueue
'LoopQueue = Array(False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False)
'
'dim SongLoops
'SongLoops = Array( _
'	"Song1 Arpeggio Loop", _
'	"Song1 Bass Loop", _
'	"Song1 Bright Saw", _
'	"Song1 Guitar Loop", _
'	"Song1 HiHat Loop", _
'	"Song1 Kick Loop", _
'	"Song1 Miami Flute", _
'	"Song1 Snare Loop" )
'
'sub SetupSong(nr)	
'	StopAllLoops
'	LoopTimer.Enabled = False
'	select case nr
'		case 1: 
'			'SongLoops = Song1Loops
'			LoopLength = 9600
'			LoopTimer.interval = LoopLength
'			LoopTimer.Enabled = True
'	end select
'end sub
'
'
'sub LoopTimer_Timer
'	StopAllLoops
'	dim i : for i = 0 to ubound(SongLoops)
'		if LoopQueue(i+1) = True then
'			PlaySound SongLoops(i), -1, SongVolume, 0, 0, 0, 0, 0, 0
'			LoopLight(i).state = 1
'		end if
'	next
'end Sub
'
'
'sub StopAllLoops
'	dim i : for i = 0 to ubound(SongLoops)
'		Stopsound SongLoops(i)
'		LoopLight(i).state = 0
'	next
'end sub
'
'
'' Initialize song
'SetupSong 1
'
'
'
''---- Song Triggers -----
'
'sub Trigger001_hit
'	LoopLight(1-1).state = 2
'	if LoopQueue(1) then
'		LoopQueue(1)=False
'	else 
'		LoopQueue(1)=True
'	end if
'end sub
'
'sub Trigger002_hit
'	LoopLight(2-1).state = 2
'	if LoopQueue(2) then
'		LoopQueue(2)=False
'	else 
'		LoopQueue(2)=True
'	end if
'end sub
'
'sub Trigger003_hit
'	LoopLight(3-1).state = 2
'	if LoopQueue(3) then
'		LoopQueue(3)=False
'	else 
'		LoopQueue(3)=True
'	end if
'end sub
'
'sub Trigger004_hit
'	LoopLight(4-1).state = 2
'	if LoopQueue(4) then
'		LoopQueue(4)=False
'	else 
'		LoopQueue(4)=True
'	end if
'end sub
'
'sub Trigger005_hit
'	LoopLight(5-1).state = 2
'	if LoopQueue(5) then
'		LoopQueue(5)=False
'	else 
'		LoopQueue(5)=True
'	end if
'end sub
'
'sub Trigger006_hit
'	LoopLight(6-1).state = 2
'	if LoopQueue(6) then
'		LoopQueue(6)=False
'	else 
'		LoopQueue(6)=True
'	end if
'end sub
'
'sub Trigger007_hit
'	LoopLight(7-1).state = 2
'	if LoopQueue(7) then
'		LoopQueue(7)=False
'	else 
'		LoopQueue(7)=True
'	end if
'end sub
'
'sub Trigger008_hit
'	LoopLight(8-1).state = 2
'	if LoopQueue(8) then
'		LoopQueue(8)=False
'	else 
'		LoopQueue(8)=True
'	end if
'end sub





'*********************************************************************************************************
' ZTAB : Table Object Code
'*********************************************************************************************************


' 'Seven Segment Display
' '
' '     0
' '     _
' ' 5  |_|  1
' ' 4  |_|  2
' '    
' '     3     6 is middle segment
' '
' ' Need lights to drive each segement's lightmaps



' Dim SegDisplay01, SegDisplay10

' Sub InitSegDisplays
'     set SegDisplay01 = new SevenSegDisplay
'     set SegDisplay10 = new SevenSegDisplay
'     SegDisplay01.SetLights = Array(a00,a01,a02,a03,a04,a05,a06)
'     SegDisplay10.SetLights = Array(a10,a11,a12,a13,a14,a15,a16)
' 	SegDisplay01.Clear
' 	SegDisplay10.Clear
' End Sub

' Class SevenSegDisplay
'     Private Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9
'     Private Char,SegLights
'     Public SegsState, bSegsOff

' 	Public Sub Class_Initialize 
'         ' segment visibility  0,1,2,3,4,5,6
'         Segs0 = Array(1,1,1,1,1,1,0)   'number 0
'         Segs1 = Array(0,1,1,0,0,0,0)   'number 1
'         Segs2 = Array(1,1,0,1,1,0,1)   'number 2
'         Segs3 = Array(1,1,1,1,0,0,1)   'number 3
'         Segs4 = Array(0,1,1,0,0,1,1)   'number 4
'         Segs5 = Array(1,0,1,1,0,1,1)   'number 5
'         Segs6 = Array(1,0,1,1,1,1,1)   'number 6
'         Segs7 = Array(1,1,1,0,0,0,0)   'number 7
'         Segs8 = Array(1,1,1,1,1,1,1)   'number 8
'         Segs9 = Array(1,1,1,1,0,1,1)   'number 9
' 		SegsState = Array(0,0,0,0,0,0,0)
' 		bSegsOff = True
'         Char = Array(Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9)
'     End Sub

'     Public Property Let SetLights(aInput) : SegLights = aInput : End Property

'     Public Sub DisplayChar(num)
'         dim i : For i = 0 to 6
'             SegsState(i) = Char(num)(i)
'             SegLights(i).state = SegsState(i)
'         Next
' 		bSegsOff = False
' 		'DebugPrint "SegsState = " & SegsState(0) & " " & SegsState(1) & " " & SegsState(2) & " " & SegsState(3) & " " & SegsState(4) & " " & SegsState(5) & " " & SegsState(6)
'     End Sub

'     Public Sub Clear
'         dim i : For i = 0 to 6
'             SegsState(i) = 0
'             SegLights(i).state = 0
'         Next
' 		bSegsOff = True
'     End Sub

'     Public Sub RandomSegOff
' 		dim SegSum : SegSum = 0
' 		dim i : For i = 0 to 6 : SegSum = SegSum + SegsState(i) : Next
' 		If SegSum > 0 Then
'             dim r : r = Int(rnd*SegSum) + 1
'             SegSum = 0
'             For i = 0 to 6
'                 SegSum = SegSum + SegsState(i)
'                 If SegSum = r Then 
'                     SegsState(i) = 0
'                     SegLights(i).state = 0
'                     Exit Sub
'                 End If
'             Next
' 		Else	
' 			bSegsOff = True
'         End If
'     End Sub

' End Class





' '********************************************
' '  ZTAR : Targets
' '********************************************

' Dim MagnetFlashCnt


' ' Standup Targets
' '********************************************


' Sub MagnetFlashTimer_timer
' 	MagnetFlashCnt = MagnetFlashCnt + 1
' 	If MagnetFlashCnt Mod 2 = 0 Then
' 		Flash1 False
' 	Else
' 		Flash1 True
' 	End If
' 	if MagnetFlashCnt = 4 Then MagnetFlashTimer.interval = 75
' 	if MagnetFlashCnt = 8 Then MagnetFlashTimer.enabled = False
' End Sub


' ' Sub TargetMystery1_Hit: STHit 1: End Sub
' Sub TargetMystery1_Action
' 	' SwitchWasHit "TargetMystery1"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM1,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' End Sub

' ' Sub TargetMystery2_Hit: STHit 2: End Sub
' Sub TargetMystery2_Action
' 	' SwitchWasHit "TargetMystery2"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM2,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	Flash2 True								'Demo of the flasher
' 	AwardSkillShot
' End Sub

' ' Sub TargetMystery3_Hit: STHit 3: End Sub
' Sub TargetMystery3_Action
' 	' SwitchWasHit "TargetMystery3"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM3,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	If Player(CurrentPlayer).NumProtonLoaded > 0 and NumMeteorsActive > 0 Then FireProtonRound: Flash4 True: End If
' End Sub

' ' Sub TargetMystery4_Hit: STHit 4: End Sub
' Sub TargetMystery4_Action
' 	' SwitchWasHit "TargetMystery4"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM4,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	Flash3 True								'Demo of the flasher
' End Sub

' ' Sub TargetMystery5_Hit: STHit 5: End Sub
' Sub TargetMystery5_Action
' 	' SwitchWasHit "TargetMystery5"
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM5,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	MagnetFlashCnt = 0
' 	MagnetFlashTimer.interval = 150
' 	MagnetFlashTimer.enabled = True
' 	SolGrabMagnet True
' End Sub



' ' Shield charging targets
' ' Sub TargetShield1_Hit: STHit 6: End Sub
' Sub TargetShield1_Action
' 	' SwitchWasHit "TargetShield1"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield2_Hit: STHit 7: End Sub
' Sub TargetShield2_Action
' 	' SwitchWasHit "TargetShield2"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield3_Hit: STHit 8: End Sub
' Sub TargetShield3_Action
' 	' SwitchWasHit "TargetShield3"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield4_Hit: STHit 9: End Sub
' Sub TargetShield4_Action
' 	' SwitchWasHit "TargetShield4"
' 	CheckShieldCharge
' End Sub


' ' Drop Targets
' '********************************************


' ' Sub DTMeteor1_Hit: 	DTHit 1 : End Sub
' Sub DTMeteor1_Action
' 	Meteors(0).Hit
' 	If Meteor1.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor2_Hit: 	DTHit 2 : End Sub
' Sub DTMeteor2_Action
' 	Meteors(1).Hit
' 	If Meteor2.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor3_Hit: 	DTHit 3 : End Sub
' Sub DTMeteor3_Action
' 	Meteors(2).Hit
' 	If Meteor3.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor4_Hit: 	DTHit 4 : End Sub
' Sub DTMeteor4_Action
' 	Meteors(0).Hit
' 	If Meteor4.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub






' '********************************************
' ' ZTLT : Tilt
' '********************************************


' 'NOTE: The TiltDecreaseTimer Subtracts .01 from the "Tilt" variable every round
' Sub CheckTilt                                    	'Called when table is nudged
' 	If Not bGameInPlay Then Exit Sub
' 	Tilt = Tilt + TiltSensitivity                	'Add to tilt count
' 	TiltDecreaseTimer.Enabled = True
' 	If(Tilt > TiltSensitivity) AND (Tilt <= 15) Then ShowTiltWarning 'show a warning
' 	If Tilt > 15 Then TiltMachine  					'If more than 15 then TILT the table
' End Sub

' Sub CheckMechTilt                                	'Called when mechanical tilt bob switch closed
' 	If Not bGameInPlay Then Exit Sub
' 	If Not bMechTiltJustHit Then
' 		MechTilt = MechTilt + 1               		'Add to tilt count
' 		If(MechTilt > 0) AND (MechTilt <= 2) Then ShowTiltWarning 'show a warning
' 		If MechTilt > 2 Then TiltMachine  			'If more than 2 then TILT the table
' 		bMechTiltJustHit = True
' 		TiltDebounceTimer.Enabled = True
' 	End If
' End Sub

' Sub ShowTiltWarning
' 	AudioCallout "tilt warning"
' 	'DMDBigText "TILT WARNING",77,1
' 	'pNote "CAREFUL!","TILT WARNING"
' 	'PlaySound "buzz"
' End Sub

' Sub TiltMachine
' 	AudioCallout "tilt"
' 	bTilted = True
' 	'DMDBigText "TILT!",77,1
' 	'pNote "TILT",""
' 	'PlaySound "powerdownn"
' 	'PuPlayer.playlistplayex pBackglass,"videotilt","",100,4
' 	DisableTable True
' 	TiltRecoveryTimer.Enabled = True 'start the Tilt delay to check for all the balls to be drained
' End Sub


' Sub TiltDecreaseTimer_Timer
' 	' DecreaseTilt
' 	If Tilt> 0 Then
' 		Tilt = Tilt - 0.1
' 	Else
' 		TiltDecreaseTimer.Enabled = False
' 	End If
' End Sub


' Sub TiltDebounceTimer_Timer
' 	bMechTiltJustHit = False
' 	TiltDebounceTimer.Enabled = False
' End Sub


' Sub DisableTable(Enabled)
' 	If Enabled Then
' 		'GiOff
' 		' Add tilt messages and sounds
' 		LeftFlipper.RotateToStart
' 		RightFlipper.RotateToStart
' 		RightFlipper1.RotateToStart
' 		LeftSlingshot.Disabled = 1
' 		RightSlingshot.Disabled = 1
' 		bFlippersEnabled = False
' 	Else
' 		'GiOn
' 		LeftSlingshot.Disabled = 0
' 		RightSlingshot.Disabled = 0
' 		bFlippersEnabled = True
' 	End If
' End Sub


' Sub TiltRecoveryTimer_Timer()
' 	If (BallsOnPlayfield = 0) Then
' 		EndOfBall
' 		TiltRecoveryTimer.Enabled = False
' 	End If
' End Sub
