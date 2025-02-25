


' Basement Mode.
' This mode runs all the time

Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")
        .StopEvents = Array("when_the_universe_ends")

        With .EventPlayer()
            .Add "s_left_staged_flipper_key_active", Array("test_show") 'DEBUG

            .Add "mode_basement_started", Array("enable_diverter","enable_asteroid_motor")
            .Add "timer_table_init_complete", Array("start_attract_mode","turn_on_starlight","turn_on_ship_lights","enable_asteroid_motor")
        End With
       
        With .SoundPlayer() 
            With .EventName("player_added{kwargs.num==1}")
                .Key = "key_voc_p1"
                .Sound = "voc_p1"
            End With
            With .EventName("player_added{kwargs.num==2}")
                .Key = "key_voc_p2"
                .Sound = "voc_p2"
            End With
            With .EventName("player_added{kwargs.num==3}")
                .Key = "key_voc_p3"
                .Sound = "voc_p3"
            End With
            With .EventName("player_added{kwargs.num==4}")
                .Key = "key_voc_p4"
                .Sound = "voc_p4"
            End With

            With .EventName("health1_off")
                .Key = "key_sfx_powerdown"
                .Sound = "sfx_powerdown"
            End With
            With .EventName(GLF_BALL_ENDED)
                .Key = "key_ball_drain"
                .Sound = "sfx_ball_drain"
            End With
        End With

        With .LightPlayer()
            With .EventName("turn_on_starlight")   
                With .Lights("LStars")
					.Color = "ffffff"
				End With
            End With
            With .EventName("turn_on_ship_lights")   
				With .Lights("LShip")
					.Color = "ffffff"
				End With
			End With
        End With

        With .Timers("table_init")
            .TickInterval = 50
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "mode_basement_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = GLF_BALL_STARTED
                .Action = "stop"
            End With
        End With


        With .ShowPlayer()
            With .EventName("test_show")  'DEBUG
                .Key = "key_test_show"
                .Show = "cluster_explodes"
                .Speed = 1
                .Loops = 1
                ' With .Tokens()
                '     '.Add "color", "ffffff"
                '     .Add "color1", "ffffff"
                '     .Add "color2", ClusterBombColor
                '     '.Add "color3", "ff0000"
                '     '.Add "color4", "0000ff"
                '     .Add "intensity", 100
                ' End With
            End With
        End With

        With .SoundPlayer()
            With .EventName("test_show")
                .Key = "key_test_show"
                .Sound = "sfx_cluster_fired"
            End With
        End With

    End With

End Sub