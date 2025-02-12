

'Training Shields Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: only one hit required to collect associated power-up
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingShieldsMode
    Dim x

    With CreateGlfMode("training_shields",700)
        .StartEvents = Array("start_training_shields")
        .StopEvents = Array("mode_base_stopping","stop_training")
        .Debug = True

        With .EventPlayer()
            .Debug = True
            .Add "mode_training_shields_started", Array("init_training")
            'Stop the training
            .Add "training_shield_group_collected_complete", Array("training_shields_completed")
            .Add "timer_training_shields_complete", Array("stop_training")
            .Add "training_shields_completed", Array("stop_training")
            'Update the training select shots
            .Add "training_shield_group_hit", Array("update_training_select_shields","flash_gi","play_sfx_LS")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge1==0}", Array("update_training_select_shield1a")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge1==1}", Array("update_training_select_shield1b")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge2==0}", Array("update_training_select_shield2a")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge2==1}", Array("update_training_select_shield2b")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge3==0}", Array("update_training_select_shield3a")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge3==1}", Array("update_training_select_shield3b")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge4==0}", Array("update_training_select_shield4a")
            .Add "update_training_select_shields{current_player.shot_training_shield_charge4==1}", Array("update_training_select_shield4b")
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
        For x = 1 to 4
            With .Shots("training_shield_charge"&x)
                .Switch = "s_TargetShield"&x
                .Profile = "train_shields"
                .Debug = True
                With .Tokens()
                    .Add "lights", "LSC"&x
                    .Add "color", ShieldsColor
                End With
            End With
        Next

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("train_shields")
            With .States("ready")
                .Show = "flash_color_with_fade"
                .Key = "key_train_s1"
                .Speed = 8
                With .Tokens()
                    .Add "color", ShieldsColor
                    .Add "fade", 400
                End With
            End With
            With .States("collected")
                .Show = "led_color"
                .Key = "key_train_s2"
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With

        ' Shield qualifying shot group
        With .ShotGroups("training_shield_group")
            .Debug = True
            .Shots = Array("training_shield_charge1", "training_shield_charge2", "training_shield_charge3", "training_shield_charge4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
        End With



        With .VariablePlayer()
            .Debug = True
            'update the training select shots 1
            With .EventName("update_training_select_shield1a")
				With .Variable("shot_training_select_shield_charge1")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_shield1b")
				With .Variable("shot_training_select_shield_charge1")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 2
            With .EventName("update_training_select_shield2a")
				With .Variable("shot_training_select_shield_charge2")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_shield2b")
				With .Variable("shot_training_select_shield_charge2")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 3
            With .EventName("update_training_select_shield3a") 
				With .Variable("shot_training_select_shield_charge3")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_shield3b")
				With .Variable("shot_training_select_shield_charge3")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 4
            With .EventName("update_training_select_shield4a")
				With .Variable("shot_training_select_shield_charge4")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_shield4b")
				With .Variable("shot_training_select_shield_charge4")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'completed
            With .EventName("training_shields_completed")
				With .Variable("training_shields_achieved")
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
                    .Add "color", ShieldsColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ShieldsColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_shields_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", ShieldsColor
                    .Add "intensity", 10
                End With
            End With
        End With
        
        'Selection timer
        With .Timers("training_shields")
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
                    .Text = """SHIELDS"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_shields.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub