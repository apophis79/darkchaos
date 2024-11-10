

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








'  ERROR LOGS by baldgeek
'*******************************

' Log File Usage:
'   WriteToLog "Label 1", "Message 1 "
'   WriteToLog "Label 2", "Message 2 "


Class DebugLogFile

    Private Filename
    Private TxtFileStream
    
    Private Function LZ(ByVal Number, ByVal Places)
        Dim Zeros
        Zeros = String(CInt(Places), "0")
        LZ = Right(Zeros & CStr(Number), Places)
    End Function

    Private Function GetTimeStamp
        Dim CurrTime, Elapsed, MilliSecs
        CurrTime = Now()
        Elapsed = Timer()
        MilliSecs = Int((Elapsed - Int(Elapsed)) * 1000)
        GetTimeStamp = _
            LZ(Year(CurrTime),   4) & "-" _
            & LZ(Month(CurrTime),  2) & "-" _
            & LZ(Day(CurrTime),    2) & " " _
            & LZ(Hour(CurrTime),   2) & ":" _
            & LZ(Minute(CurrTime), 2) & ":" _
            & LZ(Second(CurrTime), 2) & ":" _
            & LZ(MilliSecs, 4)
    End Function

' *** Debug.Print the time with milliseconds, and a message of your choice
    Public Sub WriteToLog(label, message, code)
        Dim FormattedMsg, Timestamp
        'Filename = UserDirectory + "\" + cGameName + "_debug_log.txt"
		Filename = cGameName + "_debug_log.txt"
      
        Set TxtFileStream = CreateObject("Scripting.FileSystemObject").OpenTextFile(Filename, code, True)
        Timestamp  = GetTimeStamp     
        FormattedMsg = GetTimeStamp + " : " + label + " : " + message
        TxtFileStream.WriteLine FormattedMsg
        TxtFileStream.Close
		debug.print label & " : " & message
	End Sub

End Class

Sub WriteToLog(label, message)
	if KeepLogs Then
		Dim LogFileObj
		Set LogFileObj = New DebugLogFile
		LogFileObj.WriteToLog label, message, 8
	end if
End Sub

Sub NewLog()
	if KeepLogs Then
		Dim LogFileObj
		Set LogFileObj = New DebugLogFile
		LogFileObj.WriteToLog "NEW LOG", " ", 2
	end if
End Sub


Sub DebugPrint(str)
	If PrintDebugs Then debug.print str
End Sub
