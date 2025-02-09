

'Training Moon Missile Mode.

'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award: only one hit required to collect associated power-up
'There is a time limit during training missions (60 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingMoonMissileMode
    Dim x

    With CreateGlfMode("training_moon_missile",700)
        .StartEvents = Array("start_training_moon_missile")
        .StopEvents = Array(GLF_BALL_ENDED,"stop_training")
        .Debug = True

        With .EventPlayer()
            .Debug = True
            .Add "mode_training_moon_missile_started", Array("init_training")
            'Stop the training
            .Add "training_moon_lane_group_collected_complete", Array("training_moon_missile_completed")
            .Add "timer_training_moon_missile_complete", Array("stop_training")
            .Add "training_moon_missile_completed", Array("stop_training")
            'Update the training select shots
            .Add "training_moon_lane_group_hit", Array("update_training_select_moon_lane","flash_gi","play_sfx_LS")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane1==0}", Array("update_training_select_moon_lane1a")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane1==1}", Array("update_training_select_moon_lane1b")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane2==0}", Array("update_training_select_moon_lane2a")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane2==1}", Array("update_training_select_moon_lane2b")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane3==0}", Array("update_training_select_moon_lane3a")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane3==1}", Array("update_training_select_moon_lane3b")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane4==0}", Array("update_training_select_moon_lane4a")
            .Add "update_training_select_moon_lane{current_player.shot_training_moon_lane4==1}", Array("update_training_select_moon_lane4b")
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
            With .Shots("training_moon_lane"&x)
                .Switch = MoonQualifySwitches(x-1)
                .Profile = "train_moon_missile"
                .Debug = True
                With .Tokens()
                    .Add "lights", MoonQualifyLightNames(x-1)
                    .Add "color", MoonColor
                End With
            End With
        Next

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("train_moon_missile")
            With .States("ready")
                .Show = "flash_color_with_fade"
                .Key = "key_train_s1"
                .Speed = 8
                With .Tokens()
                    .Add "color", MoonColor
                    .Add "fade", 400
                End With
            End With
            With .States("collected")
                .Show = "led_color"
                .Key = "key_train_s2"
                With .Tokens()
                    .Add "color", MoonColor
                End With
            End With
        End With

        ' Moon lane qualifying shot group
        With .ShotGroups("training_moon_lane_group")
            .Debug = True
            .Shots = Array("training_moon_lane1", "training_moon_lane2", "training_moon_lane3", "training_moon_lane4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
        End With



        With .VariablePlayer()
            .Debug = True
            'update the training select shots 1
            With .EventName("update_training_select_moon_lane1a")
				With .Variable("shot_training_select_moon_lane1")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_moon_lane1b")
				With .Variable("shot_training_select_moon_lane1")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 2
            With .EventName("update_training_select_moon_lane2a")
				With .Variable("shot_training_select_moon_lane2")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_moon_lane2b")
				With .Variable("shot_training_select_moon_lane2")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 3
            With .EventName("update_training_select_moon_lane3a") 
				With .Variable("shot_training_select_moon_lane3")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_moon_lane3b")
				With .Variable("shot_training_select_moon_lane3")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'update the training select shots 4
            With .EventName("update_training_select_moon_lane4a")
				With .Variable("shot_training_select_moon_lane4")
                    .Action = "set"
					.Int = 0  
				End With
            End With
            With .EventName("update_training_select_moon_lane4b")
				With .Variable("shot_training_select_moon_lane4")
                    .Action = "set"
					.Int = 3  
				End With
            End With
            'completed
            With .EventName("training_moon_missile_completed")
				With .Variable("training_moon_missile_achieved")
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
                    .Add "color", MoonColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("flash_gi")
                .Key = "key_training_gi"
                .Show = "flicker_color_on_intensity"
                .Speed = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", MoonColor
                    .Add "intensity", 10
                End With
            End With
            With .EventName("mode_training_moon_missile_stopping")
                .Key = "key_training_stopping"
                .BlockQueue = True
                .Show = "flicker_color"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", MoonColor
                    .Add "intensity", 10
                End With
            End With
        End With
        
        'Selection timer
        With .Timers("training_moon_missile")
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
                    .Text = """MOON """
                End With
                With .Display("player4")
                    .Text = """"""
                End With
                With .Display("pf")
                    .Text = "{devices.timers.training_moon_missile.ticks:0>2}"
                End With
            End With
        End With


    End With

End Sub