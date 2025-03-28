

'Skillshots Mode.


Sub CreateSkillshotsMode
    Dim x

    With CreateGlfMode("skillshots", 500)
        .StartEvents = Array("new_ball_started","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","stop_skillshots","start_training_select","wizard_mode_started") ',"start_meteor_wave"
        

        With .EventPlayer()
            'Only start skillshots if starting a new ball
            .Add "mode_skillshots_started{current_player.ball_just_started==1 && current_player.shot_meteor_wave9 < 2}", Array("init_ss")
            'Handle successful skillshots
            .Add "s_TargetMystery2_active{current_player.shot_ss==1}", Array("ss_achieved")
            .Add "left_side_down_hit{current_player.shot_ss==1}", Array("sss_achieved") 
            .Add "ss_achieved", Array("ss_trainer_ready","score_500000")
            .Add "sss_achieved", Array("ss_trainer_ready","sss_mystery_ready","score_1000000")
            'Stop skillshots
            .Add "timer_skillshots_complete", Array("stop_skillshots") 
            .Add "s_InnerOrb1_active", Array("stop_skillshots")
        End With

        With .SoundPlayer()
            With .EventName("ss_achieved")
                .Key = "key_voc_ss"
                .Sound = "voc_ss"
            End With
            With .EventName("sss_achieved")
                .Key = "key_voc_sss"
                .Sound = "voc_sss"
            End With
        End With


        'skill shot is ready, two states
        With .ShotProfiles("ss_ready")
            With .States("unlit")
                .Key = "key_ss_shot_not_ready"
                .Show = "off"
                With .Tokens()
                    .Add "lights", "LM2"
                End With
            End With
            With .States("ready")
                .Key = "key_ss_shot_is_ready"
                .Show = "flash_color_with_fade"
                .Priority = 500
                .Speed = 3
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", SkillshotColor
                    .Add "lights", "LM2"
                End With
            End With
        End With
     
        'Define health shots
        With .Shots("ss")
            .Profile = "ss_ready"
            With .ControlEvents()
                .Events = Array("init_ss")
                .State = 1
            End With
            .ResetEvents = Array("stop_skillshots","ss_achieved") 
        End With


        


        With .Timers("skillshots")
            .TickInterval = SkillshotsTickInterval
            .StartValue = 0
            .EndValue = SkillshotsTickLimit
            With .ControlEvents()
                .EventName = "new_ball_active"
                .Action = "start"
            End With
        End With

        With .ShowPlayer()
            With .EventName("ss_achieved")
                .Key = "key_ss_achieved"
                .Show = "insert_swap2"
                .Speed = 1.5
                .Loops = 2
                .Priority = 3000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", SkillshotColor
                    .Add "intensity", 100
                End With
            End With
            With .EventName("sss_achieved")
                .Key = "key_sss_achieved"
                .Show = "insert_swap3"
                .Speed = 1.5
                .Loops = 2
                .Priority = 3000
                With .Tokens()
                    .Add "color1", "000000"
                    .Add "color2", SkillshotColor
                    .Add "color3", TrainingColor
                    .Add "intensity", 100
                End With
            End With
        End With

    End With

End Sub