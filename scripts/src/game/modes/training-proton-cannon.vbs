

'Training Proton Cannon Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: only one hit required to collect associated power-up
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingProtonCannonMode
    Dim x

    With CreateGlfMode("training_proton_cannon",700)
        .StartEvents = Array("start_training_proton_cannon")
        .StopEvents = Array(GLF_BALL_ENDED,"stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_proton_cannon_started", Array("init_training")
            'successfull shot
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 0}", Array("light_proton_charge1","flash_gi")
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 1 && current_player.shot_training_proton_charge2 == 0}", Array("light_proton_charge2","flash_gi")
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge2 == 1 && current_player.shot_training_proton_charge3 == 0}", Array("light_proton_charge3") ',"flash_gi")
            .Add "light_proton_charge3", Array("training_achieved")
            'Stop the training
            .Add "training_achieved", Array("stop_training")
            .Add "timer_training_proton_cannon_complete", Array("stop_training")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", Array("delayed_release_moon_ball")
        End With


        'Define our shots
        For x = 1 to 3
            With .Shots("training_proton_charge"&x)
                .Profile = "training_powerups"
                With .Tokens()
                    .Add "lights", "LPC"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("light_proton_charge"&x)
                    .State = 1
                End With
                '.RestartEvents = Array("init_training")
            End With
        Next


        With .VariablePlayer()
            With .EventName("light_proton_charge1")
				With .Variable("shot_training_select_proton_charge1")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_proton_charge2")
				With .Variable("shot_training_select_proton_charge2")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_proton_charge3")
				With .Variable("shot_training_select_proton_charge3")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("training_achieved")
				With .Variable("training_proton_cannon_achieved")
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
                    .Add "color", ProtonColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ProtonColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_proton_cannon_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ProtonColor
                    .Add "intensity", 10
                End With
            End With
        End With
        
        'Selection timer
        With .Timers("training_proton_cannon")
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
                    .Text = """PROTON"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_proton_cannon.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub