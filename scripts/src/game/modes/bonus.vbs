


' Bonus Mode.


Sub CreateBonusMode

    With CreateGlfMode("bonus", 150)
        .StartEvents = Array("ball_ending")
        .StopEvents = Array("bonus_finished")
        .UseWaitQueue = True

        With .EventPlayer()
            'start bonus
            .Add "mode_bonus_started{current_player.wizard_final_hit_count > 0}", Array("run_bonus_started") 'normal startup. run bonus
            .Add "mode_bonus_started{current_player.wizard_final_hit_count == 0 && current_player.victory == 0}", Array("bonus_finished") 'final wizard just completed. dont run bonus
            .Add "mode_bonus_started{current_player.wizard_final_hit_count == 0 && current_player.victory == 1}", Array("run_bonus_started") 'victory mode done. run bonus
            .Add "run_bonus_started", Array("check_bonus_bomb1","check_bonus_missile1","check_bonus_proton1")
            'calculate bomb bonus
            .Add "check_bonus_bomb1{current_player.shot_cluster_bomb1 == 1}", Array("add_bonus_bomb","check_bonus_bomb2")
            .Add "check_bonus_bomb2{current_player.shot_cluster_bomb2 == 1}", Array("add_bonus_bomb")
            'calculate missile bonus
            .Add "check_bonus_missile1{current_player.shot_moon_missile1 == 1}", Array("add_bonus_missile","check_bonus_missile2")
            .Add "check_bonus_missile2{current_player.shot_moon_missile2 == 1}", Array("add_bonus_missile")
            'calculate proton bonus
            .Add "check_bonus_proton1{current_player.shot_proton_round1 == 1}", Array("add_bonus_proton","check_bonus_proton2")
            .Add "check_bonus_proton2{current_player.shot_proton_round2 == 1}", Array("add_bonus_proton","check_bonus_proton3")
            .Add "check_bonus_proton3{current_player.shot_proton_round3 == 1}", Array("add_bonus_proton","check_bonus_proton4")
            .Add "check_bonus_proton4{current_player.shot_proton_round4 == 1}", Array("add_bonus_proton","check_bonus_proton5")
            .Add "check_bonus_proton5{current_player.shot_proton_round5 == 1}", Array("add_bonus_proton","check_bonus_proton6")
            .Add "check_bonus_proton6{current_player.shot_proton_round6 == 1}", Array("add_bonus_proton")
            'add total bonus to player's score
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 11}", Array("calc_bonus_total")
            .Add "calc_bonus_total", Array("score_bonus_total")
            'handle bonus tally show
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 2}", Array("bonus_tally1","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 4}", Array("bonus_tally2","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 6}", Array("bonus_tally3","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 8}", Array("bonus_tally4","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 10}", Array("bonus_tally5","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{devices.timers.bonus.ticks == 12}", Array("bonus_tally6","restart_sfx_tally_alt")
            .Add "restart_sfx_tally_alt", Array("stop_sfx_tally_alt")
            .Add "stop_sfx_tally_alt", Array("play_sfx_tally_alt")
            'finish up bonus mode
            .Add "timer_bonus_complete", Array("bonus_finished")
        End With

        With .ComboSwitches("bonus_skip")
            .Debug = True
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .EventsWhenBoth = Array("skip_bonus_tally")
            '.HoldTime = 200
        End With

        With .SoundPlayer()
             With .EventName("stop_sfx_tally_alt")
                .Key = "key_sfx_tally_alt"
                .Sound = "sfx_tally_alt"
                .Action = "stop"
            End With
            With .EventName("play_sfx_tally_alt")
                .Key = "key_sfx_tally_alt"
                .Sound = "sfx_tally_alt"
            End With
        End With

        With .ShowPlayer()
            With .EventName("run_bonus_started")
                .Key = "key_bonus_show"
                .Show = "mystery"  'FIXME  make new show for this?
                .Speed = 1
            End With

            With .EventName("bonus_tally1")
                .Key = "key_tally1_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tWaves"
                    .Add "color", MeteorWaveColor
                End With
            End With
            With .EventName("bonus_tally2")
                .Key = "key_tally2_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tTrain"
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("bonus_tally3")
                .Key = "key_tally3_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tClusterAll"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("bonus_tally4")
                .Key = "key_tally4_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tMoonAll"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("bonus_tally5")
                .Key = "key_tally5_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tProtonAll"
                    .Add "color", ProtonColor
                End With
            End With

        End With

        With .Timers("bonus")
            .TickInterval = BonusTimerTickInterval
            .StartValue = 0
            .EndValue = 16
            With .ControlEvents()
                .EventName = "run_bonus_started"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "skip_bonus_tally"
                .Action = "jump"
                .Value = 12  'bonus total
            End With
        End With
     
        With .SegmentDisplayPlayer()
            With .EventName("run_bonus_started")
                With .Display("player1")
                    .Text = """BONUS"""
                End With
                With .Display("player2")
                    .Text = """"""
                End With
                With .Display("player3")
                    .Text = """"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 2}")
                With .Display("player2")
                    .Priority = 5010
                    .Text = """WAVES"""
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
                With .Display("player3")
                    .Priority = 5010
                    .Text = "{current_player.bonus_waves:0>2}"
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 4}")
                With .Display("player2")
                    .Priority = 5020
                    .Text = """TRAINING"""
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
                With .Display("player3")
                    .Priority = 5020
                    .Text = "{current_player.bonus_training:0>2}"
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 6}")
                With .Display("player2")
                    .Priority = 5030
                    .Text = """BOMBS"""
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
                With .Display("player3")
                    .Priority = 5030
                    .Text = "{current_player.bonus_bombs:0>2}"
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 8}")
                With .Display("player2")
                    .Priority = 5040
                    .Text = """MISSILES"""
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
                With .Display("player3")
                    .Priority = 5040
                    .Text = "{current_player.bonus_missiles:0>2}"
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 10}")
                With .Display("player2")
                    .Priority = 5050
                    .Text = """PROTONS"""
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
                With .Display("player3")
                    .Priority = 5050
                    .Text = "{current_player.bonus_protons:0>2}"
                    .Flashing = "all"
                    '.Expire = BonusTimerTickInterval
                End With
            End With

            With .EventName("timer_bonus_tick{devices.timers.bonus.ticks == 12}")
                With .Display("player2")
                    .Priority = 5060
                    .Text = """TOTAL"""
                End With
                With .Display("player3")
                    .Priority = 5060
                    .Text = "{current_player.bonus_total:0>2}"
                    .Flashing = "all"
                End With
            End With

            With .EventName("skip_bonus_tally")
                With .Display("player4")
                    .Priority = 5070
                    .Text = """SKIP"""
                End With
            End With

        End With


        With .VariablePlayer()
            
            With .EventName("run_bonus_started")
                'initalize vars
				With .Variable("bonus_bombs")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("bonus_missiles")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("bonus_protons")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("bonus_total")
                    .Action = "set"
					.Int = 0
				End With
                'calc waves and training bonus
                With .Variable("bonus_waves")
                    .Action = "set"
					.Int = BonusrWaveMultiplier & " * current_player.num_waves_completed_this_ball * current_player.num_waves_completed"
				End With
                With .Variable("bonus_training")
                    .Action = "set"
					.Int = BonusPerTraining & " * current_player.training_total_achieved"
				End With
			End With

            'sum up ammo for bonus points
		    With .EventName("add_bonus_bomb")
				With .Variable("bonus_bombs")
                    .Action = "add"
					.Int = BonusPerClusterBomb
				End With
			End With
            With .EventName("add_bonus_missile")
				With .Variable("bonus_missiles")
                    .Action = "add"
					.Int = BonusPerMoonMissile
				End With
			End With
            With .EventName("add_bonus_proton")
				With .Variable("bonus_protons")
                    .Action = "add"
					.Int = BonusPerProtonRound
				End With
			End With

            'calculate the total bonus
            With .EventName("calc_bonus_total")
                With .Variable("bonus_total")
                    .Action = "set"
                    .Int = "current_player.bonus_waves + " & _
                           "current_player.bonus_training + " & _
                           "current_player.bonus_bombs + " & _
                           "current_player.bonus_missiles + " & _
                           "current_player.bonus_protons"
                End With
            End With
        
            'add the total bonus to player's score
            With .EventName("score_bonus_total")
				With .Variable("score")
                    .Action = "add"
					.Int = "current_player.bonus_total"
				End With
			End With
        End With

    End With

End Sub