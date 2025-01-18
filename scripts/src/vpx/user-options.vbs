

'*******************************************
'  ZOPT: User Options
'*******************************************

Dim LightLevel : LightLevel = 0.5				' Level of room lighting (0 to 1), where 0 is dark and 100 is brightest
Dim MechVol : MechVol = 0.8           			' Overall Mechanical sound effect volume. Recommended values should be no greater than 1.
Dim BallRollVolume : BallRollVolume = 0.5   	' Level of ball rolling volume. Value between 0 and 1
Dim RampRollVolume : RampRollVolume = 0.5 		' Level of ramp rolling volume. Value between 0 and 1
Dim BackglassVol : BackglassVol = 1				'Separate setting that only affects sounds coming from backglass. Range from 0 to 1
Dim CalloutVol : CalloutVol = 1					'Separate setting that affects verbal callout volume. Note, the backglass volume dial also affects callouts. Range from 0 to 1

Const VRRoom = 0 ' 1 - VR Room off, 1 - Minimal Room, 2 - Ultra Minimal Room



' Called when options are tweaked by the player. 
' - 0: game has started, good time to load options and adjust accordingly
' - 1: an option has changed
' - 2: options have been reseted
' - 3: player closed the tweak UI, good time to update staticly prerendered parts
' Table1.Option arguments are: 
' - option name, minimum value, maximum value, step between valid values, default value, unit (0=None, 1=Percent), an optional arry of literal strings
Dim dspTriggered : dspTriggered = False
Sub Table1_OptionEvent(ByVal eventId)
    If eventId = 1 And Not dspTriggered Then dspTriggered = True : DisableStaticPreRendering = True : End If
	Dim BP, v

	Glf_Options(eventId)
	
    ' Sound volumes
    BackglassVol = Table1.Option("Game Sounds Volume", 0, 1, 0.01, 0.8, 1)
	CalloutVol = Table1.Option("Callout Volume", 0, 1, 0.01, 0.8, 1)
    MechVol = Table1.Option("Mechanical Sounds Volume", 0, 1, 0.01, 0.8, 1)
    BallRollVolume = Table1.Option("Ball Roll Volume", 0, 1, 0.01, 0.3, 1)
	RampRollVolume = Table1.Option("Ramp Roll Volume", 0, 1, 0.01, 0.5, 1)


	' Room brightness
'	LightLevel = Table1.Option("Table Brightness (Ambient Light Level)", 0, 1, 0.01, .5, 1)
	LightLevel = NightDay/100
	SetRoomBrightness LightLevel   'Uncomment this line for lightmapped tables.

	' Trust post
	v = Table1.Option("Trust Post", 0, 1, 1, 1, 0, Array("No Post", "Post"))
	For Each BP in BP_TrustPost : BP.visible = v: Next
	zCol_Rubber_TrustPost.Collidable = v

	' Plunger Position Visualization
    v = Table1.Option("Plunger Position Visualization", 0, 1, 1, 1, 0, Array("Disabled", "Enabled"))
	PlungerLine.visible = v
	PlungerLine.blenddisablelighting = 5

	' Rails          FIXME make optional
	For Each BP in BP_Rails : BP.visible = 1: Next

	' VR 			FIXME check that this works
	SetupRoom

    If eventId = 3 And dspTriggered Then dspTriggered = False : DisableStaticPreRendering = False : End If
End Sub


