

'Training Cluster Bomb Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: only one hit required to collect associated power-up
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingClusterBombMode
    Dim x

    With CreateGlfMode("training_cluster_bomb",700)
        .StartEvents = Array("start_training_cluster_bomb")
        .StopEvents = Array(GLF_BALL_ENDED,"stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_cluster_bomb_started", Array("init_training")
            'successfull shot
            .Add "left_orbit_hit{current_player.shot_training_cluster_charge1 == 0}", Array("light_cluster_charge1","flash_gi")
            .Add "left_orbit_hit{current_player.shot_training_cluster_charge1 == 1 && current_player.shot_training_cluster_charge2 == 0}", Array("light_cluster_charge2","flash_gi")
            .Add "left_orbit_hit{current_player.shot_training_cluster_charge2 == 1 && current_player.shot_training_cluster_charge3 == 0}", Array("light_cluster_charge3") ',"flash_gi")
            .Add "light_cluster_charge3", Array("training_achieved")
            'Stop the training
            .Add "training_achieved", Array("stop_training")
            .Add "timer_training_cluster_bomb_complete", Array("stop_training")
            .Add "mode_training_cluster_bomb_stopping", Array("restart_training_qualify")
            'Handle moon ramp
            .Add "s_MoonRamp_active", Array("release_moon_ball")
        End With


        'Define our shots
        For x = 1 to 3
            With .Shots("training_cluster_charge"&x)
                .Profile = "training_powerups"
                With .Tokens()
                    .Add "lights", "LCC"&x
                    .Add "color", ClusterBombColor
                End With
                With .ControlEvents()
                    .Events = Array("light_cluster_charge"&x)
                    .State = 1
                End With
                .RestartEvents = Array("init_training")
            End With
        Next


        With .VariablePlayer()
            With .EventName("light_cluster_charge1")
				With .Variable("shot_training_select_cluster_charge1")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_cluster_charge2")
				With .Variable("shot_training_select_cluster_charge2")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("light_cluster_charge3")
				With .Variable("shot_training_select_cluster_charge3")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            With .EventName("training_achieved")
				With .Variable("training_cluster_bomb_achieved")
                    .Action = "set"
					.Int = 1  
				End With
                With .Variable("training_total_achieved")
                    .Action = "add"
					.Int = 1  
				End With
            End With
            With .EventName("stop_training")
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
                    .Add "color", ClusterBombColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ClusterBombColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_cluster_bomb_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ClusterBombColor
                    .Add "intensity", 10
                End With
            End With
        End With
        
        'Selection timer
        With .Timers("training_cluster_bomb")
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
                    .Text = """CLUSTER"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_cluster_bomb.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub