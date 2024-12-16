

'Training Qualify Mode.

'All of the training shots are initially lit. Hit the shots to make them dark.
'Hit all the shots to qualify training mode in the scoop.
'Starts with three shots to qualify training.. these are randomly chosen.
'An additional shot is added to qualify for each successive training round.
'Once qualified, the scoop is lit to start training.



Sub CreateTrainingQualifyMode
    Dim x

    With CreateGlfMode("training_qualify", 510)
        .StartEvents = Array("ball_started","timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks == 2}")
        .StopEvents = Array("ball_ended","timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 8}")
        ' .StartEvents = Array("ball_started","mode_meteor_wave_stopped")
        ' .StopEvents = Array("ball_ended","mode_meteor_wave_started")
        .Debug = True

     
        'Define our shots
        For x = 1 to 8
            With .Shots("training_shot"&x)
                .Profile = "training_profile"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                End With
                With .ControlEvents()
                    .Events = Array(MainShotNames(x-1)&"_hit")
                    .State = 1
                End With
            End With
        Next

        With GlfShotProfiles("training_profile")
            With .States("on")
                .Show = "led_color"
                With .Tokens()
                    .Add "color", TrainingColor
                End With
            End With
            With .States("unlit")
                .Show = "off"
            End With
        End With

        'Training Ready
        With .Shots("training_ready")
            .Profile = "qualified_shot"
            With .Tokens()
                .Add "lights", "LX"
                .Add "color", TrainingColor
            End With
            With .ControlEvents()
                .Events = Array("qualify_training_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_training")
        End With


        ' Training qualifying shot group
        With .ShotGroups("qualify_training")
            .Shots = Array("training_shot1", "training_shot2", "training_shot3", "training_shot4","training_shot5", "training_shot6", "training_shot7","training_shot8")
            .RestartEvents = Array("restart_qualify_training")
            .DisableEvents = Array("disable_qualify_training")
        End With


        ' Players
        With .EventPlayer()
            '.Add "mode_training_qualify_started", Array("restart_qualify_training")
            .Add "qualify_training_on_complete", Array("disable_qualify_training")
            .Add "s_Scoop_active{current_player.shot_training_ready==1}", Array("restart_qualify_training") 
        End With

        ' With .LightPlayer()
        '     With .Events("disable_qualify_training")
		' 		With .Lights("MainShots")
		' 			.Color = "000000"
		' 		End With
		' 	End With
        '     With .Events("restart_qualify_training")
		' 		With .Lights("MainShots")
		' 			.Color = TrainingColor
		' 		End With
		' 	End With
        ' End With

    End With

End Sub