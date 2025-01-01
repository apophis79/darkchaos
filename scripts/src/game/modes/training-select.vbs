

'Training Select Mode.

'First, select a training using flipper buttons. Start training with either magna, or it will autoselect after 10 seconds (hurry up flashing for last 3 sec)
'The following training missions are available: heal, cluster bomb, proton cannon, moon missile qualify, ship save, shields
'Once training mission starts, the associlated shots will slow flash until you hit them to make them lit solid.
'Once all are lit, the training objective achieved and award collected.
'Award (except for heal training): only one hit required to collect associated power-up
'Heal award: the bumper diverter will remain up the rest of the game
'There is a time limit during training missions (30 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingSelectMode
    Dim x

    With CreateGlfMode("training_select",600)
        .StartEvents = Array("start_training")
        .StopEvents = Array(GLF_BALL_ENDED,"stop_training_select")
        .Debug = True


        With .EventPlayer()
            .Debug = True
            'navigate selections
            .Add "s_left_flipper_active", Array("training_select_left")
            .Add "s_right_flipper_active", Array("training_select_right")
            'make selection
            .Add "s_left_magna_key_active", Array("make_selection")
            .Add "s_right_magna_key_active", Array("make_selection")
            .Add "timer_training_select_complete", Array("make_selection")
            .Add "make_selection", Array("training_select_release","enable_flippers")
            'hurry-up
            .Add "timer_training_select_tick{devices.timers.training_select.ticks == 10}", Array("selection_hurry_up")
            .Add "timer_training_select_tick{devices.timers.training_select.ticks == 13}", Array("flash_ts_scoop_gi")
            'start requested training
            .Add "make_selection{devices.state_machines.training_select.state==""heal""}", Array("start_training_heal","stop_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""cluster_bomb""}", Array("start_training_cluster_bomb","stop_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""proton_cannon""}", Array("start_training_proton_cannon","stop_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""moon_missile""}", Array("start_training_moon_missile","stop_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""ship_save""}", Array("start_training_ship_save","stop_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""shields""}", Array("start_training_shields","stop_training_select")
        End With


        With .VariablePlayer()
            With .EventName("mode_training_select_started")
				With .Variable("ts_hurry_up")
                    .Action = "set"
					.Int = 0  
				End With
			End With
		    With .EventName("selection_hurry_up")
				With .Variable("ts_hurry_up")
                    .Action = "set"
					.Int = 1  
				End With
			End With
        End With

        With .ShowPlayer()
            With .EventName("mode_training_select_started")
                .Key = "key_ts_scoop_gi"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor3000k
                    .Add "fade", 1000
                End With
            End With
        End With


        With .BallHolds("training_select")
            .Debug = True
            .BallsToHold = 1
            .HoldDevices = Array("scoop")
            .EnableEvents = Array("mode_training_select_started") 
            .DisableEvents = Array("training_select_disable") 
            .ReleaseAllEvents = Array("training_select_release")
        End With


        With .ShotProfiles("training_select")
            With .States("unlit")
                .Show = "off"
                .Key = "key_ts_unlit"
            End With
            With .States("ready1")
                .Show = "flash_color_with_fade"
                .Speed = 3
                .Priority = 1
                .Key = "key_ts_ready1"
                With .Tokens()
                    .Add "fade", 200
                End With
            End With
            With .States("ready2")
                .Show = "flash_color_with_fade"
                .Speed = 8
                .Priority = 2
                .Key = "key_ts_ready2"
                With .Tokens()
                    .Add "fade", 200
                End With
            End With
        End With

        'Selection shots
        For x = 0 to 5
            With .Shots("select_"&TrainingSelectionNames(x))
                .Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", TrainingSelectionLightNames(x)
                    .Add "color", TrainingColors(x)
                End With
                With .ControlEvents()
                    .Events = Array(TrainingSelectionNames(x)&"_selected{current_player.ts_hurry_up==0}")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array(TrainingSelectionNames(x)&"_selected{current_player.ts_hurry_up==1}", _
                                    "selection_hurry_up{devices.state_machines.training_select.state=="""&TrainingSelectionNames(x)&"""}")
                    .State = 2
                End With
                .RestartEvents = Array(TrainingSelectionNames(x)&"_unselected") 
            End With
        Next
        
        'Selection timer
        With .Timers("training_select")
            .Debug = True
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 15
            With .ControlEvents()
                .EventName = "mode_training_select_started"
                .Action = "restart"
            End With
        End With


        'Selection state machines
        With .StateMachines("training_select")
            .Debug = True
            .PersistState = False
            .StartingState = "heal"
            
            'States
            With .States("heal")
                .Label = "Select Heal State"
                .EventsWhenStarted = Array("heal_selected") 
            End With
            With .States("cluster_bomb")
                .Label = "Select Cluster Bomb State"
                .EventsWhenStarted = Array("cluster_bomb_selected") 
            End With
            With .States("proton_cannon")
                .Label = "Select Proton Cannon State"
                .EventsWhenStarted = Array("proton_cannon_selected") 
            End With
            With .States("moon_missile")
                .Label = "Select Moon Missile State"
                .EventsWhenStarted = Array("moon_missile_selected") 
            End With
            With .States("ship_save")
                .Label = "Select Ship Save State"
                .EventsWhenStarted = Array("ship_save_selected") 
            End With
            With .States("shields")
                .Label = "Select Shields State"
                .EventsWhenStarted = Array("shields_selected") 
            End With

            'Transitions, move selection right
            With .Transitions()
                .Source = Array("heal")
                .Target = "cluster_bomb"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("heal_unselected")
            End With
            With .Transitions()
                .Source = Array("cluster_bomb")
                .Target = "proton_cannon"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("cluster_bomb_unselected")
            End With
            With .Transitions()
                .Source = Array("proton_cannon")
                .Target = "ship_save"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("proton_cannon_unselected")
            End With
            With .Transitions()
                .Source = Array("ship_save")
                .Target = "shields"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("ship_save_unselected")
            End With
            With .Transitions()
                .Source = Array("shields")
                .Target = "moon_missile"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("shields_unselected")
            End With
            With .Transitions()
                .Source = Array("moon_missile")
                .Target = "heal"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("moon_missile_unselected")
            End With

            'Transitions, move selection left
            With .Transitions()
                .Source = Array("heal")
                .Target = "moon_missile"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("heal_unselected")
            End With
            With .Transitions()
                .Source = Array("moon_missile")
                .Target = "shields"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("moon_missile_unselected")
            End With
            With .Transitions()
                .Source = Array("shields")
                .Target = "ship_save"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("shields_unselected")
            End With
            With .Transitions()
                .Source = Array("ship_save")
                .Target = "proton_cannon"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("ship_save_unselected")
            End With
            With .Transitions()
                .Source = Array("proton_cannon")
                .Target = "cluster_bomb"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("proton_cannon_unselected")
            End With
            With .Transitions()
                .Source = Array("cluster_bomb")
                .Target = "heal"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("cluster_bomb_unselected")
            End With
        End With

        With .SegmentDisplayPlayer()
            With .Events("mode_training_select_started")
                With .Display("player2")
                    .Text = """SELECT"""
                End With
            End With
            With .Events("heal_selected")
                With .Display("player3")
                    .Text = """HEAL """
                End With
            End With
            With .Events("cluster_bomb_selected")
                With .Display("player3")
                    .Text = """CLUSTER"""
                End With
            End With
            With .Events("proton_cannon_selected")
                With .Display("player3")
                    .Text = """PROTON"""
                End With
            End With
            With .Events("moon_missile_selected")
                With .Display("player3")
                    .Text = """MOON """
                End With
            End With
            With .Events("ship_save_selected")
                With .Display("player3")
                    .Text = """SAVER """
                End With
            End With
            With .Events("shields_selected")
                With .Display("player3")
                    .Text = """SHIELDS"""
                End With
            End With
        End With


    End With

End Sub