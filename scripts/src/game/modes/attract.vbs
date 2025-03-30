


' Attract Mode.


Sub CreateAttractMode()
    Dim x

    With CreateGlfMode("attract", 120)
        .StartEvents = Array("start_attract_mode")
        .StopEvents = Array("stop_attract_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_attract_started", Array("play_attract_show","play_mus_ambient_bg","stop_asteroid_motor","drop_diverter","backglass_dark_on","backglass_chaos_on")
            .Add "timer_attract_voc_complete", Array("play_attract_voc")
            .Add "mode_attract_stopping", Array("drop_diverter")
            'main attract show timing
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 8}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 16}", Array("play_meteor_fall_right","play_att_lsling_show1","play_att_rsling_show1")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 26}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 30}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 38}", Array("play_meteor_fall_left","play_att_lsling_show2","play_att_rsling_show2")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 42}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 44}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 45}", Array("play_earth_hit_left","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 54}", Array("play_meteor_fall_center","play_att_lsling_show3","play_att_rsling_show3")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 60}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 61}", Array("play_earth_hit_right","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 70}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 71}", Array("play_earth_hit_center","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 80}", Array("play_meteor_fall_left","play_att_lsling_show4","play_att_rsling_show4")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 88}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 98}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 102}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 103}", Array("play_earth_hit_right","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 116}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 126}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 128}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 132}", Array("play_meteor_fall_center","play_att_lsling_show5","play_att_rsling_show5")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 133}", Array("play_earth_hit_center","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 150}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 151}", Array("play_earth_hit_left","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 164}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 178}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 182}", Array("play_meteor_fall_center","play_att_lsling_show2","play_att_rsling_show2")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 184}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 198}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 202}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 203}", Array("play_earth_hit_center","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 208}", Array("play_meteor_fall_left","play_att_lsling_show6","play_att_rsling_show6")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 209}", Array("play_earth_hit_left","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 216}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 218}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 224}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 225}", Array("play_earth_hit_right","play_att_lsling_show7","play_att_rsling_show7","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 228}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 229}", Array("play_earth_hit_center","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 232}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 233}", Array("play_earth_hit_right","play_attract_boom")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 238}", Array("play_meteor_fall_left","play_att_lsling_show8","play_att_rsling_show8")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 239}", Array("play_earth_hit_left","play_attract_boom")


            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 1}", Array("show_attract_title")   '5 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 7}", Array("show_attract_message") '9 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 17}", Array("show_attract_hs1")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 21}", Array("show_attract_hs2")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 25}", Array("show_attract_hs3")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 29}", Array("show_attract_hs4")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 33}", Array("show_attract_credits1") '5 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 39}", Array("show_attract_credits2") '2 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 41}", Array("show_attract_credits3") '2 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 43}", Array("show_attract_credits4") '4 + 1 sec
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
            With .EventName("play_attract_boom")
                .Add "play_sfx_boom1", 1
                .Add "play_sfx_boom2", 1
                .Add "play_sfx_boom3", 1
                .Add "play_sfx_boom4", 1
                .Add "play_sfx_boom5", 1
                .Add "play_sfx_boom6", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("show_attract_message")
                .Add "show_attract_message1", 1
                .Add "show_attract_message2", 1
                .Add "show_attract_message3", 1
                .Add "show_attract_message4", 1
                .Add "show_attract_message5", 1
                .Add "show_attract_message6", 1
                .Add "show_attract_message7", 1
                .Add "show_attract_message8", 1
                .Add "show_attract_message9", 1
                .Add "show_attract_message10", 1
                .Add "show_attract_message11", 1
                .Add "show_attract_message12", 1
                .Add "show_attract_message13", 1
                .Add "show_attract_message14", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With

        With .DOFPlayer()
            With .EventName("play_attract_show")
                .Action = "DOF_ON"
                .DOFEvent = 134
            End With
            With .EventName("mode_attract_stopping")
                .Action = "DOF_OFF"
                .DOFEvent = 134
            End With
        End With
       
        With .SoundPlayer() 
            For x = 1 to 5
                With .EventName("play_voc_attract"&x)
                    .Key = "key_voc_attract"&x
                    .Sound = "voc_attract"&x
                End With
            Next
            For x = 1 to 6
                With .EventName("play_sfx_boom"&x)
                    .Key = "key_sfx_boom"&x
                    .Sound = "sfx_boom"&x
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

        With .Timers("attract_shows")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 240
            With .ControlEvents()
                .EventName = "mode_attract_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "timer_attract_shows_complete"
                .Action = "restart"
            End With
        End With

        With .Timers("attract_display")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 48
            With .ControlEvents()
                .EventName = "mode_attract_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "timer_attract_display_complete"
                .Action = "restart"
            End With
        End With

        With .ShowPlayer()
            With .EventName("play_attract_show")   
                .Key = "key_attract_show1"
                .Show = "insert_sparkles" 
                With .Tokens()
                    .Add "intensity", 60
                End With
            End With
            With .EventName("play_meteor_fall_left")   
                .Key = "key_meteor_fall_left"
                .Show = "meteor_fall_left"
                .Loops = 1
                With .Tokens()
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_meteor_fall_center")   
                .Key = "key_meteor_fall_center"
                .Show = "meteor_fall_center"
                .Loops = 1
                With .Tokens()
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_meteor_fall_right")   
                .Key = "key_meteor_fall_right"
                .Show = "meteor_fall_right"
                .Loops = 1
                With .Tokens()
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_earth_hit_center")   
                .Key = "key_earth_hit_center"
                .Show = "earth_hit_center"
                .Loops = 1
                .Speed = 2
            End With
            With .EventName("play_earth_hit_left")   
                .Key = "key_earth_hit_left"
                .Show = "earth_hit_left"
                .Loops = 1
                .Speed = 2
            End With
            With .EventName("play_earth_hit_right")   
                .Key = "key_earth_hit_right"
                .Show = "earth_hit_right"
                .Loops = 1
                .Speed = 2
            End With

            With .EventName("play_att_lsling_show1") 
                .Key = "key_att_lsling_show1"
                .Show = "lsling_swap_2_2_b"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 50
                End With
            End With
            With .EventName("play_att_rsling_show1") 
                .Key = "key_att_rling_show1"
                .Show = "rsling_swap_2_2_a"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 50
                End With
            End With

            With .EventName("play_att_lsling_show2") 
                .Key = "key_att_lsling_show2"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("play_att_rsling_show2") 
                .Key = "key_att_rsling_show2"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", "ffffff"
                End With
            End With

            With .EventName("play_att_lsling_show3") 
                .Key = "key_att_lsling_show3"
                .Show = "lsling_rotate2_ccw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", "00ffee"
                    .Add "color2", "eeff00"
                End With
            End With
            With .EventName("play_att_rsling_show3") 
                .Key = "key_att_rsling_show3"
                .Show = "rsling_rotate2_cw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", "00ffee"
                    .Add "color2", "aa00ff"
                End With
            End With

            With .EventName("play_att_lsling_show4") 
                .Key = "key_att_lsling_show4"
                .Show = "lsling_rotate1_ccw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", "05ff05"
                End With
            End With
            With .EventName("play_att_rsling_show4") 
                .Key = "key_att_rsling_show4"
                .Show = "rsling_rotate1_cw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", "05ff05"
                End With
            End With


            With .EventName("play_att_lsling_show5") 
                .Key = "key_att_lsling_show5"
                .Show = "lsling_rotate1_cw_skip1"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_att_rsling_show5") 
                .Key = "key_att_rsling_show5"
                .Show = "rsling_rotate1_cw_skip1"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShieldsColor
                End With
            End With


            With .EventName("play_att_lsling_show6") 
                .Key = "key_att_lsling_show6"
                .Show = "lsling_rotate2_ccw_skip1"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", HealthColor3
                    .Add "color2", HealthColor3
                End With
            End With
            With .EventName("play_att_rsling_show6") 
                .Key = "key_att_rsling_show6"
                .Show = "rsling_rotate2_ccw_skip1"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", HealthColor3
                    .Add "color2", HealthColor3
                End With
            End With

            With .EventName("play_att_lsling_show7") 
                .Key = "key_att_lsling_show7"
                .Show = "lsling_rotate1_ccw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_att_rsling_show7") 
                .Key = "key_att_rsling_show7"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 4
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color", MoonColor
                End With
            End With

            With .EventName("play_att_lsling_show8") 
                .Key = "key_att_lsling_show8"
                .Show = "lsling_rotate4_ccw"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", MoonColor
                    .Add "color2", HealthColor1
                    .Add "color3", HealthColor3
                    .Add "color4", ShipSaveColor
                End With
            End With
            With .EventName("play_att_rsling_show8") 
                .Key = "key_att_rsling_show8"
                .Show = "rsling_rotate4_cw"
                .Speed = 1
                .Loops = 3
                With .Tokens()
                    .Add "intensity", 80
                    .Add "color1", MoonColor
                    .Add "color2", HealthColor1
                    .Add "color3", HealthColor3
                    .Add "color4", ShipSaveColor
                End With
            End With

        End With


        With .SegmentDisplayPlayer()
            With .EventName("show_attract_title")
                With .Display("player2")
                    .Key = "key_top_show_attract_title"
                    .Text = """DARK"""
                    .Expire = 5000
                    .Priority = 1
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "right"
                        .Text = ""
                    End With
                End With
                With .Display("player3")
                    .Key = "key_bot_show_attract_title"
                    .Text = """CHAOS   """
                    .Expire = 5000
                    .Priority = 1
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = ""
                    End With
                End With
            End With

            With .EventName("show_attract_hs1")
                With .Display("p1p2")
                    .Key = "key_score_1_label"
                    .Text = "machine.score_1_label"
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player3")
                    .Key = "key_score_1_name"
                    .Text = "machine.score_1_name"
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player4")
                    .Key = "key_score_1_value"
                    .Text = "machine.score_1_value"
                    .Expire = 3000
                    .Priority = 3
                End With
            End With

            With .EventName("show_attract_hs2")
                With .Display("p1p2")
                    .Key = "key_score_2_label"
                    .Text = "machine.score_2_label"
                    .Expire = 3000
                    .Priority = 4
                End With
                With .Display("player3")
                    .Key = "key_score_2_name"
                    .Text = "machine.score_2_name"
                    .Expire = 3000
                    .Priority = 4
                End With
                With .Display("player4")
                    .Key = "key_score_2_value"
                    .Text = "machine.score_2_value"
                    .Expire = 3000
                    .Priority = 4
                End With
            End With

            With .EventName("show_attract_hs3")
                With .Display("p1p2")
                    .Key = "key_score_3_label"
                    .Text = "machine.score_3_label"
                    .Expire = 3000
                    .Priority = 5
                End With
                With .Display("player3")
                    .Key = "key_score_3_name"
                    .Text = "machine.score_3_name"
                    .Expire = 3000
                    .Priority = 5
                End With
                With .Display("player4")
                    .Key = "key_score_3_value"
                    .Text = "machine.score_3_value"
                    .Expire = 3000
                    .Priority = 5
                End With
            End With

            With .EventName("show_attract_hs4")
                With .Display("p1p2")
                    .Key = "key_score_4_label"
                    .Text = "machine.score_4_label"
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player3")
                    .Key = "key_score_4_name"
                    .Text = "machine.score_4_name"
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player4")
                    .Key = "key_score_4_value"
                    .Text = "machine.score_4_value"
                    .Expire = 3000
                    .Priority = 3
                End With
            End With

            With .EventName("show_attract_credits1")
                With .Display("all")
                    .Key = "key_all_show_attract_credits1"
                    .Text = """"""
                    .Expire = 5000
                    .Priority = 7
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "ORIGINAL TABLE BY"
                    End With
                End With
            End With

            With .EventName("show_attract_credits2")
                With .Display("player2")
                    .Key = "key_p2_show_attract_credits2"
                    .Text = """APOPHIS"""
                    .Expire = 8000
                    .Priority = 8
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "right"
                        .Text = ""
                    End With
                End With
            End With

            With .EventName("show_attract_credits3")
                With .Display("player3")
                    .Key = "key_p3_show_attract_credits3"
                    .Text = """FLUX  """
                    .Expire = 6000
                    .Priority = 8
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "right"
                        .Text = ""
                    End With
                End With
            End With

            With .EventName("show_attract_credits4")
                With .Display("player4")
                    .Key = "key_p4_show_attract_credits4"
                    .Text = """UNSAVORY"""
                    .Expire = 4000
                    .Priority = 8
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "right"
                        .Text = ""
                    End With
                End With
            End With


            With .EventName("show_attract_message1")
                With .Display("all")
                    .Key = "key_all_show_attract_message1"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "DESTROY THE ASTEROID AND SAVE EARTH"
                    End With
                End With
            End With

            With .EventName("show_attract_message2")
                With .Display("all")
                    .Key = "key_all_show_attract_message2"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COLLECT POWER UPS TO SURVIVE METEOR WAVES"
                    End With
                End With
            End With

            With .EventName("show_attract_message3")
                With .Display("all")
                    .Key = "key_all_show_attract_message3"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "CLUSTER BOMBS DESTROY NEARBY METEORS"
                    End With
                End With
            End With

            With .EventName("show_attract_message4")
                With .Display("all")
                    .Key = "key_all_show_attract_message4"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "PROTON CANNON DESTROYS ONE RANDOM METEOR"
                    End With
                End With
            End With

            With .EventName("show_attract_message5")
                With .Display("all")
                    .Key = "key_all_show_attract_message5"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "LAUNCH MOON MISSILES FOR INSTANT MULTIBALL"
                    End With
                End With
            End With

            With .EventName("show_attract_message6")
                With .Display("all")
                    .Key = "key_all_show_attract_message6"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COLLECT SHIELDS FOR AN OUTLANE BALL SAVE"
                    End With
                End With
            End With

            With .EventName("show_attract_message7")
                With .Display("all")
                    .Key = "key_all_show_attract_message7"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COLLECT SHIP SAVER TO INCREASE BALLSAVE TIME"
                    End With
                End With
            End With

            With .EventName("show_attract_message8")
                With .Display("all")
                    .Key = "key_all_show_attract_message8"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "TIME WARP RAMP PAUSES COUNTDOWN FOR 10 SEC"
                    End With
                End With
            End With

            With .EventName("show_attract_message9")
                With .Display("all")
                    .Key = "key_all_show_attract_message9"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "BUMPERS IMPROVE HEALTH METER"
                    End With
                End With
            End With

            With .EventName("show_attract_message10")
                With .Display("all")
                    .Key = "key_all_show_attract_message10"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COMPLETE TRAININGS TO EASILY COLLECT POWER UPS"
                    End With
                End With
            End With

            With .EventName("show_attract_message11")
                With .Display("all")
                    .Key = "key_all_show_attract_message11"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "METEORS DO DAMAGE IF THEY MAKE IT THRU DEFENSES"
                    End With
                End With
            End With

            With .EventName("show_attract_message12")
                With .Display("all")
                    .Key = "key_all_show_attract_message12"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COLLECT 8 COMBOS TO START COMBO COMMAND WIZARD"
                    End With
                End With
            End With

            With .EventName("show_attract_message13")
                With .Display("all")
                    .Key = "key_all_show_attract_message13"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "COLLECT ALL AMMO TO START FULLY LOADED WIZARD"
                    End With
                End With
            End With

            With .EventName("show_attract_message14")
                With .Display("all")
                    .Key = "key_all_show_attract_message14"
                    .Text = """"""
                    .Expire = 9000
                    .Priority = 2
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = "SURVIVE ALL WAVES TO START FINAL WAVE WIZARD"
                    End With
                End With
            End With

        End With


        

    End With

End Sub