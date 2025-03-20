

'Meteor Wave Qualify Mode.


Sub CreateMeteorWaveQualifyMode

    With CreateGlfMode("meteor_wave_qualify", 1100)
        .StartEvents = Array("new_ball_started","stop_meteor_wave","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","mode_bonus_started","start_meteor_wave","start_training_select","wizard_mode_started")

        With .EventPlayer()
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value == 0}", Array("reset_countdown_value")
            .Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value > 0}", Array("init_mwq_timer")
            .Add "reset_countdown_value", Array("init_mwq_timer")
            .Add "init_mwq_timer", Array("init_pf_display")
            .Add "init_mwq_timer{current_player.ball_just_started == 0}", Array("start_mwq_timer")
            .Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", Array("start_mwq_timer") 
            .Add "timer_meteor_countdown_complete", Array("start_meteor_wave")
            .Add "restart_tw_timer", Array("stop_mwq_timer")    'Timewarp started, so halt the countdown
            .Add "play_mystery_show", Array("stop_mwq_timer")   'Mystery show started, so halt the countdown
            .Add "play_eb_show", Array("stop_mwq_timer")        'EB show started, so halt the countdown

            .Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 4}", Array("meteor_wave_alert_show")
            .Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 2}", Array("meteor_wave_alert_show")
            .Add "meteor_wave_alert_show", Array("meteor_wave_alert_show1","meteor_wave_alert_show2","meteor_wave_alert_show3","meteor_wave_alert_show4")
        End With
        
        With .SegmentDisplayPlayer()
            With .EventName("init_pf_display")
                With .Display("pf")
                    .Text = "{devices.timers.meteor_countdown.ticks:0>2}"
                End With
            End With
        End With

        With .SoundPlayer()
            With .EventName("timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 4}")
                .Key = "key_voc_wave_incoming"
                .Sound = "voc_wave_incoming"
            End With
        End With

        With .DOFPlayer()
            With .EventName("timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 4}")
                .Action = "DOF_PULSE"
                .DOFEvent = 139
            End With
            With .EventName("timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 2}")
                .Action = "DOF_PULSE"
                .DOFEvent = 139
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

        With .ShowPlayer()
            With .EventName("meteor_wave_alert_show1")
                .Key = "key_meteor_wave_alert_show1"
                .Show = "lsling_swap_2_2_b"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 30
                End With
            End With
            With .EventName("meteor_wave_alert_show2")
                .Key = "key_meteor_wave_alert_show2"
                .Show = "rsling_swap_2_2_a"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 30
                End With
            End With
            With .EventName("meteor_wave_alert_show3")
                .Key = "key_meteor_wave_alert_show3"
                .Show = "lsling_swap_2_2_a"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 30
                End With
            End With
            With .EventName("meteor_wave_alert_show4")
                .Key = "key_meteor_wave_alert_show4"
                .Show = "rsling_swap_2_2_b"
                .Speed = 1
                .Loops = 5
                With .Tokens()
                    .Add "color1", "ff0000"
                    .Add "color2", "ff9900"
                    .Add "intensity", 30
                End With
            End With
            With .EventName("magnet_activated_gi")
                .Key = "key_ts_mag_gi"
                .Show = "flash_color_fadeout" 
                .Speed = 4.6
                .Loops = 3
                .Priority = 100
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor2700k
                End With
            End With
            ' With .EventName("timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 3}")   
            '     .Key = "key_gi_cracked"
            '     .Show = "gi_cracked" 
            '     .Priority = 10
            '     .Speed = 1.3
            '     .Loops = 1
            ' End With
        End With
        

    End With

End Sub