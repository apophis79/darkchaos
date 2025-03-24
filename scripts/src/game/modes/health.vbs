

'Health Mode.

'The health bar has 9 lights. At full health when all are lit. 
'Health starts at full at the beginning of a new ball.
'Health can decrease in a couple ways: 1) meteor wave earth hits, 2) UFO attacks
'Health can increase in a few ways: 1) bumper hits, 2) slingshot hits, 3) mystery awards
'When health goes to zero, the flippers die and you lose the ball.


Sub CreateHealthMode
    Dim x

    With CreateGlfMode("health", 800)
        .StartEvents = Array("new_ball_started","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","start_training_select","wizard_mode_started")

        With .EventPlayer()
            'restart the mode
            .Add "mode_health_started", Array("restart_health","reset_health_bump")
            .Add "mode_health_started{current_player.training_heal_achieved==1}", Array("raise_diverter") 'training boost
            'successful bumper hits
            .Add "s_Bumper1_active", Array("check_add_health_bump")
            .Add "s_Bumper2_active", Array("check_add_health_bump")
            .Add "s_Bumper3_active", Array("check_add_health_bump")
            .Add "s_Bumper4_active", Array("check_add_health_bump")
            'add or remove health lights as needed
            .Add "check_add_health_bump{current_player.health_bump_value<"&BumperHitsPerRepair&"}", Array("add_health_bump")
            .Add "check_add_health_bump{current_player.health_bump_value=="&BumperHitsPerRepair&"}", Array("check_add_health","reset_health_bump")
            .Add "check_add_health{current_player.health_value==8}", Array("health9_norm","add_health")
            .Add "check_add_health{current_player.health_value==7}", Array("health8_norm","add_health")
            .Add "check_add_health{current_player.health_value==6}", Array("health7_norm","health6_norm","health5_norm","health4_norm","health3_norm","health2_norm","health1_norm","add_health")
            .Add "check_add_health{current_player.health_value==5}", Array("health6_warm","add_health")
            .Add "check_add_health{current_player.health_value==4}", Array("health5_warm","add_health")
            .Add "check_add_health{current_player.health_value==3}", Array("health4_warm","health3_warm","health2_warm","health1_warm","add_health")
            .Add "check_add_health{current_player.health_value==2}", Array("health3_crit","add_health")
            .Add "check_add_health{current_player.health_value==1}", Array("health2_crit","add_health")
            .Add "check_remove_health{current_player.health_value==9}", Array("health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==8}", Array("health8_off","health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==7}", Array("health7_off","health8_off","health9_off","health6_warm","health5_warm","health4_warm","health3_warm","health2_warm","health1_warm","remove_health")
            .Add "check_remove_health{current_player.health_value==6}", Array("health6_off","health7_off","health8_off","health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==5}", Array("health5_off","health6_off","health7_off","health8_off","health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==4}", Array("health4_off","health5_off","health6_off","health7_off","health8_off","health9_off","health3_crit","health2_crit","health1_crit","remove_health")
            .Add "check_remove_health{current_player.health_value==3}", Array("health3_off","health4_off","health5_off","health6_off","health7_off","health8_off","health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==2}", Array("health2_off","health3_off","health4_off","health5_off","health6_off","health7_off","health8_off","health9_off","remove_health")
            .Add "check_remove_health{current_player.health_value==1}", Array("health1_off","health2_off","health3_off","health4_off","health5_off","health6_off","health7_off","health8_off","health9_off","remove_health","kill_flippers","turn_off_gi","meteor_wave_music_stop")
            .Add "add_health", Array("slings_powerup_added","lsling_powerup_h","rsling_powerup_h","health_charge1","health_charge2","score_50000")
            'handle earth hits
            .Add "earth_hit{current_player.health_value>0}", Array("check_remove_health")
            'Handle mystery award
            .Add "mystery_full_health", Array("complete_full_health","slings_powerup_added","lsling_powerup_h","rsling_powerup_h","score_100000")
        End With


        With .SoundPlayer()
            With .EventName("add_health")
                .Key = "key_sfx_LH"
                .Sound = "sfx_LH"
            End With
        End With

        With .DOFPlayer()
            With .EventName("add_health")
                .Action = "DOF_PULSE"
                .DOFEvent = 138
            End With
        End With
        

        'Define a shot profile with four states, health meter leves
        With .ShotProfiles("health_meter")
            With .States("unlit")
                .Show = "off"
                .Key = "key_health_off"
                .Priority = 90
            End With
            With .States("normal")
                .Show = "led_color"
                .Key = "key_health_normal"
                .Priority = 80
                With .Tokens()
                    .Add "color", HealthColor1
                End With
            End With
            With .States("warning")
                .Show = "led_color"
                .Key = "key_health_warning"
                .Priority = 70
                With .Tokens()
                    .Add "color", HealthColor2
                End With
            End With
            With .States("critical")
                .Show = "flash_color"
                .Key = "key_health_critical"
                .Speed = 15
                .Priority = 60
                With .Tokens()
                    .Add "color", HealthColor3
                End With
            End With
        End With

        'Define health meter shots
        For x = 1 to 9
            With .Shots("health"&x&"_light")
                .Profile = "health_meter"
                With .Tokens()
                    .Add "lights", "LH"&x
                End With
                With .ControlEvents()
                    .Events = Array("health"&x&"_off")
                    .State = 0
                End With
                With .ControlEvents()
                    .Events = Array("restart_health","health"&x&"_norm","complete_full_health")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("health"&x&"_warm")
                    .State = 2
                End With
                With .ControlEvents()
                    .Events = Array("health"&x&"_crit")
                    .State = 3
                End With
            End With
        Next

        'Define health bumper diverter shot
        With .Shots("health_diverter")
            .Profile = "health_shot_ready"
            With .ControlEvents()
                .Events = Array("raise_diverter")
                .State = 1
            End With
            .RestartEvents = Array("drop_diverter","mode_health_stopping") 
        End With
        

        With .ShowPlayer()
            With .EventName("health_charge1")
                .Key = "key_health_charge1"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tHealth"
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("health_charge2")
                .Key = "key_health_charge2"
                .Show = "insert_gi_spin_center"
                .Speed = 3
                .Loops = 1
                .Priority = 1000
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("complete_full_health")
                .Key = "key_health_full_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 15
                With .Tokens()
                    .Add "lights", "tHealth"
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("mode_health_started")  'turn on bummper lights
                .Key = "key_bumpers_on"
                .Show = "flicker_color_on_intensity" 
                .Speed = 10
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", GIColor3000k '"ffffff"
                    .Add "intensity", 10
                End With
            End With
            'Added health shows
            With .EventName("lsling_powerup_h")
                .Key = "key_lsling_powerup_h"
                .Show = "lsling_rotate2_cw"
                .Speed = 2
                .Loops = 3
                With .Tokens()
                    .Add "color1", HealthColor1
                    .Add "color2", HealthColor1
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            With .EventName("rsling_powerup_h")
                .Key = "key_rsling_powerup_h"
                .Show = "rsling_rotate2_ccw"
                .Speed = 2
                .Loops = 3
                With .Tokens()
                    .Add "color1", HealthColor1
                    .Add "color2", HealthColor1
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            'Bumpers
            For x = 1 to 4
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "05cc05" '"ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next
        End With

        With .VariablePlayer()
            'health_value
		    With .EventName("restart_health")
				With .Variable("health_value")
                    .Action = "set"
					.Int = 9  
				End With
			End With
            With .EventName("remove_health")
				With .Variable("health_value")
                    .Action = "add"
					.Int = -1  
				End With
			End With
            With .EventName("add_health")
				With .Variable("health_value")
                    .Action = "add"
					.Int = 1  
				End With
			End With
            'health_bump_value
            With .EventName("reset_health_bump")
				With .Variable("health_bump_value")
                    .Action = "set"
					.Int = 0  
				End With
			End With
            With .EventName("add_health_bump")
				With .Variable("health_bump_value")
                    .Action = "add"
					.Int = 1  
				End With
			End With
		End With

    End With

End Sub