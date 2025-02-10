

'Cluster Bomb Mode.

's_LeftOrb2 must be hit right after s_LeftOrb1 (by hitting their swtiches).
'Once this occurs, a cluster bomb charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new cluster bomb is lit in order (1, 2)
'If a cluster bomb is available, then when the left magna is pressed the bomb is detonated
'When a bomb is detonated it will destroy all meteors (drop targets) that are currently active on the table


Sub CreateClusterBombMode
    Dim x

    With CreateGlfMode("cluster_bombs", 1000)
        .StartEvents = Array("new_ball_started","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","start_training_select","wizard_mode_started")

        With .EventPlayer()
            'Reset cluster charge shots
            .Add "mode_cluster_bombs_started{current_player.shot_cluster_charge1==0}", Array("reset_cluster_charges")
            .Add "mode_cluster_bombs_started{current_player.training_cluster_bomb_achieved==1}", Array("reset_cluster_charges")
            .Add "reset_cluster_charges{current_player.training_cluster_bomb_achieved==0}", Array("ready_cluster_charge1") 'no training boost
            .Add "reset_cluster_charges{current_player.training_cluster_bomb_achieved==1}", Array("light_cluster_charge1","light_cluster_charge2","ready_cluster_charge3") 'with training boost
            'Successful shot
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 1}", Array("light_cluster_charge1","ready_cluster_charge2","play_sfx_LCC")
            .Add "left_orbit_hit{current_player.shot_cluster_charge1 == 2 && current_player.shot_cluster_charge2 == 1}", Array("light_cluster_charge2","ready_cluster_charge3","play_sfx_LCC")
            .Add "left_orbit_hit{current_player.shot_cluster_charge2 == 2 && current_player.shot_cluster_charge3 == 1}", Array("light_cluster_charge3","play_sfx_LCC")
            'Add bombs
            .Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 0}", Array("add_cluster_bomb1","reset_cluster_charges")
            .Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", Array("add_cluster_bomb2","check_fully_loaded") 'check for wizard mode qualification
            'Fire bomb
            .Add "s_left_magna_key_active{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", Array("fire_cluster_bomb1","cluster_bomb_fired","cluster_bomb_flash")
            .Add "s_left_magna_key_active{current_player.shot_cluster_bomb2 == 1}", Array("fire_cluster_bomb2","cluster_bomb_fired","cluster_bomb_flash","reset_cluster_charges")
            'Handle mystery award
            .Add "mystery_added_cluster", Array("complete_cluster_charges","light_cluster_charge3","check_fully_loaded")
            'Scoring
            .Add "left_orbit_hit", Array("score_500")
            .Add "add_cluster_bomb1", Array("score_5000")
            .Add "add_cluster_bomb2", Array("score_10000")
            .Add "complete_cluster_charges", Array("score_10000")
        End With

        With .RandomEventPlayer()
            With .EventName("play_sfx_LCC")
                .Add "play_sfx_LCC1", 1
                .Add "play_sfx_LCC2", 1
                .Add "play_sfx_LCC3", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With

        With .SoundPlayer()
            With .EventName("cluster_bomb_fired")
                .Key = "key_sfx_cluster_fired"
                .Sound = "sfx_cluster_fired"
            End With

            With .EventName("play_sfx_LCC1")
                .Key = "key_sfx_LCC1"
                .Sound = "sfx_LCC1"
            End With
            With .EventName("play_sfx_LCC2")
                .Key = "key_sfx_LCC2"
                .Sound = "sfx_LCC2"
            End With
            With .EventName("play_sfx_LCC3")
                .Key = "key_sfx_LCC3"
                .Sound = "sfx_LCC3"
            End With

            With .EventName("add_cluster_bomb1")
                .Key = "key_voc_LCR1"
                .Sound = "voc_LCR1"
            End With
            With .EventName("add_cluster_bomb2")
                .Key = "key_voc_LCR2"
                .Sound = "voc_LCR2"
            End With
        End With

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
                    .Events = Array("light_cluster_charge"&x,"complete_cluster_charges")
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


        With .ShowPlayer()
            With .EventName("light_cluster_charge3")
                .Key = "key_clusters_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tCluster"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("add_cluster_bomb1")
                .Key = "key_cluster1_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "LCR1"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("add_cluster_bomb2")
                .Key = "key_cluster2_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "LCR2"
                    .Add "color", ClusterBombColor
                End With
            End With
             With .EventName("cluster_bomb_fired")
                .Key = "key_cluster_explodes"
                .Priority = 5
                .Show = "cluster_explodes"  'the cluster color is included in the show
                .Speed = 1
                .Loops = 1
            End With
            ' With .EventName("cluster_bomb_fired")
            '     .Key = "key_cluster_explodes"
            '     .Show = "meteor2_explodes"
            '     .Speed = 1
            '     .Loops = 1
            '     With .Tokens()
            '         .Add "color", ClusterBombColor
            '     End With    
            ' End With
            With .EventName("cluster_bomb_flash")
                .Key = "key_cluster_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ClusterBombColor
                    .Add "fade", 300
                End With
            End With
        End With


        With .SegmentDisplayPlayer()
            With .EventName("light_cluster_charge3")
                With .Display("player3")
                    .Text = """CLUSTER"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With

    End With
End Sub