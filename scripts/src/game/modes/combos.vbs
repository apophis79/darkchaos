

'Combos Mode.

'The combo meter is just above the health meter and contains 8 lights
'Every time one of the combo shots is hit, it adds to the combo meter
'If a combo shot is not hit within a certain time period, the combo meter goes backt zero
'If the combo meter gets fully lit (all 8 lights), then Combo Command mini wizard mode starts.


Sub CreateCombosMode
    Dim x

    With CreateGlfMode("combos", 520)
        '.StartEvents = Array("ball_started","timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks == 7}")
        '.StopEvents = Array("ball_ended","timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 3}")
        .StartEvents = Array("ball_started","mode_meteor_wave_stopped")
        .StopEvents = Array("ball_ended","mode_meteor_wave_started")
        '.Debug = True


        With .ShowPlayer()
            For x = 1 to 8
                With .EventName(MainShotNames(x-1)&"_hit{current_player.combos_value>0}")
                    .Show = "flash_color"
                    .Speed = 15
                    .Loops = 5
                    With .Tokens()
                        .Add "lights", MainShotLightNames(x-1)
                        .Add "color", CombosColor
                    End With
                End With
            Next
        End With


        'Define combo meter shots
        For x = 1 to 8
            With .Shots("combo"&x&"_meter_light")
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LC"&x
                    .Add "color", CombosColor
                End With
                With .ControlEvents()
                    .Events = Array("combos"&x&"_lit")
                    .State = 1
                End With
                .RestartEvents = Array("reset_combos")
            End With
        Next


        With .EventPlayer()
            .Add "mode_combos_started", Array("reset_combos")
            .Add "timer_combos_reset_complete", Array("reset_combos")
            .Add MainShotNames(0)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(1)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(2)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(3)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(4)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(5)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(6)&"_hit", Array("restart_c_timer","check_combos")
            .Add MainShotNames(7)&"_hit", Array("restart_c_timer","check_combos")
            .Add "check_combos{current_player.combos_value==0}", Array("add_combos")
            .Add "check_combos{current_player.combos_value==1}", Array("combos1_lit","add_combos")
            .Add "check_combos{current_player.combos_value==2}", Array("combos2_lit","add_combos")
            .Add "check_combos{current_player.combos_value==3}", Array("combos3_lit","add_combos")
            .Add "check_combos{current_player.combos_value==4}", Array("combos4_lit","add_combos")
            .Add "check_combos{current_player.combos_value==5}", Array("combos5_lit","add_combos")
            .Add "check_combos{current_player.combos_value==6}", Array("combos6_lit","add_combos")
            .Add "check_combos{current_player.combos_value==7}", Array("combos7_lit","add_combos")
            .Add "check_combos{current_player.combos_value==8}", Array("combos8_lit","start_combo_command_wizard")
        End With

        With .Timers("combos_reset")
            .TickInterval = CombosTickInterval
            .StartValue = 0
            .EndValue = CombosTickLimit
            With .ControlEvents()
                .EventName = "restart_c_timer"
                .Action = "restart"
            End With
        End With

        With .VariablePlayer()
            .Debug = True
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
		End With

    End With

End Sub