

'Health Mode.

'The health bar has 9 lights. At full health when all are lit. 
'Health starts at full at the beginning of a new ball.
'Health can decrease in a couple ways: 1) meteor wave earth hits, 2) UFO attacks
'Health can increase in a few ways: 1) bumper hits, 2) slingshot hits, 3) mystery awards
'When health goes to zero, the flippers die and you lose the ball.


Sub CreateHealthMode
    Dim x

    With CreateGlfMode("health", 510)
        .StartEvents = Array("ball_started","stop_training")
        .StopEvents = Array("ball_ended","start_training_select")

        With .EventPlayer()
            'restart the mode
            .Add "mode_health_started", Array("restart_health","reset_health_bump")
            .Add "mode_health_started{current_player.training_heal_achieved==1}", Array("raise_diverter") 'training boost
            'successful bumper hits
            .Add "s_Bumper1_active", Array("check_add_health_bump")
            .Add "s_Bumper2_active", Array("check_add_health_bump")
            .Add "s_Bumper3_active", Array("check_add_health_bump")
            .Add "s_Bumper4_active", Array("check_add_health_bump")
            ' .Add "s_LeftSlingshot_active", Array("check_add_health_bump")
            ' .Add "s_RightSlingshot_active", Array("check_add_health_bump")
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
            .Add "check_remove_health{current_player.health_value==8}", Array("health8_off","remove_health")
            .Add "check_remove_health{current_player.health_value==7}", Array("health7_off","health6_warm","health5_warm","health4_warm","health3_warm","health2_warm","health1_warm","remove_health")
            .Add "check_remove_health{current_player.health_value==6}", Array("health6_off","remove_health")
            .Add "check_remove_health{current_player.health_value==5}", Array("health5_off","remove_health")
            .Add "check_remove_health{current_player.health_value==4}", Array("health4_off","health3_crit","health2_crit","health1_crit","remove_health")
            .Add "check_remove_health{current_player.health_value==3}", Array("health3_off","remove_health")
            .Add "check_remove_health{current_player.health_value==2}", Array("health2_off","remove_health")
            .Add "check_remove_health{current_player.health_value==1}", Array("health1_off","remove_health","kill_flippers")
            'handle earth hits
            .Add "earth_hit{current_player.health_value>0}", Array("check_remove_health")
        End With

        'Define a shot profile with four states, health meter leves
        With .ShotProfiles("health_meter")
            With .States("unlit")
                .Show = "off"
                .Key = "key_health_off"
            End With
            With .States("normal")
                .Show = "led_color"
                .Key = "key_health_normal"
                With .Tokens()
                    .Add "color", HealthColor1
                End With
            End With
            With .States("warning")
                .Show = "led_color"
                .Key = "key_health_warning"
                With .Tokens()
                    .Add "color", HealthColor2
                End With
            End With
            With .States("critical")
                .Show = "flash_color"
                .Key = "key_health_critical"
                .Speed = 15
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
                    .Events = Array("restart_health","health"&x&"_norm")
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

        With .ShowPlayer()
            With .EventName("add_health")
                .Key = "key_health_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
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
                    .Add "color", "ffffff"
                    .Add "intensity", 15
                End With
            End With
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