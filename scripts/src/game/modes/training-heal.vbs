

'Training Heal Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: divert pin remains up the rest of the game
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingHealMode
    Dim x

    With CreateGlfMode("training_heal",700)
        .StartEvents = Array("start_training_heal")
        .StopEvents = Array(GLF_BALL_ENDED,"stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_heal_started", Array("init_training")
            'successfull shot
            .Add "s_Bumper1_active", Array("check_add_training_health_bump")
            .Add "s_Bumper2_active", Array("check_add_training_health_bump")
            .Add "s_Bumper3_active", Array("check_add_training_health_bump")
            .Add "s_Bumper4_active", Array("check_add_training_health_bump")
            'add health lights as needed
            .Add "check_add_training_health_bump{current_player.training_health_bump_value<"&BumperHitsPerRepairTrain&"}", Array("add_training_health_bump")
            .Add "check_add_training_health_bump{current_player.training_health_bump_value=="&BumperHitsPerRepairTrain&"}", Array("check_add_training_health","reset_training_health_bump")
            .Add "check_add_training_health{current_player.shot_training_health1 == 0}", Array("light_health1","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health1 == 1 && current_player.shot_training_health2 == 0}", Array("light_health2","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health2 == 1 && current_player.shot_training_health3 == 0}", Array("light_health3","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health3 == 1 && current_player.shot_training_health4 == 0}", Array("light_health4","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health4 == 1 && current_player.shot_training_health5 == 0}", Array("light_health5","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health5 == 1 && current_player.shot_training_health6 == 0}", Array("light_health6","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health6 == 1 && current_player.shot_training_health7 == 0}", Array("light_health7","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health7 == 1 && current_player.shot_training_health8 == 0}", Array("light_health8","flash_gi")
            .Add "check_add_training_health{current_player.shot_training_health8 == 1 && current_player.shot_training_health9 == 0}", Array("light_health9","training_achieved")
            'Stop the training
            .Add "training_achieved", Array("stop_training")
            .Add "timer_training_heal_complete", Array("stop_training")
            .Add "mode_training_heal_stopping", Array("restart_training_qualify")
            'Handle moon ramp
            .Add "s_MoonRamp_active", Array("release_moon_ball")
        End With


        'Define our shots
        For x = 1 to 9
            With .Shots("training_health"&x)
                .Profile = "training_powerups"
                With .Tokens()
                    .Add "lights", "LH"&x
                    .Add "color", HealthColor1
                End With
                With .ControlEvents()
                    .Events = Array("light_health"&x)
                    .State = 1
                End With
                .RestartEvents = Array("init_training")
            End With
        Next

        With .VariablePlayer()
            For x = 1 to 9
                With .EventName("light_health"&x)
                    With .Variable("shot_training_select_health"&x)
                        .Action = "set"
                        .Int = 3  
                    End With
                End With
            Next
            'training health bump value
            With .EventName("reset_training_health_bump")
				With .Variable("training_health_bump_value")
                    .Action = "set"
					.Int = 0  
				End With
			End With
            With .EventName("add_training_health_bump")
				With .Variable("training_health_bump_value")
                    .Action = "add"
					.Int = 1  
				End With
			End With
            'training achieved
            With .EventName("training_achieved")
				With .Variable("training_heal_achieved")
                    .Action = "set"
					.Int = 1  
				End With
                With .Variable("training_total_achieved")
                    .Action = "add"
					.Int = 1  
				End With
            End With
            With .EventName("mode_training_heal_stopping")
                With .Variable("training_just_finished")
                    .Action = "set"
					.Int = 1  
				End With
			End With
        End With
        

        With .ShowPlayer()
            With .EventName("stop_training")
                .Key = "key_training_bumpers"
                .Show = "led_color"
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("init_training")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", HealthColor1
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", HealthColor1
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_heal_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", HealthColor1
                    .Add "intensity", 10
                End With
            End With
        End With
        
        'Selection timer
        With .Timers("training_heal")
            '.Debug = True
            .Direction = "down"
            .TickInterval = 1000
            .StartValue = TrainingTicks
            .EndValue = 0
            With .ControlEvents()
                .EventName = "init_training"
                .Action = "restart"
            End With
        End With


        'Display
        With .SegmentDisplayPlayer()
            With .EventName("init_training")
                With .Display("player1")
                    .Text = """"""
                End With
                With .Display("player2")
                    .Text = """TRAIN """
                End With
                With .Display("player3")
                    .Text = """HEALTH"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_heal.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub