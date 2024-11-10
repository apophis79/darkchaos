

'*******************************************
'  ZDRA : Drain, Trough, and Ball Release
'*******************************************


'TROUGH 
Sub swTrough1_Hit   : UpdateTrough : End Sub
Sub swTrough1_UnHit : UpdateTrough : End Sub
Sub swTrough2_Hit   : UpdateTrough : End Sub
Sub swTrough2_UnHit : UpdateTrough : End Sub
Sub swTrough3_Hit   : UpdateTrough : End Sub
Sub swTrough3_UnHit : UpdateTrough : End Sub
Sub swTrough4_Hit   : UpdateTrough : End Sub
Sub swTrough4_UnHit : UpdateTrough : End Sub
Sub swTrough5_Hit   : UpdateTrough : End Sub
Sub swTrough5_UnHit : UpdateTrough : End Sub


Sub UpdateTrough
	UpdateTroughTimer.Interval = 100
	UpdateTroughTimer.Enabled = 1
End Sub

Sub UpdateTroughTimer_Timer
	If swTrough1.BallCntOver = 0 Then swTrough2.kick 57, 10
	If swTrough2.BallCntOver = 0 Then swTrough3.kick 57, 10
	If swTrough3.BallCntOver = 0 Then swTrough4.kick 57, 10
	If swTrough4.BallCntOver = 0 Then swTrough5.kick 57, 10
	Me.Enabled = 0
End Sub


' DRAIN & RELEASE
Sub Drain_Hit 
	SwitchWasHit "Drain"
	HandleDrain
	RandomSoundDrain Drain 
	Drain.kick 57, 20
	'vpmTimer.AddTimer 500, "Drain.kick 57, 20'" 
End Sub


Sub SolRelease(enabled)
	If enabled Then 
		swTrough1.kick 90, 10		
		RandomSoundBallRelease swTrough1
	End If
End Sub

