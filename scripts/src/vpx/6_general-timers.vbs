
'*******************************************
'  ZTIM : General Timers
'*******************************************


' The COR timer interval is 10 ms
CorTimer.Interval = 10
CorTimer.Enabled = True
Sub CorTimer_Timer
	Cor.Update
End Sub


' The frame timer interval is -1, so executes at the display frame rate
dim FrameTime, InitFrameTime : InitFrameTime = 0
FrameTimer.Interval = -1
FrameTimer.Enabled = True
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
	RotateSky
End Sub


' Plunger animation timers
Sub TimerPlunger_Timer
	If PinCab_Shooter.TransZ < 90 then
		PinCab_Shooter.TransZ = (6.0* Plunger.Position) - 20
	End If
	PlungerLine.TransY = (6.0* Plunger.Position) - 20
	PlungerLine.TransZ = -0.7*(Plunger.Position - 4.1)
End Sub

Sub TimerPlunger2_Timer
	PinCab_Shooter.TransZ = (6.0* Plunger.Position) - 20
	PlungerLine.TransY = (6.0* Plunger.Position) - 20
	PlungerLine.TransZ = -0.7*(Plunger.Position - 4.1)
End Sub




