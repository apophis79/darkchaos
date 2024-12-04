'Cluster Bomb Mode.

's_LeftOrb2 must be hit right after s_LeftOrb1 (by hitting their swtiches).
'Once this occurs, a cluster bomb charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new cluster bomb is lit in order (1, 2)
'If a cluster bomb is available, then when the left magna is pressed the bomb is detonated
'When a bomb is detonated it will destroy all meteors (drop targets) that are currently active on the table

Const ClusterBombColor = "dd00dd"

Sub CreateClusterBombMode


    With CreateGlfMode("cluster_bombs", 510)
        .Debug = true
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        With .Shots("cluster_charge1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC1"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("light_cluster_charge1")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("reset_cluster_charges")
                .State = 0
            End With
        End With

        With .Shots("cluster_charge2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC2"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("light_cluster_charge2")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("reset_cluster_charges")
                .State = 0
            End With
        End With

        With .Shots("cluster_charge3")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC3"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("light_cluster_charge3")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("reset_cluster_charges")
                .State = 0
            End With
        End With

        With .Shots("cluster_bomb1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCR1"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("timer_cluster_bomb_reset_complete{current_player.shot_cluster_bomb1==0}")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("reset_bomb1")
                .State = 0
            End With
        End With

        With .Shots("cluster_bomb2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCR2"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents()
                .Events = Array("light_cluster_charge3{current_player.shot_cluster_bomb1==1 && current_player.shot_cluster_bomb2==0}")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("reset_bomb2")
                .State = 0
            End With
        End With

        With .StateMachines("cluster_bomb")
            .PersistState = True

            With .States("start")
                .Label = "Start State"
                .EventsWhenStarted = Array("reset_cluster_charges")
            End With
            With .States("step1")
                .Label = "Step 1"
                .EventsWhenStarted = Array("light_cluster_charge1")
            End With
            With .States("step2")
                .Label = "Step 2"
                .EventsWhenStarted = Array("light_cluster_charge2")
            End With
            With .States("step3")
                .Label = "Step 3"
                .EventsWhenStarted = Array("light_cluster_charge3","start_cb_reset_timer")
            End With
 
            With .Transitions()
                .Source = Array("start")
                .Target = "step1"
                .Events = Array("left_orbit_hit")
            End With
            With .Transitions()
                .Source = Array("step1")
                .Target = "step2"
                .Events = Array("left_orbit_hit")
            End With
            With .Transitions()
                .Source = Array("step2")
                .Target = "step3"
                .Events = Array("left_orbit_hit")
            End With
            With .Transitions()
                .Source = Array("step3")
                .Target = "start"
                .Events = Array("timer_cluster_bomb_reset_complete{current_player.shot_cluster_bomb2==0}")
            End With

        End With

        With .Timers("cluster_bomb_reset")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 1000
            With .ControlEvents()
                .EventName = "start_cb_reset_timer"
                .Action = "start"
            End With
        End With

    End With
End Sub