

'Extra Ball Mode.


Sub EB1()  
    DispatchPinEvent "eb_now_lit", Null   'DEBUG
End Sub


Sub CreateExtraBallMode
    Dim x

    With CreateGlfMode("extra_ball", 510)
        .StartEvents = Array("ball_started","mode_meteor_wave_stopped","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training_select")
        

        With .EventPlayer()
            'initialize the EB
            .Add "mode_extra_ball_started", Array("check_eb")
            .Add "check_eb{current_player.light_the_eb == 1}", Array("eb_now_lit")
            'handle successful scoop hit
            .Add "s_Scoop_active{current_player.shot_eb_ready == 0}", Array("eb_complete") 'EB not available so move on
            .Add "s_Scoop_active{current_player.shot_eb_ready == 1}", Array("enable_scoop_hold","play_eb_show","eb_achieved") 'Collect the EB
            'only release the ball if mystery and training not also qualified (those use the scoop also)
            .Add "eb_complete{current_player.shot_mystery_ready==0 && current_player.shot_training_ready==0}", Array("release_scoop_hold")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            .Add "eb_complete", Array("restart_eb","start_mwq_timer","check_mystery") 'restart meteor wave countdown, move on to mystery mode
        End With


        With .ExtraBalls("eb")
            .AwardEvents = Array("eb_achieved")
            .MaxPerGame = 4
        End With


        With .ShowPlayer()
            With .EventName("play_eb_show")
                .Key = "key_eb_show"
                .Show = "mystery"
                .Speed = 1
                .Loops = 1
                .EventsWhenCompleted = Array("eb_complete")
            End With
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

        
        With .SegmentDisplayPlayer()
            With .EventName("play_eb_show")
                With .Display("player1")
                    .Text = """"""
                    .Expire = EBShowLength
                End With
                With .Display("player2")
                    .Text = """ EXTRA """
                    .Flashing = "all"
                    .Expire = EBShowLength
                End With
                With .Display("player3")
                    .Text = """ BALL """
                    .Flashing = "all"
                    .Expire = EBShowLength
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = EBShowLength
                End With
            End With
        End With


    End With

End Sub