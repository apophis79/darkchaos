

'Combos Mode.

'The combo meter is just above the health meter and contains 8 lights
'Every time one of the combo shots is hit, it adds to the combo meter
'If a combo shot is not hit within a certain time period, the combo meter goes backt zero
'If the combo meter gets fully lit (all 8 lights), then Combo Command mini wizard mode starts.


Sub CreateCombosMode
    Dim x

    With CreateGlfMode("combos", 530)
        .StartEvents = Array("new_ball_started","stop_meteor_wave","stop_training","wizard_mode_ended")
        .StopEvents = Array("stop_combos","mode_base_stopping","start_training_select","wizard_mode_started") ',"start_meteor_wave"

        With .EventPlayer()
            'init and reset
            .Add "mode_combos_started", Array("reset_combos")
            .Add "mode_combos_started{current_player.ball_just_started==1}", Array("clear_relaxed_combos")
            .Add "timer_combos_complete", Array("restart_decay_timer","check_subtract_combos")
            .Add "timer_decay_combos_complete", Array("check_subtract_combos")
            'handle when valid shot is hit
            .Add MainShotNames(0)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(1)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(2)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(3)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(4)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(5)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(6)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add MainShotNames(7)&"_hit", Array("restart_c_timer","check_add_combos")
            .Add "check_add_combos{current_player.combos_value==0}", Array("add_combos")
            .Add "check_add_combos{current_player.combos_value==1}", Array("combos1_lit","add_combos","replay_sfx_combo","flash_combos","score_2000")
            .Add "check_add_combos{current_player.combos_value==2}", Array("combos2_lit","add_combos","replay_sfx_combo","flash_combos","score_4000")
            .Add "check_add_combos{current_player.combos_value==3}", Array("combos3_lit","add_combos","replay_sfx_combo","flash_combos","score_10000")
            .Add "check_add_combos{current_player.combos_value==4}", Array("combos4_lit","add_combos","replay_sfx_combo","flash_combos","score_20000")
            .Add "check_add_combos{current_player.combos_value==5}", Array("combos5_lit","add_combos","replay_sfx_combo","flash_combos","score_50000")
            .Add "check_add_combos{current_player.combos_value==6}", Array("combos6_lit","add_combos","replay_sfx_combo","flash_combos","score_150000")
            .Add "check_add_combos{current_player.combos_value==7}", Array("combos7_lit","add_combos","replay_sfx_combo","flash_combos","score_500000")
            .Add "check_add_combos{current_player.combos_value==8}", Array("combos8_lit","check_combo_command_wizard","replay_sfx_combo","flash_combos","score_1000000")
            .Add "check_combo_command_wizard{current_player.shot_combo_command_wizard == 0}", Array("activate_combo_command_wizard")
            'handle combo decay
            .Add "check_subtract_combos{current_player.combos_value==8}", Array("combos8_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==7}", Array("combos7_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==6}", Array("combos6_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==5}", Array("combos5_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==4}", Array("combos4_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==3}", Array("combos3_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==2}", Array("combos2_unlit","subtract_combos","restart_decay_timer")
            .Add "check_subtract_combos{current_player.combos_value==1}", Array("combos1_unlit","reset_combos")
            'handle mystery award
            .Add "mystery_relaxed_combos", Array("flash_combos")
            'handle sound effect
            .Add "replay_sfx_combo", Array("stop_sfx_combo")
            .Add "stop_sfx_combo", Array("play_sfx_combo")
        End With

        With .SoundPlayer()
            With .EventName("play_sfx_combo")
                .Key = "key_sfx_combo"
                .Sound = "sfx_combo"
            End With
            With .EventName("stop_sfx_combo")
                .Key = "key_sfx_combo"
                .Sound = "sfx_combo"
                .Action = "stop"
            End With
        End With


        With .ShowPlayer()
            For x = 1 to 8
                With .EventName(MainShotNames(x-1)&"_hit{current_player.combos_value>0}")
                    .Key = "key_combo"&x
                    .Show = "flash_color"
                    .Speed = 15
                    .Loops = 5
                    With .Tokens()
                        .Add "lights", MainShotLightNames(x-1)
                        .Add "color", CombosColor
                    End With
                End With
            Next

            With .EventName("flash_combos")
                .Key = "key_combos_relaxed"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tCombos"
                    .Add "color", CombosColor
                End With
            End With
        End With


        'Define combo meter shots
        For x = 1 to 8
            With .Shots("combo"&x&"_meter_light")
                .Profile = "off_on_color"
                With .Tokens()
                    .Add "lights", "LC"&x
                    .Add "color", CombosColor
                End With
                With .ControlEvents()
                    .Events = Array("combos"&x&"_lit")
                    .State = 1
                End With
                .RestartEvents = Array("combos"&x&"_unlit","reset_combos")
            End With

            With .ShowPlayer()
                With .EventName("combos"&x&"_lit")
                    .Key = "key_combo"&x&"_charged"
                    .Show = "flash_color"
                    .Speed = 15
                    .Loops = 5
                    With .Tokens()
                        .Add "lights", "LC"&x
                        .Add "color", CombosColor
                    End With
                End With
            End With
        Next


        With .Timers("combos")
            .TickInterval = CombosTickInterval
            .StartValue = 0
            .EndValue = "current_player.combo_ticks"
            With .ControlEvents()
                .EventName = "restart_c_timer"
                .Action = "restart"
            End With
        End With

        With .Timers("decay_combos")
            .TickInterval = CombosDecayTickInterval
            .StartValue = 0
            .EndValue = "current_player.combo_decay_ticks"
            With .ControlEvents()
                .EventName = "restart_decay_timer"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "restart_c_timer"
                .Action = "stop"
            End With
        End With


        With .VariablePlayer()
            'combos_value
		    With .EventName("reset_combos")
				With .Variable("combos_value")
                    .Action = "set"
					.Int = 0  
				End With
			End With
            With .EventName("add_combos")
				With .Variable("combos_value")
                    .Action = "add"
					.Int = 1  
				End With
			End With
            With .EventName("subtract_combos")
				With .Variable("combos_value")
                    .Action = "add"
					.Int = -1  
				End With
			End With
            With .EventName("mystery_relaxed_combos") 'mystery award (lasts the rest of the ball)
				With .Variable("combo_ticks")
                    .Action = "set"
					.Int = CombosTickLimitRelaxed  
				End With
                With .Variable("combo_decay_ticks")
                    .Action = "set"
					.Int = CombosDecayTickLimitRelaxed  
				End With
			End With
            With .EventName("clear_relaxed_combos") 'clear mystery award
				With .Variable("combo_ticks")
                    .Action = "set"
					.Int = CombosTickLimit
				End With
                With .Variable("combo_decay_ticks")
                    .Action = "set"
					.Int = CombosDecayTickLimit
				End With
			End With
        End With


    End With

End Sub