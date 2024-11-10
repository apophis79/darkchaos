

'*********************************************************************************************************
' ZTAB : Table Object Code
'*********************************************************************************************************


'Seven Segment Display
'
'     0
'     _
' 5  |_|  1
' 4  |_|  2
'    
'     3     6 is middle segment
'
' Need lights to drive each segement's lightmaps



Dim SegDisplay01, SegDisplay10

Sub InitSegDisplays
    set SegDisplay01 = new SevenSegDisplay
    set SegDisplay10 = new SevenSegDisplay
    SegDisplay01.SetLights = Array(a00,a01,a02,a03,a04,a05,a06)
    SegDisplay10.SetLights = Array(a10,a11,a12,a13,a14,a15,a16)
	SegDisplay01.Clear
	SegDisplay10.Clear
End Sub

Class SevenSegDisplay
    Private Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9
    Private Char,SegLights
    Public SegsState, bSegsOff

	Public Sub Class_Initialize 
        ' segment visibility  0,1,2,3,4,5,6
        Segs0 = Array(1,1,1,1,1,1,0)   'number 0
        Segs1 = Array(0,1,1,0,0,0,0)   'number 1
        Segs2 = Array(1,1,0,1,1,0,1)   'number 2
        Segs3 = Array(1,1,1,1,0,0,1)   'number 3
        Segs4 = Array(0,1,1,0,0,1,1)   'number 4
        Segs5 = Array(1,0,1,1,0,1,1)   'number 5
        Segs6 = Array(1,0,1,1,1,1,1)   'number 6
        Segs7 = Array(1,1,1,0,0,0,0)   'number 7
        Segs8 = Array(1,1,1,1,1,1,1)   'number 8
        Segs9 = Array(1,1,1,1,0,1,1)   'number 9
		SegsState = Array(0,0,0,0,0,0,0)
		bSegsOff = True
        Char = Array(Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9)
    End Sub

    Public Property Let SetLights(aInput) : SegLights = aInput : End Property

    Public Sub DisplayChar(num)
        dim i : For i = 0 to 6
            SegsState(i) = Char(num)(i)
            SegLights(i).state = SegsState(i)
        Next
		bSegsOff = False
		'DebugPrint "SegsState = " & SegsState(0) & " " & SegsState(1) & " " & SegsState(2) & " " & SegsState(3) & " " & SegsState(4) & " " & SegsState(5) & " " & SegsState(6)
    End Sub

    Public Sub Clear
        dim i : For i = 0 to 6
            SegsState(i) = 0
            SegLights(i).state = 0
        Next
		bSegsOff = True
    End Sub

    Public Sub RandomSegOff
		dim SegSum : SegSum = 0
		dim i : For i = 0 to 6 : SegSum = SegSum + SegsState(i) : Next
		If SegSum > 0 Then
            dim r : r = Int(rnd*SegSum) + 1
            SegSum = 0
            For i = 0 to 6
                SegSum = SegSum + SegsState(i)
                If SegSum = r Then 
                    SegsState(i) = 0
                    SegLights(i).state = 0
                    Exit Sub
                End If
            Next
		Else	
			bSegsOff = True
        End If
    End Sub

End Class

