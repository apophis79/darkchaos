'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit


Sub TTT()
    ActiveBall.Z = 130
    ActiveBall.X = 894.0132
    ActiveBall.Y = 201.27
    ActiveBall.Velx = 0
    ActiveBall.Vely = 0
    ActiveBall.Velz = 0
End Sub

Sub CreateMoonMultiballMode


    With CreateGlfMode("moon_multiball", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = True

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_lock")
            With .States("unlit")
                .Show = glf_ShowOff
            End With
            With .States("on")
                .Show = glf_ShowOnColor
                With .Tokens()
                    .Add "color", "ffff00"
                End With
            End With
        End With
        'Define a shot profile with two states (off/flashing)
        With .ShotProfiles("lock_ready")
            With .States("unlit")
                .Show = glf_ShowOff
            End With
            With .States("on")
                .Show = glf_ShowFlashColor
                With .Tokens()
                    .Add "color", "ffff00"
                End With
            End With
        End With

        'Define our shots
        With .Shots("left_outlane")
            .Switch = "swLeftOutlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LLO"
            End With
        End With
        
        With .Shots("left_inlane")
            .Switch = "swLeftInlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LLI"
            End With
        End With
        With .Shots("right_inlane")
            .Switch = "swRightInlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LRI"
            End With
        End With
        With .Shots("right_outlane")
            .Switch = "swRightOutlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LRO"
            End With
        End With

        'Moon Lock Ready
        With .Shots("moon_lock_ready")
            .Profile = "lock_ready"
            With .Tokens()
                .Add "lights", "LMLR"
            End With
            With .ControlEvents("lock_ready")
                .Events = Array("qualify_lock_on_complete")
                .State = 1
            End With
            .ResetEvents = Array("reset_qualify_shots")
        End With

        With .ShotGroups("qualify_lock")
            .Shots = Array("left_outlane", "left_inlane", "right_inlane", "right_outlane")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .ResetEvents = Array("reset_qualify_shots")
        End With

        With .EventPlayer()
            .Add "swRamp7_active{current_player.player_shot_moon_lock_ready==0 && devices.ball_devices.moon_lock.balls == 0 && not devices.diverters.lock_pin.active}", Array("release_moon_ball")
            .Add "swLock3_active{current_player.player_shot_moon_lock_ready==0 && devices.ball_devices.moon_lock.balls == 0 && not devices.diverters.lock_pin.active}", Array("release_moon_ball")
            .Add "multiball_locks_moon_launch_locked_ball", Array("reset_qualify_shots")
        End With

        'Lock the balls
        With .MultiballLocks("moon_launch")
            .EnableEvents = Array("qualify_lock_on_complete")
            .DisableEvents = Array("reset_qualify_shots")
            .BallsToLock = 2
            .LockDevice = "moon_lock"
         End With
    End With
End Sub