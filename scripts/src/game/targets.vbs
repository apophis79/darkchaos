

' '********************************************
' '  ZTAR : Targets
' '********************************************

' Dim MagnetFlashCnt


' ' Standup Targets
' '********************************************


' Sub MagnetFlashTimer_timer
' 	MagnetFlashCnt = MagnetFlashCnt + 1
' 	If MagnetFlashCnt Mod 2 = 0 Then
' 		Flash1 False
' 	Else
' 		Flash1 True
' 	End If
' 	if MagnetFlashCnt = 4 Then MagnetFlashTimer.interval = 75
' 	if MagnetFlashCnt = 8 Then MagnetFlashTimer.enabled = False
' End Sub


' ' Sub TargetMystery1_Hit: STHit 1: End Sub
' Sub TargetMystery1_Action
' 	' SwitchWasHit "TargetMystery1"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM1,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' End Sub

' ' Sub TargetMystery2_Hit: STHit 2: End Sub
' Sub TargetMystery2_Action
' 	' SwitchWasHit "TargetMystery2"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM2,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	Flash2 True								'Demo of the flasher
' 	AwardSkillShot
' End Sub

' ' Sub TargetMystery3_Hit: STHit 3: End Sub
' Sub TargetMystery3_Action
' 	' SwitchWasHit "TargetMystery3"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM3,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	If Player(CurrentPlayer).NumProtonLoaded > 0 and NumMeteorsActive > 0 Then FireProtonRound: Flash4 True: End If
' End Sub

' ' Sub TargetMystery4_Hit: STHit 4: End Sub
' Sub TargetMystery4_Action
' 	' SwitchWasHit "TargetMystery4"
' 	TargetBouncer Activeball, 0.7
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM4,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	Flash3 True								'Demo of the flasher
' End Sub

' ' Sub TargetMystery5_Hit: STHit 5: End Sub
' Sub TargetMystery5_Action
' 	' SwitchWasHit "TargetMystery5"
' 	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM5,1,MysteryColor,7,3,3,1
' 	CheckMysteryCharge
' 	MagnetFlashCnt = 0
' 	MagnetFlashTimer.interval = 150
' 	MagnetFlashTimer.enabled = True
' 	SolGrabMagnet True
' End Sub



' ' Shield charging targets
' ' Sub TargetShield1_Hit: STHit 6: End Sub
' Sub TargetShield1_Action
' 	' SwitchWasHit "TargetShield1"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield2_Hit: STHit 7: End Sub
' Sub TargetShield2_Action
' 	' SwitchWasHit "TargetShield2"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield3_Hit: STHit 8: End Sub
' Sub TargetShield3_Action
' 	' SwitchWasHit "TargetShield3"
' 	CheckShieldCharge
' End Sub

' ' Sub TargetShield4_Hit: STHit 9: End Sub
' Sub TargetShield4_Action
' 	' SwitchWasHit "TargetShield4"
' 	CheckShieldCharge
' End Sub


' ' Drop Targets
' '********************************************


' ' Sub DTMeteor1_Hit: 	DTHit 1 : End Sub
' Sub DTMeteor1_Action
' 	Meteors(0).Hit
' 	If Meteor1.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor2_Hit: 	DTHit 2 : End Sub
' Sub DTMeteor2_Action
' 	Meteors(1).Hit
' 	If Meteor2.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor3_Hit: 	DTHit 3 : End Sub
' Sub DTMeteor3_Action
' 	Meteors(2).Hit
' 	If Meteor3.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub

' ' Sub DTMeteor4_Hit: 	DTHit 4 : End Sub
' Sub DTMeteor4_Action
' 	Meteors(0).Hit
' 	If Meteor4.TimeLeft < TimePerMeteor*0.3 Then 
' 		AudioCallout "nice shot"
' 	Else
' 		OccationalNiceShotCallout
' 	End If
' 	OccationalEcouragementCallout
' End Sub