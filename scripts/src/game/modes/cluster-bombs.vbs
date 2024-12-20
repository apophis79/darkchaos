

'Cluster Bomb Mode.

's_LeftOrb2 must be hit right after s_LeftOrb1 (by hitting their swtiches).
'Once this occurs, a cluster bomb charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new cluster bomb is lit in order (1, 2)
'If a cluster bomb is available, then when the left magna is pressed the bomb is detonated
'When a bomb is detonated it will destroy all meteors (drop targets) that are currently active on the table


Sub CreateClusterBombMode
    Dim x

    With CreateGlfMode("cluster_bombs", 510)
        .Debug = true
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        For x = 1 to 3
            With .Shots("cluster_charge"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LCC"&x
                    .Add "color", ClusterBombColor
                End With
                With .ControlEvents()
                    .Events = Array("ready_cluster_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("light_cluster_charge"&x)
                    .State = 2
                End With
                .RestartEvents = Array("reset_cluster_charges")
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
            .Add "mode_cluster_bombs_started{current_player.shot_cluster_charge1 == 0}", Array("reset_cluster_charges")
            .Add "reset_cluster_charges", Array("ready_cluster_charge1")
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 1}", Array("light_cluster_charge1","ready_cluster_charge2")
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 2 && current_player.shot_cluster_charge2 == 1}", Array("light_cluster_charge2","ready_cluster_charge3")
            .Add "left_orbit_hit{current_player.shot_cluster_charge2 == 2 && current_player.shot_cluster_charge3 == 1}", Array("light_cluster_charge3")
            .Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 0}", Array("add_cluster_bomb1","reset_cluster_charges")
            .Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", Array("add_cluster_bomb2")
            .Add "s_left_magna_key_active{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", Array("fire_cluster_bomb1","cluster_bomb_fired")
            .Add "s_left_magna_key_active{current_player.shot_cluster_bomb2 == 1}", Array("fire_cluster_bomb2","cluster_bomb_fired","reset_cluster_charges")
        End With

        With .ShowPlayer()
            With .Events("light_cluster_charge3")
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "ClusterBombShot"
                    .Add "color", ClusterBombColor
                End With
            End With
        End With


        With .VariablePlayer()
			With .EventName("left_orbit_hit")
				With .Variable("score")
					.Int = 1111
				End With
			End With
            .Debug = True
		End With


        With .SegmentDisplayPlayer()
            With .Events("light_cluster_charge3")
                With .Display("player4")
                    .Text = """CLUSTER"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With

    End With
End Sub