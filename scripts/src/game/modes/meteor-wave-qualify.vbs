

'Meteor Wave Qualify Mode.


Sub CreateMeteorWaveQualifyMode

    With CreateGlfMode("meteor_wave_qualify", 1000)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
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
            '.StartValue = "current_player.meteor_countdown_value"
            .StartValue = MeteorWaveDelayTicks
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
            With .ControlEvents()
                .EventName = "reset_mwq_timer"
                .Action = "reset"
            End With
            With .ControlEvents()
                .EventName = "restart_mwq_timer"
                .Action = "restart"
            End With
        End With

        With .VariablePlayer()
            '.Debug = True
            With .EventName("timer_meteor_countdown_tick")
                With .Variable("meteor_countdown_value")
                    .Action = "set"
					.Int = "devices.timers.meteor_countdown.ticks" 
				End With
			End With
		End With
        
        With .EventPlayer()
            .Add "mode_meteor_wave_qualify_started", Array("init_mwq_timer")
            .Add "init_mwq_timer", Array("init_pf_display")
            .Add "s_Plunger2_active{devices.timers.timewarp.ticks == 0}", Array("start_mwq_timer")
            '.Add "mode_meteor_wave_qualify_stopping", Array("stop_mwq_timer")
            .Add "timer_meteor_countdown_complete", Array("start_meteor_wave")
            .Add "stop_meteor_wave", Array("restart_mwq_timer")
            .Add "restart_tw_timer", Array("stop_mwq_timer")  'Timewarp started, so halt the countdown
        End With

    End With

End Sub