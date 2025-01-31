

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
    Dim x

    With CreateGlfMode("moon_multiball", 510)
        .StartEvents = Array("ball_started","stop_training")
        .StopEvents = Array("ball_ended","start_training_select")
        '.Debug = True

        With .EventPlayer()
            'Reset
            .Add "mode_moon_multiball_started{current_player.training_moon_missile_achieved==1 && devices.state_machines.moon_mb.state!=""locking""}", Array("restart_moon_qualify_shots") 'with training boost
            .Add "restart_moon_qualify_shots{current_player.training_moon_missile_achieved==1}", Array("boost_qualify_shots") 'with training boost
            'Release a ball (Lower the diverter pin) if we are not 
            .Add "s_MoonRamp_active{devices.state_machines.moon_mb.state!=""locking""}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_enter{devices.state_machines.moon_mb.state!=""locking"" && devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked && devices.ball_devices.moon_lock.balls > current_player.leftover_balls_in_lock}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{devices.state_machines.moon_mb.state==""in_progress""", Array("release_moon_ball")
            'After a ball has been locked, if the number of balls in the lock is greater than the current players locked balls, release one
            .Add "multiball_lock_moon_launch_locked_ball{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("release_moon_ball")
            'Light missiles
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==1}", Array("light_missile1")
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==2}", Array("light_missile2","check_fully_loaded") 'check for wizard mode qualification
            'Launch
            .Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0}", Array("launch_moon_balls")
            'Disable qualify shots during a wave
            .Add "start_meteor_wave", Array("disable_moon_qualify_shots") 
            .Add "stop_meteor_wave", Array("enable_moon_qualify_shots")
            'Handle mystery award
            .Add "mystery_moon_ready", Array("complete_moon_qualify_shots")
            'Scoring
            .Add "right_ramp_hit", Array("score_500")
            .Add "light_missile1", Array("score_5000")
            .Add "light_missile2", Array("score_10000")
            .Add "complete_moon_qualify_shots", Array("score_10000")
        End With

        With .SoundPlayer()
            With .EventName("qualify_lock_on_complete")
                .Sound = "sfx_LMLR"
            End With
            With .EventName("light_missile1")
                .Sound = "sfx_LMR1"
            End With
            With .EventName("light_missile2")
                .Sound = "sfx_LMR2"
            End With
        End With

        'Lane qualification shots
        For x = 1 to 3
            With .Shots("moon_lane"&x)
                .Switch = MoonQualifySwitches(x-1)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", MoonQualifyLightNames(x-1)
                    .Add "color", MoonColor
                End With
                With .ControlEvents()
                    .Events = Array("boost_qualify_shots","complete_moon_qualify_shots")
                    .State = 1
                End With
            End With
        Next
        With .Shots("moon_lane4")
            .Switch = MoonQualifySwitches(3)
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", MoonQualifyLightNames(3)
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("complete_moon_qualify_shots")
                .State = 1
            End With
        End With

        'Missile lights
        For x = 1 to 2
            With .Shots("moon_missile"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LMR"&x
                    .Add "color", MoonColor
                End With
                With .ControlEvents()
                    .Events = Array("light_missile"&x)
                    .State = 1
                End With
                .RestartEvents = Array("multiball_moon_started")
            End With
        Next

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
            .RestartEvents = Array("restart_moon_qualify_shots")
        End With
        
        With .ShotGroups("qualify_lock")
            .Shots = Array("moon_lane1", "moon_lane2", "moon_lane3", "moon_lane4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_moon_qualify_shots")
            .DisableEvents = Array("disable_moon_qualify_shots")
            .EnableEvents = Array("enable_moon_qualify_shots")
        End With


        With .StateMachines("moon_mb")
            '.Debug = True
            .PersistState = True
            .StartingState = "qualify"
            
            'States
            With .States("qualify")
                .Label = "Qualify State"
                '.EventsWhenStarted = Array("restart_moon_qualify_shots")
                .EventsWhenStarted = Array("restart_moon_qualify_shots{current_player.ball_just_started == 0}")
            End With
            With .States("locking")
                .Label = "Locking State"
                .EventsWhenStarted = Array("enable_moon_mb_locking")
            End With
            With .States("in_progress")
                .Label = "Multiball In Progress"
                .EventsWhenStarted = Array("disable_moon_qualify_shots")
            End With
            With .States("locks_full")
                .Label = "Multiball Lock Full"
                .EventsWhenStarted = Array("disable_moon_qualify_shots")
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
                .Events = Array("launch_moon_balls")
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

        
        'Lock the balls
        With .MultiballLocks("moon_launch")
            '.Debug = True
            .EnableEvents = Array("enable_moon_mb_locking", "mode_moon_multiball_started{devices.state_machines.moon_mb.state==""locking""}")
            .DisableEvents = Array("restart_moon_qualify_shots")
            .ResetEvents = Array("start_moon_multiball.1")
            .BallsToLock = 2
            .LockDevice = "moon_lock"
        End With

        With .Multiballs("moon")
            '.Debug = True
            .StartEvents = Array("start_moon_multiball.2")
            .BallCount = "current_player.multiball_lock_moon_launch_balls_locked"
            .BallCountType = "add"
            .ShootAgain = 0
            .BallLock = "moon_lock"
        End With

        With .ShowPlayer()
            With .EventName("qualify_lock_on_complete")
                .Key = "key_moon_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tMoon"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("launch_moon_balls")
                .Key = "key_moon_gi"
                .Show = "moon_launch_gi"
                .Priority = 50
                .Speed = 4
                .Loops = 5
            End With
        End With

        With .VariablePlayer()
            '.Debug = True
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
		End With
        
        With .SegmentDisplayPlayer()
            With .EventName("launch_moon_balls")
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
            With .EventName("enable_moon_mb_locking")
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

        With .SoundPlayer()
            With .EventName("right_ramp_hit")
                .Sound = "sfx_right_ramp_moon_launch"
            End With
        End With

    End With
End Sub