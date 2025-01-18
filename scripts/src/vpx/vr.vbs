
'*******************************************
' ZVRR : VR Room / VR Cabinet
'*******************************************

Sub SetupRoom
	Dim VRThings
	TimerPlunger2.Enabled = True

	If VRRoom <> 0 Then
	'	DMDPlayfield.dmd = False
		DMDPlayfield.visible = False
	'	DMDbackbox.DMD=True
		DMDbackbox.visible=true  ' flasher dmd
		If VRRoom = 1 Then
			for each VRThings in VR_Cab:VRThings.visible = 1:Next
		End If
		If VRRoom = 2 Then
			for each VRThings in VR_Cab:VRThings.visible = 0:Next
			PinCab_Backglass.visible = 1
		End If
	Else
		for each VRThings in VR_Cab:VRThings.visible = 0:Next
	End if
End Sub



