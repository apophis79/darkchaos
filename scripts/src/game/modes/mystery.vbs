

'Mystery Mode.

'All of the mystery shot lights need to be lit (by hitting their swtiches). 
'Once they are all lit, the "Mystery Ready" inserts flashes
'The mystery shots will stay lit until the mystery is collected
'When a ball goes into the scoop then
'  1) the meteor wave count down is paused
'  2) a random mystery award is achieved based one what is available (with light show)
'  3) all the mystery lights will be reset to off, meteor wave countdown continued



Sub CreateMysteryMode
    Dim x

    With CreateGlfMode("mystery", 580)
        .StartEvents = Array("ball_started","stop_meteor_wave","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training_select")
        

        With .EventPlayer()
            'enable the ball hold if needed
            .Add "s_Scoop_active{current_player.shot_mystery_ready==1}", Array("enable_scoop_hold") 
            'run the mystery selection if ready, otherwise move along to training
            .Add "check_mystery{current_player.shot_mystery_ready==0}", Array("check_training")
            .Add "check_mystery{current_player.shot_mystery_ready==1}", Array("select_random_mystery")
            'select random mystery and run show
            .Add "select_random_mystery", Array("play_mystery_show")
            'release ball hold if training is not ready
            .Add "restart_qualify_mystery{current_player.shot_training_ready==0}", Array("release_scoop_hold")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'reset stuff and continue
            .Add "restart_qualify_mystery", Array("mystery_select_done","start_mwq_timer","check_training")   'Mystery done, so continue the meteor wave qualify countdown
        End With

        'Randomize mystery selection
        With .RandomEventPlayer()
            '.Debug = True
            With .EventName("select_random_mystery")
                .Add "mystery_full_health{current_player.health_value < 9}", 1
                .Add "mystery_full_protons{current_player.shot_proton_round6 == 0}", 0.7
                .Add "mystery_added_cluster{current_player.shot_cluster_bomb2 == 0}", 0.8
                .Add "mystery_added_saver{current_player.shot_ship_charge3 != 2}", 1
                .Add "mystery_added_shields{current_player.shot_shield_left == 0}", 1
                .Add "mystery_moon_ready{current_player.multiball_lock_moon_launch_balls_locked < 2 && devices.state_machines.moon_mb.state!=""locking""}", 1
                .Add "mystery_trainer_ready{current_player.shot_training_ready == 0 && current_player.training_total_achieved < 6}", 1
                .Add "mystery_double_scoring{current_player.scoring_multiplier == 1}", 0.5  'FIXME add this mode
                .Add "mystery_collect_bonus", 0.5  'FIXME added this mode
                .Add "mystery_relaxed_combos{current_player.combos_relaxed == 0}", 0.5
                .Add "mystery_eb_is_lit{current_player.eb_ready == 0}", 0.1
                .ForceAll = False
                .ForceDifferent = False
            End With

            With .EventName("qualify_mystery_hit")
                .Add "play_sfx_LM1", 1
                .Add "play_sfx_LM2", 1
                .Add "play_sfx_LM3", 1
                .Add "play_sfx_LM4", 1
                .Add "play_sfx_LM5", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With

        With .SoundPlayer()
            With .EventName("qualify_mystery_on_complete")
                .Sound = "sfx_LMR"
            End With

            With .EventName("play_sfx_LM1")
                .Sound = "sfx_LM1"
            End With
            With .EventName("play_sfx_LM2")
                .Sound = "sfx_LM2"
            End With
            With .EventName("play_sfx_LM3")
                .Sound = "sfx_LM3"
            End With
            With .EventName("play_sfx_LM4")
                .Sound = "sfx_LM4"
            End With
            With .EventName("play_sfx_LM5")
                .Sound = "sfx_LM5"
            End With
        End With

        'Scoop ball hold
        With .BallHolds("mystery_hold")
            '.Debug = True
            .BallsToHold = 1
            .HoldDevices = Array("scoop")
            .EnableEvents = Array("enable_mystery_hold") 
            .DisableEvents = Array("disable_mystery_hold") 
            .ReleaseAllEvents = Array("release_mystery_hold")
        End With

        'Define our shots
        For x = 1 to 5
            With .Shots("mystery_shot"&x)
                .Switch = "s_TargetMystery"&x
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LM"&x
                    .Add "color", MysteryColor
                End With
            End With
        Next

        'Mystery Ready
        With .Shots("mystery_ready")
            .Profile = "qualified_shot"
            With .Tokens()
                .Add "lights", "LMR"
                .Add "color", MysteryColor
            End With
            With .ControlEvents()
                .Events = Array("qualify_mystery_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_mystery")
        End With


        ' Mystery qualifying shot group
        With .ShotGroups("qualify_mystery")
            .Shots = Array("mystery_shot1", "mystery_shot2", "mystery_shot3", "mystery_shot4","mystery_shot5")
            .RestartEvents = Array("restart_qualify_mystery")
            .DisableEvents = Array("select_random_mystery")
        End With


        With .ShowPlayer()
            With .EventName("qualify_mystery_on_complete")
                .Key = "key_mystery_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tMystery"
                    .Add "color", MysteryColor
                End With
            End With
            With .EventName("play_mystery_show")
                .Key = "key_mystery_show"
                .Show = "mystery"
                .Speed = 1
                .Loops = 1
                .EventsWhenCompleted = Array("restart_qualify_mystery")
            End With
        End With


        With .SegmentDisplayPlayer()
            'Mystery is ready to be claimed
            With .EventName("qualify_mystery_on_complete")
                With .Display("player2")
                    .Text = """CLAIM"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """MYSTERY"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With
            'Clear p1 and p4
            With .EventName("select_random_mystery")
                With .Display("player1")
                    .Text = """"""
                    .Expire = MysteryShowLength
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = MysteryShowLength
                End With
            End With

            'Mystery Award Text

            'FULL HEALTH
            With .EventName("mystery_full_health")
                With .Display("player2")
                    .Text = """ FULL """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """HEALTH"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With
            
            'FULL PROTONS
            With .EventName("mystery_full_protons")
                With .Display("player2")
                    .Text = """ FULL """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """PROTONS"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'ADDED CLUSTER
            With .EventName("mystery_added_cluster")
                With .Display("player2")
                    .Text = """ ADDED """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """CLUSTER"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'ADDED SAVER
            With .EventName("mystery_added_saver")
                With .Display("player2")
                    .Text = """ ADDED """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """ SAVER """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'ADDED SHIELDS
            With .EventName("mystery_added_shields")
                With .Display("player2")
                    .Text = """ ADDED """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """SHIELDS"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With
            
            'MOON READY
            With .EventName("mystery_moon_ready")
                With .Display("player2")
                    .Text = """ MOON """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """ READY """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'TRAINER READY
            With .EventName("mystery_trainer_ready")
                With .Display("player2")
                    .Text = """TRAINER"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """ READY """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With
            
            'DOUBLE SCORING
            With .EventName("mystery_double_scoring")
                With .Display("player2")
                    .Text = """DOUBLE"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """SCORING"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'COLLECT BONUS
            With .EventName("mystery_collect_bonus")
                With .Display("player2")
                    .Text = """COLLECT"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """ BONUS """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

            'RELAXED COMBOS
            With .EventName("mystery_relaxed_combos")
                With .Display("player2")
                    .Text = """RELAXED"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """COMBOS"""
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With
            
            'EB IS LIT
            With .EventName("mystery_eb_is_lit")
                With .Display("player2")
                    .Text = """ EB IS """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
                With .Display("player3")
                    .Text = """ LIT """
                    .Flashing = "all"
                    .Expire = MysteryShowLength
                End With
            End With

        End With


    End With

End Sub