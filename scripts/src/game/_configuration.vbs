
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************


Sub ConfigureGlfDevices

    CreateShows()

    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("s_Plunger1")
        .EjectTimeout = 700
        .MechanicalEject = True
        .DefaultDevice = True
		.EjectCallback = "PlungerEjectCallback"
    End With


    ' Scoop
    With CreateGlfBallDevice("scoop")
        .BallSwitches = Array("s_Scoop")
        .EjectTimeout = 2000
        .MechanicalEject = True
		.EjectCallback = "ScoopEjectCallback"
    End With


    ' Moon Lock
    With CreateGlfBallDevice("moon_lock")
        .BallSwitches = Array("s_Lock1","s_Lock2", "s_Lock3")
    End With

    With CreateGlfDiverter("lock_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball", "multiball_moon_started")
        .ActivationTime = "250 if devices.ball_devices.moon_lock.balls > 0 else 2000"
        .ActionCallback = "DropLockPin"
    End With


    ' Diverter above pop bumpers
    With CreateGlfDiverter("divert_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball")
        .ActivationTime = 2000
        .ActionCallback = "RaiseDiverterPin"
    End With


    ' Flippers
    With CreateGlfFlipper("left")
        .Switch = "s_left_flipper"
        .ActionCallback = "LeftFlipperAction"
    End With

    With CreateGlfFlipper("right")
        .Switch = "s_right_flipper"
        .ActionCallback = "RightFlipperAction"
    End With


    ' Slingshots
    With CreateGlfAutoFireDevice("left_sling")
        .Switch = "s_LeftSlingshot"
        .ActionCallback = "LeftSlingshotAction"
    End With

    With CreateGlfAutoFireDevice("right_sling")
        .Switch = "s_RightSlingshot"
        .ActionCallback = "RightSlingshotAction"
    End With


    ' Bumpers
    With CreateGlfAutoFireDevice("bumper1")
        .Switch = "s_Bumper1"
        .ActionCallback = "Bumper1Action"
    End With

    With CreateGlfAutoFireDevice("bumper2")
        .Switch = "s_Bumper2"
        .ActionCallback = "Bumper2Action"
    End With

    With CreateGlfAutoFireDevice("bumper3")
        .Switch = "s_Bumper3"
        .ActionCallback = "Bumper3Action"
    End With

    With CreateGlfAutoFireDevice("bumper4")
        .Switch = "s_Bumper4"
        .ActionCallback = "Bumper4Action"
    End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .GrabSwitch = "s_TargetMystery5"
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With


    ' Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "s_DTMeteor1"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DTMeteor2"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DTMeteor3"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor3Callback"
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "s_DTMeteor4"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor4Callback"
    End With


    ' Alphanumeric displays
    Dim segment_display_p1
    Set segment_display_p1 = (New GlfLightSegmentDisplay)("player1")

    segment_display_p1.SegmentType = "14Segment"
    segment_display_p1.SegmentSize = 7
    segment_display_p1.LightGroup = "p1_seg"
    segment_display_p1.UpdateMethod = "stack"
    segment_display_p1.UseDotsForCommas = True

    Dim segment_display_p2
    Set segment_display_p2 = (New GlfLightSegmentDisplay)("player2")

    segment_display_p2.SegmentType = "14Segment"
    segment_display_p2.SegmentSize = 7
    segment_display_p2.LightGroup = "p2_seg"
    segment_display_p2.UpdateMethod = "stack"
    segment_display_p2.UseDotsForCommas = True

    Dim segment_display_p3
    Set segment_display_p3 = (New GlfLightSegmentDisplay)("player3")

    segment_display_p3.SegmentType = "14Segment"
    segment_display_p3.SegmentSize = 7
    segment_display_p3.LightGroup = "p3_seg"
    segment_display_p3.UpdateMethod = "stack"
    segment_display_p3.UseDotsForCommas = True

    Dim segment_display_p4
    Set segment_display_p4 = (New GlfLightSegmentDisplay)("player4")

    segment_display_p4.SegmentType = "14Segment"
    segment_display_p4.SegmentSize = 7
    segment_display_p4.LightGroup = "p4_seg"
    segment_display_p4.UpdateMethod = "stack"
    segment_display_p4.UseDotsForCommas = True

    Dim segment_display_ball
    Set segment_display_ball = (New GlfLightSegmentDisplay)("ball")

    segment_display_ball.SegmentType = "14Segment"
    segment_display_ball.SegmentSize = 2
    segment_display_ball.LightGroup = "ball_seg"

    Dim segment_display_pf
    Set segment_display_pf = (New GlfLightSegmentDisplay)("pf")

    segment_display_pf.SegmentType = "7Segment"
    segment_display_pf.SegmentSize = 2
    segment_display_pf.LightGroup = "pf_seg"


    ' Trough
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null

    'Shot Profiles
    CreateSharedShotProfiles

    ' Modes
    CreateBaseMode
    CreateMoonMultiballMode
    CreateShieldsMode
    CreateMysteryMode
    CreateTimewarpMode
    CreateShipSaveMode
    CreateClusterBombMode

    
End Sub


' Event callbacks

Function OnTroughEject(args)
    RandomSoundBallRelease swTrough1
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 

Public Sub CreateSharedShotProfiles()

    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"
        End With
        With .States("on")
            .Show = "flicker_color_on"
            .Speed = 4
        End With
    End With

End Sub

