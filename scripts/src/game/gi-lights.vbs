

'****************************************************************
'  ZGIL : GI Lights
'****************************************************************

dim gilvl:gilvl = 1		
Sub EnableGI(Enabled)
	dim xx
	If enabled Then
		for each xx in GI:xx.state = 1:Next
		gilvl = 1
	Else
		for each xx in GI:xx.state = 0:Next	
		gilvl = 0
	End If
	Sound_GI_Relay enabled, bumper1
End Sub


