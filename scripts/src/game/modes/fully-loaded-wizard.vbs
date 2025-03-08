

'Fully Loaded Wizard Mode.

'EB is added. All fully loaded shot lights are lit flashing. Short ball saver is started (10 sec).
'5 ball multiball starts. Mode lasts as long as ball lasts, or until the super jacpot is achieved
'Shots: standup targets are for proton roungs, left ramp is for cluster bombs, right ramp is for moon missiles.

'Goal of phase 1 is to use up all the rounds.
'Hitting standups will fire proton, hitting ramps will fire bombs or missiles.
'Each shot is like a jackpot. If all are completed, the scoop lights of for super jackpot.
'If Super JP is made, then phase 2 starts. 

'Goal of phase 2 is to reload all the rounds.
'One random shot is lit at a time (flashing). After it is hit, its says lit (solid) and reloads respective round.
'Once all shots are completed, then the Super Duper JP is lit at the scoop.
'If the Super Duper JP is hit, then flippers die to drain other balls. Mode ends in full success!


'DEBUG
Sub FLW() 
    DispatchPinEvent "complete_full_protons", NULL
    DispatchPinEvent "complete_cluster_bombs", NULL
    DispatchPinEvent "complete_moon_missiles", NULL
End Sub


Sub CreateFullyLoadedWizardMode
    Dim x

    With CreateGlfMode("fully_loaded_wizard", 2000)
        .StartEvents = Array("run_fully_loaded_wizard")
        .StopEvents = Array("mode_base_stopping","completed_fully_loaded_wizard")

        With .EventPlayer()
            .Add "mode_fully_loaded_wizard_started", Array("meteor_wave_music_stop","flwiz_music_start","flwiz_sjp1_show2")
            .Add "mode_fully_loaded_wizard_stopping", Array("flwiz_music_stop")   
            'release the scoop ball to start the wizard mode
            .Add "timer_fully_loaded_message_complete", Array("release_scoop_hold","start_moon_multiball","delayed_release_moon_ball")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'Phase 1 shots
            .Add "s_TargetMystery1_active{current_player.shot_flwiz_proton1==1}", Array("flwiz_proton1_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add "s_TargetMystery2_active{current_player.shot_flwiz_proton2==1}", Array("flwiz_proton2_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add "s_TargetMystery3_active{current_player.shot_flwiz_proton3==1}", Array("flwiz_proton3_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add "s_TargetMystery4_active{current_player.shot_flwiz_proton4==1}", Array("flwiz_proton4_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add "s_TargetMystery5_active{current_player.shot_flwiz_proton5==1}", Array("flwiz_proton5_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add         "shield_bank_hit{current_player.shot_flwiz_proton6==1}", Array("flwiz_proton6_hit","proton_fired","proton_fired_flash_show","play_sfx_jackpot")
            .Add "left_ramp_hit{current_player.shot_flwiz_cluster == 1 && current_player.wizard_fully_loaded_phase == 1}", Array("flwiz_phase1_cluster_hit","cluster_bomb_fired","cluster_bomb_flash","play_sfx_jackpot","play_sfx_cluster_fired")
            .Add "right_ramp_hit{current_player.shot_flwiz_moon == 1 && current_player.wizard_fully_loaded_phase == 1}", Array("flwiz_phase1_moon_hit","moon_missile_fired","play_sfx_jackpot")
            'Phase 1 shots completed, so activate the scoop for Super JPs
            .Add "flwiz_shots_on_complete{current_player.wizard_fully_loaded_phase == 1}", Array("activate_flwiz_sjp","run_flwiz_scoop_show") 
            'Phase 1 Super JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.wizard_fully_loaded_phase == 1 && current_player.flwiz_super_jp == 1}", Array("flwiz_sjp_achieved","stop_flwiz_scoop_show","restart_fully_loaded_shots")   'Start phase 2
            .Add "flwiz_sjp_achieved", Array("add_flwiz_phase2_shot","play_sfx_super_jackpot","flwiz_sjp1_show1","flwiz_sjp1_show2")
            'Phase 2 shots
            .Add "s_TargetMystery1_active{current_player.shot_flwiz_proton1 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton1_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add "s_TargetMystery2_active{current_player.shot_flwiz_proton2 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton2_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add "s_TargetMystery3_active{current_player.shot_flwiz_proton3 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton3_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add "s_TargetMystery4_active{current_player.shot_flwiz_proton4 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton4_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add "s_TargetMystery5_active{current_player.shot_flwiz_proton5 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton5_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add         "shield_bank_hit{current_player.shot_flwiz_proton6 == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_proton6_hit","play_flwiz_proton_show","play_sfx_jackpot")
            .Add "left_ramp_hit{current_player.shot_flwiz_cluster == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_cluster_hit","play_flwiz_cluster_show","play_sfx_jackpot","play_sfx_cluster_fired")
            .Add "right_ramp_hit{current_player.shot_flwiz_moon == 1 && current_player.wizard_fully_loaded_phase == 2}", Array("add_flwiz_phase2_shot","flwiz_phase2_moon_hit","play_flwiz_moon_show","play_sfx_jackpot","play_sfx_launch")
            'Phase 2 shots completed, so activate the scoop for Super JPs
            .Add "flwiz_shots_on_complete{current_player.wizard_fully_loaded_phase == 2}", Array("activate_flwiz_sdjp","run_flwiz_scoop_show","enable_scoop_hold") 
            'Phase 2 Super Duper JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.flwiz_super_jp == 2}", Array("flwiz_sdjp_achieved","stop_flwiz_scoop_show")  'Fully Loaded wizard mode completed
            .Add "flwiz_sdjp_achieved", Array("play_sfx_super_jackpot","flwiz_sjp2_show1","flwiz_sjp2_show2","flwiz_music_stop")  'FIXME  for now just end the mode, but we should have a show before mode ends
            .Add "flwiz_finalize", Array("release_scoop_hold","completed_fully_loaded_wizard")
            'Handle bumper lights
            .Add "timer_flwiz_bumper_lights_tick{current_player.wizard_fully_loaded_phase == 1}", Array("flwiz_bumpers_show1")
            .Add "timer_flwiz_bumper_lights_tick{current_player.wizard_fully_loaded_phase == 2}", Array("flwiz_bumpers_show2")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")
            'Handle shield shot bank
            .Add "s_TargetShield1_active", Array("shield_bank_hit")
            .Add "s_TargetShield2_active", Array("shield_bank_hit")
            .Add "s_TargetShield3_active", Array("shield_bank_hit")
            .Add "s_TargetShield4_active", Array("shield_bank_hit")              
        End With


        With .RandomEventPlayer()
            With .EventName("add_flwiz_phase2_shot")
                .Add "flwiz_proton1_ready{current_player.shot_flwiz_proton1 == 0}", 1
                .Add "flwiz_proton2_ready{current_player.shot_flwiz_proton2 == 0}", 1
                .Add "flwiz_proton3_ready{current_player.shot_flwiz_proton3 == 0}", 1
                .Add "flwiz_proton4_ready{current_player.shot_flwiz_proton4 == 0}", 1
                .Add "flwiz_proton5_ready{current_player.shot_flwiz_proton5 == 0}", 1
                .Add "flwiz_proton6_ready{current_player.shot_flwiz_proton6 == 0}", 1
                .Add "flwiz_cluster_ready{current_player.shot_flwiz_cluster == 0}", 1
                .Add "flwiz_moon_ready{current_player.shot_flwiz_moon == 0}", 1
                .ForceAll = True
                .ForceDifferent = False
            End With
            With .EventName("proton_fired")
                .Add "play_sfx_LPF1", 1
                .Add "play_sfx_LPF2", 1
                .Add "play_sfx_LPF3", 1
                .Add "play_sfx_LPF4", 1
                .Add "play_sfx_LPF5", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("flwiz_bumpers_show2")
                .Add "flwiz_bumper1_show2p", 1
                .Add "flwiz_bumper2_show2p", 1
                .Add "flwiz_bumper3_show2p", 1
                .Add "flwiz_bumper4_show2p", 1
                .Add "flwiz_bumper1_show2c", 1
                .Add "flwiz_bumper2_show2c", 1
                .Add "flwiz_bumper3_show2c", 1
                .Add "flwiz_bumper4_show2c", 1
                .Add "flwiz_bumper1_show2m", 1
                .Add "flwiz_bumper2_show2m", 1
                .Add "flwiz_bumper3_show2m", 1
                .Add "flwiz_bumper4_show2m", 1
                .ForceAll = True
                .ForceDifferent = False
            End With
        End With


        With .ExtraBalls("flwiz_eb")
            .AwardEvents = Array("mode_fully_loaded_wizard_started")
            .MaxPerGame = 5
        End With

        With .Shots("flwiz_shoot_again")
            .Profile = "extraball"
            With .ControlEvents()
                .Events = Array("mode_fully_loaded_wizard_started")
                .State = 1
            End With
            .ResetEvents = Array("ball_ended")
        End With


        With .Multiballs("flwiz")
            .StartEvents = Array("timer_fully_loaded_message_complete")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = 20000
            .HurryUp = 3000
            .GracePeriod = 2000
        End With


        'Define fully loaded wizard shots

        '   Proton shots
        For x = 1 to 5
            With .Shots("flwiz_proton"&x)
                .Profile = "fully_loaded_profile"
                With .Tokens()
                    .Add "lights", "LM"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("flwiz_proton"&x&"_ready","mode_fully_loaded_wizard_started")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("flwiz_proton"&x&"_hit")
                    .State = 2
                End With
            End With
        Next
        With .Shots("flwiz_proton6")
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "tFLWp6"
                .Add "color", ProtonColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_proton6_ready","mode_fully_loaded_wizard_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("flwiz_proton6_hit")
                .State = 2
            End With
        End With

        For x = 1 to 5
            With .Shots("flwiz_proton_round"&x)
                .Profile = "fully_loaded_profile"
                With .Tokens()
                    .Add "lights", "LPR"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("flwiz_proton"&x&"_hit")
                    .State = 0
                End With
                With .ControlEvents()
                    .Events = Array("mode_fully_loaded_wizard_started","flwiz_phase2_proton"&x&"_hit")
                    .State = 2
                End With
            End With
        Next
        With .Shots("flwiz_proton_round"&x)
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "LPR6"
                .Add "color", ProtonColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_proton6_hit")
                .State = 0
            End With
            With .ControlEvents()
                .Events = Array("mode_fully_loaded_wizard_started","flwiz_phase2_proton6_hit")
                .State = 2
            End With
        End With

        '   Moon shots
        With .Shots("flwiz_moon")
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "LS5"
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_moon_ready","mode_fully_loaded_wizard_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("right_ramp_hit")
                .State = 2
            End With
        End With
        With .Shots("flwiz_moon_rounds")
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "tMoonR"
                .Add "color", MoonColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_phase1_moon_hit")
                .State = 0
            End With
            With .ControlEvents()
                .Events = Array("mode_fully_loaded_wizard_started","flwiz_phase2_moon_hit")
                .State = 2
            End With
        End With

        '   Cluster Bomb shots
        With .Shots("flwiz_cluster")
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "LS3"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_cluster_ready","mode_fully_loaded_wizard_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("left_ramp_hit")
                .State = 2
            End With
        End With
        With .Shots("flwiz_cluster_rounds")
            .Profile = "fully_loaded_profile"
            With .Tokens()
                .Add "lights", "tClusterR"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("flwiz_phase1_cluster_hit")
                .State = 0
            End With
            With .ControlEvents()
                .Events = Array("mode_fully_loaded_wizard_started","flwiz_phase2_cluster_hit")
                .State = 2
            End With
        End With




        ' Shot profiles
        With .ShotProfiles("fully_loaded_profile")
            With .States("unlit")
                .Show = "off"
                .Key = "key_flwizp_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_flwizp_ready"
                .Speed = 10
            End With
            With .States("on")
                .Show = "led_color"
                .Key = "key_flwizp_done"
            End With
        End With




        ' Shot groups
        With .ShotGroups("flwiz_shots")
            .Shots = Array("flwiz_proton1", "flwiz_proton2", "flwiz_proton3", "flwiz_proton4", "flwiz_proton5", "flwiz_proton6","flwiz_cluster","flwiz_moon")
            .RestartEvents = Array("restart_fully_loaded_shots")
        End With



        With .Timers("fully_loaded_message")
            .TickInterval = flwizMessageInterval
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "mode_fully_loaded_wizard_started"
                .Action = "restart"
            End With
        End With

        With .Timers("flwiz_bumper_lights")
            .TickInterval = 711  'one beat of the song
            .StartValue = 0
            .EndValue = 100000
            With .ControlEvents()
                .EventName = "mode_fully_loaded_wizard_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_fully_loaded_wizard_started")
				With .Variable("wizard_fully_loaded_phase")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("activate_flwiz_sjp")
				With .Variable("flwiz_super_jp")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("flwiz_sjp_achieved")
				With .Variable("wizard_fully_loaded_phase")
                    .Action = "set"
					.Int = 2
				End With
			End With 
            With .EventName("activate_flwiz_sdjp")
				With .Variable("flwiz_super_jp")
                    .Action = "set"
					.Int = 2
				End With
			End With   

		End With
        


        With .SegmentDisplayPlayer()
            With .EventName("mode_fully_loaded_wizard_started")
                With .Display("player1")
                    .Text = """ FULLY """
                    .Expire = flwizMessageInterval
                End With
                With .Display("player2")
                    .Text = """ LOADED """
                    .Expire = flwizMessageInterval
                End With
                With .Display("player3")
                    .Text = """ WIZARD """
                    .Expire = flwizMessageInterval
                End With
                With .Display("player4")
                    .Text = """  MODE  """
                    .Expire = flwizMessageInterval
                End With
            End With

            With .EventName("timer_fully_loaded_message_tick{devices.timers.fully_loaded_message.ticks == 1}")
                With .Display("player1")
                    .Text = """"""
                    .Expire = flwizMessageInterval
                End With
                With .Display("player2")
                    .Text = """   EB   """
                    .Flashing = "all"
                    .Expire = flwizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  ADDED """
                    .Flashing = "all"
                    .Expire = flwizMessageInterval
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = flwizMessageInterval
                End With
            End With

            With .EventName("timer_fully_loaded_message_tick{devices.timers.fully_loaded_message.ticks == 2}")
                With .Display("player1")
                    .Text = """"""
                    .Expire = flwizMessageInterval
                End With
                With .Display("player2")
                    .Text = """HIT ALL"""
                    .Flashing = "all"
                    .Expire = flwizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  SHOTS """
                    .Flashing = "all"
                    .Expire = flwizMessageInterval
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = flwizMessageInterval
                End With
            End With

        End With



        With .ShowPlayer()
            'bumpers
            For x = 1 to 4
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next
            With .EventName("flwiz_bumpers_show1")
                .Key = "key_bumpers_show1"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", "555555"
                End With
            End With

            With .EventName("flwiz_bumper1_show2p")
                .Key = "key_bumper1_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB1"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("flwiz_bumper2_show2p")
                .Key = "key_bumper2_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB2"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("flwiz_bumper3_show2p")
                .Key = "key_bumper3_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB3"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("flwiz_bumper4_show2p")
                .Key = "key_bumper4_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB4"
                    .Add "color", ProtonColor
                End With
            End With

            With .EventName("flwiz_bumper1_show2c")
                .Key = "key_bumper1_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB1"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("flwiz_bumper2_show2c")
                .Key = "key_bumper2_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB2"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("flwiz_bumper3_show2c")
                .Key = "key_bumper3_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB3"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("flwiz_bumper4_show2c")
                .Key = "key_bumper4_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB4"
                    .Add "color", ClusterBombColor
                End With
            End With

            With .EventName("flwiz_bumper1_show2m")
                .Key = "key_bumper1_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB1"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("flwiz_bumper2_show2m")
                .Key = "key_bumper2_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB2"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("flwiz_bumper3_show2m")
                .Key = "key_bumper3_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB3"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("flwiz_bumper4_show2m")
                .Key = "key_bumper4_show2"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LB4"
                    .Add "color", MoonColor
                End With
            End With


            'Super jackpot 1 shows
            With .EventName("flwiz_sjp1_show1")
                .Key = "key_flwiz_sjp1_show1"
                .Show = "insert_gi_spin_center"
                .Speed = 2
                .Loops = 4
                .Priority = 1000
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("flwiz_sjp1_show2")
                .Key = "key_flwiz_sjp1_show2"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", MoonColor
                End With
            End With

            'Super jackpot 2 shows
            With .EventName("flwiz_sjp2_show1")
                .Key = "key_flwiz_sjp2_show1"
                .Show = "insert_gi_spin_center"
                .Speed = 2
                .Loops = 4
                .Priority = 1000
                .EventsWhenCompleted = Array("flwiz_finalize")
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", MeteorHotColor
                End With
            End With
            With .EventName("flwiz_sjp2_show2")
                .Key = "key_flwiz_sjp2_show2"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tFlasher"
                    .Add "color", MeteorWaveColor
                End With
            End With

            'Protons fired
            With .EventName("proton_fired")
                .Key = "key_flwiz_proton_fired"
                .Priority = 10
                .Show = "flash_color"
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tBlast"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("proton_fired_flash_show")
                .Key = "key_flwiz_proton_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", ProtonColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("play_flwiz_proton_show")
                .Key = "key_flwiz_proton_show"
                .Show = "flwiz_proton_show"
                .Speed = 1
                .Loops = 1
                .Priority = 10000
            End With

            'Cluster bombs
            With .EventName("cluster_bomb_fired")
                .Key = "key_flwiz_cluster_explodes"
                .Priority = 5
                .Show = "cluster_explodes"  'the cluster color is included in the show
                .Speed = 1
                .Loops = 1
            End With
            With .EventName("cluster_bomb_flash")
                .Key = "key_flwiz_cluster_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", ClusterBombColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("play_flwiz_cluster_show")
                .Key = "key_flwiz_cluster_show"
                .Show = "flwiz_cluster_show"
                .Speed = 1
                .Loops = 1
                .Priority = 10000
            End With

            'Moon
            With .EventName("moon_missile_fired")
                .Key = "key_flwiz_moon_launch"
                .Show = "moon_launch"
                .Priority = 50
                .Speed = 1
                .Loops = 1
            End With
            With .EventName("play_flwiz_moon_show")
                .Key = "key_flwiz_moon_show"
                .Show = "flwiz_moon_show"
                .Speed = 1
                .Loops = 1
                .Priority = 10000
            End With

        End With


        With .SoundPlayer()
            With .EventName("play_sfx_cluster_fired")
                .Key = "key_flwiz_sfx_cluster_fired"
                .Sound = "sfx_cluster_fired"
            End With
            With .EventName("play_sfx_launch")
                .Key = "key_flwiz_sfx_launch"
                .Sound = "sfx_launch"
            End With
        End With


    End With

End Sub