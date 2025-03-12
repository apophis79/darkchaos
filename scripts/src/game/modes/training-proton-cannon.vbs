

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
        .StopEvents = Array("mode_base_stopping","stop_training")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_proton_cannon_started", Array("init_training","play_lsling_training","play_rsling_training")
            'successfull shot
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 0}", Array("light_proton_charge1","flash_gi","play_sfx_LS","score_20000")
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 1 && current_player.shot_training_proton_charge2 == 0}", Array("light_proton_charge2","flash_gi","play_sfx_LS","score_30000")
            .Add "inner_orbit_hit{current_player.shot_training_proton_charge2 == 1 && current_player.shot_training_proton_charge3 == 0}", Array("light_proton_charge3","play_sfx_LS","score_50000") ',"flash_gi")
            .Add "light_proton_charge3", Array("training_achieved")
            'Stop the training
            .Add "training_achieved", Array("stop_training","play_sfx_super_jackpot")
            .Add "timer_training_proton_cannon_complete", Array("stop_training")
            'handle gi flicker shows
            .Add "timer_training_proton_cannon_tick", Array("flicker_gi")
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

            With .EventName("training_achieved")   
                .Key = "key_training_flash"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", ProtonColor
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
                        .Add "color", ProtonColor
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
                        .Add "color", ProtonColor
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