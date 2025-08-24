

'*******************************************
' ZMIS : Miscellaneous support function
'*******************************************



'metal gate hit sfx
Sub swGateSfx_hit
	If activeball.velx > 0 Then RandomSoundMetal
End Sub


Sub InitSomeThings()
	Dim BL

	'brighten the meteor drop targets
	BM_TMet1.blenddisablelighting = 10
	BM_TMet2.blenddisablelighting = 10
	BM_TMet3.blenddisablelighting = 10
	BM_TMet4.blenddisablelighting = 10

	'brighten the insert under moon ramp
	For each BL in BL_L_LL: BL.opacity = 300: Next

	'reset the slings
	LStep = 0 : s_LeftSlingshot.TimerEnabled = 1
	RStep = 0 : s_RightSlingshot.TimerEnabled = 1
	TStep = 0 : s_TopSlingshot.TimerEnabled = 1

End Sub