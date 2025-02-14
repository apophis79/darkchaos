

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
            .Add "mode_training_ship_save_started", Array("init_training")
            'successfull shot
            .Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 0}", Array("light_ship_charge1","flash_gi","play_sfx_LS")
            .Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 1 && current_player.shot_training_ship_charge2 == 0}", Array("light_ship_charge2","flash_gi","play_sfx_LS")
            .Add "right_orbit_hit{current_player.shot_training_ship_charge2 == 1 && current_player.shot_training_ship_charge3 == 0}", Array("light_ship_charge3","play_sfx_LS")
            .Add "light_ship_charge3", Array("training_achieved")
            'Stop the training
            .Add "training_achieved", Array("stop_training")
            .Add "timer_training_ship_save_complete", Array("stop_training")
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
                End With
                With .Display("player2")
                    .Text = """TRAIN """
                End With
                With .Display("player3")
                    .Text = """SAVER"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_ship_save.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub