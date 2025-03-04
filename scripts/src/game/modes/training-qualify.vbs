

'Training Qualify Mode.

'All of the training shots are initially lit. Hit the shots to make them dark.
'Hit all the shots to qualify training mode in the scoop.
'Starts with three shots to qualify training.. these are randomly chosen.
'An additional shot is added to qualify for each successive training round.
'Once qualified, the scoop is lit to start training.



Sub CreateTrainingQualifyMode
    Dim x

    With CreateGlfMode("training_qualify", 513)
        .StartEvents = Array("new_ball_started","stop_meteor_wave","stop_training","wizard_mode_ended")
        .StopEvents = Array("stop_training_qualify","mode_base_stopping","start_training","wizard_mode_started") ',"start_meteor_wave"


        With .EventPlayer()
            'Restart qualification round
            .Add "mode_training_qualify_started{current_player.num_training_shots_hit == current_player.num_training_shots}", Array("restart_qualify_training")
            .Add "mode_training_qualify_started{current_player.training_just_finished == 1}", Array("restart_qualify_training")
            .Add "restart_qualify_training{current_player.training_total_achieved < 6}", Array("create_training_shots")
            .Add "timer_training_shot_add_tick", Array("add_training_shot")
            'Successful qualification hits
            .Add MainShotNames(0)&"_hit{current_player.shot_training_shot1 == 1}", Array(MainShotNames(0)&"_training_off","training_shot_hit")
            .Add MainShotNames(1)&"_hit{current_player.shot_training_shot2 == 1}", Array(MainShotNames(1)&"_training_off","training_shot_hit")
            .Add MainShotNames(2)&"_hit{current_player.shot_training_shot3 == 1}", Array(MainShotNames(2)&"_training_off","training_shot_hit")
            .Add MainShotNames(3)&"_hit{current_player.shot_training_shot4 == 1}", Array(MainShotNames(3)&"_training_off","training_shot_hit")
            .Add MainShotNames(4)&"_hit{current_player.shot_training_shot5 == 1}", Array(MainShotNames(4)&"_training_off","training_shot_hit")
            .Add MainShotNames(5)&"_hit{current_player.shot_training_shot6 == 1}", Array(MainShotNames(5)&"_training_off","training_shot_hit")
            .Add MainShotNames(6)&"_hit{current_player.shot_training_shot7 == 1}", Array(MainShotNames(6)&"_training_off","training_shot_hit")
            .Add MainShotNames(7)&"_hit{current_player.shot_training_shot8 == 1}", Array(MainShotNames(7)&"_training_off","training_shot_hit")
            'Handle a successful hit
            .Add "training_shot_hit", Array("check_training_qualify")
            .Add "check_training_qualify{current_player.num_training_shots_hit == current_player.num_training_shots}", Array("training_shots_completed","play_voc_Training","training_flash")
            'Start the training selection
            .Add "s_Scoop_active{current_player.shot_training_ready == 1 && current_player.wizard_mode_is_ready==0}", Array("enable_scoop_hold")
            .Add "check_training{current_player.shot_training_ready==1}", Array("start_training_select") ',"kill_flippers"
            'Handle mystery and skillshot awards
            .Add "mystery_trainer_ready", Array("clear_training_shots","training_shots_completed")
            .Add "ss_trainer_ready", Array("clear_training_shots","training_shots_completed")
        End With

        With .RandomEventPlayer()
            With .EventName("add_training_shot")
                .Add MainShotNames(0)&"_training_on{current_player.shot_training_shot1 == 0}", 1
                .Add MainShotNames(1)&"_training_on{current_player.shot_training_shot2 == 0}", 1
                .Add MainShotNames(2)&"_training_on{current_player.shot_training_shot3 == 0}", 1
                .Add MainShotNames(3)&"_training_on{current_player.shot_training_shot4 == 0}", 1
                .Add MainShotNames(4)&"_training_on{current_player.shot_training_shot5 == 0}", 1
                .Add MainShotNames(5)&"_training_on{current_player.shot_training_shot6 == 0}", 1
                .Add MainShotNames(6)&"_training_on{current_player.shot_training_shot7 == 0}", 1
                .Add MainShotNames(7)&"_training_on{current_player.shot_training_shot8 == 0}", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
            With .EventName("training_shot_hit")
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

        With .SoundPlayer()
            With .EventName("play_voc_Training")
                .Key = "key_voc_Training"
                .Sound = "voc_Training"
            End With
        End With

     
        'Define our shots
        For x = 1 to 8
            With .Shots("training_shot"&x)
                .Profile = "training_profile"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                    .Add "color", TrainingColor
                End With
                With .ControlEvents()
                    .Events = Array(MainShotNames(x-1)&"_training_on")
                    .State = 1
                End With
                .RestartEvents = Array(MainShotNames(x-1)&"_training_off","clear_training_shots")
            End With
        Next

        'Training Ready
        With .Shots("training_ready")
            .Profile = "qualified_shot"
            With .Tokens()
                .Add "lights", "LX"
                .Add "color", TrainingColor
            End With
            With .ControlEvents()
                .Events = Array("training_shots_completed")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_training")
            .DisableEvents = Array("start_training_select")
            .EnableEvents = Array("mode_training_qualify_started")
        End With


        With .ShotProfiles("training_profile")
            With .States("unlit")
                .Show = "off"
                .Key = "key_training_off"
            End With
            With .States("on")
                .Show = "led_color"
                .Key = "key_training_on"
            End With
        End With


        With .Timers("training_shot_add")
            .TickInterval = 60
            .StartValue = "current_player.num_training_shots"
            .Direction = "down"
            .EndValue = 0
            With .ControlEvents()
                .EventName = "restart_qualify_training"
                .Action = "jump"
                .Value = "current_player.num_training_shots"
            End With
            With .ControlEvents()
                .EventName = "create_training_shots"
                .Action = "restart"
            End With
        End With

        With .VariablePlayer()
		    With .EventName("training_shots_completed{current_player.num_training_shots < 8}")
				With .Variable("num_training_shots")
                    .Action = "add"
					.Int = 1
				End With
			End With
            With .EventName("training_shot_hit")
				With .Variable("num_training_shots_hit")
                    .Action = "add"
					.Int = 1
				End With
			End With
            With .EventName("restart_qualify_training")
				With .Variable("num_training_shots_hit")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("training_just_finished")
                    .Action = "set"
					.Int = 0  
				End With
			End With
		End With

        With .ShowPlayer()
            With .EventName("training_flash")   
                .Key = "key_loaded_wiz_ready"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 4
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", TrainingColor
                End With
            End With
        End With

        With .SegmentDisplayPlayer()
            With .EventName("training_shots_completed")
                With .Display("player2")
                    .Text = """START"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """TRAINER"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With


    End With

End Sub