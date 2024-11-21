
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************


Sub ConfigureGlfDevices

    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("swPlunger1")
        .EjectTimeout = 2000
        .MechanicalEject = True
        .DefaultDevice = True
		.EjectCallback = "PlungerEjectCallback"
        .Debug = True
    End With

    ' Scoop
    With CreateGlfBallDevice("scoop")
        .BallSwitches = Array("swScoop")
        .EjectTimeout = 2000
        .MechanicalEject = True
		.EjectCallback = "ScoopEjectCallback"
    End With

    ' Moon Lock
    With CreateGlfBallDevice("moon_lock")
        .BallSwitches = Array("swLock1","swLock2", "swLock3")
        '.PlayerControlledEjectEvent = "eject_moon_ball"
        '.EjectCallback = "MoonLockEjectCallback"
        '.EjectEnableTime = 250
        .Debug = True
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
        .Switch = Array("s_left_flipper")
        .ActionCallback = "LeftFlipperAction"
    End With

    With CreateGlfFlipper("right")
        .Switch = Array("s_right_flipper")
        .ActionCallback = "RightFlipperAction"
    End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .GrabSwitch = "TargetMystery5"
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With


    ' Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "DTMeteor1"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "DTMeteor2"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "DTMeteor3"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor3Callback"
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "DTMeteor4"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor4Callback"
    End With


    ' Trough
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null

    ' Slingshots
    AddPinEventListener "leftslingshot_active",  "on_leftslingshot_active",  "OnLeftSlingshotActive", 1000, Null
    AddPinEventListener "rightslingshot_active",  "on_rightslingshot_active",  "OnRightSlingshotActive", 1000, Null

    ' Modes
    CreateMoonMultiballMode
    CreateShieldsMode
    CreateGIMode

End Sub


' Event callbacks

Function OnTroughEject(args)
    RandomSoundBallRelease swTrough1
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 



Public Sub CreateGIMode()

    With CreateGlfMode("gi_control", 1000)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended") 
        With .LightPlayer()
            With .Events("mode_gi_control_started")
                With .Lights("GI")
                    '.Color = "ffffff"  'white
                    '.Color = "ffA957"  '2700k
                    .Color = "ffb46b"  '3000k
                End With
            End With
        End With
    End With
    
End Sub


