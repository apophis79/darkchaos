

'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna. Launching balls restarts the lock qualification process.
'The right magna is disabled when an outlane switch is hit


Sub CreateMoonMultiballMode
    Dim x

    With CreateGlfMode("moon_multiball", 600)
        .StartEvents = Array("new_ball_started","stop_training","mode_moon_multiball_qualify_started")
        .StopEvents = Array("mode_base_stopping","start_training_select","wizard_mode_ended")

        With .EventPlayer()
            'Launch
            .Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0 && current_player.disable_moon_launch==0 && current_player.wizard_mode_running==0}", Array("launch_moon_missiles","restart_moon_qualify_shots","backglass_moon_off")
            .Add "launch_moon_missiles", Array("start_moon_multiball","delayed_release_moon_ball","play_sfx_launch","score_50000")
            'Panic penalty
            .Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked==0 && current_player.disable_moon_launch==0}", Array("launch_panic_penalty")
            .Add "launch_panic_penalty", Array("score_m50000")
        End With


        With .Multiballs("moon")
            '.Debug = True
            .StartEvents = Array("start_moon_multiball.2")
            .BallCount = "current_player.multiball_lock_moon_launch_balls_locked"
            .BallCountType = "add"
            .ShootAgain = 0
            .BallLock = "moon_lock"
        End With

        With .Timers("pause_moon_launch")
            .TickInterval = 100
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = GLF_BALL_DRAIN
                .Action = "restart"
            End With
        End With

        With .Timers("moon_launch_cooldown")
            .TickInterval = 5000
            .StartValue = 0
            .EndValue = 2
            With .ControlEvents()
                .EventName = "start_moon_multiball"
                .Action = "restart"
            End With
        End With

        With .DOFPlayer()
            With .EventName("play_sfx_launch")
                .Action = "DOF_PULSE"
                .DOFEvent = 143
            End With
        End With


        With .SoundPlayer()
            With .EventName("play_sfx_launch")
                .Key = "key_sfx_launch"
                .Sound = "sfx_launch"
            End With
            With .EventName("launch_panic_penalty")
                .Key = "key_sfx_error_buzz"
                .Sound = "sfx_error_buzz"
            End With
        End With

        With .ShowPlayer()
            With .EventName("launch_panic_penalty")
                .Key = "key_launch_panic_penalty"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tMoonAll"
                    .Add "color", MeteorWaveColor
                End With
            End With
        End With

        With .VariablePlayer()
            With .EventName("start_moon_multiball")
				With .Variable("leftover_balls_in_lock")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("disable_moon_launch")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName(GLF_BALL_DRAIN)
				With .Variable("disable_moon_launch")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("mode_moon_multiball_started")
				With .Variable("disable_moon_launch")
                    .Action = "set"
					.Int = 0
				End With
			End With
            With .EventName("timer_pause_moon_launch_complete")
				With .Variable("disable_moon_launch")
                    .Action = "set"
					.Int = 0
				End With
			End With
            With .EventName("timer_moon_launch_cooldown_complete")
				With .Variable("disable_moon_launch")
                    .Action = "set"
					.Int = 0
				End With
			End With  
		End With
        
    End With
End Sub