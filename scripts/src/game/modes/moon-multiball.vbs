

'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit


Sub TTT(Y)
    ActiveBall.Z = 130
    ActiveBall.X = 894.0132
    ActiveBall.Y = Y
    ActiveBall.Velx = 0
    ActiveBall.Vely = 0
    ActiveBall.Velz = 0
End Sub

Sub MM1()

    DispatchPinEvent "s_LeftOutlane_active", Null
    DispatchPinEvent "s_LeftInlane_active", Null
    DispatchPinEvent "s_RightOutlane_active", Null
    DispatchPinEvent "s_RightInlane_active", Null
    glf_ball1.Z = 130
    glf_ball1.X = 894.0132
    glf_ball1.Y = 200
    glf_ball1.Velx = 0
    glf_ball1.Vely = 0
    glf_ball1.Velz = 0

End Sub

Sub MM2()

    DispatchPinEvent "s_LeftOutlane_active", Null
    DispatchPinEvent "s_LeftInlane_active", Null
    DispatchPinEvent "s_RightOutlane_active", Null
    DispatchPinEvent "s_RightInlane_active", Null
    glf_ball2.Z = 130
    glf_ball2.X = 894.0132
    glf_ball2.Y = 200
    glf_ball2.Velx = 0
    glf_ball2.Vely = 0
    glf_ball2.Velz = 0

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
            .Profile = "qualified_shot"
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
            .EnableEvents = Array("enable_qualify_shots")
        End With


        With .StateMachines("moon_mb")
            .PersistState = False
            .StartingState = "qualify"
            
            'States
            With .States("qualify")
                .Label = "Qualify State"
                '.EventsWhenStarted = Array("restart_qualify_shots")
                .EventsWhenStarted = Array("restart_qualify_shots{current_player.ball_just_started == 0}")
            End With
            With .States("locking")
                .Label = "Locking State"
                .EventsWhenStarted = Array("enable_moon_mb_locking")
            End With
            With .States("in_progress")
                .Label = "Multiball In Progress"
                .EventsWhenStarted = Array("disable_qualify_shots")
            End With
            With .States("locks_full")
                .Label = "Multiball Lock Full"
                .EventsWhenStarted = Array("disable_qualify_shots")
            End With

            'Transitions
            With .Transitions()
                .Source = Array("qualify")
                .Target = "locking"
                .Events = Array("qualify_lock_on_complete")
            End With
            With .Transitions()
                .Source = Array("locking", "qualify", "locks_full")
                .Target = "in_progress"
                .Events = Array("s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0}")
                .EventsWhenTransitioning = Array("start_moon_multiball")
            End With
            With .Transitions()
                .Source = Array("locking")
                .Target = "qualify"
                .Events = Array("multiball_lock_moon_launch_locked_ball")
            End With
            With .Transitions()
                .Source = Array("qualify")
                .Target = "locks_full"
                .Events = Array("multiball_lock_moon_launch_full", "mode_moon_multiball_started{current_player.multiball_lock_moon_launch_balls_locked==2}")
            End With
            With .Transitions()
                .Source = Array("in_progress")
                .Target = "qualify"
                .Events = Array("multiball_moon_ended")
            End With
        End With

        With .EventPlayer()
            .Add "s_MoonRamp_active", Array("right_ramp_hit")
            'Release a ball (Lower the diverter pin) if we are not 
            .Add "s_MoonRamp_active{devices.state_machines.moon_mb.state!=""locking""}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_enter{devices.state_machines.moon_mb.state!=""locking"" && devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked && devices.ball_devices.moon_lock.balls > current_player.leftover_balls_in_lock}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{devices.state_machines.moon_mb.state==""in_progress", Array("release_moon_ball")
            'After a ball has been locked, if the number of balls in the lock is greater than the current players locked balls, release one
            .Add "multiball_lock_moon_launch_locked_ball{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("release_moon_ball")
            'Light missiles
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==1}", Array("light_missile1")
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==2}", Array("light_missile2")
            'Disable qualify shots during a wave
            .Add "start_meteor_wave", Array("disable_qualify_shots") 
            .Add "stop_meteor_wave", Array("enable_qualify_shots")
        End With
        
        'Lock the balls
        With .MultiballLocks("moon_launch")
            .EnableEvents = Array("enable_moon_mb_locking")
            .DisableEvents = Array("restart_qualify_shots")
            .ResetEvents = Array("start_moon_multiball")
            .BallsToLock = 2
            .LockDevice = "moon_lock"
        End With

        With .Multiballs("moon")
            .StartEvents = Array("start_moon_multiball")
            .BallCount = "current_player.multiball_lock_moon_launch_balls_locked"
            .BallCountType = "add"
            .ShootAgain = 0
            .BallLock = "moon_lock"
        End With

        With .ShowPlayer()
            With .Events("qualify_lock_on_complete")
                .Key = "key_moon_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "MoonLanes"
                    .Add "color", MoonColor
                End With
            End With
        End With

        With .VariablePlayer()
            With .EventName("mode_moon_multiball_started")
				With .Variable("leftover_balls_in_lock")
                    .Action = "set"
					.Int = "devices.ball_devices.moon_lock.balls"
				End With
			End With  
            With .EventName("start_moon_multiball")
				With .Variable("leftover_balls_in_lock")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("multiball_lock_moon_launch_balls_locked")
                    .Action = "set"
					.Int = 0
				End With
			End With  
            With .EventName("qualify_lock_hit")
				With .Variable("score")
					.Int = 1250
				End With
			End With  
		End With
        
        With .SegmentDisplayPlayer()
            With .Events("s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0}")
                With .Display("player2")
                    .Text = """MOON"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """LAUNCH"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
            With .Events("enable_moon_mb_locking")
                With .Display("player2")
                    .Text = """LOCK"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """BALL"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With

    End With
End Sub