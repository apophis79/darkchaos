

'Training Select Mode.

'First, select a training using flipper buttons. Start training with either magna, or it will autoselect after 10 seconds (hurry up flashing for last 3 sec)
'The following training missions are available: heal, cluster bomb, proton cannon, moon missile qualify, ship save, shields
'Once training mission starts, the associated shots will slow flash until you hit them to make them lit solid.
'Any shots that have been completed in previous training will be lit solid.
'Once all are lit solid, the training objective achieved and award collected.
'Award (except for heal training): only one hit required to collect associated power-up
'Heal award: the bumper diverter will remain up the rest of the game
'There is a time limit during training missions (45 seconds). If objective is not achieved in time, then award not given. But progress is saved for next training round. 



Sub CreateTrainingSelectMode
    Dim x

    With CreateGlfMode("training_select",600)
        .StartEvents = Array("start_training_select")
        .StopEvents = Array("mode_base_stopping","stop_training_select")
        '.Debug = True


        With .EventPlayer()
            '.Debug = True
            .Add "mode_training_select_started", Array("enable_scoop_hold")
            'navigate selections
            .Add "s_left_flipper_active", Array("training_select_left")
            .Add "s_right_flipper_active", Array("training_select_right")
            'make selection
            .Add "s_left_magna_key_active", Array("make_selection")
            .Add "s_right_magna_key_active", Array("make_selection")
            .Add "timer_training_select_complete", Array("make_selection")
            .Add "make_selection", Array("release_scoop_hold","start_training")  ',"enable_flippers"
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'hurry-up
            .Add "timer_training_select_tick{devices.timers.training_select.ticks == 7}", Array("selection_hurry_up")
            '.Add "timer_training_select_tick{devices.timers.training_select.ticks == 13}", Array("flash_ts_scoop_gi")
            'start requested training
            .Add "make_selection{devices.state_machines.training_select.state==""heal""}", Array("start_training_heal","stopping_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""cluster_bomb""}", Array("start_training_cluster_bomb","stopping_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""proton_cannon""}", Array("start_training_proton_cannon","stopping_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""moon_missile""}", Array("start_training_moon_missile","stopping_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""ship_save""}", Array("start_training_ship_save","stopping_training_select")
            .Add "make_selection{devices.state_machines.training_select.state==""skip""}", Array("stop_training_select","stop_training")
            .Add "stopping_training_select", Array("training_music_alt_start","meteor_wave_music_stop","stop_training_select")
        End With


        With .SoundPlayer()
            With .EventName("mode_training_select_started")
                .Key = "key_voc_select_option"
                .Sound = "voc_select_option"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_training_select_started")
				With .Variable("ts_hurry_up")
                    .Action = "set"
					.Int = 0  
				End With
                With .Variable("ts_last_move")
                    .Action = "set"
					.String = "right"  
				End With
			End With
		    With .EventName("selection_hurry_up")
				With .Variable("ts_hurry_up")
                    .Action = "set"
					.Int = 1  
				End With
			End With
            With .EventName("training_select_left")
				With .Variable("ts_last_move")
                    .Action = "set"
					.String = "left"  
				End With
			End With
            With .EventName("training_select_right")
				With .Variable("ts_last_move")
                    .Action = "set"
					.String = "right"  
				End With
			End With
        End With

        'GI fade show
        With .ShowPlayer()
            With .EventName("mode_training_select_started")
                .Key = "key_ts_gi"
                .Show = "flash_color_with_fade"
                .Speed = 2
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "fade", 900
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName("skip_selected")
                .Key = "key_skip_gi"
                .Show = "flash_color"
                .Speed = 11
                .Priority = 100
                With .Tokens()
                    .Add "lights", "gi22"
                    .Add "color", GIColorWhite
                End With
            End With
            With .EventName("skip_unselected")
                .Key = "key_skip_gi"
                .Show = "flash_color"
                .Speed = 13
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "gi22"
                    .Add "color", GIColorWhite
                End With
            End With
        End With

        
        'Show the shots that have been already completed
        For x = 1 to 9
            With .Shots("training_select_health"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", "LH"&x
                    .Add "color", HealthColor1
                End With
            End With
        Next
        For x = 1 to 3
            With .Shots("training_select_cluster_charge"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", "LCC"&x
                    .Add "color", ClusterBombColor
                End With
            End With
        Next
        For x = 1 to 3
            With .Shots("training_select_proton_charge"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", "LPC"&x
                    .Add "color", ProtonColor
                End With
            End With
        Next
        For x = 1 to 4
            With .Shots("training_select_moon_lane"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", MoonQualifyLightNames(x-1)
                    .Add "color", MoonColor
                End With
            End With
        Next
        For x = 1 to 3
            With .Shots("training_select_ship_charge"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", "LF"&x
                    .Add "color", ShipSaveColor
                End With
            End With
        Next
        For x = 1 to 4
            With .Shots("training_select_shield_charge"&x)
                '.Debug = True
                .Profile = "training_select"
                With .Tokens()
                    .Add "lights", "LSC"&x
                    .Add "color", ShieldsColor
                End With
            End With
        Next
        

        'Selection shots
        For x = 0 to 5
            With .Shots("select_"&TrainingSelectionNames(x))
                '.Debug = True
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
                .RestartEvents = Array(TrainingSelectionNames(x)&"_unselected","make_selection") 
            End With
        Next


        With .ShotProfiles("training_select")
            With .States("unlit")
                .Show = "off"
                .Key = "key_ts_unlit"
            End With
            With .States("ready1")
                .Show = "flash_color_with_fade"
                .Speed = 3
                .Priority = 10
                .Key = "key_ts_ready1"
                With .Tokens()
                    .Add "fade", 200
                End With
            End With
            With .States("ready2")
                .Show = "flash_color_with_fade"
                .Speed = 8
                .Priority = 20
                .Key = "key_ts_ready2"
                With .Tokens()
                    .Add "fade", 200
                End With
            End With
            With .States("on")
                .Show = "led_color"
                .Priority = 30
                .Key = "key_ts_on"
            End With
        End With
        
        'Selection timer
        With .Timers("training_select")
            '.Debug = True
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 10
            With .ControlEvents()
                .EventName = "mode_training_select_started"
                .Action = "restart"
            End With
        End With

        'Selection state machines
        With .StateMachines("training_select")
            '.Debug = True
            .PersistState = False
            .StartingState = "heal"
            
            'States
            With .States("heal")
                .Label = "Select Heal State"
                .EventsWhenStarted = Array("heal_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_heal_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_heal_achieved==1}") 
            End With
            With .States("cluster_bomb")
                .Label = "Select Cluster Bomb State"
                .EventsWhenStarted = Array("cluster_bomb_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_cluster_bomb_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_cluster_bomb_achieved==1}") 
            End With
            With .States("proton_cannon")
                .Label = "Select Proton Cannon State"
                .EventsWhenStarted = Array("proton_cannon_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_proton_cannon_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_proton_cannon_achieved==1}") 
            End With
            With .States("moon_missile")
                .Label = "Select Moon Missile State"
                .EventsWhenStarted = Array("moon_missile_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_moon_missile_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_moon_missile_achieved==1}") 
            End With
            With .States("ship_save")
                .Label = "Select Ship Save State"
                .EventsWhenStarted = Array("ship_save_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_ship_save_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_ship_save_achieved==1}") 
            End With
            With .States("shields")
                .Label = "Select Shields State"
                .EventsWhenStarted = Array("shields_selected", _
                                           "training_select_left{current_player.ts_last_move==""left"" && current_player.training_shields_achieved==1}", _
                                           "training_select_right{current_player.ts_last_move==""right"" && current_player.training_shields_achieved==1}")  
            End With
            With .States("skip")
                .Label = "Skip State"
                .EventsWhenStarted = Array("skip_selected")  
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
                .Target = "skip"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("moon_missile_unselected")
            End With
            With .Transitions()
                .Source = Array("skip")
                .Target = "heal"
                .Events = Array("training_select_right")
                .EventsWhenTransitioning = Array("skip_unselected")
            End With

            'Transitions, move selection left
            With .Transitions()
                .Source = Array("heal")
                .Target = "skip"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("heal_unselected")
            End With
            With .Transitions()
                .Source = Array("cluster_bomb")
                .Target = "heal"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("cluster_bomb_unselected")
            End With
            With .Transitions()
                .Source = Array("proton_cannon")
                .Target = "cluster_bomb"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("proton_cannon_unselected")
            End With
            With .Transitions()
                .Source = Array("ship_save")
                .Target = "proton_cannon"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("ship_save_unselected")
            End With
            With .Transitions()
                .Source = Array("shields")
                .Target = "ship_save"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("shields_unselected")
            End With
            With .Transitions()
                .Source = Array("moon_missile")
                .Target = "shields"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("moon_missile_unselected")
            End With
            With .Transitions()
                .Source = Array("skip")
                .Target = "moon_missile"
                .Events = Array("training_select_left")
                .EventsWhenTransitioning = Array("skip_unselected")
            End With
        End With

        With .SegmentDisplayPlayer()
            With .EventName("mode_training_select_started")
                With .Display("player1")
                    .Text = """"""
                End With
                With .Display("player2")
                    .Text = """SELECT"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
            End With
            With .EventName("heal_selected{current_player.training_heal_achieved==0}")
                With .Display("player3")
                    .Text = """HEAL """
                End With
            End With
            With .EventName("cluster_bomb_selected{current_player.training_cluster_bomb_achieved==0}")
                With .Display("player3")
                    .Text = """CLUSTER"""
                End With
            End With
            With .EventName("proton_cannon_selected{current_player.training_proton_cannon_achieved==0}")
                With .Display("player3")
                    .Text = """PROTON"""
                End With
            End With
            With .EventName("moon_missile_selected{current_player.training_moon_missile_achieved==0}")
                With .Display("player3")
                    .Text = """MOON """
                End With
            End With
            With .EventName("ship_save_selected{current_player.training_ship_save_achieved==0}")
                With .Display("player3")
                    .Text = """SAVER """
                End With
            End With
            With .EventName("shields_selected{current_player.training_shields_achieved==0}")
                With .Display("player3")
                    .Text = """SHIELDS"""
                End With
            End With
            With .EventName("skip_selected")
                With .Display("player3")
                    .Text = """SKIP """
                End With
            End With
        End With


    End With

End Sub