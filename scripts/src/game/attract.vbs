
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
