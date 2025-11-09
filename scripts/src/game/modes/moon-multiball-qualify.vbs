

'Moon Multiball Qualify Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit



Sub CreateMoonMultiballQualifyMode
    Dim x

    With CreateGlfMode("moon_multiball_qualify", 590)
        .StartEvents = Array("new_ball_started","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","start_training_select","wizard_mode_started")
        '.Debug=True

        With .EventPlayer()
            '.Debug=True
            'Reset
            .Add "mode_moon_multiball_qualify_started{current_player.shot_moon_missile2 == 1}", Array("disable_moon_qualify_shots")
            .Add "mode_moon_multiball_qualify_started{current_player.training_moon_missile_used==1}", Array("restart_moon_missiles","restart_moon_qualify_shots") 'moon missile used during training
            .Add "mode_moon_multiball_qualify_started{current_player.training_moon_missile_achieved==1 and device.state_machines.moon_mb.state!=""locking"" and current_player.shot_moon_missile2 == 0}", Array("restart_moon_qualify_shots") 'with training boost
            .Add "restart_moon_qualify_shots{current_player.training_moon_missile_achieved==1}", Array("boost_qualify_shots") 'with training boost
            .Add "mode_moon_multiball_qualify_started{current_player.shot_moon_missile1 == 1}", Array("backglass_moon_on")
            .Add "mode_moon_multiball_qualify_stopping", Array("backglass_moon_off")
            'Release a ball (Lower the diverter pin) if we are not 
            .Add "s_MoonRamp_active{device.state_machines.moon_mb.state!=""locking"" and device.ball_devices.moon_lock.balls==0}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{device.state_machines.moon_mb.state!=""locking"" and device.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked and device.ball_devices.moon_lock.balls > current_player.leftover_balls_in_lock}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{device.state_machines.moon_mb.state==""in_progress""}", Array("release_moon_ball")
            'After a ball has been locked, if the number of balls in the lock is greater than the current players locked balls, release one
            .Add "multiball_lock_moon_launch_locked_ball{device.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("release_moon_ball")
            'Light missiles
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==1}", Array("light_missile1")
            .Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==2}", Array("light_missile2","check_fully_loaded") 'check for wizard mode qualification
            'Disable qualify shots during a wave
            .Add "start_meteor_wave", Array("disable_moon_qualify_shots") 
            .Add "stop_meteor_wave{current_player.shot_moon_missile2 == 0}", Array("enable_moon_qualify_shots")
            'Handle mystery award
            .Add "mystery_moon_ready", Array("complete_moon_qualify_shots")
            'Scoring
            .Add "right_ramp_hit", Array("score_2000")
            .Add "light_missile1", Array("score_50000","slings_powerup_added","lsling_powerup_mm","rsling_powerup_mm","mm_acquired","backglass_moon_on")
            .Add "light_missile2", Array("score_100000","slings_powerup_added","lsling_powerup_mm","rsling_powerup_mm","mm_acquired","backglass_moon_on")
            .Add "qualify_lock_hit", Array("score_2000")
            .Add "qualify_lock_on_complete", Array("score_50000")
            .Add "restart_moon_qualify_shots_proxy{current_player.ball_just_started == 0}", "restart_moon_qualify_shots"
        End With


        'Lock the balls
        With .MultiballLocks("moon_launch")
            '.Debug=True
            .EnableEvents = Array("enable_moon_mb_locking", "mode_moon_multiball_qualify_started{device.state_machines.moon_mb.state==""locking""}")
            .DisableEvents = Array("restart_moon_qualify_shots")
            .ResetEvents = Array("start_moon_multiball.2","restart_moon_missiles")
            .BallsToLock = 2
            .LockDevices = Array("moon_lock")
        End With


        With .DOFPlayer()
            With .EventName("mm_acquired")
                .Action = "DOF_PULSE"
                .DOFEvent = 171
            End With
        End With


        With .SoundPlayer()
            With .EventName("qualify_lock_on_complete")
                .Key = "key_voc_LMLR"
                .Sound = "voc_LMLR"
            End With
            With .EventName("light_missile1")
                .Key = "key_voc_LMR1"
                .Sound = "voc_LMR1"
            End With
            With .EventName("light_missile2")
                .Key = "key_voc_LMR2"
                .Sound = "voc_LMR2"
            End With
            With .EventName("s_GateR_active")
                .Key = "key_sfx_right_ramp_moon_launch"
                .Sound = "sfx_right_ramp_moon_launch"
            End With
            ' With .EventName("")
            '     .Sound = "voc_ball_locked"
            ' End With
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
                    .Events = Array("light_missile"&x,"complete_moon_missiles")
                    .State = 1
                End With
                .RestartEvents = Array("multiball_moon_started","restart_moon_missiles")
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
            '.Debug=True
            .PersistState = True
            .StartingState = "qualify"
            
            'States
            With .States("qualify")
                .Label = "Qualify State"
                '.EventsWhenStarted = Array("restart_moon_qualify_shots")
                .EventsWhenStarted = Array("restart_moon_qualify_shots_proxy")
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
                .Events = Array("start_moon_multiball")
            End With
            With .Transitions()
                .Source = Array("locking")
                .Target = "qualify"
                .Events = Array("multiball_lock_moon_launch_locked_ball")
            End With
            With .Transitions()
                .Source = Array("qualify")
                .Target = "locks_full"
                .Events = Array("multiball_lock_moon_launch_full", "mode_moon_multiball_qualify_started{current_player.shot_moon_missile2 == 1}")
            End With
            With .Transitions()
                .Source = Array("in_progress")
                .Target = "qualify"
                .Events = Array("multiball_moon_ended")
            End With
            With .Transitions()
                .Source = Array("locking","in_progress","locks_full")
                .Target = "qualify"
                .Events = Array("restart_moon_missiles")
            End With
        End With


        With .ShowPlayer()
            With .EventName("start_moon_multiball")
                .Key = "key_moon_launch"
                .Show = "moon_launch"
                .Priority = 50
                .Speed = 1
                .Loops = 0
            End With
            With .EventName("qualify_lock_on_complete")
                .Key = "key_moon_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tMoon"
                    .Add "color", MoonColor
                End With
            End With
            'Added moon missile shows
            With .EventName("lsling_powerup_mm")
                .Key = "key_lsling_powerup_mm"
                .Show = "lsling_rotate2_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "color1", MoonColor
                    .Add "color2", MoonColor
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            With .EventName("rsling_powerup_mm")
                .Key = "key_rsling_powerup_mm"
                .Show = "rsling_rotate2_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "color1", MoonColor
                    .Add "color2", MoonColor
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            With .EventName("mm_acquired") 
                .Key = "key_mm_acquired"
                .Show = "moon_missile_acquired" 
                .Speed = 4
                .Loops = 0
                .Priority = 1000
                With .Tokens()
                    .Add "color", MoonColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("s_GateR_active")
                .Key = "key_moon_launch_gate"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 8
                With .Tokens()
                    .Add "lights", "LL"
                    .Add "color", MeteorWaveColor
                End With
            End With

        End With

        With .VariablePlayer()
            .Debug=True
            With .EventName("mode_moon_multiball_qualify_started")
				With .Variable("leftover_balls_in_lock")
                    .Action = "set"
					.Int = "device.ball_devices.moon_lock.balls"
				End With
			End With    
            With .EventName("restart_moon_missiles")
                With .Variable("multiball_lock_moon_launch_balls_locked")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("training_moon_missile_used")
                    .Action = "set"
					.Int = 0  
				End With
			End With 
		End With
        
        With .SegmentDisplayPlayer()
            With .EventName("start_moon_multiball")
                With .Display("player2")
                    .Text = "MOON"
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = "LAUNCH"
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
            With .EventName("enable_moon_mb_locking")
                With .Display("player2")
                    .Text = "LOCK"
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = "BALL"
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With


    End With
End Sub