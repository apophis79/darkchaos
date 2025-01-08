

'Meteor Wave Qualify Mode.


Sub CreateMeteorWaveQualifyMode

    With CreateGlfMode("meteor_wave_qualify", 1100)
        .StartEvents = Array("ball_started","stop_meteor_wave","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training")

        With .EventPlayer()
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value == 0}", Array("reset_countdown_value")
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value > 0}", Array("init_mwq_timer")
            .Add "reset_countdown_value", Array("init_mwq_timer")
            .Add "init_mwq_timer", Array("init_pf_display")
            .Add "init_mwq_timer{current_player.ball_just_started == 0}", Array("start_mwq_timer")
            .Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", Array("start_mwq_timer") 
            .Add "timer_meteor_countdown_complete", Array("start_meteor_wave")
            .Add "restart_tw_timer", Array("stop_mwq_timer")  'Timewarp started, so halt the countdown
            .Add "select_random_mystery", Array("stop_mwq_timer")  'Mystery started, so halt the countdown
        End With
        
        With .SegmentDisplayPlayer()
            With .EventName("init_pf_display")
                With .Display("pf")
                    .Text = "{devices.timers.meteor_countdown.ticks:0>2}"
                End With
            End With
        End With

        With .Timers("meteor_countdown")
            .TickInterval = 1000
            .StartValue = "current_player.meteor_countdown_value"
            .Direction = "down"
            .EndValue = 0
            With .ControlEvents()
                .EventName = "init_mwq_timer"
                .Action = "jump"
                .Value = "current_player.meteor_countdown_value"
            End With
            With .ControlEvents()
                .EventName = "start_mwq_timer"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "stop_mwq_timer"
                .Action = "stop"
            End With
        End With

        With .VariablePlayer()
            With .EventName("reset_countdown_value")
                With .Variable("meteor_countdown_value")
                    .Action = "set"
					.Int = MeteorWaveDelayTicks
				End With
			End With
            With .EventName("timer_meteor_countdown_tick")
                With .Variable("meteor_countdown_value")
                    .Action = "set"
					.Int = "devices.timers.meteor_countdown.ticks" 
				End With
			End With
            With .EventName("timer_meteor_countdown_complete")
                With .Variable("meteor_countdown_value")
                    .Action = "set"
					.Int = 0
				End With
			End With
		End With
        

    End With

End Sub