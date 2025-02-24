


' Attract Mode.


Sub CreateAttractMode()
    Dim x

    With CreateGlfMode("attract", 120)
        .StartEvents = Array("start_attract_mode")
        .StopEvents = Array("stop_attract_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_attract_started", Array("play_attract_show1","play_mus_ambient_bg","stop_asteroid_motor","drop_diverter")
            .Add "timer_attract_voc_complete", Array("play_attract_voc")
        End With

        With .RandomEventPlayer()
            With .EventName("play_attract_voc")
                .Add "play_voc_attract1", 1
                .Add "play_voc_attract2", 1
                .Add "play_voc_attract3", 1
                .Add "play_voc_attract4", 1
                .Add "play_voc_attract5", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With
       
        With .SoundPlayer() 
            For x = 1 to 5
                With .EventName("play_voc_attract"&x)
                    .Key = "key_voc_attract"&x
                    .Sound = "voc_attract"&x
                End With
            Next
            With .EventName("play_mus_ambient_bg")
                .Key = "key_mus_ambient_bg"
                .Sound = "mus_ambient_bg"
            End With
        End With

        With .Timers("attract_voc")
            .TickInterval = 10000
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "mode_attract_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "play_attract_voc"
                .Action = "restart"
            End With
        End With

        With .ShowPlayer()
            With .EventName("play_attract_show1")   
                .Key = "key_attract_show1"
                .Show = "insert_sparkles" 
                '.EventsWhenCompleted = Array("play_attract_show2")
            End With
        End With

    End With

End Sub