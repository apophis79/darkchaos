
Sub CreateBaseMode()

    With CreateGlfMode("base", 100)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

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
                    '.Color = "ffffff"  'white
                    '.Color = "ffA957"  '2700k
                    .Color = "ffb46b"  '3000k
                End With
            End With
        End With

    End With

End Sub