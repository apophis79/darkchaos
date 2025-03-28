
'*******************************************
' ZVRR : VR Room / VR Cabinet
'*******************************************

Sub SetupRoom
	Dim VRThing, x
	TimerPlunger2.Enabled = True

	If VRRoom <> 0 Then
		For Each x In DesktopLights: x.visible = 0: Next
		For Each x in BP_Rails : x.visible = 1: Next  'overrides option menu setting
		For Each VRThing in VR_Cab: VRThing.visible = 1: Next
		For Each VRThing in VR_Backglass: VRThing.visible = 1: Next

		'Asteroid Room
		If VRRoom = 1 Then 
			For Each VRThing in VR_Mega: VRThing.visible = 1: Next
			For Each VRThing in VR_Min: VRThing.visible = 0: Next
		End If

		'Minimal Room
		If VRRoom = 2 Then
			For Each VRThing in VR_Mega: VRThing.visible = 0: Next
			For Each VRThing in VR_Min: VRThing.visible = 1: Next
		End If

		'Ultra Minimal Room
		If VRRoom = 3 Then
			For Each VRThing in VR_Mega: VRThing.visible = 0: Next
			For Each VRThing in VR_Min: VRThing.visible = 0: Next
		End If

	Else
		For Each VRThing in VR_Mega: VRThing.visible = 0: Next
		For Each VRThing in VR_Min: VRThing.visible = 0: Next
		For Each VRThing in VR_Cab: VRThing.visible = 0: Next
		For Each VRThing in VR_Backglass: VRThing.visible = 0: Next
		'Hide desktop lights if not in desktop mode
		For Each x In DesktopLights: x.visible = DesktopMode: Next
	End if
End Sub


Sub InitVR
	Dim obj

	For Each obj in VR_Backglass
		obj.x = obj.x + 0
		obj.height = -obj.y + 350
		obj.y = 10    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next

	For Each obj in VR_Flashers
		obj.x = obj.x + 0
		obj.height = -obj.y + 350
		obj.y = 11    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next

	'Randomize VR starry sky angles
	VRSphere.rotx = Rnd*360
	VRSphere.roty = Rnd*360
	VRSphere.rotz = Rnd*360

End Sub



