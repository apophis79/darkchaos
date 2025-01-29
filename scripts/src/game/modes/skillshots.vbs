

'Skillshots Mode.


Sub CreateSkillshotsMode
    Dim x

    With CreateGlfMode("skillshots", 510)
        .StartEvents = Array("ball_started","stop_training")
        .StopEvents = Array("ball_ended","stop_skillshots","start_meteor_wave","start_training_select")
        

        With .EventPlayer()
            'Only start skillshots if starting a new ball
            .Add "check_skillshot_ready{current_player.ball_just_started==1}", Array("init_ss")
            'Handle successful skillshots
            .Add "s_TargetMystery2_active{current_player.shot_ss==1}", Array("ss_achieved")
            .Add "left_side_down_hit{current_player.shot_ss==1}", Array("sss_achieved") 
            .Add "ss_achieved", Array("ss_trainer_ready")
            .Add "sss_achieved", Array("ss_trainer_ready","sss_mystery_ready")
            'Stop skillshots
            .Add "timer_skillshots_complete", Array("stop_skillshots") 
            .Add "s_InnerOrb1_active", Array("stop_skillshots")
        End With

        With .SoundPlayer()
            With .EventName("ss_achieved")
                .Sound = "sfx_ss"
            End With
            With .EventName("sss_achieved")
                .Sound = "sfx_sss"
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
                .Show = "flash_color_with_fade"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", SkillshotColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("sss_achieved")
                .Key = "key_sss_achieved"
                .Show = "sss"
                .Speed = 1
                .Loops = 1
            End With
        End With


    End With

End Sub