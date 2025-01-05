


' Base Mode.

Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 100)
        .StartEvents = Array(GLF_GAME_START)
        .StopEvents = Array(GLF_GAME_OVER)

        With .EventPlayer()
            '.Add "s_left_staged_flipper_key_active", Array("launch_moon_balls_test")   'DEBUG
            .Add "s_Plunger2_active{current_player.ball_just_started==1}", Array("new_ball_active")
            .Add "ball_ended{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_restart")
            .Add "ball_ended{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_restart")
            .Add "ball_ended{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_restart")
            .Add "ball_ended{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_restart")
            .Add "ball_ended{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_restart")
            .Add "ball_ended{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_restart")
            .Add "ball_ended{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_restart")
            .Add "ball_ended{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_restart")
            .Add "ball_ended{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_restart")
            .Add "s_TargetMystery5_active", Array("flash_mag_gi")
        End With
        

        With .SegmentDisplayPlayer()
            With .EventName("mode_base_started")
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            With .EventName(GLF_BALL_STARTED)
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With
            ' With .EventName("mode_base_started")
            '     With .Display("pf")
            '         .Text = "{00:0>2}"
            '     End With
            ' End With
        End With

        With .LightPlayer()
            With .EventName(GLF_BALL_STARTED)
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 200
                End With
            End With
        End With

        'Define meteor wave lights
        For x = 1 to 9
            With .Shots("meteor_wave"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LW"&x
                    .Add "color", MeteorWaveColor
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_running")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_done")
                    .State = 2
                End With
                .RestartEvents = Array(GLF_GAME_START,"meteor_wave"&x&"_restart")
            End With
        Next


        'The main shots sequences
        With .SequenceShots("left_side_up")
            .SwitchSequence = Array("s_LeftBumper1", "s_LeftBumper2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_side_down")
            .SwitchSequence = Array("s_LeftBumper2", "s_LeftBumper1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("inner_orbit")
            .SwitchSequence = Array("s_InnerOrb1", "s_InnerOrb2")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("center_orbit_left")
            .SwitchSequence = Array("s_CenterOrb1", "s_CenterOrb2", "s_CenterOrb3")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("center_orbit_right")
            .SwitchSequence = Array("s_CenterOrb3", "s_CenterOrb2", "s_CenterOrb1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 500
        End With

        With .ShowPlayer()
            With .EventName("mode_base_started")
                .Key = "key_bumpers_on"
                .Show = "flicker_color_on_intensity" 
                .Speed = 10
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", "ffffff"
                    .Add "intensity", 25
                End With
            End With

            For x = 1 to 4
                
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next

            For x = 0 to 4
                With .EventName(RolloverSwitches(x)&"_active")
                    .Key = "key_rollover"&x&"_flash"
                    .Show = "flicker_color_off" 
                    .Speed = 5
                    .Loops = 2
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", RolloverLightNames(x)
                        .Add "color", GIColor3000k
                    End With
                End With
            Next
        End With

        With .ShowPlayer()
            With .EventName("flash_mag_gi")
                .Key = "key_ts_scoop_gi"
                .Show = "flash_color" '_with_fade"
                .Speed = 15
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "gi13" 
                    .Add "color", GIColor3000k
                    '.Add "fade", 300
                End With
            End With
        End With


         With .BallSaves("new_ball")
            .ActiveTime = 5000
            .HurryUpTime = 3000
            .GracePeriod = 2000
            .AutoLaunch = True
            .EnableEvents = Array("new_ball_active")
        End With


        With .Shots("base_shoot_again")
            .Profile = "shoot_again"
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_enabled")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("ball_save_new_ball_grace_period")
        End With
       

        With .VariablePlayer()
		    With .EventName(GLF_BALL_STARTED)
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("new_ball_active")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 0
				End With
			End With
		End With

    End With

End Sub