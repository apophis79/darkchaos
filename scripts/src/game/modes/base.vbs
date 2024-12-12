


' Base Mode.

Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 100)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        With .SegmentDisplayPlayer()
            With .Events("mode_base_started")
                With .Display("player1")
                    .Text = "current_player.score"
                End With
            End With
            With .Events("mode_base_started")
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With
            With .Events("mode_base_started")
                With .Display("pf")
                    .Text = "{00:0>2}"
                End With
            End With
        End With

        With .LightPlayer()
            With .Events("mode_base_started")
                With .Lights("GI")
                    .Color = GIColor3000k  '3000k
                    .Fade = 200
                End With
            End With
        End With

        'The main shots sequences
        With .SequenceShots("left_side_up")
            .SwitchSequence = Array("s_LeftBumper1", "s_LeftBumper2")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("left_side_down")
            .SwitchSequence = Array("s_LeftBumper2", "s_LeftBumper1")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 400
        End With

        With .SequenceShots("inner_orbit")
            .SwitchSequence = Array("s_InnerOrb1", "s_InnerOrb2")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("center_orbit_left")
            .SwitchSequence = Array("s_CenterOrb1", "s_CenterOrb2", "s_CenterOrb3")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("center_orbit_right")
            .SwitchSequence = Array("s_CenterOrb3", "s_CenterOrb2", "s_CenterOrb1")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 400
        End With


        With .ShotProfiles("base_bumpers")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("flashing")
                .Show = "flash_color"
                .Speed = 15
                With .Tokens()
                    .Add "color", "FFFFFF"
                End With
            End With
        End With

        ' 'Define bumper shots  
        ' For x = 1 to 4
        '     With .Shots("bumper"&x&"_light")
        '         .Profile = "base_bumpers"
        '         With .Tokens()
        '             .Add "lights", "LB"&x
        '         End With
        '         With .ControlEvents()
        '             .Events = Array("flash_bumper"&x&"_light")
        '             .State = 1
        '         End With
        '         .RestartEvents = Array("timer_bumper"&x&"_shot_reset_complete")
        '     End With

        '     With .Timers("bumper"&x&"_shot_reset")
        '         .TickInterval = 500
        '         .StartValue = 0
        '         .EndValue = 1
        '         With .ControlEvents()
        '             .EventName = "flash_bumper"&x&"_light"
        '             .Action = "restart"
        '         End With
        '     End With
        ' Next


        With .EventPlayer()
            .Add "s_left_staged_flipper_key_active", Array("start_meteor_wave")   'DEBUG
            .Add "s_Bumper1_active", Array("flash_bumper1_light")
            .Add "s_Bumper2_active", Array("flash_bumper2_light")
            .Add "s_Bumper3_active", Array("flash_bumper3_light")
            .Add "s_Bumper4_active", Array("flash_bumper4_light")
        End With

    End With

End Sub