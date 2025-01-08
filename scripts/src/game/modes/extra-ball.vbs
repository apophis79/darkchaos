

'Extra Ball Mode.

Sub CreateExtraBallMode
    Dim x

    With CreateGlfMode("extra_ball", 510)
        .StartEvents = Array("ball_started","mode_meteor_wave_stopped","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training")
        

        With .EventPlayer()
            .Add "mode_extra_ball_started", Array("check_eb")
            .Add "check_eb{current_player.light_the_eb == 1}", Array("eb_now_lit")
            .Add "s_Scoop_active{current_player.shot_eb_ready == 1}", Array("restart_eb","eb_achieved") 
        End With

        With .ExtraBalls("eb")
            .AwardEvents = Array("eb_achieved")
            .MaxPerGame = 4
        End With
     
        'EB Ready
        With .Shots("eb_ready")
            .Profile = "qualified_shot"
            With .Tokens()
                .Add "lights", "LEBR"
                .Add "color", HealthColor1
            End With
            With .ControlEvents()
                .Events = Array("eb_now_lit")
                .State = 1
            End With
            .RestartEvents = Array("restart_eb")
        End With


        With .Shots("eb_shoot_again")
            .Profile = "extraball"
            With .ControlEvents()
                .Events = Array("eb_achieved")
                .State = 1
            End With
            .ResetEvents = Array("ball_ended")
        End With


        With .ShotProfiles("extraball")
            With .States("unlit")
                .Show = "off"
                .Key = "key_eb_unlit"
                With .Tokens()
                    .Add "lights", "LSA"
                End With
            End With
            With .States("lit")
                .Show = "led_color"
                .Key = "key_eb_lit"
                With .Tokens()
                    .Add "lights", "LSA"
                    .Add "color", ShipSaveColor
                End With
            End With
        End With



        With .VariablePlayer()
            With .EventName("eb_now_lit") 
                With .Variable("light_the_eb")
                    .Action = "set"
                    .Int = 0
                End With
            End With
		End With


    End With

End Sub