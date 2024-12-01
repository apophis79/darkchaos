'Cluster Bomb Mode.

's_LeftOrb2 must be hit right after s_LeftOrb1 (by hitting their swtiches).
'Once this occurs, a cluster bomb charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new cluster bomb is lit in order (1, 2)
'If a cluster bomb is available, then when the left magna is pressed the bomb is detonated
'When a bomb is detonated it will destroy all meteors (drop targets) that are currently active on the table

Const ClusterBombColor = "dd00dd"

Sub CreateClusterBombMode


    With CreateGlfMode("cluster_bombs", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        With .Shots("cluster_charge1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC1"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents("left_orbit")
                .Events = Array("light_cluster_charge1")
                .State = 1
            End With
        End With
        With .Shots("cluster_charge2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC2"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents("left_orbit")
                .Events = Array("light_cluster_charge2")
                .State = 1
            End With
        End With
        With .Shots("cluster_charge3")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCC3"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents("left_orbit")
                .Events = Array("light_cluster_charge3")
                .State = 1
            End With
        End With

        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 400
        End With

        With .Shots("cluster_bomb1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCR1"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents("bomb1_ready")
                .Events = Array("light_bomb1")
                .State = 1
            End With
        End With

        With .Shots("cluster_bomb2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LCR2"
                .Add "color", ClusterBombColor
            End With
            With .ControlEvents("bomb2_ready")
                .Events = Array("light_bomb2")
                .State = 1
            End With
        End With

        With .StateMachines("cluster_bomb")
            .PersistState = True
            With .States("start")
                .Label = "Start State"
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
                .EventsWhenStarted = Array("light_cluster_charge3")
            End With
            With .Transitions("advance_step1")
                .Source = Array("start")
                .Target = "step1"
                .Events = Array("left_orbit_hit")
            End With
            With .Transitions("advance_step2")
                .Source = Array("step1")
                .Target = "step2"
                .Events = Array("left_orbit_hit")
            End With
            With .Transitions("advance_step3")
                .Source = Array("step2")
                .Target = "step3"
                .Events = Array("left_orbit_hit")
            End With
        End With

    End With
End Sub