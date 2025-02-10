


' Bonus Mode.


Sub CreateBonusMode

    With CreateGlfMode("bonus", 150)
        .StartEvents = Array("ball_ending")
        .StopEvents = Array("bonus_finished")
        .UseWaitQueue = True

        With .ShowPlayer()
            With .EventName("mode_bonus_started")
                .Key = "bonus_show"
                .Show = "mystery"
                .Speed = 1
                .Loops = 1
                .EventsWhenCompleted = Array("bonus_finished")
            End With
        End With
     
        With .SegmentDisplayPlayer()
            With .EventName("mode_bonus_started")
                With .Display("player1")
                    .Priority = 9000
                    .Text = """BONUS"""
                End With
                With .Display("player2")
                    .Priority = 9000
                    .Text = """TBD"""
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Priority = 9000
                    .Text = """"""
                End With
                With .Display("player4")
                    .Priority = 9000
                    .Text = """"""
                End With
            End With
        End With


    End With

End Sub