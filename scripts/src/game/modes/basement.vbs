


' Basement Mode.
' This mode runs all the time

Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")
        .StopEvents = Array("when_the_universe_ends")

        With .EventPlayer()
            '.Add "s_left_staged_flipper_key_active", Array("test_show1") 'DEBUG
            '.Add "s_right_staged_flipper_key_active", Array("test_show2") 'DEBUG
            '.Add "s_left_staged_flipper_key_active", Array("stop_attract_mode","test_post_game") 'DEBUG

            '.Add "mode_basement_started", Array("enable_diverter","enable_asteroid_motor")
            .Add "timer_table_init_complete", Array("start_attract_mode","turn_on_starlight","turn_on_ship_lights")',"enable_asteroid_motor","enable_diverter")

            .Add GLF_GAME_START, Array("reset_won_game")
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
            .EndValue = 4
            With .ControlEvents()
                .EventName = "mode_basement_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = GLF_BALL_STARTED
                .Action = "stop"
            End With
        End With

        With .VariablePlayer()
            With .EventName("reset_won_game")
                With .Variable("won_game")
                    .Action = "set_machine"
                    .Int = 0
                End With
            End With
        End With


        With .ShowPlayer()
            ' With .EventName("test_show1")  'DEBUG
            '     .Key = "key_test_show1"
            '     .Show = "ship_saver_acquired"
            '     .Speed = 1
            '     .Loops = 1
            '     .Priority = 20000
            ' End With
            ' With .EventName("test_show2")  'DEBUG
            '     .Key = "key_test_show2"
            '     .Show = "shields_down"
            '     .Speed = 1
            '     .Loops = 1
            '     .Priority = 10000
            ' End With
            ' With .EventName("test_show1")  'DEBUG
            '     .Key = "key_test_show1"
            '     .Show = "insert_gi_spin_center"
            '     .Speed = 2
            '     .Loops = 4
            '     .Priority = 1000
            '     With .Tokens()
            '         .Add "intensity", 100
            '         .Add "color", CombosColor
            '     End With
            ' End With
            ' With .EventName("test_show2")  'DEBUG
            '     .Key = "key_test_show2"
            '     .Show = "flash_color" 
            '     .Speed = 20
            '     .Loops = 6
            '     With .Tokens()
            '         .Add "lights", "tFlasher"
            '         .Add "color", CombosColor
            '     End With
            ' End With
        End With



        ' With .SoundPlayer()
        '     With .EventName("test_show")
        '         .Key = "key_test_show"
        '         .Sound = "sfx_cluster_fired"
        '     End With
        'End With

    End With

End Sub