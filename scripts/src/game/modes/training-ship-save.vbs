

'Training Ship Save Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: only one hit required to collect associated power-up
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingShipSaveMode
    Dim x

    With CreateGlfMode("training_ship_save",700)
        .StartEvents = Array("start_training_ship_save")
        .StopEvents = Array("mode_base_stopping","stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_ship_save_started", Array("init_training","play_lsling_training","play_rsling_training")
            'successfull shot
            .Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 0}", Array("light_ship_charge1","flash_gi","play_sfx_LS","score_200000")
            .Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 1 && current_player.shot_training_ship_charge2 == 0}", Array("light_ship_charge2","flash_gi","play_sfx_LS","score_300000")
            .Add "right_orbit_hit{current_player.shot_training_ship_charge2 == 1 && current_player.shot_training_ship_charge3 == 0}", Array("light_ship_charge3","play_sfx_LS","score_500000")
            .Add "light_ship_charge3", Array("training_achieved","play_sfx_super_jackpot")
            'Stop the training
            .Add "training_achieved", Array("stop_training","training_stopped")
            .Add "timer_training_ship_save_complete", Array("stop_training","training_stopped","play_voc_training_incomplete")
            'handle gi flicker shows
            .Add "timer_training_ship_save_tick", Array("flicker_gi")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("delayed_release_moon_ball")
        End With

        With .RandomEventPlayer()
            With .EventName("play_sfx_LS")
                .Add "play_sfx_LS1", 1
                .Add "play_sfx_LS2", 1
                .Add "play_sfx_LS3", 1
                .Add "play_sfx_LS4", 1
                .Add "play_sfx_LS5", 1
                .Add "play_sfx_LS6", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
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
                .DOFEvent = 127
            End With
        End With

        With .ComboSwitches("cancel_training_ss")
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .HoldTime = TrainingCancelTime
            .EventsWhenBoth = Array("stop_training","play_voc_training_canceled","training_stopped")
        End With

        With .ComboSwitches("cancel_training_warning_ss")
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .HoldTime = TrainingCancelWarningTime
            .EventsWhenBoth = Array("training_cancel_warning")
            .EventsWhenInactive = Array("training_cancel_warning_stop")
        End With

        'Define our shots
        For x = 1 to 3
            With .Shots("training_ship_charge"&x)
                '.Debug = True
                .Profile = "training_powerups"
                With .Tokens()
                    .Add "lights", "LF"&x
                    .Add "color", ShipSaveColor
                End With
                With .ControlEvents()
                    .Events = Array("light_ship_charge"&x)
                    .State = 1
                End With
                '.RestartEvents = Array("init_training")
            End With
        Next


        With .VariablePlayer()
            '.Debug = True
            With .EventName("light_ship_charge1")
				With .Variable("shot_training_select_ship_charge1")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_ship_charge2")
				With .Variable("shot_training_select_ship_charge2")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_ship_charge3")
				With .Variable("shot_training_select_ship_charge3")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("training_achieved")
				With .Variable("training_ship_save_achieved")
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
            With .EventName("init_training")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ShipSaveColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ShipSaveColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_ship_save_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ShipSaveColor
                    .Add "intensity", 10
                End With
            End With

            With .EventName("training_achieved")   
                .Key = "key_training_flash"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", ShipSaveColor
                End With
            End With

            'GI flicker
            For x = 1 to 9
                With .EventName("play_flicker_gi0"&x)   
                    .Key = "key_flicker_gi0"&x
                    .Show = "flicker2_color_on_intensity" 
                    .Speed = 2
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", ShipSaveColor
                        .Add "intensity", 10
                    End With
                End With
            Next
            For x = 10 to 22
                With .EventName("play_flicker_gi"&x)   
                    .Key = "key_flicker_gi"&x
                    .Show = "flicker2_color_on_intensity" 
                    .Speed = 2
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", ShipSaveColor
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
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "ffffff" 
                        .Add "fade", 50
                    End With
                End With
            Next

            'cancel warning
            With .EventName("training_cancel_warning")
                .Key = "key_training_cancel_ss_warning"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 15
                .Priority = 100
                With .Tokens()
                    .Add "lights", "tInlaneGI"
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("training_cancel_warning_stop")
                .Key = "key_training_cancel_ss_warning"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 15
                .Priority = 100
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "tInlaneGI"
                    .Add "color", TrainingColor
                End With
            End With

        End With
        
        'Selection timer
        With .Timers("training_ship_save")
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
                    .Expire = 5000
                End With
                With .Display("player2")
                    .Text = """TRAIN """
                    .Expire = 5000
                End With
                With .Display("player3")
                    .Text = """SAVER"""
                    .Expire = 5000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 5000
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_ship_save.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub