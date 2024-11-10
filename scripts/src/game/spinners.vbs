
'********************************************
' ZSPN : Spinners
'********************************************

Dim LMs_Spin, LMs_SpinU

Sub Spinner_Spin
	Addscore 110
	SoundSpinner Spinner
	Flash2 True						'Demo of the flasher
End Sub




InitSpinner
Sub InitSpinner 
	Dim i, LM
	BM_Spin.Visible = 1
	BM_SpinU.Visible = 0
	' Create LM arrays
	ReDim LMs_Spin(UBound(BP_Spin)-1)
	ReDim LMs_SpinU(UBound(BP_SpinU)-1)
	For i = 0 to (UBound(BP_Spin)-1): Set LMs_Spin(i) = BP_Spin(i+1): Next
	For i = 0 to (UBound(BP_SpinU)-1): Set LMs_SpinU(i) = BP_SpinU(i+1): Next
	'Scale down the inner spinner a little more in y-dir
'	Dim BP
'	For Each BP in BP_Spin
'		BP.Size_X = BP.Size_X * 0.99
'		BP.Size_Y = BP.Size_Y * 0.99
'		BP.Size_Z = BP.Size_Z * 0.99
'	Next
	Spinner_animate
End Sub

Sub Spinner_animate
	Dim LM, a, b, offset
	a = Spinner.currentangle
	If a >= 0 And a < 60 Then
        b = 0
    ElseIf a >= 60 And a < 120 Then
        b = (a - 60) / 60
    ElseIf a >= 120 And a < 240 Then
        b = 1
    ElseIf a >= 240 And a < 300 Then
        b = 1 + (240 - a) / 60
    Else
        b = 0
    End If

	BM_Spin.RotX = a
	For Each LM in LMs_Spin
		LM.RotX = a
		LM.Opacity = 100 * (1 - b)
	Next
	For Each LM in LMs_SpinU
		LM.RotX = a
		LM.Opacity = 100 * b
	Next
	For Each LM in BP_SpinWire: LM.RotX = a: Next
End Sub

