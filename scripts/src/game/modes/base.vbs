


' Base Mode.
'
' Handles the following:
'   - main sequence shots
'   - delayed moon ball release
'   - scoop holds
'   - player score segment displays
'   - wave shot lights across all waves
'   - starting/stopping wizard modes
'   - some sound effects and wave music
'   - some light shows


Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 200)
        .StartEvents = Array(GLF_BALL_STARTED)
        .StopEvents = Array(GLF_BALL_ENDED)

        With .EventPlayer()
            'new ball
            .Add "s_Plunger2_active{current_player.ball_just_started==1}", Array("new_ball_active")

            'waves
            .Add "mode_base_started{current_player.shot_meteor_wave1 == 0}", Array("pre_meteor_wave1")
            .Add "mode_base_started{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_restart")

            .Add "mode_base_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_restart")
        
            'skillshots
            .Add "mode_base_started", Array("check_skillshot_ready")

            'wizard modes
            '   handle case when starting new ball
            .Add "mode_base_started{current_player.shot_final_wave_wizard == 2}", Array("run_final_wave_wizard","wizard_mode_started")
            .Add "mode_base_started{current_player.shot_final_wave_wizard == 1}", Array("activate_final_wave_wizard")
            .Add "mode_base_started{current_player.shot_combo_command_wizard == 1}", Array("activate_combo_command_wizard")
            .Add "mode_base_started{current_player.shot_fully_loaded_wizard == 1}", Array("activate_fully_loaded_wizard")
            .Add "check_fully_loaded{current_player.shot_fully_loaded_wizard == 0 && current_player.shot_cluster_bomb2 == 1 && current_player.shot_proton_round6 == 1 &&  current_player.shot_light_missile2 == 1}", Array("activate_fully_loaded_wizard")
            '   handle case when starting and finishing a meteor wave
            .Add "start_meteor_wave", Array("disable_scoop_hold","stop_ccwiz_scoop_show","stop_flwiz_scoop_show")
            .Add "stop_meteor_wave{current_player.shot_final_wave_wizard == 1}", Array("activate_final_wave_wizard")
            .Add "stop_meteor_wave{current_player.shot_combo_command_wizard == 1}", Array("activate_combo_command_wizard")
            .Add "stop_meteor_wave{current_player.shot_fully_loaded_wizard == 1}", Array("activate_fully_loaded_wizard")
            '    wizard mode phase 1 qualifed. Ready the scoop
            .Add "activate_final_wave_wizard", Array("wizard_mode_ready","run_fwwiz_scoop_show")
            .Add "activate_combo_command_wizard", Array("wizard_mode_ready","run_ccwiz_scoop_show")
            .Add "activate_fully_loaded_wizard", Array("wizard_mode_ready","run_flwiz_scoop_show")
            .Add "wizard_mode_ready", Array("enable_scoop_hold")
            '    handle multiple scoop shows
            .Add "run_fwwiz_scoop_show", Array("stop_flwiz_scoop_show","stop_ccwiz_scoop_show")
            .Add "run_ccwiz_scoop_show", Array("stop_flwiz_scoop_show")
            .Add "run_ccwiz_scoop_show{current_player.shot_final_wave_wizard == 1}", Array("stop_ccwiz_scoop_show")
            .Add "run_flwiz_scoop_show{current_player.shot_combo_command_wizard == 1 or current_player.shot_final_wave_wizard == 1}", Array("stop_flwiz_scoop_show")
            '    run the wizard mode when qualified and ball enters the scoop. If more than one wizard is qualified, final wizard is top priority, then combo command, then fully loaded.
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_final_wave_wizard == 1}", Array("run_final_wave_wizard","wizard_mode_started","stop_fwwiz_scoop_show") 
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_combo_command_wizard == 1 && current_player.shot_final_wave_wizard != 1}", Array("run_combo_command_wizard","wizard_mode_started","stop_ccwiz_scoop_show") 
            .Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_fully_loaded_wizard == 1  && current_player.shot_combo_command_wizard != 1 && current_player.shot_final_wave_wizard != 1}", Array("run_fully_loaded_wizard","wizard_mode_started","stop_flwiz_scoop_show")
            '    clean up wizard mode
            .Add "completed_final_wave_wizard", Array("wizard_mode_ended")
            .Add "completed_combo_command_wizard", Array("wizard_mode_ended")
            .Add "completed_fully_loaded_wizard", Array("wizard_mode_ended")
    

            'handle some switches
            .Add "s_TargetMystery5_active", Array("magnet_activated")
            .Add "s_TimewarpRamp_active", Array("left_ramp_hit")
            .Add "s_MoonRamp_active", Array("right_ramp_hit")

            'handle delayed moon ball release
            .Add "timer_delay_ball_release_complete", Array("release_moon_ball")
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
            
            ' With .EventName("mode_base_started")
            '     With .Display("pf")
            '         .Text = "{00:0>2}"
            '     End With
            ' End With
        End With

        With .LightPlayer()
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 200
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
            .RestartEvents = Array(GLF_GAME_START)
        End With

        With .Shots("fully_loaded_wizard")
            .Profile = "wizard_ready1"
            With .Tokens()
                .Add "lights", "LLWiz"
                .Add "color", CombosColor
            End With
            With .ControlEvents()
                .Events = Array("activate_fully_loaded_wizard")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("run_fully_loaded_wizard")
                .State = 2
            End With
            .RestartEvents = Array(GLF_GAME_START)
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
            .SequenceTimeout = 500
        End With

        With .SequenceShots("center_orbit_right")
            .SwitchSequence = Array("s_CenterOrb3", "s_CenterOrb2", "s_CenterOrb1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 500
        End With

        With .ShowPlayer()
            For x = 1 to 4
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "00cc00" '"ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next

            For x = 0 to 4
                With .EventName(RolloverSwitches(x)&"_active")
                    .Key = "key_rollover"&x&"_flash"
                    .Show = "flicker_color_off" 
                    .Speed = 5
                    .Loops = 2
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", RolloverLightNames(x)
                        .Add "color", GIColor3000k
                    End With
                End With
            Next

            With .EventName("magnet_activated")
                .Key = "key_ts_scoop_gi"
                .Show = "flash_color" '_with_fade"
                .Speed = 15
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "gi13" 
                    .Add "color", GIColor3000k
                    '.Add "fade", 300
                End With
            End With

            With .EventName("sling_rotate_cw_show")
                .Key = "key_sling_rotate_cw"
                .Show = "sling_rotate_cw" '_with_fade"
                .Speed = 2
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "intensity1", 40
                    .Add "intensity2", 80
                    .Add "color", ProtonColor
                End With
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


        End With


         With .BallSaves("new_ball")
            .ActiveTime = 5000
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
            'ball_just_started
		    With .EventName("mode_base_started")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
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
            With .EventName("wizard_mode_started")
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
            With .EventName("pre_meteor_wave1")
                .Sound = "mus_main"
            End With
            With .EventName("pre_meteor_wave1_music_stop")
                .Sound = "mus_main"
                .Action = "stop"
            End With

            'Music meteor wave 1
            With .EventName("meteor_wave1_running")
                .Sound = "mus_secondary"
            End With
            With .EventName("meteor_wave1_restart")
                .Sound = "mus_main"
            End With
            With .EventName("meteor_wave1_music_stop")
                .Sound = "mus_secondary"
                .Action = "stop"
            End With

            'Music meteor wave 2
            With .EventName("meteor_wave2_running")
                .Sound = "mus_wave"
            End With
            With .EventName("meteor_wave2_restart")
                .Sound = "mus_secondary"
            End With
            With .EventName("meteor_wave2_music_stop")
                .Sound = "mus_wave"
                .Action = "stop"
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
            With .EventName("s_Bumper1_active")
                .Key = "key_sfx_bumper1"
                .Sound = "sfx_bumper1"
            End With
            With .EventName("s_Bumper2_active")
                .Key = "key_sfx_bumper2"
                .Sound = "sfx_bumper2"
            End With
            With .EventName("s_Bumper3_active")
                .Key = "key_sfx_bumper3"
                .Sound = "sfx_bumper3"
            End With
            With .EventName("s_Bumper4_active")
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

            'Other
            With .EventName("mode_base_stopping")
                .Sound = "sfx_ball_drain"
            End With
            With .EventName("magnet_activated")
                .Sound = "sfx_mag_cap"
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


            With .EventName("activate_combo_command_wizard")
                .Sound = "sfx_LCWiz"
            End With
            With .EventName("activate_fully_loaded_wizard")
                .Sound = "sfx_LLWiz"
            End With

        End With

    End With

End Sub