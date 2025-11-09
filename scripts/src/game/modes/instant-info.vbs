

'Instant Info Mode.


Sub CreateInstantInfoMode
    Dim x

    With CreateGlfMode("instant_info", 300)
        .StartEvents = Array("mode_meteor_wave_qualify_started")
        .StopEvents = Array("mode_meteor_wave_qualify_stopping")
        

        With .EventPlayer()
            'handle flipper cradle
            .Add "flipper_cradle{game.balls_in_play == 1 and current_player.ball_just_started == 0}", Array("info_restart","flipper_cradling")   'handle flipper cradle
            .Add "s_left_flipper_active{current_player.ball_cradled == 1}", Array("info_stop")
            .Add "s_right_flipper_active{current_player.ball_cradled == 1}", Array("info_stop")
            .Add "s_right_staged_flipper_key_active{current_player.ball_cradled == 1}", Array("info_stop")

            'show info
            .Add "timer_info_tick{device.timers.info.ticks == 0}", Array("info_ball_num")
            .Add "timer_info_tick{device.timers.info.ticks == 1}", Array("info_trained_num")
            .Add "timer_info_tick{device.timers.info.ticks == 2}", Array("info_eb_num")
            .Add "timer_info_tick{device.timers.info.ticks == 3}", Array("info_restart")
        End With


     
       With .Timers("info")
            .TickInterval = 800
            .StartValue = 0
            .EndValue = 10
            With .ControlEvents()
                .EventName = "info_restart"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "flipper_release"
                .Action = "stop"
            End With
            With .ControlEvents()
                .EventName = "info_stop"
                .Action = "stop"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_instant_info_started") 
                With .Variable("ball_cradled")
                    .Action = "set"
                    .Int = 0
                End With
            End With

            With .EventName("flipper_cradling") 
                With .Variable("ball_cradled")
                    .Action = "set"
                    .Int = 1
                End With
            End With
            With .EventName("flipper_release") 
                With .Variable("ball_cradled")
                    .Action = "set"
                    .Int = 0
                End With
            End With
        End With

        
        With .SegmentDisplayPlayer()
            With .EventName("info_ball_num{current_player.number == 1 or current_player.number == 2}")
                With .Display("player3")
                    .key = "p3_ball_num"
                    .Text = "BALL"
                    .Expire = 2000
                    .Priority = 20000
                End With
                With .Display("player4")
                    .key = "p4_ball_num"
                    .Text = "{current_player.ball:0>2}"
                    .Expire = 2000
                    .Priority = 20000
                End With
            End With

            With .EventName("info_ball_num{current_player.number == 3 or current_player.number == 4}")
                With .Display("player1")
                    .key = "p1_ball_num"
                    .Text = "BALL"
                    .Expire = 2000
                    .Priority = 20000
                End With
                With .Display("player2")
                    .key = "p2_ball_num"
                    .Text = "{current_player.ball:0>2}"
                    .Expire = 2000
                    .Priority = 20000
                End With
            End With
            

            With .EventName("info_trained_num{current_player.number == 1 or current_player.number == 2}")
                With .Display("player3")
                    .key = "p3_ball_num"
                    .Text = "TRAINED"
                    .Expire = 2000
                    .Priority = 20010
                End With
                With .Display("player4")
                    .key = "p4_ball_num"
                    .Text = "{current_player.training_total_achieved:0>2}"
                    .Expire = 2000
                    .Priority = 20010
                End With
            End With

            With .EventName("info_trained_num{current_player.number == 3 or current_player.number == 4}")
                With .Display("player1")
                    .key = "p1_ball_num"
                    .Text = "TRAINED"
                    .Expire = 2000
                    .Priority = 20010
                End With
                With .Display("player2")
                    .key = "p2_ball_num"
                    .Text = "{current_player.training_total_achieved:0>2}"
                    .Expire = 2000
                    .Priority = 20010
                End With
            End With


            With .EventName("info_eb_num{current_player.number == 1 or current_player.number == 2}")
                With .Display("player3")
                    .key = "p3_ball_num"
                    .Text = "EB NUM"
                    .Expire = 2000
                    .Priority = 20020
                End With
                With .Display("player4")
                    .key = "p4_ball_num"
                    .Text = "{current_player.extra_balls:0>2}"
                    .Expire = 2000
                    .Priority = 20020
                End With
            End With

            With .EventName("info_eb_num{current_player.number == 3 or current_player.number == 4}")
                With .Display("player1")
                    .key = "p1_ball_num"
                    .Text = "EB NUM"
                    .Expire = 2000
                    .Priority = 20020
                End With
                With .Display("player2")
                    .key = "p2_ball_num"
                    .Text = "{current_player.extra_balls:0>2}"
                    .Expire = 2000
                    .Priority = 20020
                End With
            End With

            
        End With




    End With

End Sub