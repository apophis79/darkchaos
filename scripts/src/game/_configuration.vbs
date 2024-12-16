
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************

' Light color settings
Const GIColorWhite = "ffffff"
Const GIColor2700k = "ffA957"
Const GIColor3000k = "ffb46b"

Const TimewarpColor = "ccccdd"
Const ShipSaveColor = "0500ee"
Const ShieldsColor = "0010cc"
Const ProtonColor = "00dddd"
Const MysteryColor = "aa44aa"
Const MoonColor = "ccbb00"
Const ClusterBombColor = "dd00dd"
Const CombosColor = "ffb46b"
Const TrainingColor = "ff4c00"
Const HealthColor1 = "00dd00"
Const HealthColor2 = "d14c00"
Const HealthColor3 = "ff0300"

Const MeteorCoolColor = "ffA957"
Const MeteorWarmColor = "edb600"
Const MeteorHotColor = "ed1800"


' Array of main shots and associated light names (used for combos and training modes)
Dim MainShotNames, MainShotLightNames
MainShotNames = Array("left_side_up","left_orbit","left_ramp","inner_orbit","center_orbit_left","center_orbit_right","right_ramp","right_orbit")
MainShotLightNames = Array("LS1","LS2","LS3","LS4","LPC4","LPC5","LS5","LS6")

' Meteor wave qualify settings
Const MeteorWaveDelayTicks = 45  'uses 1000 ms interval

' Meteor wave settings
Const MeteorTimerInitTickInterval = 1000
Const MeteorTimerTickInterval = 1100
Const MeteorDropTicks = 1
Const MeteorCoolTicks = 4
Const MeteorWarmTicks = 4
Const MeteorHotTicks = 4

Dim MeteorTotalTicks
MeteorTotalTicks = MeteorDropTicks + MeteorCoolTicks + MeteorWarmTicks + MeteorHotTicks

' Meteor wave multiball settings
Const MeteorMBShootAgainTime = 8000

' Ship save settings (more shoot again time)
Const ShipSaveShootAgainTime = 16000

' Timewarp settings
Const TimeWarpPauseTicks = 8
Const TimeWarpTickInterval = 1000

' Combos settings
Const CombosTickInterval = 1000
Const CombosTickLimit = 5


Sub ConfigureGlfDevices

    ' Load up the shows
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
        .ActivateEvents = Array("start_meteor_wave")
        .DeactivateEvents = Array("stop_meteor_wave")
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
        .KnockdownEvents = Array("meteor1_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor1_raise")
        .ActionCallback = "DTMeteor1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DTMeteor2"
        .KnockdownEvents = Array("meteor2_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor2_raise")
        .ActionCallback = "DTMeteor2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DTMeteor3"
        .KnockdownEvents = Array("meteor3_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor3_raise")
        .ActionCallback = "DTMeteor3Callback"
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "s_DTMeteor4"
        .KnockdownEvents = Array("meteor4_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor4_raise")
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
    segment_display_pf.UpdateMethod = "stack"
    segment_display_pf.LightGroup = "pf_seg"


    ' Trough sound effects
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null

    'Shot Profiles
    CreateSharedShotProfiles

    ' Modes                         Active during waves
    CreateBaseMode                  ' Always active during game
    CreateShieldsMode               ' No
    CreateTimewarpMode              ' No
    CreateShipSaveMode              ' No
    CreateCombosMode                ' No
    CreateMysteryMode               ' No
    CreateClusterBombMode           ' Yes
    CreateProtonCannonMode          ' Yes
    CreateHealthMode                ' Yes
    
    CreateMoonMultiballMode         ' Yes (but qualify shots disabled)

    CreateTrainingQualifyMode       ' No
    'CreateTrainingMode             ' No

    CreateMeteorWaveQualifyMode     ' No
    CreateMeteorWaveMode            ' Yes
    CreateMeteorMultiballMode       ' Yes

    'Initial Vars
    Glf_SetInitialPlayerVar "ball_just_started", 1
    Glf_SetInitialPlayerVar "meteor_countdown_value", MeteorWaveDelayTicks
    Glf_SetInitialPlayerVar "meteor_mb_shootagain", MeteorMBShootAgainTime
    Glf_SetInitialPlayerVar "num_training_shots", 3
    Glf_SetInitialPlayerVar "num_training_shots_hit", 3

End Sub


' Event callbacks
Function OnTroughEject(args)
    RandomSoundBallRelease swTrough1
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 



' Shared profiles
Public Sub CreateSharedShotProfiles()

    With GlfShotProfiles("off_on_color")
        With .States("unlit")
            .Show = "off"
        End With
        With .States("on")
            .Show = "led_color"
        End With
    End With

    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"
        End With
        With .States("on")
            .Show = "flicker_color_on"
            .Speed = 4
        End With
    End With

    With GlfShotProfiles("powerups")
        With .States("unlit")
            .Show = "off"
        End With
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Speed = 2
            With .Tokens()
                .Add "fade", 100
            End With
        End With
        With .States("collected")
            .Show = "led_color"
        End With
    End With

    With GlfShotProfiles("qualified_shot")
        With .States("unlit")
            .Show = "off"
        End With
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Speed = 2
            With .Tokens()
                .Add "fade", 100
            End With
        End With
    End With

End Sub

