

'Combo Command Wizard Mode.

'EB is added. All combo shot lights are lit flashing. Short ball saver is started (10 sec).
'5 ball multiball starts. Mode lasts as long as ball lasts, or until the super jacpot is achieved
'Each shot is like a jackpot. If all are completed, the scoop lights of for super jackpot.
'If Super JP is made, then phase 2 starts. 
'One random shot is lit at a time (flashing). After it is hit, its says lit (solid).
'Once all shots are completed, then the Super Duper JP is lit at the scoop.
'If the Super Duper JP is hit, then flippers die to drain other balls. Mode ends in full success!



Sub CreateComboCommandWizardMode
    Dim x

    With CreateGlfMode("combo_command_wizard", 3000)
        .StartEvents = Array("run_combo_command_wizard")
        .StopEvents = Array("mode_base_stopping","completed_combo_command_wizard")

        With .EventPlayer()
            .Add "mode_combo_command_wizard_started", Array("meteor_wave_music_stop","ccwiz_music_start","ccwiz_sjp1_show2")
            .Add "mode_combo_command_wizard_stopping", Array("ccwiz_music_stop") 
            'release the scoop ball to start the wizard mode
            .Add "timer_combo_command_message_complete", Array("release_scoop_hold","start_moon_multiball","delayed_release_moon_ball")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'Phase 1 shots
            .Add MainShotNames(0)&"_hit{current_player.shot_combo_command1 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(1)&"_hit{current_player.shot_combo_command2 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(2)&"_hit{current_player.shot_combo_command3 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(3)&"_hit{current_player.shot_combo_command4 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(4)&"_hit{current_player.shot_combo_command5 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(5)&"_hit{current_player.shot_combo_command6 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(6)&"_hit{current_player.shot_combo_command7 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            .Add MainShotNames(7)&"_hit{current_player.shot_combo_command8 == 1 and current_player.wizard_combo_command_phase == 1}", Array("play_sfx_jackpot","ccwiz_shot_phase1_show","ccwiz_flash_phase1_show","score_200000")
            'Phase 1 shots completed, so activate the scoop for Super JPs
            .Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 1}", Array("activate_ccwiz_sjp","run_ccwiz_scoop_show")
            'Phase 1 Super JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.wizard_combo_command_phase == 1 and current_player.ccwiz_super_jp == 1}", Array("ccwiz_sjp_achieved","stop_ccwiz_scoop_show","restart_combos_command_shots")   'Start phase 2
            .Add "ccwiz_sjp_achieved", Array("add_ccwiz_phase2_shot","play_sfx_super_jackpot","ccwiz_sjp1_show1","ccwiz_sjp1_show2","score_1000000")
            'Phase 2 shots
            .Add MainShotNames(0)&"_hit{current_player.shot_combo_command1 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show1","ccwiz_flash_phase2_show1","score_300000")
            .Add MainShotNames(1)&"_hit{current_player.shot_combo_command2 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show8","ccwiz_flash_phase2_show8","score_300000")
            .Add MainShotNames(2)&"_hit{current_player.shot_combo_command3 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show2","ccwiz_flash_phase2_show2","score_300000")
            .Add MainShotNames(3)&"_hit{current_player.shot_combo_command4 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show5","ccwiz_flash_phase2_show5","score_300000")
            .Add MainShotNames(4)&"_hit{current_player.shot_combo_command5 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show4","ccwiz_flash_phase2_show4","score_300000")
            .Add MainShotNames(5)&"_hit{current_player.shot_combo_command6 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show6","ccwiz_flash_phase2_show6","score_300000")
            .Add MainShotNames(6)&"_hit{current_player.shot_combo_command7 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show3","ccwiz_flash_phase2_show3","score_300000")
            .Add MainShotNames(7)&"_hit{current_player.shot_combo_command8 == 1 and current_player.wizard_combo_command_phase == 2}", Array("ccwiz_add_ball","add_ccwiz_phase2_shot","play_sfx_jackpot","ccwiz_shot_phase2_show7","ccwiz_flash_phase2_show7","score_300000")
            'Phase 2 shots completed, so activate the scoop for Super JPs
            .Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 2}", Array("activate_ccwiz_sdjp","run_ccwiz_scoop_show","enable_scoop_hold")
            'Phase 2 Super Duper JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.ccwiz_super_jp == 2}", Array("ccwiz_sdjp_achieved","stop_ccwiz_scoop_show")  'Combo Command wizard mode completed
            .Add "ccwiz_sdjp_achieved", Array("play_sfx_super_jackpot","ccwiz_sjp2_show1","ccwiz_sjp2_show2","ccwiz_music_stop","score_2000000") 
            .Add "ccwiz_finalize", Array("release_scoop_hold","completed_combo_command_wizard")
            'Handle bumper lights
            .Add "timer_ccwiz_bumper_lights_tick{current_player.wizard_combo_command_phase == 1}", Array("ccwiz_bumpers_show1")
            .Add "timer_ccwiz_bumper_lights_tick{current_player.wizard_combo_command_phase == 2}", Array("ccwiz_bumpers_show2")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")
            .Add "ball_search_started", Array("release_moon_ball")
        End With


        With .RandomEventPlayer()
            With .EventName("add_ccwiz_phase2_shot")
                .Add "combo_command1_ready{current_player.shot_combo_command1 == 0}", 1
                .Add "combo_command2_ready{current_player.shot_combo_command2 == 0}", 1
                .Add "combo_command3_ready{current_player.shot_combo_command3 == 0}", 1
                .Add "combo_command4_ready{current_player.shot_combo_command4 == 0}", 1
                .Add "combo_command5_ready{current_player.shot_combo_command5 == 0}", 1
                .Add "combo_command6_ready{current_player.shot_combo_command6 == 0}", 1
                .Add "combo_command7_ready{current_player.shot_combo_command7 == 0}", 1
                .Add "combo_command8_ready{current_player.shot_combo_command8 == 0}", 1
                .ForceAll = True
                .ForceDifferent = False
            End With
            With .EventName("ccwiz_bumpers_show2")
                .Add "ccwiz_bumper1_show2", 1
                .Add "ccwiz_bumper2_show2", 1
                .Add "ccwiz_bumper3_show2", 1
                ' .Add "ccwiz_bumper4_show2", 1
                .ForceAll = True
                .ForceDifferent = False
            End With
        End With


        With .ExtraBalls("ccwiz_eb")
            .AwardEvents = Array("mode_combo_command_wizard_started")
            .MaxPerGame = 3
        End With

        With .Shots("ccwiz_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents()
                .Events = Array("mode_combo_command_wizard_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_ccwiz_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("multiball_ccwiz_shoot_again_ended")
        End With
                


        With .Multiballs("ccwiz")
            .StartEvents = Array("timer_combo_command_message_complete")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = 20000
            .HurryUp = 3000
            .GracePeriod = 2000
        End With

        With .Multiballs("ccwiz_2")
            .StartEvents = Array("ccwiz_add_ball")
            .BallCount = 2
            .BallCountType = "total"
            .ShootAgain = 0
            .HurryUp = 0
            .GracePeriod = 0
        End With



        'Define combo command wizard shots

        For x = 1 to 8
            With .Shots("combo_command"&x)
                .Profile = "combo_command"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                    .Add "color", CombosColor
                End With
                With .ControlEvents()
                    .Events = Array("combo_command"&x&"_ready","mode_combo_command_wizard_started")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array(MainShotNames(x-1)&"_hit{current_player.shot_combo_command"&x&"==1}")
                    .State = 2
                End With
                '.RestartEvents = Array("restart_combos_command_shots")
            End With
        Next


        With .ShotProfiles("combo_command")
            With .States("unlit")
                .Show = "off"
                .Key = "key_ccwiz_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_ccwiz_ready"
                .Speed = 10
                With .Tokens()
                    .Add "color", CombosColor
                End With
            End With
            With .States("on")
                .Show = "led_color"
                .Key = "key_ccwiz_done"
                With .Tokens()
                    .Add "color", CombosColor
                End With
            End With
        End With

        With .ShotGroups("ccwiz_shots")
            .Shots = Array("combo_command1", "combo_command2", "combo_command3", "combo_command4", "combo_command5", "combo_command6", "combo_command7", "combo_command8")
            .RestartEvents = Array("restart_combos_command_shots")
        End With



        With .Timers("combo_command_message")
            .TickInterval = CCWizMessageInterval
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "mode_combo_command_wizard_started"
                .Action = "restart"
            End With
        End With

        With .Timers("ccwiz_bumper_lights")
            .TickInterval = 711  'one beat of the song
            .StartValue = 0
            .EndValue = 100000
            With .ControlEvents()
                .EventName = "mode_combo_command_wizard_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_combo_command_wizard_started")
				With .Variable("wizard_combo_command_phase")
                    .Action = "set"
					.Int = 1
				End With
                With .Variable("wizard_mode_running")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("mode_combo_command_wizard_stopping")
                With .Variable("wizard_mode_running")
                    .Action = "set"
					.Int = 0
				End With
			End With  
            With .EventName("activate_ccwiz_sjp")
				With .Variable("ccwiz_super_jp")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("ccwiz_sjp_achieved")
				With .Variable("wizard_combo_command_phase")
                    .Action = "set"
					.Int = 2
				End With
			End With 
            With .EventName("activate_ccwiz_sdjp")
				With .Variable("ccwiz_super_jp")
                    .Action = "set"
					.Int = 2
				End With
			End With   

		End With


        With .DOFPlayer()
            With .EventName("ccwiz_shot_phase1_show")
                .Action = "DOF_PULSE"
                .DOFEvent = 120
            End With
            With .EventName("ccwiz_shot_phase2_show1")
                .Action = "DOF_PULSE"
                .DOFEvent = 121
            End With
            With .EventName("ccwiz_shot_phase2_show2")
                .Action = "DOF_PULSE"
                .DOFEvent = 122
            End With
            With .EventName("ccwiz_shot_phase2_show3")
                .Action = "DOF_PULSE"
                .DOFEvent = 123
            End With
            With .EventName("ccwiz_shot_phase2_show4")
                .Action = "DOF_PULSE"
                .DOFEvent = 124
            End With
            With .EventName("ccwiz_shot_phase2_show5")
                .Action = "DOF_PULSE"
                .DOFEvent = 125
            End With
            With .EventName("ccwiz_shot_phase2_show6")
                .Action = "DOF_PULSE"
                .DOFEvent = 126
            End With
            With .EventName("ccwiz_shot_phase2_show7")
                .Action = "DOF_PULSE"
                .DOFEvent = 127
            End With
            With .EventName("ccwiz_shot_phase2_show8")
                .Action = "DOF_PULSE"
                .DOFEvent = 128
            End With

            With .EventName("ccwiz_sjp1_show1")
                .Action = "DOF_PULSE"
                .DOFEvent = 150
            End With
            With .EventName("ccwiz_sjp2_show1")
                .Action = "DOF_PULSE"
                .DOFEvent = 150
            End With
        End With


        With .ShowPlayer()
            'bumpers
            For x = 1 to 4
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 0
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next
            With .EventName("ccwiz_bumpers_show1")
                .Key = "key_bumpers_show1"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", "555555"
                End With
            End With
            With .EventName("ccwiz_bumper1_show2")
                .Key = "key_bumper1_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "LB1"
                    .Add "color", "555555"
                End With
            End With
            With .EventName("ccwiz_bumper2_show2")
                .Key = "key_bumper2_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "LB2"
                    .Add "color", "555555"
                End With
            End With
            With .EventName("ccwiz_bumper3_show2")
                .Key = "key_bumper3_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "LB3"
                    .Add "color", "555555"
                End With
            End With
            ' With .EventName("ccwiz_bumper4_show2")
            '     .Key = "key_bumper4_show2"
            '     .Show = "flash_color_fadeout" 
            '     .Speed = 10
            '     .Loops = 0
            '     With .Tokens()
            '         .Add "lights", "LB4"
            '         .Add "color", "555555"
            '     End With
            ' End With


            'Phase 1 light shows
            With .EventName("ccwiz_shot_phase1_show")
                .Key = "key_ccwiz_shot_phase1_show"
                .Show = "insert_swap2" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase1_show")   
                .Key = "key_ccwiz_flash_phase1_show"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", CombosColor
                End With
            End With


            'Phase 2 light shows
            With .EventName("ccwiz_shot_phase2_show1")
                .Key = "key_ccwiz_shot_phase2_show1"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", MeteorWaveColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show1")   
                .Key = "key_ccwiz_flash_phase2_show1"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", MeteorWaveColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show2")
                .Key = "key_ccwiz_shot_phase2_show2"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", TrainingColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show2")   
                .Key = "key_ccwiz_flash_phase2_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", TrainingColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show3")
                .Key = "key_ccwiz_shot_phase2_show3"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", MoonColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show3")   
                .Key = "key_ccwiz_flash_phase2_show3"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", MoonColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show4")
                .Key = "key_ccwiz_shot_phase2_show4"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", HealthColor1
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show4")   
                .Key = "key_ccwiz_flash_phase2_show4"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", HealthColor1
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show5")
                .Key = "key_ccwiz_shot_phase2_show5"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", ProtonColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show5")   
                .Key = "key_ccwiz_flash_phase2_show5"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", ProtonColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show6")
                .Key = "key_ccwiz_shot_phase2_show6"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", ShieldsColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show6")   
                .Key = "key_ccwiz_flash_phase2_show6"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", ShieldsColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show7")
                .Key = "key_ccwiz_shot_phase2_show7"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", ShipSaveColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show7")   
                .Key = "key_ccwiz_flash_phase2_show7"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", ShipSaveColor
                End With
            End With

            With .EventName("ccwiz_shot_phase2_show8")
                .Key = "key_ccwiz_shot_phase2_show8"
                .Show = "insert_swap3" 
                .Speed = 1.5
                .Loops = 2
                .Priority = 1000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", CombosColor
                    .Add "color3", ClusterBombColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("ccwiz_flash_phase2_show8")   
                .Key = "key_ccwiz_flash_phase2_show8"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 0
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", ClusterBombColor
                End With
            End With

            'Super jackpot 1 shows
            With .EventName("ccwiz_sjp1_show1")
                .Key = "key_ccwiz_sjp1_show1"
                .Show = "insert_gi_spin_center"
                .Speed = 2
                .Loops = 3
                .Priority = 1000
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", CombosColor
                End With
            End With
            With .EventName("ccwiz_sjp1_show2")
                .Key = "key_ccwiz_sjp1_show2"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", CombosColor
                End With
            End With

            'Super jackpot 2 shows
            With .EventName("ccwiz_sjp2_show1")
                .Key = "key_ccwiz_sjp2_show1"
                .Show = "insert_gi_spin_center"
                .Speed = 2
                .Loops = 3
                .Priority = 1000
                .EventsWhenCompleted = Array("ccwiz_finalize")
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", MeteorHotColor
                End With
            End With
            With .EventName("ccwiz_sjp2_show2")
                .Key = "key_ccwiz_sjp2_show2"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", MeteorWaveColor
                End With
            End With


        End With       


        With .SegmentDisplayPlayer()
            With .EventName("mode_combo_command_wizard_started")
                With .Display("player1")
                    .Text = " COMBO "
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = "COMMAND"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = " WIZARD "
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = "  MODE  "
                    .Expire = CCWizMessageInterval
                End With
            End With

            With .EventName("timer_combo_command_message_tick{device.timers.combo_command_message.ticks == 1}")
                With .Display("player1")
                    .Text = ""
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = "   EB   "
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = "  ADDED "
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = ""
                    .Expire = CCWizMessageInterval
                End With
            End With

            With .EventName("timer_combo_command_message_tick{device.timers.combo_command_message.ticks == 2}")
                With .Display("player1")
                    .Text = ""
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = "HIT ALL"
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = "  SHOTS "
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = ""
                    .Expire = CCWizMessageInterval
                End With
            End With

        End With


    End With

End Sub