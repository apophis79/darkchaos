
'*******************************************
'  ZTIM : General Timers
'*******************************************


' The game timer interval is 10 ms
Sub GameTimer_Timer()
End Sub

' The COR timer interval is 10 ms
Sub CorTimer_Timer
	Cor.Update
End Sub


' The frame timer interval is -1, so executes at the display frame rate
dim FrameTime, InitFrameTime : InitFrameTime = 0
Sub FrameTimer_Timer()
	FrameTime = gametime - InitFrameTime : InitFrameTime = gametime	'Count frametime
	If FrameTime > 25 Then debug.print "---------- FrameTime = " & FrameTime

	RollingUpdate					'update rolling sounds
	DoDTAnim 						'handle drop target animations
	UpdateDropTargets
	DoSTAnim 						'handle drop target animations
	UpdateStandupTargets
	BSUpdate
	UpdateBallBrightness
	UpdateAsteroid
	NudgeAnim
End Sub

' 'Debug textbox
' tbDebug.Timerenabled = True
' Sub tbDebug_Timer
' 	me.text = Player(CurrentPlayer).BallsRemaining
' End Sub


