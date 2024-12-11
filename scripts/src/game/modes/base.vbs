

Sub CreateBaseMode()

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

        With .RandomEventPlayer()
            With .EventName("s_left_magna_key_active")
                .Add "post_1", 49
                .Add "post_2", 49
                .Add "post_3", 2
                .ForceAll = False
                .ForceDifferent = False
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


        With .EventPlayer()
            .Add "s_left_staged_flipper_key_active", Array("start_meteor_wave")
        End With

    End With

End Sub