

'Meteor Wave Qualify Mode.

Const MeteorWaveDelayTicks = 45  'uses 1000ms interval


Sub CreateMeteorWaveQualifyMode


    With CreateGlfMode("meteor_wave_qualify", 1000)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = True
        
        With .SegmentDisplayPlayer()
            With .Events("mode_meteor_wave_qualify_started")
                With .Display("pf")
                    .Text = "{devices.timers.meteor_countdown.ticks:0>2}"
                End With
            End With
        End With

        With .Timers("meteor_countdown")
            .TickInterval = 1000
            .StartValue = MeteorWaveDelayTicks
            .Direction = "down"
            .EndValue = 0
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
            .Debug = True
            With .EventName("timer_meteor_countdown_tick")
                With .Variable("meteor_countdown_value")
                    .Action = "set"
					.Int = "devices.timers.meteor_countdown.ticks"   'FIXME  Need to get the last countdown value as the starting value on next ball
				End With
			End With
		End With
        
        With .EventPlayer()
            .Add "s_Plunger2_active{devices.timers.timewarp.ticks == 0}", Array("start_mwq_timer")
            .Add "mode_meteor_wave_qualify_stopped", Array("stop_mwq_timer")
            .Add "timer_meteor_countdown_complete", Array("start_meteor_wave","reset_mwq_timer")
            .Add "mode_meteor_wave_stopped", Array("restart_mwq_timer")
            .Add "restart_tw_timer", Array("stop_mwq_timer")
        End With

    End With



End Sub