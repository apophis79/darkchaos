

'*******************************************
'  ZBMP : Bumpers
'*******************************************
Sub Bumper1_Hit 
	SwitchWasHit "Bumper1"
	CheckRepair
	Addscore 250
	RandomSoundBumperTop Bumper1
	SetLampState LB1,1
	Bumper1.timerenabled = True
End Sub

Sub Bumper1_Timer
	SetLampState LB1,0
End Sub

Sub Bumper2_Hit 
	SwitchWasHit "Bumper2"
	CheckRepair
	Addscore 250
	RandomSoundBumperMiddle Bumper2
	SetLampState LB2,1
	Bumper2.timerenabled = True
End Sub

Sub Bumper2_Timer
	SetLampState LB2,0
End Sub

Sub Bumper3_Hit 
	SwitchWasHit "Bumper3"
	CheckRepair
	Addscore 250
	RandomSoundBumperBottom Bumper3
	SetLampState LB3,1
	Bumper3.timerenabled = True
End Sub

Sub Bumper3_Timer
	SetLampState LB3,0
End Sub

Sub Bumper4_Hit 
	SwitchWasHit "Bumper4"
	CheckRepair
	Addscore 250
	RandomSoundBumperBottom Bumper4
	SetLampState LB4,1
	Bumper4.timerenabled = True
End Sub

Sub Bumper4_Timer
	SetLampState LB4,0
End Sub

