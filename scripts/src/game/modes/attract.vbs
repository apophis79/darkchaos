


' Attract Mode.


Sub CreateAttractMode()
    Dim x

    With CreateGlfMode("attract", 120)
        .StartEvents = Array("start_attract_mode")
        .StopEvents = Array("stop_attract_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_attract_started", Array("play_attract_show1","play_mus_ambient_bg","stop_asteroid_motor","drop_diverter")
            .Add "timer_attract_voc_complete", Array("play_attract_voc")
            'main attract show timing
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 8}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 16}", Array("play_meteor_fall_right","play_att_lsling_show1","play_att_rsling_show1")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 26}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 30}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 38}", Array("play_meteor_fall_left","play_att_lsling_show2","play_att_rsling_show2")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 42}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 44}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 45}", Array("play_earth_hit_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 54}", Array("play_meteor_fall_center","play_att_lsling_show3","play_att_rsling_show3")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 60}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 61}", Array("play_earth_hit_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 70}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 71}", Array("play_earth_hit_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 80}", Array("play_meteor_fall_left","play_att_lsling_show4","play_att_rsling_show4")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 88}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 98}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 102}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 103}", Array("play_earth_hit_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 116}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 126}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 128}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 132}", Array("play_meteor_fall_center","play_att_lsling_show5","play_att_rsling_show5")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 133}", Array("play_earth_hit_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 150}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 151}", Array("play_earth_hit_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 164}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 178}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 182}", Array("play_meteor_fall_center","play_att_lsling_show2","play_att_rsling_show2")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 184}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 198}", Array("play_meteor_fall_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 202}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 203}", Array("play_earth_hit_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 208}", Array("play_meteor_fall_left","play_att_lsling_show6","play_att_rsling_show6")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 209}", Array("play_earth_hit_left")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 216}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 218}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 224}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 225}", Array("play_earth_hit_right","play_att_lsling_show7","play_att_rsling_show7")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 228}", Array("play_meteor_fall_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 229}", Array("play_earth_hit_center")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 232}", Array("play_meteor_fall_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 233}", Array("play_earth_hit_right")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 238}", Array("play_meteor_fall_left","play_att_lsling_show8","play_att_rsling_show8")
            .Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 239}", Array("play_earth_hit_left")
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

        With .ShowPlayer()
            With .EventName("play_attract_show1")   
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


        

    End With

End Sub