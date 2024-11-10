


'******************************************************
'*****   ZFLA : FLASHER DOMES
'******************************************************

Sub Flash1(Enabled)
	If Enabled Then		
		FL1.state = 1
		FL1.TimerEnabled = true
		Sound_Flash_Relay 1, FL1
	Else
		FL1.state = 0
	End If
End Sub
Sub FL1_timer
	FL1.state = 0
	Sound_Flash_Relay 0, FL1
	FL1.TimerEnabled = false
End Sub


Sub Flash2(Enabled)
	If Enabled Then		
		FL2.state = 1
		FL2.TimerEnabled = true
		Sound_Flash_Relay 1, FL2
	Else
		FL2.state = 0
	End If
End Sub
Sub FL2_timer
	FL2.state = 0
	Sound_Flash_Relay 0, FL2
	FL2.TimerEnabled = false
End Sub


Sub Flash3(Enabled)
	If Enabled Then		
		FL3.state = 1
		FL3.TimerEnabled = true
		Sound_Flash_Relay 1, FL3
	Else
		FL3.state = 0
	End If
End Sub
Sub FL3_timer
	FL3.state = 0
	Sound_Flash_Relay 0, FL3
	FL3.TimerEnabled = false
End Sub


Sub Flash4(Enabled)
	If Enabled Then		
		FL4.state = 1
		FL4.TimerEnabled = true
		Sound_Flash_Relay 1, FL4
	Else
		FL4.state = 0
	End If
End Sub
Sub FL4_timer
	FL4.state = 0
	Sound_Flash_Relay 0, FL4
	FL4.TimerEnabled = false
End Sub


Sub Flash5(Enabled)
	If Enabled Then		
		FL5.state = 1
		FL5.TimerEnabled = true
		Sound_Flash_Relay 1, FL5
	Else
		FL5.state = 0
	End If
End Sub
Sub FL5_timer
	FL5.state = 0
	Sound_Flash_Relay 0, FL5
	FL5.TimerEnabled = false
End Sub


Sub Flash6(Enabled)
	If Enabled Then		
		FL6.state = 1
		FL6.TimerEnabled = true
		Sound_Flash_Relay 1, FL6
	Else
		FL6.state = 0
	End If
End Sub
Sub FL6_timer
	FL6.state = 0
	Sound_Flash_Relay 0, FL6
	FL6.TimerEnabled = false
End Sub