

'Training Qualify Mode.

'All of the training shots are initially lit. Hit the shots to make them dark.
'Hit all the shots to qualify training mode in the scoop.
'Starts with three shots to qualify training.. these are randomly chosen.
'An additional shot is added to qualify for each successive training round.
'Once qualified, the scoop is lit to start training.



Sub CreateTrainingQualifyMode
    Dim x

    With CreateGlfMode("training_qualify", 513)
        .StartEvents = Array("ball_started","stop_meteor_wave")
        .StopEvents = Array("ball_ended","start_meteor_wave")
        .Debug = True

     
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
                .RestartEvents = Array(MainShotNames(x-1)&"_training_off")
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


        ' ' Training qualifying shot group
        ' With .ShotGroups("qualify_training")
        '     .Shots = Array("training_shot1", "training_shot2", "training_shot3", "training_shot4","training_shot5", "training_shot6", "training_shot7","training_shot8")
        '     .RestartEvents = Array("restart_qualify_training")
        '     .DisableEvents = Array("disable_qualify_training")
        ' End With


        With .EventPlayer()
            .Debug = True
            .Add "mode_training_qualify_started{current_player.num_training_shots_hit == current_player.num_training_shots}", Array("restart_qualify_training")
            .Add MainShotNames(0)&"_hit{current_player.shot_training_shot1 == 1}", Array(MainShotNames(0)&"_training_off","training_shot_hit")
            .Add MainShotNames(1)&"_hit{current_player.shot_training_shot2 == 1}", Array(MainShotNames(1)&"_training_off","training_shot_hit")
            .Add MainShotNames(2)&"_hit{current_player.shot_training_shot3 == 1}", Array(MainShotNames(2)&"_training_off","training_shot_hit")
            .Add MainShotNames(3)&"_hit{current_player.shot_training_shot4 == 1}", Array(MainShotNames(3)&"_training_off","training_shot_hit")
            .Add MainShotNames(4)&"_hit{current_player.shot_training_shot5 == 1}", Array(MainShotNames(4)&"_training_off","training_shot_hit")
            .Add MainShotNames(5)&"_hit{current_player.shot_training_shot6 == 1}", Array(MainShotNames(5)&"_training_off","training_shot_hit")
            .Add MainShotNames(6)&"_hit{current_player.shot_training_shot7 == 1}", Array(MainShotNames(6)&"_training_off","training_shot_hit")
            .Add MainShotNames(7)&"_hit{current_player.shot_training_shot8 == 1}", Array(MainShotNames(7)&"_training_off","training_shot_hit")
            .Add "training_shot_hit",Array("check_training_qualify")
            .Add "check_training_qualify{current_player.num_training_shots_hit == current_player.num_training_shots}", Array("training_shots_completed")
            .Add "s_Scoop_active{current_player.shot_training_ready==1}", Array("restart_qualify_training")
            .Add "restart_qualify_training", Array("create_training_shots")
            .Add "timer_training_shot_add_tick", Array("add_training_shot")
        End With

        With .RandomEventPlayer()
            .Debug = True
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
        End With

        With .Timers("training_shot_add")
            .Debug = True
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
			End With
		End With

        With .SegmentDisplayPlayer()
            With .Events("training_shots_completed")
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