

'*******************************************
' ZMIS : Miscellaneous support function
'*******************************************


ReDim bBallInTrough(tnob)
Sub CheckBallLocations
	Dim b
	For b = 0 to UBound(gBOT)
		'Check if ball is in the trough
		If InRect(gBOT(b).X, gBOT(b).Y, 377,2018,850,1783,850,1895,404,2087) Then
			bBallInTrough(b) = True
		Else
			bBallInTrough(b) = False
		End If
	Next
End Sub




