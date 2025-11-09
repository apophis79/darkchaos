


' Bonus Mode.


Sub CreateBonusMode

    With CreateGlfMode("eob_bonus", 150)
        .StartEvents = Array("ball_ending{game.tilted == False}")
        .StopEvents = Array("bonus_finished")
        .UseWaitQueue = True

        With .EventPlayer()
            'start bonus
            .Add "mode_eob_bonus_started", Array("run_bonus_started")
            ' .Add "mode_bonus_started{current_player.wizard_final_hit_count > 0}", Array("run_bonus_started") 'normal startup. run bonus
            ' .Add "mode_bonus_started{current_player.wizard_final_hit_count == 0 and current_player.victory == 0}", Array("bonus_finished") 'final wizard just completed. dont run bonus
            ' .Add "mode_bonus_started{current_player.wizard_final_hit_count == 0 and current_player.victory == 1}", Array("run_bonus_started") 'victory mode done. run bonus
            .Add "run_bonus_started", Array("check_bonus_bomb1","check_bonus_missile1","check_bonus_proton1","check_bonus_waves")
            'calculate bomb bonus
            .Add "check_bonus_bomb1{current_player.shot_cluster_bomb1 == 1}", Array("add_bonus_bomb","check_bonus_bomb2","bonus_light_cr1")
            .Add "check_bonus_bomb2{current_player.shot_cluster_bomb2 == 1}", Array("add_bonus_bomb","bonus_light_cr2")
            'calculate missile bonus
            .Add "check_bonus_missile1{current_player.shot_moon_missile1 == 1}", Array("add_bonus_missile","check_bonus_missile2","bonus_light_mr1")
            .Add "check_bonus_missile2{current_player.shot_moon_missile2 == 1}", Array("add_bonus_missile","bonus_light_mr2")
            'calculate proton bonus
            .Add "check_bonus_proton1{current_player.shot_proton_round1 == 1}", Array("add_bonus_proton","check_bonus_proton2","bonus_light_pr1")
            .Add "check_bonus_proton2{current_player.shot_proton_round2 == 1}", Array("add_bonus_proton","check_bonus_proton3","bonus_light_pr2")
            .Add "check_bonus_proton3{current_player.shot_proton_round3 == 1}", Array("add_bonus_proton","check_bonus_proton4","bonus_light_pr3")
            .Add "check_bonus_proton4{current_player.shot_proton_round4 == 1}", Array("add_bonus_proton","check_bonus_proton5","bonus_light_pr4")
            .Add "check_bonus_proton5{current_player.shot_proton_round5 == 1}", Array("add_bonus_proton","check_bonus_proton6","bonus_light_pr5")
            .Add "check_bonus_proton6{current_player.shot_proton_round6 == 1}", Array("add_bonus_proton","bonus_light_pr6")
            'light wave lights
            .Add "check_bonus_waves{current_player.shot_meteor_wave1 == 2}", Array("bonus_light_w1")
            .Add "check_bonus_waves{current_player.shot_meteor_wave2 == 2}", Array("bonus_light_w2")
            .Add "check_bonus_waves{current_player.shot_meteor_wave3 == 2}", Array("bonus_light_w3")
            .Add "check_bonus_waves{current_player.shot_meteor_wave4 == 2}", Array("bonus_light_w4")
            .Add "check_bonus_waves{current_player.shot_meteor_wave5 == 2}", Array("bonus_light_w5")
            .Add "check_bonus_waves{current_player.shot_meteor_wave6 == 2}", Array("bonus_light_w6")
            .Add "check_bonus_waves{current_player.shot_meteor_wave7 == 2}", Array("bonus_light_w7")
            .Add "check_bonus_waves{current_player.shot_meteor_wave8 == 2}", Array("bonus_light_w8")
            .Add "check_bonus_waves{current_player.shot_meteor_wave9 == 2}", Array("bonus_light_w9")
            'add total bonus to player's score
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 17}", Array("calc_bonus_total")
            .Add "calc_bonus_total", Array("score_bonus_total")
            'handle bonus tally show
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 2 and current_player.bonus_multiplier == 2}", Array("bonus_2x")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 3}", Array("bonus_tally1","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 6}", Array("bonus_tally2","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 9}", Array("bonus_tally3","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 12}", Array("bonus_tally4","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 15}", Array("bonus_tally5","restart_sfx_tally_alt")
            .Add "timer_bonus_tick{device.timers.bonus.ticks == 18}", Array("bonus_tally6","restart_sfx_tally_alt")
            .Add "restart_sfx_tally_alt", Array("stop_sfx_tally_alt")
            .Add "stop_sfx_tally_alt", Array("play_sfx_tally_alt")
            'finish up bonus mode
            .Add "timer_bonus_complete", Array("bonus_finished")
            'block combo switch spamming
            .Add "skip_bonus_tally", Array("comboflip_hit")
        End With

        With .ComboSwitches("bonus_skip")
            '.Debug = True
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
                .Show = "gi_spin1_cw"
                .Speed = 1
                With .Tokens()
                    .Add "intensity", 100
                End With
            End With

            With .EventName("bonus_tally1")
                .Key = "key_tally1_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tWaves"
                    .Add "color", MeteorWaveColor
                End With
            End With
            With .EventName("bonus_tally2")
                .Key = "key_tally2_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "LX"
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("bonus_tally3")
                .Key = "key_tally3_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tClusterAll"
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("bonus_tally4")
                .Key = "key_tally4_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tMoonAll"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("bonus_tally5")
                .Key = "key_tally5_show"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tProtonAll"
                    .Add "color", ProtonColor
                End With
            End With

        End With


        With .LightPlayer()
            With .EventName("bonus_light_cr1")
                With .Lights("LCR1")
                    .Color = ClusterBombColor
                End With
            End With
            With .EventName("bonus_light_cr2")
                With .Lights("LCR2")
                    .Color = ClusterBombColor
                End With
            End With

            With .EventName("bonus_light_mr1")
                With .Lights("LMR1")
                    .Color = MoonColor
                End With
            End With
            With .EventName("bonus_light_mr2")
                With .Lights("LMR2")
                    .Color = MoonColor
                End With
            End With

            With .EventName("bonus_light_pr1")
                With .Lights("LPR1")
                    .Color = ProtonColor
                End With
            End With
            With .EventName("bonus_light_pr2")
                With .Lights("LPR2")
                    .Color = ProtonColor
                End With
            End With
            With .EventName("bonus_light_pr3")
                With .Lights("LPR3")
                    .Color = ProtonColor
                End With
            End With
            With .EventName("bonus_light_pr4")
                With .Lights("LPR4")
                    .Color = ProtonColor
                End With
            End With
            With .EventName("bonus_light_pr5")
                With .Lights("LPR5")
                    .Color = ProtonColor
                End With
            End With
            With .EventName("bonus_light_pr6")
                With .Lights("LPR6")
                    .Color = ProtonColor
                End With
            End With

            With .EventName("bonus_light_w1")
                With .Lights("LW1")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w2")
                With .Lights("LW2")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w3")
                With .Lights("LW3")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w4")
                With .Lights("LW4")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w5")
                With .Lights("LW5")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w6")
                With .Lights("LW6")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w7")
                With .Lights("LW7")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w8")
                With .Lights("LW8")
                    .Color = MeteorWaveColor
                End With
            End With
            With .EventName("bonus_light_w9")
                With .Lights("LW9")
                    .Color = MeteorWaveColor
                End With
            End With
        End With



        With .Timers("bonus")
            .TickInterval = BonusTimerTickInterval
            .StartValue = 0
            .EndValue = 24
            With .ControlEvents()
                .EventName = "run_bonus_started"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "skip_bonus_tally{current_player.bonus_comboflip_block==0 and device.timers.bonus.ticks < 16}"
                .Action = "jump"
                .Value = 16  'bonus total
            End With
        End With
     
        With .SegmentDisplayPlayer()
            With .EventName("run_bonus_started")
                With .Display("player1")
                    .Text = "BONUS  "
                End With
                With .Display("player2")
                    .Text = ""
                End With
                With .Display("player3")
                    .Text = ""
                End With
                With .Display("player4")
                    .Text = ""
                End With
            End With

            With .EventName("bonus_2x")
                With .Display("player4")
                    .Priority = 5005
                    .Text = " X 2  "
                End With
            End With

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 3}")
                With .Display("player2")
                    .Priority = 5010
                    .Text = "WAVES"
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

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 6}")
                With .Display("player2")
                    .Priority = 5020
                    .Text = "TRAINING"
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

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 9}")
                With .Display("player2")
                    .Priority = 5030
                    .Text = "BOMBS"
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

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 12}")
                With .Display("player2")
                    .Priority = 5040
                    .Text = "MISSILES"
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

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 15}")
                With .Display("player2")
                    .Priority = 5050
                    .Text = "PROTONS"
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

            With .EventName("timer_bonus_tick{device.timers.bonus.ticks == 18}")
                With .Display("player2")
                    .Priority = 5060
                    .Text = "TOTAL"
                End With
                With .Display("player3")
                    .Priority = 5060
                    .Text = "{current_player.bonus_total:0>2}"
                    .Flashing = "all"
                End With
                With .Display("player4")
                    .Priority = 5060
                    .Text = ""
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
                'block double flipper
                With .Variable("bonus_comboflip_block")
                    .Action = "set"
					.Int = 0
				End With
			End With

            'sum up ammo for bonus points
		    With .EventName("comboflip_hit")
				With .Variable("bonus_comboflip_block")
                    .Action = "set"
					.Int = 1
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
                    .Int = "(current_player.bonus_waves + " & _
                           "current_player.bonus_training + " & _
                           "current_player.bonus_bombs + " & _
                           "current_player.bonus_missiles + " & _
                           "current_player.bonus_protons) * current_player.bonus_multiplier"
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