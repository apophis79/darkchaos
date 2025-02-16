


' Attract Mode.


Sub CreateAttractMode()
    Dim x

    With CreateGlfMode("attract", 120)
        .StartEvents = Array("start_attract_mode",GLF_GAME_OVER)
        .StopEvents = Array("stop_attract_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_attract_started", Array("play_attract_show1","stop_asteroid_motor")
        End With
       
        ' With .SoundPlayer() 
        '       With .EventName("mode_attract_started")
        '         .Key = "key_mus_attract"
        '         .Sound = "mus_attract"
        '     End With
        ' End With

        ' With .ShowPlayer()
        '     With .EventName("play_attract_show1")   
        '         .Key = "key_attract_show1"
        '         .Show = "attract_show1" 
        '         '.EventsWhenCompleted = Array("play_attract_show2")
        '     End With
        ' End With

    End With

End Sub