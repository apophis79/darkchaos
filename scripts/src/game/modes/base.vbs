


' Base Mode.

Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 100)
        .StartEvents = Array(GLF_GAME_START)
        .StopEvents = Array(GLF_GAME_OVER)
        .Debug = True

        With .SegmentDisplayPlayer()
            With .Events("mode_base_started")
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
            End With
            With .Events("mode_base_started")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .Events("mode_base_started")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .Events("mode_base_started")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            With .Events(GLF_BALL_STARTED)
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With
            ' With .Events("mode_base_started")
            '     With .Display("pf")
            '         .Text = "{00:0>2}"
            '     End With
            ' End With
        End With

        With .LightPlayer()
            With .Events(GLF_BALL_STARTED)
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 200
                End With
            End With
        End With

        'Define meteor wave lights
        For x = 1 to 9
            With .Shots("meteor_wave"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LW"&x
                    .Add "color", MeteorWaveColor
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_done")
                    .State = 1
                End With
                .RestartEvents = Array(GLF_GAME_START)
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
            For x = 1 to 4
                With .Events("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next
        End With

        With .EventPlayer()
            '.Add "s_left_staged_flipper_key_active", Array("start_meteor_wave")   'DEBUG
            .Add "s_Plunger2_active{current_player.ball_just_started==1}", Array("clear_ball_just_started","start_new_ball_save")
            ' .Add "start_meteor_wave", Array("restart_meteor_wave_init")
            ' .Add "stop_meteor_wave", Array("restart_meteor_wave_finish")
        End With


         With .BallSaves("new_ball")
            .ActiveTime = 5000
            .HurryUpTime = 3000
            .GracePeriod = 2000
            .AutoLaunch = True
            .EnableEvents = Array("start_new_ball_save")
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
            .Debug = true
		    With .EventName(GLF_BALL_STARTED)
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("clear_ball_just_started")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 0
				End With
			End With
		End With

    End With

End Sub