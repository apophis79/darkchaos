

'Final Wave Wizard Mode.

' Goal: hit asteroid 20 times (inner asteroid orbit and/or center standup target). Count displayed on playfield and backglass/apron.
' Wizard starts at scoop
' No time limit. EBs can be used. Starts with 5 ball MB. Add-a-ball at center orbit (upper flipper).
' 60 sec ball save to start
' Asteroid glow increases with each hit. All inserts start to glow red too.
' At about 30 sec the meteors start to pop up, only two up at a time max
' Once asteroid destroyed, flippers die. Huge light show and music. Then victory lap mode starts



Dim FWWizAsteroidColors
FWWizAsteroidColors = Array("0d0d0d","1a1a1a","272727","343434","414141","4e4e4e","5b5b5b","686868","757575","828282","8f8f8f","9c9c9c","a9a9a9","b6b6b6","c3c3c3","d0d0d0","dddddd","eaeaea","f7f7f7")


Sub CreateFinalWaveWizardMode
    Dim x

    With CreateGlfMode("final_wave_wizard", 4000)
        .StartEvents = Array("run_final_wave_wizard")
        .StopEvents = Array("ball_ending","stop_final_wave_wizard")
        .UseWaitQueue = True

        With .EventPlayer()
            'start/restart wizard mode
            .Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count == "&FWWizMaxAsteroidHits&"}", Array("begin_fwwiz") 'start wizard mode
            .Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count < "&FWWizMaxAsteroidHits&"}", Array("continue_fwwiz","display_hit_count","update_asteroid_glow") 'continue wizard mode
            .Add "mode_final_wave_wizard_started", Array("meteor_wave_music_stop","fwwiz_music_start","turn_off_gi","final_flash1","final_flash2","final_flash3")
            .Add "mode_final_wave_wizard_stopping", Array("fwwiz_music_stop") 
            'release the scoop ball to start the wizard mode
            .Add "timer_final_wave_message_complete", Array("release_scoop_hold","start_moon_multiball","delayed_release_moon_ball","display_hit_count")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'add-a-ball
            .Add "left_ramp_hit{current_player.fwwiz_add_ball_ready == 1}", Array("fwwiz_add_ball")
            .Add "right_ramp_hit{current_player.fwwiz_add_ball_ready == 1}", Array("fwwiz_add_ball")
            .Add "left_ramp_hit{current_player.fwwiz_add_ball_ready == 2}", Array("fwwiz_add_ball_2")
            .Add "right_ramp_hit{current_player.fwwiz_add_ball_ready == 2}", Array("fwwiz_add_ball_2")
            'asteroid hits
            .Add "center_orbit_left_hit", Array("asteroid_hit")
            .Add "center_orbit_right_hit", Array("asteroid_hit")
            .Add "s_TargetMystery3_active", Array("asteroid_hit")
            .Add "asteroid_hit", Array("check_fwwiz_done","asteroid_flash3","asteroid_flicker1","play_asteroid_hit")
            .Add "asteroid_hit{current_player.wizard_final_hit_count > 0}", Array("update_hit_count")
            .Add "update_hit_count", Array("update_fwwiz_score")
            .Add "check_fwwiz_done{current_player.wizard_final_hit_count == 0}", Array("asteroid_destroyed","asteroid_off","fwwiz_music_stop")
            'asteroid glow
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 19}", Array("asteroid_temp1")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 18}", Array("asteroid_temp2")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 17}", Array("asteroid_temp3")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 16}", Array("asteroid_temp4")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 15}", Array("asteroid_temp5")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 14}", Array("asteroid_temp6")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 13}", Array("asteroid_temp7")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 12}", Array("asteroid_temp8")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 11}", Array("asteroid_temp9")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 10}", Array("asteroid_temp10")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 9}", Array("asteroid_temp11")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 8}", Array("asteroid_temp12")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 7}", Array("asteroid_temp13")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 6}", Array("asteroid_temp14")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 5}", Array("asteroid_temp15","start_asteroid_flicker")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 4}", Array("asteroid_temp16")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 3}", Array("asteroid_temp17")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 2}", Array("asteroid_temp18")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 1}", Array("asteroid_temp19")
            'update score
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 19}", Array("score_100000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 18}", Array("score_200000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 17}", Array("score_300000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 16}", Array("score_400000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 15}", Array("score_500000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 14}", Array("score_600000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 13}", Array("score_700000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 12}", Array("score_800000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 11}", Array("score_900000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 10}", Array("score_1000000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 9}", Array("score_1100000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 8}", Array("score_1200000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 7}", Array("score_1300000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 6}", Array("score_1400000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 5}", Array("score_1500000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 4}", Array("score_1600000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 3}", Array("score_1700000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 2}", Array("score_1800000")
            .Add "update_fwwiz_score{current_player.wizard_final_hit_count == 1}", Array("score_1900000")
            'add meteors. There should max of two meteors up at a time
            .Add "s_DTMeteor1_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor","meteor1_explodes_show","meteor1_blink_show","score_100000") 'additional meteor
            .Add "s_DTMeteor2_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor","meteor2_explodes_show","meteor2_blink_show","score_100000") 'additional meteor
            .Add "s_DTMeteor3_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor","meteor3_explodes_show","meteor3_blink_show","score_100000") 'additional meteor
            .Add "s_DTMeteor4_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor","meteor4_explodes_show","meteor4_blink_show","score_100000") 'additional meteor
            .Add "timer_fwwiz_add_meteor_complete{current_player.wizard_final_hit_count > 1}", Array("fwwiz_raise_meteor") 'additional meteor
            .Add "timer_fwwiz_start_meteors_complete", Array("fwwiz_raise_meteor") 'first meteor
            .Add "continue_fwwiz", Array("fwwiz_raise_meteor") 'first meteor
            'asteroid destroyed
            .Add "asteroid_destroyed", Array("knockdown_meteors","score_2000000")
            '  explosion flippers
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 4}", Array("kill_flippers")
            .Add "timer_asteroid_explodes_complete", Array("enable_flippers","explosion_done")

            'handle GI light show
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 1}", Array("play_flash_gi09","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 2}", Array("play_flash_gi06","play_flash_gi11","play_flash_gi21","play_flash_gi22","play_flash_gi12","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 3}", Array("play_flash_gi03","play_flash_gi10","play_flash_gi18","play_flash_gi16")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 4}", Array("play_flash_gi08","play_flash_gi19","play_flash_gi20")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 5}", Array("play_flash_gi05","play_flash_gi09","play_flash_gi21","play_flash_gi13","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 6}", Array("play_flash_gi02","play_flash_gi22","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 7}", Array("play_flash_gi07","play_flash_gi11","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 8}", Array("play_flash_gi04","play_flash_gi10","play_flash_gi18","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 9}", Array("play_flash_gi01","play_flash_gi19","play_flash_gi20","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 10}", Array("play_flash_gi06","play_flash_gi21","play_flash_gi13","play_flash_gi12")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 11}", Array("play_flash_gi03","play_flash_gi09","play_flash_gi22","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 12}", Array("play_flash_gi08","play_flash_gi11","play_flash_gi17","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 13}", Array("play_flash_gi05","play_flash_gi10","play_flash_gi18","play_flash_gi13")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 14}", Array("play_flash_gi02","play_flash_gi20","play_flash_gi22","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 15}", Array("play_flash_gi07","play_flash_gi21","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 16}", Array("play_flash_gi04","play_flash_gi09","play_flash_gi16")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 17}", Array("play_flash_gi01","play_flash_gi11","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 18}", Array("play_flash_gi06","play_flash_gi19","play_flash_gi18","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 19}", Array("play_flash_gi03","play_flash_gi20","play_flash_gi13")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 20}", Array("play_flash_gi09","play_flash_gi08","play_flash_gi21","play_flash_gi22","play_flash_gi12")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 21}", Array("play_flash_gi05","play_flash_gi11","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 22}", Array("play_flash_gi02","play_flash_gi10","play_flash_gi18","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 23}", Array("play_flash_gi07","play_flash_gi19","play_flash_gi20","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 24}", Array("play_flash_gi04","play_flash_gi09","play_flash_gi21","play_flash_gi13")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 25}", Array("play_flash_gi01","play_flash_gi11","play_flash_gi22","play_flash_gi16","play_flash_gi14","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 26}", Array("play_flash_gi06","play_flash_gi10","play_flash_gi18","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 27}", Array("play_flash_gi03","play_flash_gi19","play_flash_gi20","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 28}", Array("play_flash_gi08","play_flash_gi13")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 29}", Array("play_flash_gi09","play_flash_gi05","play_flash_gi21","play_flash_gi22","play_flash_gi12")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 30}", Array("play_flash_gi02","play_flash_gi10","play_flash_gi11","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 31}", Array("play_flash_gi07","play_flash_gi18","play_flash_gi13")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 32}", Array("play_flash_gi04","play_flash_gi19","play_flash_gi20","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 33}", Array("play_flash_gi01","play_flash_gi09","play_flash_gi21","play_flash_gi22","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 34}", Array("play_flash_gi06","play_flash_gi10","play_flash_gi11","play_flash_gi16")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 35}", Array("play_flash_gi03","play_flash_gi19","play_flash_gi18","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 36}", Array("play_flash_gi08","play_flash_gi20","play_flash_gi13","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 37}", Array("play_flash_gi05","play_flash_gi21","play_flash_gi22","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 38}", Array("play_flash_gi02","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 39}", Array("play_flash_gi07","play_flash_gi20","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 40}", Array("play_flash_gi09","play_flash_gi19","play_flash_gi21","play_flash_gi12")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 41}", Array("play_flash_gi04","play_flash_gi11","play_flash_gi13","play_flash_gi22","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 42}", Array("play_flash_gi01","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 43}", Array("play_flash_gi06","play_flash_gi20","play_flash_gi17","play_flash_gi15")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 44}", Array("play_flash_gi03","play_flash_gi09")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 45}", Array("play_flash_gi08","play_flash_gi11","play_flash_gi19","play_flash_gi21")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 46}", Array("play_flash_gi05","play_flash_gi10","play_flash_gi13","play_flash_gi16")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 47}", Array("play_flash_gi02","play_flash_gi18","play_flash_gi22","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 48}", Array("play_flash_gi07","play_flash_gi20","play_flash_gi17")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 49}", Array("play_flash_gi09","play_flash_gi19","play_flash_gi21","play_flash_gi12")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 50}", Array("play_flash_gi04","play_flash_gi11","play_flash_gi13","play_flash_gi22","play_flash_giapron")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 51}", Array("play_flash_gi01","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi14")
            .Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 52}", Array("play_flash_gi06","play_flash_gi20","play_flash_gi17","play_flash_gi15")

            'handle asteroid flicker show
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 1}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 7}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 10}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 15}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 22}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 24}", Array("play_asteroid_flicker")
            .Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 29}", Array("play_asteroid_flicker")

            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")

        End With


        With .RandomEventPlayer()
            With .EventName("fwwiz_raise_meteor")
                .Add "meteor1_raise{current_player.shot_fwwiz_meteor1 == 0}", 1
                .Add "meteor2_raise{current_player.shot_fwwiz_meteor2 == 0}", 1
                .Add "meteor3_raise{current_player.shot_fwwiz_meteor3 == 0}", 1
                .Add "meteor4_raise{current_player.shot_fwwiz_meteor4 == 0}", 1
                .ForceAll = False
                .ForceDifferent = True
            End With
            With .EventName("play_asteroid_flicker")
                .Add "asteroid_flicker1", 1
                .Add "asteroid_flicker2", 1
                .Add "asteroid_flicker3", 1
                .Add "asteroid_flicker4", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
            With .EventName("asteroid_hit")
                .Add "play_sfx_LMet1", 1
                .Add "play_sfx_LMet2", 1
                .Add "play_sfx_LMet3", 1
                .Add "play_sfx_LMet4", 1
                .Add "play_sfx_LMet5", 1
                .Add "play_sfx_LMet6", 1
                .Add "play_sfx_LMet7", 1
                .Add "play_sfx_LMet8", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With

        With .QueueRelayPlayer()
            With .EventName("balldevice_trough_ball_eject_attempt{modes.final_wave_wizard.active && current_player.wizard_final_hit_count == 0}")
                .Post = "awaiting_wizard_show"
                .WaitFor = "explosion_done"
            End With
        End With


        With .Multiballs("fwwiz")
            .StartEvents = Array("timer_final_wave_message_complete")
            .DisableEvents = Array("asteroid_destroyed")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = FWWizBallSaveTime
            .HurryUp = 5000
            .GracePeriod = 500
        End With

        With .Multiballs("fwwiz_2")
            .StartEvents = Array("fwwiz_add_ball")
            .DisableEvents = Array("asteroid_destroyed")
            .AddABallEvents = Array("fwwiz_add_ball_2")
            .BallCount = 1
            .BallCountType = "add"
            .ShootAgain = 0
            .HurryUp = 0
            .GracePeriod = 0
        End With


        With .Shots("fwwiz_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", HealthColor2
            End With
            With .ControlEvents()
                .Events = Array("begin_fwwiz")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_fwwiz_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("multiball_fwwiz_shoot_again_ended")
        End With


        'Define final wave wizard shots
        With .Shots("asteroid")
            .Profile = "asteroid"
            With .ControlEvents()
                .Events = Array("timer_final_wave_message_tick{devices.timers.final_wave_message.ticks == 2}","continue_fwwiz")
                .State = 1
            End With
            .RestartEvents = Array("mode_final_wave_wizard_stopping")
        End With

        For x = 1 to 4
            With .Shots("fwwiz_meteor"&x)
                .Profile = "fwwiz_meteor"
                With .Tokens()
                    .Add "lights", "LMet"&x
                End With
                With .ControlEvents()
                    .Events = Array("meteor"&x&"_raise")
                    .State = 1
                End With
                .RestartEvents = Array("s_DTMeteor"&x&"_active")
            End With
        Next


        With .ShotProfiles("asteroid")
            With .States("unlit")
                .Show = "off"
                .Key = "key_fwwiz_off"
                With .Tokens()
                    .Add "lights", "tFire"
                End With
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_fwwiz_ready"
                .Speed = 8
                With .Tokens()
                    .Add "lights", "tFire"
                    .Add "color", MeteorWaveColor
                End With
            End With
        End With

        With .ShotProfiles("fwwiz_meteor")
            With .States("unlit")
                .Show = "off"
                .Key = "key_fwwiz_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_fwwiz_ready"
                .Speed = 8
                With .Tokens()
                    .Add "color", MeteorHotColor
                End With
            End With
        End With


        With .DOFPlayer()
            With .EventName("play_asteroid_hit")
                .Action = "DOF_PULSE"
                .DOFEvent = 152
            End With
            With .EventName("asteroid_destroyed")
                .Action = "DOF_PULSE"
                .DOFEvent = 153
            End With
        End With


        With .ShowPlayer()

            'asteroid hit shows
            With .EventName("play_asteroid_hit")   
                .Key = "key_asteroid_hit"
                .Show = "asteroid_hit" 
                .Speed = 1
                .Loops = 1
            End With
            With .EventName("asteroid_flash3")   
                .Key = "key_asteroid_flash3"
                .Show = "flash_color_fadeout" 
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName("asteroid_flicker1")
                .Key = "key_asteroid_flicker1"
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                .EventsWhenCompleted = Array("update_asteroid_glow")
                With .Tokens()
                    .Add "lights", "tAsteroid"
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("asteroid_flicker2")
                .Key = "key_asteroid_flicker2"
                .Show = "flicker_color"
                .Speed = 8
                .Loops = 2
                .EventsWhenCompleted = Array("update_asteroid_glow")
                With .Tokens()
                    .Add "lights", "tAsteroid"
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("asteroid_flicker3")
                .Key = "key_asteroid_flicker3"
                .Show = "flicker2_color"
                .Speed = 4
                .Loops = 1
                .EventsWhenCompleted = Array("update_asteroid_glow")
                With .Tokens()
                    .Add "lights", "tAsteroid"
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("asteroid_flicker4")
                .Key = "key_asteroid_flicker4"
                .Show = "flicker2_color"
                .Speed = 7
                .Loops = 2
                .EventsWhenCompleted = Array("update_asteroid_glow")
                With .Tokens()
                    .Add "lights", "tAsteroid"
                    .Add "color", "ffffff"
                End With
            End With


            With .EventName("asteroid_destroyed")
                .Key = "key_asteroid_explodes_show"
                .Show = "asteroid_explodes_show" 
                .Loops = 1
            End With


            'GI flashes
            For x = 1 to 9
                With .EventName("play_flash_gi0"&x)   
                    .Key = "key_flash_gi0"&x
                    .Show = "flash_color_fadeout" 
                    .Speed = 3
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", GIColor3000k
                    End With
                End With
            Next
            For x = 10 to 22
                With .EventName("play_flash_gi"&x)   
                    .Key = "key_flash_gi"&x
                    .Show = "flash_color_fadeout" 
                    .Speed = 3
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", GIColor3000k
                    End With
                End With
            Next
            With .EventName("play_flash_giapron")   
                .Key = "key_flash_giapron"
                .Show = "flash_color_fadeout" 
                .Speed = 3
                .Loops = 1
                With .Tokens()
                    .Add "lights", "giapron"
                    .Add "color", GIColor3000k
                End With
            End With

            'Meteor hits
            For x = 1 to 4
                With .EventName("meteor"&x&"_explodes_show")
                    .Key = "key_meteor"&x&"_explodes"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", "ffffff"
                    End With    
                End With
                With .EventName("meteor"&x&"_blink_show")
                    .Key = "key_meteor"&x&"_blink"
                    .Show = "flash_color"
                    .Speed = 22
                    .Loops = 4
                    With .Tokens()
                        .Add "lights", "LMet"&x
                        .Add "color", "ff1100"
                    End With  
                End With
            Next

            With .EventName("final_flash1")   
                .Key = "key_final_flash3"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash2")   
                .Key = "key_final_flash4"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFL5"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash3")   
                .Key = "key_final_flash5"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFL6"
                    .Add "color", MeteorFlashColor
                End With
            End With

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
                        .Add "color", MeteorHotColor
                        .Add "fade", 50
                    End With
                End With
            Next
        End With


        With .SoundPlayer()
            With .EventName("asteroid_destroyed")
                .Key = "key_sfx_final_explosion"
                .Sound = "sfx_final_explosion"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_final_wave_wizard_started")
                With .Variable("wizard_mode_running")
                    .Action = "set"
					.Int = 1
				End With
			End With 
            With .EventName("mode_final_wave_wizard_stopping")
                With .Variable("wizard_mode_running")
                    .Action = "set"
					.Int = 0
				End With
			End With 
            With .EventName("asteroid_hit{current_player.wizard_final_hit_count > 0}")
				With .Variable("wizard_final_hit_count")
                    .Action = "add"
					.Int = -1
				End With
			End With
            With .EventName("multiball_fwwiz_shoot_again_ended")
				With .Variable("fwwiz_add_ball_ready")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("continue_fwwiz")
				With .Variable("fwwiz_add_ball_ready")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("fwwiz_add_ball")
				With .Variable("fwwiz_add_ball_ready")
                    .Action = "set"
					.Int = 2
				End With
			End With
            With .EventName("multiball_fwwiz_2_ended")
				With .Variable("fwwiz_add_ball_ready")
                    .Action = "set"
					.Int = 1
				End With
			End With
		End With


        With .Timers("final_wave_message")
            .TickInterval = CCWizMessageInterval
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "begin_fwwiz"
                .Action = "restart"
            End With
        End With
        With .Timers("fwwiz_start_meteors")
            .TickInterval = FWWizStartMeteorsInterval
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "timer_final_wave_message_complete"
                .Action = "restart"
            End With
        End With
        With .Timers("fwwiz_add_meteor")
            .TickInterval = 400
            .StartValue = 0
            .EndValue = 2
            With .ControlEvents()
                .EventName = "timer_fwwiz_start_meteors_complete"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "continue_fwwiz"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "fwwiz_add_meteor"
                .Action = "restart"
            End With
        End With
        With .Timers("asteroid_explodes")
            .TickInterval = 200
            .StartValue = 0
            .EndValue = 50
            With .ControlEvents()
                .EventName = "asteroid_destroyed"
                .Action = "start"
            End With
        End With
        With .Timers("final_wave_gi")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 53
            With .ControlEvents()
                .EventName = "mode_final_wave_wizard_started"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "timer_final_wave_gi_complete"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "asteroid_destroyed"
                .Action = "stop"
            End With
        End With
        With .Timers("final_wave_flicker")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 30
            With .ControlEvents()
                .EventName = "start_asteroid_flicker"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "timer_final_wave_flicker_complete"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "asteroid_destroyed"
                .Action = "stop"
            End With
        End With




        With .SegmentDisplayPlayer()
            With .EventName("begin_fwwiz")
                With .Display("player1")
                    .Text = """  THE  """
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """ FINAL """
                    
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  WAVE  """
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """IS HERE """
                    .Expire = FWWizMessageInterval
                End With
            End With

            With .EventName("timer_final_wave_message_tick{devices.timers.final_wave_message.ticks == 1}")
                With .Display("player1")
                    .Text = """ RAMPS """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """ ADD A  """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  BALL  """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """"""
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
            End With

            With .EventName("timer_final_wave_message_tick{devices.timers.final_wave_message.ticks == 2}")
                With .Display("player1")
                    .Text = """--------"""
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """DESTROY"""
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """ASTEROID"""
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """--------"""
                    .Expire = FWWizMessageInterval
                End With
            End With

            With .EventName("display_hit_count")
                With .Display("player1")
                    .Text = """--------"""
                End With
                With .Display("player2")
                    .Text = """HITSLEFT"""
                End With
                With .Display("player3")
                    .Text = "{current_player.wizard_final_hit_count:0>2}"
                    .Flashing = "all"
                End With
                With .Display("player4")
                    .Text = """--------"""
                End With
                With .Display("pf")
                    .Text = "{current_player.wizard_final_hit_count:0>2}"
                    .Flashing = "all"
                End With
            End With

            With .EventName("update_hit_count")
                With .Display("player3")
                    .Text = "{current_player.wizard_final_hit_count:0>2}"
                    .Flashing = "all"
                End With
                With .Display("pf")
                    .Text = "{current_player.wizard_final_hit_count:0>2}"
                    .Flashing = "all"
                End With
            End With

        End With


        With .LightPlayer()
            With .EventName("mode_final_wave_wizard_started")
				With .Lights("GI")
					.Color = "000000"
				End With
			End With
            With .EventName("mode_final_wave_wizard_stopping")
                With .Lights("GI")
                    .Color = GIColor3000k
                End With
            End With

            With .EventName("asteroid_off")
                With .Lights("tAsteroid")
                    .Color = "000000"
                End With
            End With
            For x = 1 to 19
                With .EventName("asteroid_temp"&x)
                    With .Lights("tAsteroid")
                        .Color = FWWizAsteroidColors(x-1)
                    End With
                End With
            Next
              
        End With


    End With

End Sub