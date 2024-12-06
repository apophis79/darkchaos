

'Cluster Bomb Mode.

's_LeftOrb2 must be hit right after s_LeftOrb1 (by hitting their swtiches).
'Once this occurs, a cluster bomb charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new cluster bomb is lit in order (1, 2)
'If a cluster bomb is available, then when the left magna is pressed the bomb is detonated
'When a bomb is detonated it will destroy all meteors (drop targets) that are currently active on the table

Const ClusterBombColor = "dd00dd"

Sub CreateClusterBombMode
    Dim x

    With CreateGlfMode("cluster_bombs", 510)
        .Debug = true
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        For x = 1 to 3
            With .Shots("cluster_charge"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LCC"&x
                    .Add "color", ClusterBombColor
                End With
                With .ControlEvents()
                    .Events = Array("light_cluster_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("reset_cluster_charges")
                    .State = 0
                End With
            End With
        Next

        For x = 1 to 2
            With .Shots("cluster_bomb"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LCR"&x
                    .Add "color", ClusterBombColor
                End With
                With .ControlEvents()
                    .Events = Array("add_cluster_bomb"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("fire_cluster_bomb"&x)
                    .State = 0
                End With
            End With
        Next


        With .EventPlayer()
            .Add "s_left_magna_key_active{current_player.cluster_bomb_count == 1}", Array("fire_cluster_bomb1")
            .Add "s_left_magna_key_active{current_player.cluster_bomb_count == 2}", Array("fire_cluster_bomb2","reset_cluster_charges")
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 0}", Array("light_cluster_charge1")
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 1 && current_player.shot_cluster_charge2 == 0}", Array("light_cluster_charge2")
            .Add "left_orbit_hit{current_player.shot_cluster_charge2 == 1 && current_player.shot_cluster_charge3 == 0}", Array("light_cluster_charge3")
            .Add "light_cluster_charge3{current_player.cluster_bomb_count == 0}", Array("add_cluster_bomb1","restart_cb_timer")
            .Add "light_cluster_charge3{current_player.cluster_bomb_count == 1}", Array("add_cluster_bomb2")
            .Add "timer_cluster_bomb_reset_complete", Array("reset_cluster_charges")
        End With

        With .VariablePlayer()
		    With .EventName("mode_cluster_bombs_started")
				With .Variable("cluster_bomb_count")
                    .Action = "set"
					.Int = 0
				End With
			End With
            For x = 1 to 2
                With .EventName("fire_cluster_bomb"&x)
                    With .Variable("cluster_bomb_count")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
                With .EventName("add_cluster_bomb"&x)
                    With .Variable("cluster_bomb_count")
                        .Action = "add"
                        .Int = 1
                    End With
                End With
            Next
		End With

        With .Timers("cluster_bomb_reset")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 500
            With .ControlEvents()
                .EventName = "restart_cb_timer"
                .Action = "restart"
            End With
        End With

    End With
End Sub