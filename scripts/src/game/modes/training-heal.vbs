

'Training Heal Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: divert pin remains up the rest of the game
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingHealMode
    Dim x

    With CreateGlfMode("training_heal",1300)
        .StartEvents = Array("start_training_heal")
        .StopEvents = Array("mode_base_stopping","stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_heal_started", Array("init_training","raise_diverter","play_lsling_training","play_rsling_training")
            'successfull shot
            .Add "s_Bumper1_active", Array("check_add_training_health_bump")
            .Add "s_Bumper2_active", Array("check_add_training_health_bump")
            .Add "s_Bumper3_active", Array("check_add_training_health_bump")
            .Add "s_TopSlingshot_active", Array("check_add_training_health_bump")
            'add health lights as needed
            .Add "check_add_training_health_bump{current_player.training_health_bump_value<"&BumperHitsPerRepairTrain&"}", Array("add_training_health_bump")
            .Add "check_add_training_health_bump{current_player.training_health_bump_value>="&BumperHitsPerRepairTrain&"}", Array("check_add_training_health","reset_training_health_bump")
            .Add "check_add_training_health{current_player.shot_training_health1 == 0}", Array("light_health1","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health1 == 1 and current_player.shot_training_health2 == 0}", Array("light_health2","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health2 == 1 and current_player.shot_training_health3 == 0}", Array("light_health3","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health3 == 1 and current_player.shot_training_health4 == 0}", Array("light_health4","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health4 == 1 and current_player.shot_training_health5 == 0}", Array("light_health5","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health5 == 1 and current_player.shot_training_health6 == 0}", Array("light_health6","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health6 == 1 and current_player.shot_training_health7 == 0}", Array("light_health7","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health7 == 1 and current_player.shot_training_health8 == 0}", Array("light_health8","flash_gi","play_sfx_LS","score_90000")
            .Add "check_add_training_health{current_player.shot_training_health8 == 1 and current_player.shot_training_health9 == 0}", Array("light_health9","training_achieved","play_sfx_LS","score_90000")
            .Add "play_sfx_LS", Array("play_sfx_LS_during_training")
            'Stop the training
            .Add "training_achieved", Array("stop_training","play_sfx_super_jackpot","training_stopped")
            .Add "timer_training_heal_complete", Array("stop_training","training_stopped","play_voc_training_incomplete")
            .Add "mode_training_heal_stopping{current_player.training_heal_achieved==0}", Array("drop_diverter")
            'handle gi flicker shows
            .Add "timer_training_heal_tick", Array("flicker_gi")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter{device.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("delayed_release_moon_ball")
        End With

        With .RandomEventPlayer()
            ' With .EventName("play_sfx_LS")
            '     .Add "play_sfx_LS1", 1
            '     .Add "play_sfx_LS2", 1
            '     .Add "play_sfx_LS3", 1
            '     .Add "play_sfx_LS4", 1
            '     .Add "play_sfx_LS5", 1
            '     .Add "play_sfx_LS6", 1
            '     .ForceAll = True
            '     .ForceDifferent = True
            ' End With
            With .EventName("flicker_gi")
                .Add "play_flicker_gi01", 1
                .Add "play_flicker_gi02", 1
                .Add "play_flicker_gi03", 1
                .Add "play_flicker_gi04", 1
                .Add "play_flicker_gi05", 1
                .Add "play_flicker_gi06", 1
                .Add "play_flicker_gi07", 1
                .Add "play_flicker_gi08", 1
                .Add "play_flicker_gi09", 1
                .Add "play_flicker_gi10", 1
                .Add "play_flicker_gi11", 1
                .Add "play_flicker_gi12", 1
                .Add "play_flicker_gi13", 1
                .Add "play_flicker_gi14", 1
                .Add "play_flicker_gi15", 1
                .Add "play_flicker_gi16", 1
                .Add "play_flicker_gi17", 1
                .Add "play_flicker_gi18", 1
                .Add "play_flicker_gi19", 1
                .Add "play_flicker_gi20", 1
                .Add "play_flicker_gi21", 1
                .Add "play_flicker_gi22", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With

        With .DOFPlayer()
            With .EventName("play_sfx_LS")
                .Action = "DOF_PULSE"
                .DOFEvent = 124
            End With
        End With

        With .ComboSwitches("cancel_training_h")
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .HoldTime = TrainingCancelTime
            .EventsWhenBoth = Array("stop_training","play_voc_training_canceled","training_stopped")
        End With

        With .ComboSwitches("cancel_training_warning_h")
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .HoldTime = TrainingCancelWarningTime
            .EventsWhenBoth = Array("training_cancel_warning")
            .EventsWhenInactive = Array("training_cancel_warning_stop")
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
                '.RestartEvents = Array("init_training")
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
                With .Variable("training_just_finished")
                    .Action = "set"
					.Int = 1  
				End With
            End With
            'training_moon_missile_used
            With .EventName("start_moon_multiball")
                With .Variable("training_moon_missile_used")
                    .Action = "set"
					.Int = 1  
				End With
            End With
        End With
        

        With .ShowPlayer()
            With .EventName("mode_training_heal_started")
                .Key = "key_training_bumpers"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", HealthColor1
                    .Add "intensity", 20
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
                .Loops = 0
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", HealthColor1
                    .Add "intensity", 10
                End With
            End With

            With .EventName("training_achieved")   
                .Key = "key_training_flash"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", HealthColor1
                End With
            End With

            'GI flicker
            For x = 1 to 9
                With .EventName("play_flicker_gi0"&x)   
                    .Key = "key_flicker_gi0"&x
                    .Show = "flicker2_color_on_intensity" 
                    .Speed = 2
                    .Loops = 0
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", HealthColor1
                        .Add "intensity", 10
                    End With
                End With
            Next
            For x = 10 to 22
                With .EventName("play_flicker_gi"&x)   
                    .Key = "key_flicker_gi"&x
                    .Show = "flicker2_color_on_intensity" 
                    .Speed = 2
                    .Loops = 0
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", HealthColor1
                        .Add "intensity", 10
                    End With
                End With
            Next

            'sling domes
            With .EventName("play_lsling_training")
                .Key = "key_lsling_training"
                .Show = "lsling_rotate1_cw"
                .Speed = 0.3
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 50
                End With
            End With
            With .EventName("play_rsling_training")
                .Key = "key_rsling_training"
                .Show = "rsling_rotate1_ccw"
                .Speed = 0.3
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 50
                End With
            End With

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
                        .Add "color", HealthColor1 
                        .Add "fade", 50
                    End With
                End With
            Next

            'cancel warning
            With .EventName("training_cancel_warning")
                .Key = "key_training_cancel_h_warning"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 14
                .Priority = 100
                With .Tokens()
                    .Add "lights", "tInlaneGI"
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("training_cancel_warning_stop")
                .Key = "key_training_cancel_h_warning"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 14
                .Priority = 100
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "tInlaneGI"
                    .Add "color", TrainingColor
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
                    .Text = ""
                    .Expire = 5000
                End With
                With .Display("player2")
                    .Text = "TRAIN "
                    .Expire = 5000
                End With
                With .Display("player3")
                    .Text = "HEALTH"
                    .Expire = 5000
                End With
                With .Display("player4")
                    .Text = ""
                    .Expire = 5000
                End With
                With .Display("pf")
                    .Text = "{device.timers.training_heal.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub