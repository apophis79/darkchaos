

'Victory Lap Mode !!!!
' All shots are lit, double scoring, 45 sec ball save, 5 ball mb
' Flippers die after 45 sec. Ball over.
' The mode will restart on next ball (if any are left).



Sub CreateVictoryLapMode
    Dim x,r

    With CreateGlfMode("victory_lap", 9999)
        .StartEvents = Array("asteroid_destroyed","restart_victory")
        .StopEvents = Array("mode_base_stopping")

        With .EventPlayer()
            'victory lap starts before final wve ends... so wait till the final wave is done
            .Add "mode_victory_lap_started", Array("stop_asteroid_motor","set_won_game","meteor_wave_music_stop")
            .Add "mode_victory_lap_started{modes.final_wave_wizard.active}", Array("victory_startup_ballsave")
            'starting, restarting, and stopping the victor lap itself
            .Add "ball_launch_hit{current_player.victory_lap_running == 0}", Array("run_victory_lap")
            .Add "s_Plunger1_active{current_player.victory_lap_running == 0}", Array("init_victory_lap","stop_final_wave_wizard","deactivate_nuke")
            .Add "multiball_victory_shoot_again_ended", Array("kill_flippers")
            'run stuff during the victory lap
            .Add "run_victory_lap", Array("victory_bumpers_show","play_mus_victory","run_victory_lap_show","play_vic_lsling_show","play_vic_rsling_show")
            'Handle bumper and gi lights
            .Add "timer_victory_bumper_lights_tick", Array("victory_bumpers_show","victory_gi_show1","victory_gi_show2","victory_gi_show3")
            'Handle shots
            .Add "s_TargetMystery1_active", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add "s_TargetMystery2_active", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add "s_TargetMystery3_active", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add "s_TargetMystery4_active", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add "s_TargetMystery5_active", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(0)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(1)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(2)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(3)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(4)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(5)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(6)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            .Add MainShotNames(7)&"_hit", Array("victory_fireworks_show","victory_flashers_show","score_200000")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")
            .Add "ball_search_started", Array("release_moon_ball")
            'Handled mode ending
            .Add "mus_victory_stopped", Array("end_victory_lap")
        End With

        With .QueueRelayPlayer()
            With .EventName(GLF_BALL_ENDING)
                .Post = "awaiting_victory_music_end"
                .WaitFor = "end_victory_lap"
            End With
        End With


        With .RandomEventPlayer()
            With .EventName("victory_bumpers_show")
                .Add "victory_bumper1_show_red", 1
                .Add "victory_bumper2_show_red", 1
                .Add "victory_bumper3_show_red", 1
                .Add "victory_bumper4_show_red", 1

                .Add "victory_bumper1_show_orange", 1
                .Add "victory_bumper2_show_orange", 1
                .Add "victory_bumper3_show_orange", 1
                .Add "victory_bumper4_show_orange", 1

                .Add "victory_bumper1_show_yellow", 1
                .Add "victory_bumper2_show_yellow", 1
                .Add "victory_bumper3_show_yellow", 1
                .Add "victory_bumper4_show_yellow", 1

                .Add "victory_bumper1_show_green", 1
                .Add "victory_bumper2_show_green", 1
                .Add "victory_bumper3_show_green", 1
                .Add "victory_bumper4_show_green", 1

                .Add "victory_bumper1_show_cyan", 1
                .Add "victory_bumper2_show_cyan", 1
                .Add "victory_bumper3_show_cyan", 1
                .Add "victory_bumper4_show_cyan", 1

                .Add "victory_bumper1_show_blue", 1
                .Add "victory_bumper2_show_blue", 1
                .Add "victory_bumper3_show_blue", 1
                .Add "victory_bumper4_show_blue", 1

                .Add "victory_bumper1_show_magenta", 1
                .Add "victory_bumper2_show_magenta", 1
                .Add "victory_bumper3_show_magenta", 1
                .Add "victory_bumper4_show_magenta", 1

                .Add "victory_bumper1_show_white", 1
                .Add "victory_bumper2_show_white", 1
                .Add "victory_bumper3_show_white", 1
                .Add "victory_bumper4_show_white", 1

                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("victory_fireworks_show")
                .Add "victory_firework1_show_red", 1
                .Add "victory_firework2_show_red", 1
                .Add "victory_firework3_show_red", 1
                .Add "victory_firework4_show_red", 1

                .Add "victory_firework1_show_orange", 1
                .Add "victory_firework2_show_orange", 1
                .Add "victory_firework3_show_orange", 1
                .Add "victory_firework4_show_orange", 1

                .Add "victory_firework1_show_yellow", 1
                .Add "victory_firework2_show_yellow", 1
                .Add "victory_firework3_show_yellow", 1
                .Add "victory_firework4_show_yellow", 1

                .Add "victory_firework1_show_green", 1
                .Add "victory_firework2_show_green", 1
                .Add "victory_firework3_show_green", 1
                .Add "victory_firework4_show_green", 1

                .Add "victory_firework1_show_cyan", 1
                .Add "victory_firework2_show_cyan", 1
                .Add "victory_firework3_show_cyan", 1
                .Add "victory_firework4_show_cyan", 1

                .Add "victory_firework1_show_blue", 1
                .Add "victory_firework2_show_blue", 1
                .Add "victory_firework3_show_blue", 1
                .Add "victory_firework4_show_blue", 1

                .Add "victory_firework1_show_magenta", 1
                .Add "victory_firework2_show_magenta", 1
                .Add "victory_firework3_show_magenta", 1
                .Add "victory_firework4_show_magenta", 1

                .Add "victory_firework1_show_white", 1
                .Add "victory_firework2_show_white", 1
                .Add "victory_firework3_show_white", 1
                .Add "victory_firework4_show_white", 1

                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("victory_flashers_show")
                .Add "victory_flasher_show_1", 1
                .Add "victory_flasher_show_2", 1
                .Add "victory_flasher_show_3", 1
                .Add "victory_flasher_show_4", 1
                .Add "victory_flasher_show_5", 1
                .Add "victory_flasher_show_6", 1
                .Add "victory_flasher_show_7", 1
                .Add "victory_flasher_show_8", 1
                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("victory_gi_show1")
                .Add "victory_gi01_show1", 1
                .Add "victory_gi02_show1", 1
                .Add "victory_gi03_show1", 1
                .Add "victory_gi04_show1", 1
                .Add "victory_gi05_show1", 1
                .Add "victory_gi06_show1", 1
                .Add "victory_gi07_show1", 1
                .Add "victory_gi08_show1", 1
                .Add "victory_gi09_show1", 1
                .Add "victory_gi10_show1", 1
                .Add "victory_gi11_show1", 1
                .Add "victory_gi12_show1", 1
                .Add "victory_gi13_show1", 1
                .Add "victory_gi14_show1", 1
                .Add "victory_gi15_show1", 1
                .Add "victory_gi16_show1", 1
                .Add "victory_gi17_show1", 1
                .Add "victory_gi18_show1", 1
                .Add "victory_gi19_show1", 1
                .Add "victory_gi20_show1", 1
                .Add "victory_gi21_show1", 1
                .Add "victory_gi22_show1", 1
                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("victory_gi_show2")
                .Add "victory_gi01_show2", 1
                .Add "victory_gi02_show2", 1
                .Add "victory_gi03_show2", 1
                .Add "victory_gi04_show2", 1
                .Add "victory_gi05_show2", 1
                .Add "victory_gi06_show2", 1
                .Add "victory_gi07_show2", 1
                .Add "victory_gi08_show2", 1
                .Add "victory_gi09_show2", 1
                .Add "victory_gi10_show2", 1
                .Add "victory_gi11_show2", 1
                .Add "victory_gi12_show2", 1
                .Add "victory_gi13_show2", 1
                .Add "victory_gi14_show2", 1
                .Add "victory_gi15_show2", 1
                .Add "victory_gi16_show2", 1
                .Add "victory_gi17_show2", 1
                .Add "victory_gi18_show2", 1
                .Add "victory_gi19_show2", 1
                .Add "victory_gi20_show2", 1
                .Add "victory_gi21_show2", 1
                .Add "victory_gi22_show2", 1
                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("victory_gi_show3")
                .Add "victory_gi01_show3", 1
                .Add "victory_gi02_show3", 1
                .Add "victory_gi03_show3", 1
                .Add "victory_gi04_show3", 1
                .Add "victory_gi05_show3", 1
                .Add "victory_gi06_show3", 1
                .Add "victory_gi07_show3", 1
                .Add "victory_gi08_show3", 1
                .Add "victory_gi09_show3", 1
                .Add "victory_gi10_show3", 1
                .Add "victory_gi11_show3", 1
                .Add "victory_gi12_show3", 1
                .Add "victory_gi13_show3", 1
                .Add "victory_gi14_show3", 1
                .Add "victory_gi15_show3", 1
                .Add "victory_gi16_show3", 1
                .Add "victory_gi17_show3", 1
                .Add "victory_gi18_show3", 1
                .Add "victory_gi19_show3", 1
                .Add "victory_gi20_show3", 1
                .Add "victory_gi21_show3", 1
                .Add "victory_gi22_show3", 1
                .ForceAll = False
                .ForceDifferent = False
            End With

        End With


        With .DOFPlayer()
            With .EventName("victory_firework1_show_white")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("victory_firework1_show_red")
                .Action = "DOF_PULSE"
                .DOFEvent = 161
            End With
            With .EventName("victory_firework1_show_orange")
                .Action = "DOF_PULSE"
                .DOFEvent = 162
            End With
            With .EventName("victory_firework1_show_yellow")
                .Action = "DOF_PULSE"
                .DOFEvent = 163
            End With
            With .EventName("victory_firework1_show_green")
                .Action = "DOF_PULSE"
                .DOFEvent = 164
            End With
            With .EventName("victory_firework1_show_cyan")
                .Action = "DOF_PULSE"
                .DOFEvent = 165
            End With
            With .EventName("victory_firework1_show_blue")
                .Action = "DOF_PULSE"
                .DOFEvent = 166
            End With
            With .EventName("victory_firework1_show_purple")
                .Action = "DOF_PULSE"
                .DOFEvent = 167
            End With
            With .EventName("victory_firework1_show_magenta")
                .Action = "DOF_PULSE"
                .DOFEvent = 168
            End With
        End With


        With .BallSaves("victory_startup")
            .ActiveTime = 13000
            .EnableEvents = Array("victory_startup_ballsave")
            .BallsToSave = 1
            .AutoLaunch = False
        End With

        
        With .Multiballs("victory")
            .StartEvents = Array("run_victory_lap")
            .DisableEvents = Array("multiball_victory_shoot_again_ended")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = VictoryLapTime*1000
            .HurryUp = 3000
            .GracePeriod = 0
        End With


        With .Shots("victory_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", "ffffff"
            End With
            With .ControlEvents()
                .Events = Array("run_victory_lap")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_victory_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("multiball_victory_shoot_again_ended")
        End With


        ' shots
        For x = 1 to 8
            With .Shots("victory_shot"&x)
                .Profile = "victory_shots"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                    .Add "color", "ffffff"
                End With
                With .ControlEvents()
                    .Events = Array("init_victory_lap")
                    .State = 1
                End With
                .RestartEvents = Array("timer_victory_countdown_complete")
            End With
        Next
        For x = 1 to 5
            With .Shots("victory_shot"&x+8)
                .Profile = "victory_shots"
                With .Tokens()
                    .Add "lights", "LM"&x
                    .Add "color", "ffffff"
                End With
                With .ControlEvents()
                    .Events = Array("init_victory_lap")
                    .State = 1
                End With
                .RestartEvents = Array("timer_victory_countdown_complete")
            End With
        Next


        With .ShotProfiles("victory_shots")
            With .States("unlit")
                .Show = "off"
                .Key = "key_vic_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_vic_on"
                .Speed = 7
                With .Tokens()
                    .Add "color", "ffffff"
                End With
            End With
        End With


        With .VariablePlayer()
		    With .EventName("mode_victory_lap_started")
				With .Variable("victory")
                    .Action = "set"
					.Int = 1
				End With
                With .Variable("victory_lap_running")
                    .Action = "set"
					.Int = 0
				End With
            End With
            With .EventName("run_victory_lap")
                With .Variable("victory_lap_running")
                    .Action = "set"
					.Int = 1
				End With
            End With
            With .EventName("set_won_game")
                With .Variable("won_game")
                    .Action = "set_machine"
                    .Int = 1
                End With
            End With
        End With



        With .Timers("victory_countdown")
            .TickInterval = 1000
            .StartValue = VictoryLapTime
            .EndValue = 0
            .Direction = "down"
            With .ControlEvents()
                .EventName = "run_victory_lap"
                .Action = "restart"
            End With
        End With

        With .Timers("victory_bumper_lights")
            .TickInterval = 250
            .StartValue = 0
            .EndValue = 500
            With .ControlEvents()
                .EventName = "run_victory_lap"
                .Action = "restart"
            End With
        End With



        With .SegmentDisplayPlayer()
            With .EventName("init_victory_lap")
                With .Display("player1")
                    .Text = """ YOU """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """ SAVED """
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """US  """
                    .Flashing = "all"
                End With
                With .Display("player4")
                    .Text = """ALL """
                    .Flashing = "all"
                End With
            End With
            With .EventName("run_victory_lap")
                With .Display("player1")
                    .Action = "remove"
                End With
                With .Display("player2")
                    .Action = "remove"
                End With
                With .Display("player3")
                    .Action = "remove"
                End With
                With .Display("player4")
                    .Action = "remove"
                End With

                With .Display("pf")
                    .Text = "{devices.timers.victory_countdown.ticks:0>2}"
                End With
            End With

            With .EventName("timer_victory_countdown_complete")
                With .Display("pf")
                    .Text = """00"""
                    .Priority = 100
                End With
            End With
        End With


        With .SoundPlayer()
            With .EventName("play_mus_victory")
                .Key = "key_mus_victory"
                .Sound = "mus_victory"
            End With
        End With


        With .ShowPlayer()

            ' ' Ball drain blocking show. Should last about 15 to 20 seconds. When this show stops, the game ends the ball. 
            ' With .EventName("mode_victory_lap_stopping")
            '     .Key = "key_v_lap_stopping_show"
            '     .BlockQueue = True
            '     .Show = "flash_color"
            '     .Speed = 1
            '     .Loops = 7
            '     With .Tokens()
            '         .Add "lights", "tShip"
            '         .Add "color", "ffffff"
            '     End With
            ' End With

            'Slings
            With .EventName("play_vic_lsling_show") 
                .Key = "key_v_lsling_show8"
                .Show = "lsling_rotate4_ccw"
                .Speed = 1
                With .Tokens()
                    .Add "intensity", 50
                    .Add "color1", MoonColor
                    .Add "color2", HealthColor1
                    .Add "color3", ShieldsColor
                    .Add "color4", HealthColor3
                End With
            End With
            With .EventName("play_vic_rsling_show") 
                .Key = "key_v_rsling_show8"
                .Show = "rsling_rotate4_cw"
                .Speed = 1
                With .Tokens()
                    .Add "intensity", 50
                    .Add "color1", MoonColor
                    .Add "color2", HealthColor1
                    .Add "color3", ShieldsColor
                    .Add "color4", HealthColor3
                End With
            End With

            'Bumpers
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_red")
                    .Key = "key_v_bumper"&x&"_show_red"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", MeteorWaveColor   'red
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_orange")
                    .Key = "key_v_bumper"&x&"_show_orange"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", TrainingColor     'orange
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_yellow")
                    .Key = "key_v_bumper"&x&"_show_yellow"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", MoonColor         'yellow
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_green")
                    .Key = "key_v_bumper"&x&"_show_green"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", HealthColor1      'green
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_cyan")
                    .Key = "key_v_bumper"&x&"_show_cyan"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", ProtonColor       'cyan
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_blue")
                    .Key = "key_v_bumper"&x&"_show_blue"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", ShieldsColor      'blue
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_magenta")
                    .Key = "key_v_bumper"&x&"_show_magenta"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", ClusterBombColor  'magenta
                    End With
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_bumper"&x&"_show_white")
                    .Key = "key_v_bumper"&x&"_show_white"
                    .Show = "flash_color_fadeout" 
                    .Speed = 10
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", TimewarpColor 'white
                    End With
                End With
            Next

            'Fireworks
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_red")
                    .Key = "key_v_firework"&x&"_show_red"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", MeteorWaveColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_orange")
                    .Key = "key_v_firework"&x&"_show_orange"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", TrainingColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_yellow")
                    .Key = "key_v_firework"&x&"_show_yellow"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", MoonColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_green")
                    .Key = "key_v_firework"&x&"_show_green"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", HealthColor1
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_cyan")
                    .Key = "key_v_firework"&x&"_show_cyan"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", ProtonColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_blue")
                    .Key = "key_v_firework"&x&"_show_blue"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", ShieldsColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_magenta")
                    .Key = "key_v_firework"&x&"_show_magenta"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", ClusterBombColor
                    End With    
                End With
            Next
            For x = 1 to 4
                With .EventName("victory_firework"&x&"_show_white")
                    .Key = "key_v_firework"&x&"_show_white"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", TimewarpColor
                    End With    
                End With
            Next

            'Flashers
            For x = 1 to 8
                With .EventName("victory_flasher_show_"&x)
                    .Key = "key_v_flasher_show_"&x
                    .Show = "flash_color" 
                    .Speed = 20
                    .Loops = 3
                    With .Tokens()
                        .Add "lights", "tFlasherU"
                        .Add "color", RainbowColors(x-1)
                    End With
                End With
            Next

            'Flashers
            r = 0
            For x = 1 to 9
                With .EventName("victory_gi0"&x&"_show1")
                    .Key = "key_v_gi0"&x&"_show1"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next
            For x = 10 to 22
                With .EventName("victory_gi"&x&"_show1")
                    .Key = "key_v_gi"&x&"_show1"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next

            r = 3
            For x = 1 to 9
                With .EventName("victory_gi0"&x&"_show2")
                    .Key = "key_v_gi0"&x&"_show2"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next
            For x = 10 to 22
                With .EventName("victory_gi"&x&"_show2")
                    .Key = "key_v_gi"&x&"_show2"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next

            r = 5
            For x = 1 to 9
                With .EventName("victory_gi0"&x&"_show3")
                    .Key = "key_v_gi0"&x&"_show3"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next
            For x = 10 to 22
                With .EventName("victory_gi"&x&"_show3")
                    .Key = "key_v_gi"&x&"_show3"
                    .Show = "flash_color_fadeout" 
                    .Speed = 5
                    .Loops = 1
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", RainbowColors(r)
                    End With
                End With
                r = r + 1
                if r > 7 then r = 0
            Next
            
            
        End With
    
    End With
End Sub