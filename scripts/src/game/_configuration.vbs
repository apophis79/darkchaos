
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
        .BallSwitches = Array("swLock1","swLock2")
    End With

    With CreateGlfDiverter("lock_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball")
        .ActivationTime = 250
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
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "DTMeteor2"
        .KnockdownEvents = Array("s_right_magna_key_active")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "DTMeteor3"
        .KnockdownEvents = Array("s_right_magna_key_active")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor3Callback"
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "DTMeteor4"
        .KnockdownEvents = Array("s_right_magna_key_active")
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
    MonitorMoonLockPin

End Sub


' Event callbacks

Function OnTroughEject(args)
    RandomSoundBallRelease swTrough1
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 


' Modes

Sub MonitorMoonLockPin()
    With CreateGlfMode("moon_lock_pin", 500)
        .StartEvents = Array("ball_started")
        With .EventPlayer()
            .Add "balldevice_moon_lock_ball_eject_success", Array("release_moon_ball")
        End With
    End With
End Sub

' With CreateGlfMode("moon_lock_pin", 500)
'     .StartEvents = Array("ball_started")
'     With .EventPlayer()
'         .Add "swRamp7_active{current_player.player_shot_moon_launch==0 && devices.ball_devices.moon_lock.balls == 0}", Array("release_moon_ball")
'         .Add "swLock3_active{current_player.player_shot_moon_launch==0 && devices.ball_devices.moon_lock.balls == 0}", Array("release_moon_ball")
'         .Add "swRamp7_active{current_player.player_shot_moon_launch==0 && devices.ball_devices.moon_lock.balls > 0}", Array("eject_moon_ball")
'         .Add "swLock3_active{current_player.player_shot_moon_launch==0 && devices.ball_devices.moon_lock.balls > 0}", Array("eject_moon_ball")
'         .Add "swLock3_active{current_player.player_shot_moon_launch==1 && devices.ball_devices.moon_lock.balls == 2}", Array("eject_moon_ball")
'     End With
'     With .MultiballLocks("moon_launch")
'         .EnableEvents = Array("moon_lock_qualified")
'         .DisableEvents = Array("multiball_locks_moon_launch_locked_ball")
'         .BallsToLock = 2
'         .LockDevice = "moon_lock"
'     End With
'     With .Multiball("moon_launch")
'         .EnableEvents = Array("multiball_locks_moon_launch_locked_ball", "moon_lock_pin_started{devices.multiball_locks.moon_launch.locked_balls > 0")
'         .StartEvents = "s_right_magne_active"
'     End With
' End With


