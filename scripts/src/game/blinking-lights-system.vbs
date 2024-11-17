

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


