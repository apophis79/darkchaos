


' Basement Mode.
' This mode runs all the time

Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")
        .StopEvents = Array("when_the_universe_ends")

        With .EventPlayer()
            '.Add "s_left_staged_flipper_key_active", Array("test_show1","test_show2") 'DEBUG

            'initialization
            .Add "timer_table_init_complete", Array("start_attract_mode","turn_on_starlight","turn_on_ship_lights")
            'clear won_game flag at start of new game
            .Add GLF_GAME_START, Array("reset_won_game")
            'handle tilt
            .Add "tilt", Array("kill_flippers","training_music_alt_stop","meteor_wave_music_stop","fwwiz_music_stop","flwiz_music_stop","ccwiz_music_stop")
        End With


        With .Tilt()
            .MultipleHitWindow = 300
            .SettleTime = 5000
            .WarningsToTilt = 3
            .ResetWarningEvents = Array("ball_started")
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

            With .EventName("tilt_warning")
                .Key = "key_sfx_tilt_warning"
                .Sound = "sfx_tilt_warning"
            End With
            With .EventName("tilt")
                .Key = "key_sfx_tilt"
                .Sound = "sfx_tilt"
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


        With .SegmentDisplayPlayer()
            With .EventName("tilt_warning")
                With .Display("player1")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player2")
                    .Text = """WARNING"""
                    .Expire = 4000
                    .Flashing = "all"
                    .Priority = 10000
                End With
                With .Display("player3")
                    .Text = """WARNING"""
                    .Expire = 4000
                    .Flashing = "all"
                    .Priority = 10000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
            End With
            With .EventName("tilt")
                With .Display("player1")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player2")
                    .Text = """TILT"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player3")
                    .Text = """TILT"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
            End With
        End With


        With .ShowPlayer()
            With .EventName("tilt") 
                .Key = "key_tilted_gi"
                .Show = "flicker_color_off" 
                .Speed = 3
                .Loops = 1
                .Priority = 10000
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName(GLF_BALL_STARTED) 
                .Key = "key_tilted_gi"
                .Show = "flicker_color_off" 
                .Speed = 3
                .Loops = 1
                .Priority = 10000
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor3000k
                End With
            End With

            'DEBUG
            ' With .EventName("test_show1") 
            '     .Key = "key_test_show1"
            '     .Show = "ship_saver_acquired"
            '     .Speed = 1
            '     .Loops = 1
            '     .Priority = 20000
            ' End With
            ' With .EventName("test_show2")
            '     .Key = "key_test_show2"
            '     .Show = "shields_down"
            '     .Speed = 1
            '     .Loops = 1
            '     .Priority = 10000
            ' End With
            '  With .EventName("test_show1") 
            '     .Key = "key_test_show1"
            '     .Show = "lsling_rotate4_ccw"
            '     .Speed = 1
            '     With .Tokens()
            '         .Add "intensity", 50
            '         .Add "color1", MoonColor
            '         .Add "color2", HealthColor1
            '         .Add "color3", ShieldsColor
            '         .Add "color4", HealthColor3
            '     End With
            ' End With
            ' With .EventName("test_show2") 
            '     .Key = "key_test_show2"
            '     .Show = "rsling_rotate4_cw"
            '     .Speed = 1
            '     With .Tokens()
            '         .Add "intensity", 50
            '         .Add "color1", MoonColor
            '         .Add "color2", HealthColor1
            '         .Add "color3", ShieldsColor
            '         .Add "color4", HealthColor3
            '     End With
            ' End With
        End With



    End With

End Sub