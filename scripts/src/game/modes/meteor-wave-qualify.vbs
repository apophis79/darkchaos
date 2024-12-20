

'Meteor Wave Qualify Mode.


Sub CreateMeteorWaveQualifyMode

    With CreateGlfMode("meteor_wave_qualify", 900)
        '.StartEvents = Array("ball_started","timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks == 8}")
        '.StopEvents = Array("ball_ended","timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 2}")
        .StartEvents = Array("ball_started","mode_meteor_wave_stopped")
        .StopEvents = Array("ball_ended","mode_meteor_wave_started")
        .Debug = True
        
        With .SegmentDisplayPlayer()
            With .Events("init_pf_display")
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
            ' With .ControlEvents()
            '     .EventName = "restart_mwq_timer"
            '     .Action = "restart"
            ' End With
        End With

        With .VariablePlayer()
            .Debug = True
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
        
        With .EventPlayer()
            .Debug = True
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value == 0}", Array("reset_countdown_value")
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value > 0}", Array("init_mwq_timer")
            .Add "reset_countdown_value", Array("init_mwq_timer")
            .Add "init_mwq_timer", Array("init_pf_display")
            .Add "init_mwq_timer{current_player.ball_just_started == 0}", Array("start_mwq_timer")
            .Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", Array("start_mwq_timer") 
            .Add "timer_meteor_countdown_complete", Array("start_meteor_wave")
            .Add "restart_tw_timer", Array("stop_mwq_timer")  'Timewarp started, so halt the countdown
        End With

    End With

End Sub