


' Base Mode.
'
' Handles the following:
'   - starting/stopping wizard modes
'   - controls starting of other main modes
'   - main sequence shots
'   - delayed moon ball release
'   - scoop holds
'   - player score segment displays
'   - wave shot lights across all waves
'   - some sound effects and wave music
'   - some light shows
'   - some minor scoring



Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 200)
        .StartEvents = Array(GLF_BALL_STARTED)
        .StopEvents = Array(GLF_BALL_ENDED,"mode_bonus_started","tilt")

        With .EventPlayer()
            'DEBUG
            '.Add "s_left_staged_flipper_key_active", Array("meteor_wave1_done","meteor_wave2_done","meteor_wave3_done","meteor_wave4_done","meteor_wave5_done","meteor_wave6_done","meteor_wave7_done","meteor_wave8_done")  'DEBUG
            .Add "debug_increase_wave{current_player.shot_meteor_wave1 == 0}", Array("meteor_wave1_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_done")
            .Add "debug_increase_wave{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_done")

            'new ball
            .Add "mode_base_started", Array("stop_attract_mode","knockdown_meteors","check_base_restart","run_asteroid_motor")
            .Add "mode_base_started{current_player.wizard_final_hit_count > 0}", Array("new_ball_started")  'start a new ball if not at end of the game.
            .Add "s_Plunger2_active{current_player.wizard_final_hit_count > 0 && current_player.ball_just_started==1}", Array("new_ball_active")
            
            'restarting waves
            .Add "stop_training", Array("check_base_restart","training_music_alt_stop")
            .Add "check_base_restart{current_player.shot_meteor_wave1 == 0}", Array("meteor_wave0_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_restart")

            .Add "check_base_restart{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_restart")
            .Add "check_base_restart{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_restart")

            'wizard modes
            '   handle case when starting new ball
            .Add "mode_base_started{current_player.shot_final_wave_wizard == 2 && current_player.victory == 0}", Array("run_final_wave_wizard","wizard_mode_started")
            .Add "mode_base_started{current_player.shot_final_wave_wizard == 1 && current_player.victory == 0}", Array("activate_final_wave_wizard")
            .Add "mode_base_started{current_player.shot_combo_command_wizard == 1 && current_player.victory == 0}", Array("activate_combo_command_wizard")
            .Add "mode_base_started{current_player.shot_fully_loaded_wizard == 1 && current_player.victory == 0}", Array("activate_fully_loaded_wizard")
            'restart victory lap if needed (player had more balls after beating the game)
            .Add "mode_base_started{current_player.victory == 1}", Array("restart_victory")
            '   check if fully loaded is ready
            .Add "check_fully_loaded{current_player.shot_fully_loaded_wizard == 0 && current_player.shot_cluster_bomb2 == 1 && current_player.shot_proton_round6 == 1 &&  current_player.shot_moon_missile2 == 1}", Array("prime_fully_loaded_wizard")
            .Add "prime_fully_loaded_wizard{current_player.meteor_wave_running == 0}", Array("activate_fully_loaded_wizard")
            '   handle case when starting and finishing a meteor wave
            .Add "start_meteor_wave", Array("disable_scoop_hold","stop_ccwiz_scoop_show","stop_flwiz_scoop_show")
            .Add "stop_meteor_wave{current_player.shot_final_wave_wizard == 1}", Array("activate_final_wave_wizard")
            .Add "stop_meteor_wave{current_player.shot_combo_command_wizard == 1}", Array("activate_combo_command_wizard")
            .Add "stop_meteor_wave{current_player.shot_fully_loaded_wizard == 1}", Array("activate_fully_loaded_wizard")
            '    wizard mode phase 1 qualifed. Ready the scoop
            .Add "activate_final_wave_wizard", Array("wizard_mode_ready","run_fwwiz_scoop_show","run_asteroid_spotlight_show","wizard_mode_started")
            .Add "activate_combo_command_wizard", Array("wizard_mode_ready","run_ccwiz_scoop_show")
            .Add "activate_fully_loaded_wizard", Array("wizard_mode_ready","run_flwiz_scoop_show")
            .Add "wizard_mode_ready", Array("enable_scoop_hold")
            '    handle multiple scoop shows
            .Add "run_fwwiz_scoop_show", Array("stop_flwiz_scoop_show","stop_ccwiz_scoop_show")
            .Add "run_ccwiz_scoop_show", Array("stop_flwiz_scoop_show")
            .Add "run_ccwiz_scoop_show{current_player.shot_final_wave_wizard == 1}", Array("stop_ccwiz_scoop_show")
            .Add "run_flwiz_scoop_show{current_player.shot_combo_command_wizard == 1 or current_player.shot_final_wave_wizard == 1}", Array("stop_flwiz_scoop_show")
            '    run the wizard mode when qualified and ball enters the scoop. If more than one wizard is qualified, final wizard is top priority, then combo command, then fully loaded.
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_final_wave_wizard == 1 && current_player.meteor_wave_running == 0}", Array("run_final_wave_wizard","wizard_mode_started","stop_fwwiz_scoop_show","stop_asteroid_spotlight_show","clear_wizard_mode_ready") 
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_combo_command_wizard == 1 && current_player.shot_final_wave_wizard != 1 && current_player.meteor_wave_running == 0}", Array("run_combo_command_wizard","wizard_mode_started","stop_ccwiz_scoop_show","clear_wizard_mode_ready") 
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_fully_loaded_wizard == 1  && current_player.shot_combo_command_wizard != 1 && current_player.shot_final_wave_wizard != 1 && current_player.meteor_wave_running == 0}", Array("run_fully_loaded_wizard","wizard_mode_started","stop_flwiz_scoop_show","clear_wizard_mode_ready")
            '    clean up wizard mode
            .Add "completed_final_wave_wizard", Array("wizard_mode_ended")
            .Add "completed_combo_command_wizard", Array("wizard_mode_ended","check_base_restart")
            .Add "completed_fully_loaded_wizard", Array("wizard_mode_ended","check_base_restart")
    
            'handle some sound effects and music
            .Add "center_orbit_left_hit", Array("play_sfx_Orb","score_2000")
            .Add "center_orbit_right_hit", Array("play_sfx_Orb","score_2000")
            .Add "left_side_up_hit", Array("play_sfx_Orb","score_2000")
            .Add "s_Bumper1_active", Array("play_sfx_bumper")
            .Add "s_Bumper2_active", Array("play_sfx_bumper")
            .Add "s_Bumper3_active", Array("play_sfx_bumper")
            .Add "s_Bumper4_active", Array("play_sfx_bumper")
            .Add "meteor_wave_music_stop", Array("meteor_wave0_music_stop","meteor_wave1_music_stop","meteor_wave2_music_stop","meteor_wave3_music_stop","meteor_wave4_music_stop","meteor_wave5_music_stop","meteor_wave6_music_stop","meteor_wave7_music_stop","meteor_wave8_music_stop","meteor_wave9_music_stop")

            'handle some switches
            .Add "s_TargetMystery5_active", Array("magnet_activated_flash","magnet_activated_gi")
            .Add "s_TimewarpRamp_active", Array("left_ramp_hit")
            .Add "s_MoonRamp_active", Array("right_ramp_hit")

            'knock'em all down
            .Add "knockdown_meteors", Array("meteor1_knockdown","meteor2_knockdown","meteor3_knockdown","meteor4_knockdown")

            'handle delayed moon ball release
            .Add "balldevice_moon_lock_ball_enter{current_player.shot_final_wave_wizard == 1}", Array("delayed_release_moon_ball")
            .Add "timer_delay_ball_release_complete", Array("release_moon_ball") 

            'handle some shows
            .Add "s_LeftSlingshot_active", Array("play_lsling_base_show","score_1000") 
            .Add "s_RightSlingshot_active", Array("play_rsling_base_show","score_1000") 
            .Add "slings_powerup_added", Array("pu_lsling1_show","pu_lsling2_show","pu_rsling1_show","pu_rsling2_show")
            .Add "balldevice_scoop_ball_exiting", Array("scoop_blast")


            
        End With

            

        With .RandomEventPlayer()
            With .EventName("play_sfx_Orb")
                .Add "play_sfx_Orb1", 1
                .Add "play_sfx_Orb2", 1
                .Add "play_sfx_Orb3", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("play_sfx_bumper")
                .Add "play_sfx_bumper1", 1
                .Add "play_sfx_bumper2", 1
                .Add "play_sfx_bumper3", 1
                .Add "play_sfx_bumper4", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("ball_launch_hit")
                .Add "play_sfx_ball_launch1", 1
                .Add "play_sfx_ball_launch2", 1
                .Add "play_sfx_ball_launch3", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With
    

        With .SegmentDisplayPlayer()
            With .EventName("mode_base_started")
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With
            With .EventName("player_added{kwargs.num==2}")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==3}")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==4}")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
        End With

        With .LightPlayer()
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 200
                End With
            End With
            With .EventName("activate_final_wave_wizard")
                With .Lights("GI")
                    '.Priority = 100
                    .Color = "000000"
                End With
            End With
            With .EventName("turn_off_gi")
                With .Lights("GI")
                    '.Priority = 100
                    .Color = "000000"
                End With
            End With
        End With

        'Wizard mode lights
        With .Shots("combo_command_wizard")
            .Profile = "wizard_ready1"
            With .Tokens()
                .Add "lights", "LCWiz"
                .Add "color", CombosColor
            End With
            With .ControlEvents()
                .Events = Array("activate_combo_command_wizard")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("run_combo_command_wizard")
                .State = 2
            End With
            .RestartEvents = Array(GLF_GAME_START,"run_final_wave_wizard")
        End With

        With .Shots("fully_loaded_wizard")
            .Profile = "wizard_ready1"
            With .Tokens()
                .Add "lights", "LLWiz"
                .Add "color", CombosColor
            End With
            With .ControlEvents()
                .Events = Array("prime_fully_loaded_wizard")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("run_fully_loaded_wizard")
                .State = 2
            End With
            .RestartEvents = Array(GLF_GAME_START,"run_final_wave_wizard")
        End With

        With .Shots("final_wave_wizard")
            .Profile = "wizard_ready1"
            With .Tokens()
                .Add "lights", "LWiz"
                .Add "color", MeteorWaveColor
            End With
            With .ControlEvents()
                .Events = Array("activate_final_wave_wizard")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("run_final_wave_wizard")
                .State = 2
            End With
            .RestartEvents = Array(GLF_GAME_START)
        End With



        'Define meteor wave lights
        For x = 1 to 9
            With .Shots("meteor_wave"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LW"&x
                    .Add "color", MeteorWaveColor
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_running")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_done")
                    .State = 2
                End With
                .RestartEvents = Array(GLF_GAME_START,"meteor_wave"&x&"_restart")
            End With
        Next


        'The main shots sequences
        With .SequenceShots("left_side_up")
            .SwitchSequence = Array("s_LeftBumper1", "s_LeftBumper2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_side_down")
            .SwitchSequence = Array("s_LeftBumper2", "s_LeftBumper1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("inner_orbit")
            .SwitchSequence = Array("s_InnerOrb1", "s_InnerOrb2")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("center_orbit_left")
            .SwitchSequence = Array("s_CenterOrb1", "s_CenterOrb2", "s_CenterOrb3")
            .SequenceTimeout = 600
        End With

        With .SequenceShots("center_orbit_right")
            .SwitchSequence = Array("s_CenterOrb3", "s_CenterOrb2", "s_CenterOrb1")
            .SequenceTimeout = 600
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("ball_launch")
            .EventSequence = Array("s_Plunger1_inactive", "s_Plunger2_inactive")
            .SequenceTimeout = 300
        End With



        With .ShowPlayer()
            For x = 0 to 4
                With .EventName(RolloverSwitches(x)&"_active")
                    .Key = "key_rollover"&x&"_flash"
                    .Show = "flash_color" 
                    .Speed = 20
                    .Loops = 4
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", RolloverLightNames(x)
                        .Add "color", "ffffff"
                    End With
                End With
            Next

            With .EventName("magnet_activated_flash")
                .Key = "key_ts_mag_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 7
                .Priority = 100
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "aaaaaa"
                    .Add "fade", 200
                End With
            End With
            

            With .EventName("balldevice_scoop_ball_exiting")
                .Key = "key_ts_scoop_gi"
                .Show = "flash_color" '_with_fade"
                .Speed = 15
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "gi22" 
                    .Add "color", GIColor3000k
                    '.Add "fade", 300
                End With
            End With

            ' slings
            With .EventName("play_lsling_base_show")
                .Key = "key_lsling_base_show"
                .Show = "lsling_base_show"
                .Speed = 1
                .Loops = 1
                .Priority = 10000
            End With
            With .EventName("play_rsling_base_show")
                .Key = "key_rsling_base_show"
                .Show = "rsling_base_show"
                .Speed = 1
                .Loops = 1
                .Priority = 10000
            End With

            ' Combo command wizard scoop lights
            With .EventName("run_ccwiz_scoop_show")
                .Key = "key_combo_command_scoop"
                .Show = "combo_command_scoop"
                .Speed = 1
                .Priority = 2000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                    .Add "color", CombosColor
                End With
            End With
            With .EventName("stop_ccwiz_scoop_show")
                .Key = "key_combo_command_scoop"
                .Show = "combo_command_scoop"
                .Action= "stop"
                .Priority = 2000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                    .Add "color", CombosColor
                End With
            End With
            With .EventName("scoop_blast")
                .Key = "key_scoop_fire_blast"
                .Show = "insert_gi_slide_diag"
                .Speed = 2.5
                .Loops = 1
                .Priority = 2000
                With .Tokens()
                    .Add "color", MeteorHotColor
                    .Add "intensity", 100
                End With
            End With


            ' Fully loaded wizard scoop lights
            With .EventName("run_flwiz_scoop_show")
                .Key = "key_fully_loaded_scoop"
                .Show = "fully_loaded_scoop"
                .Speed = 1
                .Priority = 1000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                End With
            End With
            With .EventName("stop_flwiz_scoop_show")
                .Key = "key_fully_loaded_scoop"
                .Show = "fully_loaded_scoop"
                .Action= "stop"
                .Priority = 1000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                End With
            End With

            ' Final wave wizard scoop lights
            With .EventName("run_fwwiz_scoop_show")
                .Key = "key_final_wave_scoop"
                .Show = "combo_command_scoop"
                .Speed = 1
                .Priority = 3000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                    .Add "color", MeteorWaveColor
                End With
            End With
            With .EventName("stop_fwwiz_scoop_show")
                .Key = "key_final_wave_scoop"
                .Show = "combo_command_scoop"
                .Action= "stop"
                .Priority = 3000
                With .Tokens()
                    .Add "intensity1", 20
                    .Add "intensity2", 100
                    .Add "color", MeteorWaveColor
                End With
            End With

            With .EventName("run_asteroid_spotlight_show")
                .Key = "key_asteroid_spotlight"
                .Show = "flash_color_with_fade"
                .Speed = 1
                .Priority = 3000
                With .Tokens()
                    .Add "lights", "LSpot1"
                    .Add "color", "ffffff"
                    .Add "fade", 700
                End With
            End With
            With .EventName("stop_asteroid_spotlight_show")
                .Key = "key_asteroid_spotlight"
                .Show = "flash_color_with_fade"
                .Speed = 1
                .Priority = 3000
                .Action= "stop"
                With .Tokens()
                    .Add "lights", "LSpot1"
                    .Add "color", "ffffff"
                    .Add "fade", 700
                End With
            End With

            ' Sling power up show
            With .EventName("pu_lsling1_show")
                .Key = "key_pc_lsling1_show"
                .Show = "flash_color_with_fade" 
                .Speed = 9
                .Loops = 9
                With .Tokens()
                    .Add "lights", "gi04"
                    .Add "color", GIColor3000k
                    .Add "fade", 800
                End With
            End With
            With .EventName("pu_lsling2_show")
                .Key = "key_pc_lsling2_show"
                .Show = "flash_color_with_fade" 
                .Speed = 4
                .Loops = 4
                With .Tokens()
                    .Add "lights", "gi03"
                    .Add "color", GIColor3000k
                    .Add "fade", 800
                End With
            End With
            With .EventName("pu_rsling1_show")
                .Key = "key_pu_rsling1_show"
                .Show = "flash_color_with_fade" 
                .Speed = 9
                .Loops = 9
                With .Tokens()
                    .Add "lights", "gi08"
                    .Add "color", GIColor3000k
                    .Add "fade", 800
                End With
            End With
            With .EventName("pu_rsling2_show")
                .Key = "key_pu_rsling2_show"
                .Show = "flash_color_with_fade" 
                .Speed = 4
                .Loops = 4
                With .Tokens()
                    .Add "lights", "gi07"
                    .Add "color", GIColor3000k
                    .Add "fade", 800
                End With
            End With

            With .EventName("timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 3}")   
                .Key = "key_gi_cracked"
                .Show = "gi_cracked" 
                .Priority = 200
                .Speed = 1.3
                .Loops = 1
            End With

            With .EventName("activate_combo_command_wizard")   
                .Key = "key_combo_wiz_ready"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", CombosColor
                End With
            End With

            With .EventName("activate_fully_loaded_wizard")   
                .Key = "key_loaded_wiz_ready"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", ProtonColor
                End With
            End With

        End With


         With .BallSaves("new_ball")
            .ActiveTime = 6000
            .HurryUpTime = 3000
            .GracePeriod = 2000
            .AutoLaunch = True
            .EnableEvents = Array("new_ball_active")
        End With

        'Scoop ball hold
        With .BallHolds("scoop_hold")
            '.Debug = True
            .BallsToHold = 1
            .HoldDevices = Array("scoop")
            .EnableEvents = Array("enable_scoop_hold") 
            .DisableEvents = Array("disable_scoop_hold") 
            .ReleaseAllEvents = Array("release_scoop_hold")
        End With


        With .Shots("base_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_enabled")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("ball_save_new_ball_grace_period")
        End With
       

        With .VariablePlayer()
		    With .EventName("mode_base_started")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
				End With
                With .Variable("num_waves_completed_this_ball") 
                    .Action = "set"
                    .Int = 0
                End With
			End With
            With .EventName("new_ball_active")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 0
				End With
			End With
            'wizard_mode_is_ready
            With .EventName("wizard_mode_ready")
				With .Variable("wizard_mode_is_ready")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("clear_wizard_mode_ready")
				With .Variable("wizard_mode_is_ready")
                    .Action = "set"
					.Int = 0
				End With
			End With
		End With

        


        With .Timers("delay_ball_release")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "delayed_release_moon_ball"
                .Action = "restart"
            End With
        End With


        With .SoundPlayer()
            'Music pre meteor wave 1
            With .EventName("meteor_wave0_restart")
                .Key = "key_mus_wave0"
                .Sound = "mus_wave0"
            End With
            With .EventName("meteor_wave0_music_stop")
                .Key = "key_mus_wave0"
                .Sound = "mus_wave0"
                .Action = "stop"
            End With
            

            'Music meteor waves
            For x = 1 to 9
                With .EventName("meteor_wave"&x&"_running")
                    .Key = "key_mus_wave"&x
                    .Sound = "mus_wave"&x
                End With
                With .EventName("meteor_wave"&x&"_restart")
                    .Key = "key_mus_wave"&(x-1)
                    .Sound = "mus_wave"&(x-1)
                End With
                With .EventName("meteor_wave"&x&"_music_stop")
                    .Key = "key_mus_wave"&x
                    .Sound = "mus_wave"&x
                    .Action = "stop"
                End With
            Next

            'Training music
            With .EventName("training_music_start")
                .Key = "key_mus_training"
                .Sound = "mus_training"
            End With
            With .EventName("training_music_stop")
                .Key = "key_mus_training"
                .Sound = "mus_training"
                .Action = "stop"
            End With
            With .EventName("training_music_alt_start")
                .Key = "key_mus_training_alt"
                .Sound = "mus_training_alt"
            End With
            With .EventName("training_music_alt_stop")
                .Key = "key_mus_training_alt"
                .Sound = "mus_training_alt"
                .Action = "stop"
            End With

            'Wizard music
            With .EventName("fwwiz_music_start")
                .Key = "key_mus_wizard"
                .Sound = "mus_wizard"
            End With
            With .EventName("fwwiz_music_stop")
                .Key = "key_mus_wizard"
                .Sound = "mus_wizard"
                .Action = "stop"
            End With
            With .EventName("flwiz_music_start")
                .Key = "key_mus_wizard"
                .Sound = "mus_wizard2"
            End With
            With .EventName("flwiz_music_stop")
                .Key = "key_mus_wizard2"
                .Sound = "mus_wizard2"
                .Action = "stop"
            End With
            With .EventName("ccwiz_music_start")
                .Key = "key_mus_wizard2"
                .Sound = "mus_wizard2"
            End With
            With .EventName("ccwiz_music_stop")
                .Key = "key_mus_wizard2"
                .Sound = "mus_wizard2"
                .Action = "stop"
            End With


            'Ball launch
            With .EventName("play_sfx_ball_launch1")
                .Key = "key_sfx_ball_launch1"
                .Sound = "sfx_ball_launch1"
            End With
            With .EventName("play_sfx_ball_launch2")
                .Key = "key_sfx_ball_launch2"
                .Sound = "sfx_ball_launch2"
            End With
            With .EventName("play_sfx_ball_launch3")
                .Key = "key_sfx_ball_launch3"
                .Sound = "sfx_ball_launch3"
            End With


            ' Scoop launch
            With .EventName("balldevice_scoop_ball_exiting")
                .Key = "key_sfx_scoop"
                .Sound = "sfx_scoop"
            End With


            'Slings
            With .EventName("s_LeftSlingshot_active")
                .Key = "key_sfx_left_sling"
                .Sound = "sfx_left_sling"
            End With
            With .EventName("s_RightSlingshot_active")
                .Key = "key_sfx_right_sling"
                .Sound = "sfx_right_sling"
            End With

            'Bumpers
            With .EventName("play_sfx_bumper1")
                .Key = "key_sfx_bumper1"
                .Sound = "sfx_bumper1"
            End With
            With .EventName("play_sfx_bumper2")
                .Key = "key_sfx_bumper2"
                .Sound = "sfx_bumper2"
            End With
            With .EventName("play_sfx_bumper3")
                .Key = "key_sfx_bumper3"
                .Sound = "sfx_bumper3"
            End With
            With .EventName("play_sfx_bumper4")
                .Key = "key_sfx_bumper4"
                .Sound = "sfx_bumper4"
            End With

            'Lanes
            With .EventName("s_LeftOutlane_active")
                .Sound = "sfx_LLO"
            End With
            With .EventName("s_LeftInlane_active")
                .Sound = "sfx_LLI"
            End With
            With .EventName("s_RightInlane_active")
                .Sound = "sfx_LRI"
            End With
            With .EventName("s_RightOutlane_active")
                .Sound = "sfx_LRO"
            End With

            'center orbit
            With .EventName("play_sfx_Orb1")
                .Sound = "sfx_Orb1"
            End With
            With .EventName("play_sfx_Orb2")
                .Sound = "sfx_Orb2"
            End With
            With .EventName("play_sfx_Orb3")
                .Sound = "sfx_Orb3"
            End With

            'Other
            With .EventName("magnet_activated_gi")
                .Sound = "sfx_mag_cap"
            End With

            'training shots
            With .EventName("play_sfx_LS1")
                .Sound = "sfx_LS1"
            End With
            With .EventName("play_sfx_LS2")
                .Sound = "sfx_LS2"
            End With
            With .EventName("play_sfx_LS3")
                .Sound = "sfx_LS3"
            End With
            With .EventName("play_sfx_LS4")
                .Sound = "sfx_LS4"
            End With
            With .EventName("play_sfx_LS5")
                .Sound = "sfx_LS5"
            End With
            With .EventName("play_sfx_LS6")
                .Sound = "sfx_LS6"
            End With

            'Meteor wave sounds (needed here so they dont stop when meteor wave mode stops)
            With .EventName("play_sfx_LMet1")
                .Key = "key_sfx_LMet1"
                .Sound = "sfx_LMet1"
            End With
            With .EventName("play_sfx_LMet2")
                .Key = "key_sfx_LMet2"
                .Sound = "sfx_LMet2"
            End With
            With .EventName("play_sfx_LMet3")
                .Key = "key_sfx_LMet3"
                .Sound = "sfx_LMet3"
            End With
            With .EventName("play_sfx_LMet4")
                .Key = "key_sfx_LMet4"
                .Sound = "sfx_LMet4"
            End With
            With .EventName("play_sfx_LMet5")
                .Key = "key_sfx_LMet5"
                .Sound = "sfx_LMet5"
            End With
            With .EventName("play_sfx_LMet6")
                .Key = "key_sfx_LMet6"
                .Sound = "sfx_LMet6"
            End With
            With .EventName("play_sfx_LMet7")
                .Key = "key_sfx_LMet7"
                .Sound = "sfx_LMet7"
            End With
            With .EventName("play_sfx_LMet8")
                .Key = "key_sfx_LMet8"
                .Sound = "sfx_LMet8"
            End With

            'Earth hits
            With .EventName("play_sfx_EarthHit1")
                .Key = "key_sfx_EarthHit1"
                .Sound = "sfx_EarthHit1"
            End With
            With .EventName("play_sfx_EarthHit2")
                .Key = "key_sfx_EarthHit2"
                .Sound = "sfx_EarthHit2"
            End With
            With .EventName("play_sfx_EarthHit3")
                .Key = "key_sfx_EarthHit3"
                .Sound = "sfx_EarthHit3"
            End With

            'Proton fire
            With .EventName("play_sfx_LPF1")
                .Key = "key_sfx_LPF1"
                .Sound = "sfx_LPF1"
            End With
            With .EventName("play_sfx_LPF2")
                .Key = "key_sfx_LPF2"
                .Sound = "sfx_LPF2"
            End With
            With .EventName("play_sfx_LPF3")
                .Key = "key_sfx_LPF3"
                .Sound = "sfx_LPF3"
            End With
            With .EventName("play_sfx_LPF4")
                .Key = "key_sfx_LPF4"
                .Sound = "sfx_LPF4"
            End With
            With .EventName("play_sfx_LPF5")
                .Key = "key_sfx_LPF5"
                .Sound = "sfx_LPF5"
            End With

            'jackpots
            With .EventName("play_sfx_jackpot")
                .Key = "key_sfx_jackpot"
                .Sound = "sfx_jackpot"
            End With
            With .EventName("play_sfx_super_jackpot")
                .Key = "key_sfx_super_jackpot"
                .Sound = "sfx_super_jackpot"
            End With


            With .EventName("activate_combo_command_wizard")
                .Sound = "voc_LCWiz"
            End With
            With .EventName("activate_fully_loaded_wizard")
                .Sound = "voc_LLWiz"
            End With
            With .EventName("activate_final_wave_wizard")
                .Sound = "voc_Wiz"
            End With

            

            

        End With

    End With

End Sub