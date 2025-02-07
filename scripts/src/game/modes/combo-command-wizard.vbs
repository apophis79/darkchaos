

'Combo Command Wizard Mode.

'EB is added. All combo shot lights are lit flashing. Short ball saver is started (10 sec).
'5 ball multiball starts. Mode lasts as long as ball lasts, or until the super jacpot is achieved
'Each shot is like a jackpot. If all are completed, the scoop lights of for super jackpot.
'If Super JP is made, then phase 2 starts. 
'One random shot is lit at a time (flashing). After it is hit, its says lit (solid).
'Once all shots are completed, then the Super Duper JP is lit at the scoop.
'If the Super Duper JP is hit, then flippers die to drain other balls. Mode ends in full success!



Sub CreateComboCommandWizardMode
    Dim x

    With CreateGlfMode("combo_command_wizard", 3000)
        .StartEvents = Array("run_combo_command_wizard")
        .StopEvents = Array("ball_ended","completed_combo_command_wizard")

        With .EventPlayer()
            'release the scoop ball to start the wizard mode
            .Add "timer_combo_command_message_complete", Array("release_scoop_hold","start_moon_multiball","delayed_release_moon_ball")
            .Add "release_scoop_hold", Array("disable_scoop_hold")
            'Phase 1 shots completed, so activate the scoop for Super JPs
            .Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 1}", Array("activate_ccwiz_sjp","run_ccwiz_scoop_show")
            'Phase 1 Super JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.wizard_combo_command_phase == 1 && current_player.ccwiz_super_jp == 1}", Array("ccwiz_sjp_achieved","stop_ccwiz_scoop_show","restart_combos_command_shots")   'Start phase 2
            .Add "ccwiz_sjp_achieved", Array("add_ccwiz_phase2_shot")
            'Phase 2 shots
            .Add MainShotNames(0)&"_hit{current_player.shot_combo_command1 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(1)&"_hit{current_player.shot_combo_command2 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(2)&"_hit{current_player.shot_combo_command3 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(3)&"_hit{current_player.shot_combo_command4 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(4)&"_hit{current_player.shot_combo_command5 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(5)&"_hit{current_player.shot_combo_command6 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(6)&"_hit{current_player.shot_combo_command7 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            .Add MainShotNames(7)&"_hit{current_player.shot_combo_command8 == 1 && current_player.wizard_combo_command_phase == 2}", Array("add_ccwiz_phase2_shot")
            'Phase 2 shots completed, so activate the scoop for Super JPs
            .Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 2}", Array("activate_ccwiz_sdjp","run_ccwiz_scoop_show","enable_scoop_hold")
            'Phase 2 Super Duper JP achieved
            .Add "balldevice_scoop_ball_entered{current_player.ccwiz_super_jp == 2}", Array("ccwiz_sdjp_achieved","stop_ccwiz_scoop_show","release_scoop_hold")  'Combo Command wizard mode completed
            .Add "ccwiz_sdjp_achieved", Array("completed_combo_command_wizard")  'FIXME  for now just end the mode, but we should have a show before mode ends
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")
        End With


        With .RandomEventPlayer()
            With .EventName("add_ccwiz_phase2_shot")
                .Add "combo_command1_ready{current_player.shot_combo_command1 == 0}", 1
                .Add "combo_command2_ready{current_player.shot_combo_command2 == 0}", 1
                .Add "combo_command3_ready{current_player.shot_combo_command3 == 0}", 1
                .Add "combo_command4_ready{current_player.shot_combo_command4 == 0}", 1
                .Add "combo_command5_ready{current_player.shot_combo_command5 == 0}", 1
                .Add "combo_command6_ready{current_player.shot_combo_command6 == 0}", 1
                .Add "combo_command7_ready{current_player.shot_combo_command7 == 0}", 1
                .Add "combo_command8_ready{current_player.shot_combo_command8 == 0}", 1
                .ForceAll = True
                .ForceDifferent = False
            End With
        End With


        With .ExtraBalls("ccwiz_eb")
            .AwardEvents = Array("mode_combo_command_wizard_started")
            .MaxPerGame = 4
        End With

        With .Shots("ccwiz_shoot_again")
            .Profile = "extraball"
            With .ControlEvents()
                .Events = Array("mode_combo_command_wizard_started")
                .State = 1
            End With
            .ResetEvents = Array("ball_ended")
        End With


        With .Multiballs("ccwiz")
            .StartEvents = Array("timer_combo_command_message_complete")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = 10000
            .HurryUp = 3000
            .GracePeriod = 2000
        End With


        'Define combo command wizard shots

        For x = 1 to 8
            With .Shots("combo_command"&x)
                .Profile = "combo_command"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                    .Add "color", CombosColor
                End With
                With .ControlEvents()
                    .Events = Array("combo_command"&x&"_ready","mode_combo_command_wizard_started")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array(MainShotNames(x-1)&"_hit{current_player.shot_combo_command"&x&"==1}")
                    .State = 2
                End With
                '.RestartEvents = Array("restart_combos_command_shots")
            End With
        Next


        With .ShotProfiles("combo_command")
            With .States("unlit")
                .Show = "off"
                .Key = "key_ccwiz_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_ccwiz_ready"
                .Speed = 10
                With .Tokens()
                    .Add "color", CombosColor
                End With
            End With
            With .States("on")
                .Show = "led_color"
                .Key = "key_ccwiz_done"
                With .Tokens()
                    .Add "color", CombosColor
                End With
            End With
        End With

        With .ShotGroups("ccwiz_shots")
            .Shots = Array("combo_command1", "combo_command2", "combo_command3", "combo_command4", "combo_command5", "combo_command6", "combo_command7", "combo_command8")
            .RestartEvents = Array("restart_combos_command_shots")
        End With



        With .Timers("combo_command_message")
            .TickInterval = CCWizMessageInterval
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "mode_combo_command_wizard_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_combo_command_wizard_started")
				With .Variable("wizard_combo_command_phase")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("activate_ccwiz_sjp")
				With .Variable("ccwiz_super_jp")
                    .Action = "set"
					.Int = 1
				End With
			End With   
            With .EventName("ccwiz_sjp_achieved")
				With .Variable("wizard_combo_command_phase")
                    .Action = "set"
					.Int = 2
				End With
			End With 
            With .EventName("activate_ccwiz_sdjp")
				With .Variable("ccwiz_super_jp")
                    .Action = "set"
					.Int = 2
				End With
			End With   

		End With
        


        With .SegmentDisplayPlayer()
            With .EventName("mode_combo_command_wizard_started")
                With .Display("player1")
                    .Text = """ COMBO """
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """COMMAND"""
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """ WIZARD """
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """  MODE  """
                    .Expire = CCWizMessageInterval
                End With
            End With

            With .EventName("timer_combo_command_message_tick{devices.timers.combo_command_message.ticks == 1}")
                With .Display("player1")
                    .Text = """"""
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """   EB   """
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  ADDED """
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = CCWizMessageInterval
                End With
            End With

            With .EventName("timer_combo_command_message_tick{devices.timers.combo_command_message.ticks == 2}")
                With .Display("player1")
                    .Text = """"""
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player2")
                    .Text = """HIT ALL"""
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player3")
                    .Text = """  SHOTS """
                    .Flashing = "all"
                    .Expire = CCWizMessageInterval
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = CCWizMessageInterval
                End With
            End With

        End With


    End With

End Sub