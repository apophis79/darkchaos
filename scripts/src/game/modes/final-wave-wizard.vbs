

'Final Wave Wizard Mode.

' Goal: hit asteroid 99 times (inner asteroid orbit and/or center standup target). Count displayed on playfield and backglass/apron.
' Wizard starts at scoop
' No time limit. EBs can be used. Starts with 5 ball MB. Add-a-ball at center orbit (upper flipper).
' 45 sec ball save
' Asteroid glow increases with each hit. All inserts start to glow red too.
' At about 30 sec the meteors start to pop up, only two up at a time max
' Once asteroid destroyed, flippers die. Huge light show and music.
' Victory lap! All shots are lit, double scoring, 30 sec ball save, 5 ball mb
' Flippers die after 30sec. Game over.


Dim FWWizAsteroidColors
FWWizAsteroidColors = Array("0d0d0d","1a1a1a","272727","343434","414141","4e4e4e","5b5b5b","686868","757575","828282","8f8f8f","9c9c9c","a9a9a9","b6b6b6","c3c3c3","d0d0d0","dddddd","eaeaea","f7f7f7")


Sub CreateFinalWaveWizardMode
    Dim x

    With CreateGlfMode("final_wave_wizard", 4000)
        .StartEvents = Array("run_final_wave_wizard")
        .StopEvents = Array("stop_final_wave_wizard")

        With .EventPlayer()
            'start/restart wizard mode
            .Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count == "&FWWizMaxAsteroidHits&"}", Array("begin_fwwiz") 'start wizard mode
            .Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count < "&FWWizMaxAsteroidHits&"}", Array("continue_fwwiz","display_hit_count","update_asteroid_glow") 'continue wizard mode
            'stopping wizard mode
            .Add "ball_ended{current_player.wizard_final_hit_count > 0}", Array("stop_final_wave_wizard")
            'release the scoop ball to start the wizard mode
            .Add "timer_final_wave_message_complete", Array("release_scoop_hold","start_moon_multiball","delayed_release_moon_ball","display_hit_count")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'asteroid hits
            .Add "center_orbit_left_hit", Array("asteroid_hit")
            .Add "center_orbit_right_hit", Array("asteroid_hit")
            .Add "s_TargetMystery3_active", Array("asteroid_hit")
            .Add "asteroid_hit", Array("check_fwwiz_done","asteroid_flash1","asteroid_flash2","update_asteroid_glow")
            .Add "asteroid_hit{current_player.wizard_final_hit_count > 0}", Array("update_hit_count")
            .Add "check_fwwiz_done{current_player.wizard_final_hit_count == 0}", Array("asteroid_destroyed","asteroid_off")
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
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 5}", Array("asteroid_temp15")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 4}", Array("asteroid_temp16")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 3}", Array("asteroid_temp17")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 2}", Array("asteroid_temp18")
            .Add "update_asteroid_glow{current_player.wizard_final_hit_count == 1}", Array("asteroid_temp19")
            'add meteors. There should max of two meteors up at a time
            .Add "s_DTMeteor1_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor") 'additional meteor
            .Add "s_DTMeteor2_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor") 'additional meteor
            .Add "s_DTMeteor3_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor") 'additional meteor
            .Add "s_DTMeteor4_active{current_player.wizard_final_hit_count > 1}", Array("fwwiz_add_meteor") 'additional meteor
            .Add "timer_fwwiz_add_meteor_complete{current_player.wizard_final_hit_count > 1}", Array("fwwiz_raise_meteor") 'additional meteor
            .Add "timer_fwwiz_start_meteors_complete", Array("fwwiz_raise_meteor") 'first meteor
            .Add "continue_fwwiz", Array("fwwiz_raise_meteor") 'first meteor
            'asteroid destroyed
            .Add "asteroid_destroyed", Array("knockdown_meteors")
            
            '   explosion flippers flips
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 4}", Array("s_left_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 5}", Array("s_left_flipper_inactive","s_right_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 6}", Array("s_right_flipper_inactive")
            '   explosion flippers flips
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 11}", Array("s_right_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 12}", Array("s_right_flipper_inactive","s_left_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 13}", Array("s_left_flipper_inactive")
            '   explosion flippers flips
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 19}", Array("s_right_flipper_active","s_left_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 20}", Array("s_right_flipper_inactive","s_left_flipper_inactive")
            '   explosion flippers flips
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 27}", Array("s_right_flipper_active","s_left_flipper_active")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 28}", Array("s_right_flipper_inactive","s_left_flipper_inactive")
            .Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 30}", Array("kill_flippers"

            .Add "timer_asteroid_explodes_complete", Array("stop_final_wave_wizard")   'FIXME  for now just end the mode, but need to transition to Victory Lap mode. 
                                                                                       '       Also need to handled end of ball properly. 

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
        End With


        With .Multiballs("fwwiz")
            .StartEvents = Array("timer_final_wave_message_complete")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = FWWizBallSaveTime
            .HurryUp = 5000
            .GracePeriod = 500
        End With

        With .ExtraBalls("fwwiz_eb")
            .AwardEvents = Array("asteroid_destroyed")
            .MaxPerGame = 5
        End With


        With .Shots("fwwiz_shoot_again")
            .Profile = "shoot_again"
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


        With .ShowPlayer()
            With .EventName("asteroid_flash1")
                .Key = "key_asteroid_flash1"
                .Priority = 10
                .Show = "flash_color"
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tBlast"
                    .Add "color", MeteorWaveColor
                End With
            End With
            With .EventName("asteroid_flash2")
                .Key = "key_proton_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", MeteorWaveColor
                    .Add "fade", 300
                End With
            End With
        End With


        With .VariablePlayer()
            With .EventName("asteroid_hit{current_player.wizard_final_hit_count > 0}")
				With .Variable("wizard_final_hit_count")
                    .Action = "add"
					.Int = -1
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
            .TickInterval = 1000
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
                    .Text = """ UPPER """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """  LOOP  """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """ ADDS A """
                    .Flashing = "all"
                    .Expire = FWWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """  BALL  """
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