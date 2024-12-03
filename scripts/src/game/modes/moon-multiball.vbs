'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit

Const MoonColor = "ccbb00"


Sub TTT(Y)
    ActiveBall.Z = 130
    ActiveBall.X = 894.0132
    ActiveBall.Y = Y
    ActiveBall.Velx = 0
    ActiveBall.Vely = 0
    ActiveBall.Velz = 0
End Sub

Sub CreateMoonMultiballMode


    With CreateGlfMode("moon_multiball", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        With .Shots("left_outlane")
            .Switch = "s_LeftOutlane"
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LLO"
                .Add "color", MoonColor
            End With
        End With
        
        With .Shots("left_inlane")
            .Switch = "s_LeftInlane"
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LLI"
                .Add "color", MoonColor
            End With
        End With
        With .Shots("right_inlane")
            .Switch = "s_RightInlane"
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LRI"
                .Add "color", MoonColor
            End With
        End With
        With .Shots("right_outlane")
            .Switch = "s_RightOutlane"
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LRO"
                .Add "color", MoonColor
            End With
        End With

        With .Shots("moon_missile1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LMR1"
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("light_missile1")
                .State = 1
            End With
            .RestartEvents = Array("multiball_moon_started")
        End With

        With .Shots("moon_missile2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LMR2"
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("light_missile2")
                .State = 1
            End With
            .RestartEvents = Array("multiball_moon_started")
        End With

        'Moon Lock Ready
        With .Shots("moon_lock_ready")
            .Profile = "flash_color"
            With .Tokens()
                .Add "lights", "LMLR"
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("qualify_lock_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shots")
        End With

        With .ShotGroups("qualify_lock")
            .Shots = Array("left_outlane", "left_inlane", "right_inlane", "right_outlane")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_qualify_shots")
            .DisableEvents = Array("disable_qualify_shots")
        End With

        With .EventPlayer()
            .Add "s_MoonRamp_active{current_player.shot_moon_lock_ready==0 && devices.ball_devices.moon_lock.balls == 0}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{current_player.shot_moon_lock_ready==0 && not devices.diverters.lock_pin.active && devices.ball_devices.moon_lock.balls > current_player.multiball_locks_moon_launch_balls_locked && devices.ball_devices.moon_lock.balls > current_player.balls_in_moon_lock}", Array("release_moon_ball")
            .Add "multiball_locks_moon_launch_locked_ball", Array("restart_qualify_shots")
            .Add "multiball_locks_moon_launch_locked_ball{devices.ball_devices.moon_lock.balls > current_player.multiball_locks_moon_launch_balls_locked}", Array("release_moon_ball")
            .Add "multiball_locks_moon_launch_locked_ball{current_player.multiball_locks_moon_launch_balls_locked==1}", Array("light_missile1")
            .Add "multiball_locks_moon_launch_locked_ball{current_player.multiball_locks_moon_launch_balls_locked==2}", Array("light_missile2")
            .Add "multiball_locks_moon_launch_full", Array("disable_qualify_shots")
            .Add "mode_moon_multiball_started{current_player.multiball_locks_moon_launch_balls_locked==2}", Array("disable_qualify_shots")
            .Add "multiball_moon_started", Array("restart_qualify_shots")
        End With
        
        With .LightPlayer()
            With .Events("disable_qualify_shots")
				With .Lights("MoonLanes")
					.Color = MoonColor
				End With
			End With
            With .Events("restart_qualify_shots")
				With .Lights("MoonLanes")
					.Color = "000000"
				End With
			End With
        End With

        'Lock the balls
        With .MultiballLocks("moon_launch")
            .EnableEvents = Array("qualify_lock_on_complete")
            .DisableEvents = Array("restart_qualify_shots")
            .ResetEvents = Array("multiball_moon_started")
            .BallsToLock = 2
            .LockDevice = "moon_lock"
        End With

        With .Multiballs("moon")
            .StartEvents = Array("s_right_magna_key_active{current_player.multiball_locks_moon_launch_balls_locked>0}")
            .BallCount = "current_player.multiball_locks_moon_launch_balls_locked"
            .BallCountType = "add"
            .BallLock = "moon_lock"
        End With

        With .VariablePlayer()
		    With .Events("mode_moon_multiball_started")
				With .Variable("balls_in_moon_lock")
                    .Action = "set"
					.Int = "devices.ball_devices.moon_lock.balls"
				End With
			End With
		End With
    End With
End Sub