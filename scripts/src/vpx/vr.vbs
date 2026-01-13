
'*******************************************
' ZVRR : VR Room / VR Cabinet
'*******************************************

Sub SetupRoom
	Dim VRThing, x
	TimerPlunger2.Enabled = True

	If VRRoom <> 0 Then
		DMD.visible = 1
		For Each x In DesktopLights: x.visible = 0: Next
		For Each x in BP_Rails : x.visible = 0: Next  'overrides option menu setting
		For Each VRThing in VR_Cab: VRThing.visible = 1: Next
		For Each VRThing in VR_Backglass: VRThing.visible = 1: Next
		For Each VRThing in VR_Flashers: VRThing.visible = 1: Next
		For Each VRThing in VR_Display: VRThing.visible = 1: Next
		For Each VRThing in VR_DisplayBall: VRThing.visible = 1: Next

		'Asteroid Room
		If VRRoom = 1 Then 
			For Each VRThing in VR_Planet: VRThing.visible = VREarthVisible: Next
			For Each VRThing in VR_Mega: VRThing.visible = 1: Next
			For Each VRThing in VR_Min: VRThing.visible = 0: Next
		End If

		'Minimal Room
		If VRRoom = 2 Then
			For Each VRThing in VR_Planet: VRThing.visible = 0: Next
			For Each VRThing in VR_Mega: VRThing.visible = 0: Next
			For Each VRThing in VR_Min: VRThing.visible = 1: Next
		End If

		'Ultra Minimal Room
		If VRRoom = 3 Then
			For Each VRThing in VR_Planet: VRThing.visible = 0: Next
			For Each VRThing in VR_Mega: VRThing.visible = 0: Next
			For Each VRThing in VR_Min: VRThing.visible = 0: Next
		End If

	Else
		DMD.visible = 0
		For Each VRThing in VR_Mega: VRThing.visible = 0: Next
		For Each VRThing in VR_Planet: VRThing.visible = 0: Next
		For Each VRThing in VR_Min: VRThing.visible = 0: Next
		For Each VRThing in VR_Cab: VRThing.visible = 0: Next
		For Each VRThing in VR_Backglass: VRThing.visible = 0: Next
		For Each VRThing in VR_Flashers: VRThing.visible = 0: Next
		For Each VRThing in VR_Display: VRThing.visible = 0: Next
		For Each VRThing in VR_DisplayBall: VRThing.visible = 0: Next
		'Hide desktop lights if not in desktop mode
		For Each x In DesktopLights: x.visible = DesktopMode: Next
	End if
End Sub

Const VRBG_height = 445 '375
Const VRBG_y = -90
Const VRBG_rot = -86

Sub InitVR
	Dim obj

	For Each obj in VR_Cab
		obj.z = obj.z + 20
	Next

	For Each obj in VR_Backglass
		obj.x = obj.x + 0
		obj.height = -obj.y + VRBG_height
		obj.y = VRBG_y
		obj.rotx = VRBG_rot
	Next

	For Each obj in VR_Flashers
		obj.x = obj.x + 0
		obj.height = -obj.y + VRBG_height
		obj.y = VRBG_y + 5
		obj.rotx = VRBG_rot
	Next

	For Each obj in VR_DisplayBall
		obj.x = obj.x + 0
		obj.z = -obj.y + VRBG_height
		obj.y = VRBG_y + 10 
		obj.rotx = VRBG_rot
	Next
	BGDisplayBall.y = VRBG_y + 5

	For Each obj in VR_Display
		obj.x = obj.x + 0
		obj.z = -obj.y + VRBG_height
		obj.y = VRBG_y + 40
		obj.rotx = VRBG_rot
	Next
	'BGDisplay.y = 85
	BGDisplay.y = VRBG_y + 35

	NewSkyAngle
End Sub


Sub NewSkyAngle
    'Randomize VR starry sky angles
	VRSphere.rotx = Rnd*360
	VRSphere.roty = Rnd*360
	VRSphere.rotz = Rnd*360
End Sub

Sub RotateSky
	Dim obj
	if VRRoom <> 1 Or VRRotateRate = 0 Then Exit Sub
    'Randomize VR starry sky angles
	Select Case VRRoomRotate
		Case 1 
			VRSphere.objrotx = VRSphere.objrotx + FrameTime*VRRotateRate*0.0001
			For each obj in VR_Planet: obj.objrotx = obj.objrotx + FrameTime*VRRotateRate*0.0001: Next
		Case 2
			VRSphere.objroty = VRSphere.objroty + FrameTime*VRRotateRate*0.0001
			For each obj in VR_Planet: obj.objroty = obj.objroty + FrameTime*VRRotateRate*0.0001: Next
		Case 3
			VRSphere.objrotz = VRSphere.objrotz + FrameTime*VRRotateRate*0.0001
			For each obj in VR_Planet: obj.objrotz = obj.objrotz + FrameTime*VRRotateRate*0.0001: Next
	End Select
End Sub



