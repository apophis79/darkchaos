

'Proton Cannon Mode.

's_InnerOrb2 must be hit right after s_InnerOrb1 (by hitting their swtiches).
'Once this occurs, a proton charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new proton round is lit in order (1 - 6)
'If a proton is available, then the proton cannon can be fired during a meteor wave
'The proton cannon can be fired by hitting s_TargetMystery3 or the center orbit during a metero wave 
'When the proton cannon is fired it will destroy one random meteor (drop targets) that are currently active on the table



Sub CreateProtonCannonMode
    Dim x

    With CreateGlfMode("proton_cannon", 510)
        .Debug = true
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        For x = 1 to 3
            With .Shots("proton_charge"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LPC"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("light_proton_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("reset_proton_charges")
                    .State = 0
                End With
            End With
        Next

       
        For x = 1 to 6
            With .Shots("proton_round"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LPR"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("add_proton_round"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("fire_proton_round"&x)
                    .State = 0
                End With
            End With
        Next


        With .EventPlayer()
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 1}", Array("fire_proton_round1")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 2}", Array("fire_proton_round2")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 3}", Array("fire_proton_round3")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 4}", Array("fire_proton_round4")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 5}", Array("fire_proton_round5")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 6}", Array("fire_proton_round6","reset_proton_charges")
            .Add "inner_orbit_hit{current_player.shot_proton_charge1 == 0}", Array("light_proton_charge1")
            .Add "inner_orbit_hit{current_player.shot_proton_charge1 == 1 && current_player.shot_proton_charge2 == 0}", Array("light_proton_charge2")
            .Add "inner_orbit_hit{current_player.shot_proton_charge2 == 1 && current_player.shot_proton_charge3 == 0}", Array("light_proton_charge3")
            .Add "light_proton_charge3{current_player.proton_round_count == 0}", Array("add_proton_round1","restart_pc_timer")
            .Add "light_proton_charge3{current_player.proton_round_count == 1}", Array("add_proton_round2","restart_pc_timer")
            .Add "light_proton_charge3{current_player.proton_round_count == 2}", Array("add_proton_round3","restart_pc_timer")
            .Add "light_proton_charge3{current_player.proton_round_count == 3}", Array("add_proton_round4","restart_pc_timer")
            .Add "light_proton_charge3{current_player.proton_round_count == 4}", Array("add_proton_round5","restart_pc_timer")
            .Add "light_proton_charge3{current_player.proton_round_count == 5}", Array("add_proton_round6")
            .Add "timer_proton_cannon_reset_complete", Array("reset_proton_charges")
        End With

        With .VariablePlayer()
		    With .EventName("mode_proton_cannon_started")
				With .Variable("proton_round_count")
                    .Action = "set"
					.Int = 0
				End With
			End With
            For x = 1 to 6
                With .EventName("fire_proton_round"&x)
                    With .Variable("proton_round_count")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
                With .EventName("add_proton_round"&x)
                    With .Variable("proton_round_count")
                        .Action = "add"
                        .Int = 1
                    End With
                End With
            Next
		End With

        With .Timers("proton_cannon_reset")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "restart_pc_timer"
                .Action = "restart"
            End With
        End With

    End With
End Sub