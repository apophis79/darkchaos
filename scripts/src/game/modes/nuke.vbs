

'Nuke Mode.

'Activate nuclear bomb by either completing all trainings, or by hitting skill shot three times, or from mystery award
'Once active, the bomb can be detonated at any time by pressing the start button
'Bomb cannot be used during mini wizard modes
'When bomb is detonated between waves, nothing happens (except alien gets destroyed if its out there)
'When bomb is detonated during a normal wave, the entire wave is cleared.
'When bomb is detontated duing the final wave, 10 hits on the asteroid are made


Sub CreateNukeMode
    Dim x

    With CreateGlfMode("nuke", 400)
        .StartEvents = Array("activate_nuke")
        .StopEvents = Array("deactivate_nuke","mode_base_stopping","start_training_select","mode_combo_command_wizard_started","mode_fully_loaded_wizard_started","mode_victory_lap_started")

        With .EventPlayer()
            'Activate nuke
            .Add "mode_nuke_started{current_player.nuke_acquired == 0}", Array("acquire_nuke","score_1000000","acquire_nuke_show1","play_voc_nuke","nuke_lsling_on","nuke_rsling_on")
            .Add "mode_nuke_started{current_player.nuke_acquired == 1 and current_player.nuke_used == 0}", Array("nuke_lsling_on","nuke_rsling_on")
            'Detonate nuke
            .Add "s_start_active", Array("check_detonate_nuke")
            .Add "s_lockbar_key_active", Array("check_detonate_nuke")
            .Add "check_detonate_nuke{current_player.nuke_acquired == 1 and current_player.nuke_used == 0}", Array("detonate_nuke","score_2000000","nuke_lsling_off","nuke_rsling_off")
        End With

        With .DOFPlayer()
            With .EventName("detonate_nuke")
                .Action = "DOF_PULSE"
                .DOFEvent = 200
            End With
        End With
     

        With .VariablePlayer()
		    With .EventName("acquire_nuke")
				With .Variable("nuke_acquired")
                    .Action = "set"
					.Int = 1
				End With
            End With
            With .EventName("detonate_nuke")
				With .Variable("nuke_used")
                    .Action = "set"
					.Int = 1
				End With
            End With
        End With


        With .ShowPlayer()
            
            'Added cluster bomb shows
            With .EventName("nuke_lsling_on")
                .Key = "key_nuke_lsling_on"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "tFL5"
                    .Add "color", MeteorHotColor
                    .Add "fade", 900
                End With
            End With
            With .EventName("nuke_rsling_on")
                .Key = "key_nuke_rsling_on"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "tFL6"
                    .Add "color", MeteorHotColor
                    .Add "fade", 900
                End With
            End With

            With .EventName("nuke_lsling_off")
                .Key = "key_nuke_lsling_on"
                .Show = "flash_color_with_fade"
                .Speed = 1
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "tFL5"
                    .Add "color", MeteorHotColor
                    .Add "fade", 900
                End With
            End With
            With .EventName("nuke_rsling_off")
                .Key = "key_nuke_rsling_on"
                .Show = "flash_color_with_fade"
                .Speed = 1
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "tFL6"
                    .Add "color", MeteorHotColor
                    .Add "fade", 900
                End With
            End With

            With .EventName("acquire_nuke_show1") 
                .Key = "key_acquire_nuke_show1"
                .Show = "cluster_bomb_acquired" 
                .Speed = 3
                .Loops = 0
                .Priority = 4000
                With .Tokens()
                    .Add "color", MeteorHotColor
                    .Add "intensity", 100
                End With
                .EventsWhenCompleted = Array("acquire_nuke_show2")
            End With
            With .EventName("acquire_nuke_show2") 
                .Key = "key_acquire_nuke_show2"
                .Show = "moon_missile_acquired" 
                .Speed = 3
                .Loops = 0
                .Priority = 4000
                With .Tokens()
                    .Add "color", MeteorHotColor
                    .Add "intensity", 100
                End With
            End With

            ' Nuke show
            With .EventName("detonate_nuke")
                .Key = "key_nuke_explodes"
                .Show = "nuke_explodes" 
                .Speed = 1
                .Loops = 0
                .EventsWhenCompleted = Array("deactivate_nuke")
            End With

        End With

    End With
End Sub