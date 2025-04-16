

'*******************************************
'  ZOPT: User Options
'*******************************************

Dim LightLevel : LightLevel = 0.5				' Level of room lighting (0 to 1), where 0 is dark and 100 is brightest
Dim MechVol : MechVol = 0.8           			' Overall Mechanical sound effect volume. Recommended values should be no greater than 1.
Dim BallRollVolume : BallRollVolume = 0.5   	' Level of ball rolling volume. Value between 0 and 1
Dim RampRollVolume : RampRollVolume = 0.5 		' Level of ramp rolling volume. Value between 0 and 1
Dim StagedFlipper : StagedFlipper = 0 			' 0 = Not enabled, 1 = Enabled
Dim BackglassVol : BackglassVol = 1			    ' Separate setting that only affects sounds coming from backglass. Range from 0 to 1
Dim CalloutVol : CalloutVol = 1				    ' Separate setting that affects verbal callout volume. Note, the backglass volume dial also affects callouts. Range from 0 to 1

Dim VRRoom: VRRoom = 0
Dim VRRoomChoice: VRRoomChoice = 1 				' 1 - Asteroid Room, 2 - Minimal Room, 3 - Ultra Minimal Room
Dim VRRoomRotate: VRRoomRotate = 1				' 1 - X Rot, 2 - Y Rot, 3 - Z Rot
Dim VRRotateRate: VRRotateRate = 0				' 0 - Stopped, 1 - Slow, 2 - Med, 3 - Fast
Const TestVR = False

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
	Dim BP, v, x

	'Game logic framework options
	Glf_Options(eventId)

	' Reflections
    v = Table1.Option("Playfield Reflections", 0, 1, 1, 1, 0, Array("Disabled", "Enabled"))
	If v = 0 Then
		BM_Playfield.ReflectionProbe = ""
	Else
		BM_Playfield.ReflectionProbe = "Playfield Reflections"
	End If

	' Refractions
    v = Table1.Option("Clear Plastic Refractions", 0, 1, 1, 1, 0, Array("Disabled", "Enabled"))
	If v = 0 Then
		BM_BmpBot.RefractionProbe = ""
		BM_BmpTopB.RefractionProbe = ""
		BM_BmpTopR.RefractionProbe = ""
		BM_Layer1.RefractionProbe = ""
	Else
		BM_BmpBot.RefractionProbe = "Refraction Pass 1"
		BM_BmpTopB.RefractionProbe = "Refraction Pass 2"
		BM_BmpTopR.RefractionProbe = "Refraction Pass 2"
		BM_Layer1.RefractionProbe = "Refraction Pass 3"
	End If
	
    ' Sound volumes
    'BackglassVol = Table1.Option("Game Sounds Volume", 0, 1, 0.01, 0.8, 1)
	'CalloutVol = Table1.Option("Callout Volume", 0, 1, 0.01, 0.8, 1)
    MechVol = Table1.Option("Mechanical Sounds Volume", 0, 1, 0.01, 0.8, 1)
    BallRollVolume = Table1.Option("Ball Roll Volume", 0, 1, 0.01, 0.3, 1)
	RampRollVolume = Table1.Option("Ramp Roll Volume", 0, 1, 0.01, 0.5, 1)


	' Room brightness
'	LightLevel = Table1.Option("Table Brightness (Ambient Light Level)", 0, 1, 0.01, .5, 1)
	LightLevel = NightDay/100
	SetRoomBrightness LightLevel   'Uncomment this line for lightmapped tables.

	' Trust post
	v = 1 'Table1.Option("Trust Post", 0, 1, 1, 1, 0, Array("No Post", "Post"))
	For Each BP in BP_TrustPost : BP.visible = v: Next
	zCol_Rubber_TrustPost.Collidable = v

	' Plunger Position Visualization
    v = Table1.Option("Plunger Position Visualization", 0, 1, 1, 1, 0, Array("Disabled", "Enabled"))
	PlungerLine.visible = v
	PlungerLine.blenddisablelighting = 5

	' Apron Display
	v = Table1.Option("Apron Display", 0, 1, 1, 1, 0, Array("No Display", "Use Display"))
	ApronScreen.visible = v
	For Each BP in BP_Screen : BP.visible = v: Next
	For Each BP in pApronSeg : BP.visible = v: Next
	For Each BP in BP_Card : BP.visible = 1-v: Next

	' Rails
	v = Table1.Option("Cab Rails", 0, 1, 1, 1, 0, Array("Not Visible", "Visible"))
	For Each BP in BP_Rails : BP.visible = v: Next

	' Staged Flipper
	StagedFlipper = Table1.Option("Staged Flipper", 0, 1, 1, 0, 0, Array("Not Enabled", "Enabled"))

	' VR
	VRRoomChoice = Table1.Option("VR Room", 1, 3, 1, 1, 0, Array("Asteroid", "Minimal", "Ultra Minimal"))
	VRRoomRotate = Table1.Option("VR Asteroid Rotation", 1, 3, 1, 1, 0, Array("X Rotation", "Y Rotation", "Z Rotation"))
	VRRotateRate = Table1.Option("VR Asteroid Rotation Speed", 0, 3, 1, 0, 0, Array("Stopped", "Slow", "Med", "Fast"))
	If RenderingMode = 2 or TestVR = True Then: VRRoom = VRRoomChoice: Else VRRoom = 0: End If
	SetupRoom

    If eventId = 3 And dspTriggered Then dspTriggered = False : DisableStaticPreRendering = False : End If
End Sub


