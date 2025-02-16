

'Victory Lap Mode !!!!
' All shots are lit, double scoring, 45 sec ball save, 5 ball mb
' Flippers die after 45 sec. Ball over.
' The mode will restart on next ball (if any are left).


Sub CreateVictoryLapMode
    Dim x

    With CreateGlfMode("victory_lap", 9999)
        .StartEvents = Array("asteroid_destroyed","restart_victory")
        .StopEvents = Array("mode_base_stopping")

        With .EventPlayer()
            .Add "mode_victory_lap_started{modes.final_wave_wizard.active}", Array("victory_startup_ballsave")
            .Add "ball_launch_hit{current_player.victory_lap_running == 0}", Array("run_victory_lap","start_double_scoring")
            .Add "s_Plunger1_active{current_player.victory_lap_running == 0}", Array("run_victory_lap_show")
            .Add "multiball_victory_shoot_again_ended", Array("kill_flippers")
            'Handle moon ramp
            .Add "balldevice_moon_lock_ball_enter", Array("delayed_release_moon_ball")
        End With

        With .BallSaves("victory_startup")
            .ActiveTime = 13000
            .EnableEvents = Array("victory_startup_ballsave")
            .BallsToSave = 1
            .AutoLaunch = False
        End With

        
        With .Multiballs("victory")
            .StartEvents = Array("run_victory_lap")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = VictoryLapTime*1000
            .HurryUp = 3000
            .GracePeriod = 0
        End With


        With .Shots("victory_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", "ffffff"
            End With
            With .ControlEvents()
                .Events = Array("run_victory_lap")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_victory_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("multiball_victory_shoot_again_ended")
        End With


        ' shots
        For x = 1 to 8
            With .Shots("victory_shot"&x)
                .Profile = "victory_shots"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                    .Add "color", "ffffff"
                End With
                With .ControlEvents()
                    .Events = Array("run_victory_lap_show")
                    .State = 1
                End With
            End With
        Next
        For x = 1 to 5
            With .Shots("victory_shot"&x+8)
                .Profile = "victory_shots"
                With .Tokens()
                    .Add "lights", "LM"&x
                    .Add "color", "ffffff"
                End With
                With .ControlEvents()
                    .Events = Array("run_victory_lap_show")
                    .State = 1
                End With
            End With
        Next


        With .ShotProfiles("victory_shots")
            With .States("unlit")
                .Show = "off"
                .Key = "key_vic_off"
            End With
            With .States("ready")
                .Show = "flash_color"
                .Key = "key_vic_on"
                .Speed = 7
                With .Tokens()
                    .Add "color", "ffffff"
                End With
            End With
        End With


        With .VariablePlayer()
		    With .EventName("mode_victory_lap_started")
				With .Variable("victory")
                    .Action = "set"
					.Int = 1
				End With
                With .Variable("victory_lap_running")
                    .Action = "set"
					.Int = 0
				End With
            End With
            With .EventName("run_victory_lap")
                With .Variable("victory_lap_running")
                    .Action = "set"
					.Int = 1
				End With
            End With
        End With


        With .Timers("victory_countdown")
            .TickInterval = 1000
            .StartValue = VictoryLapTime
            .EndValue = 0
            .Direction = "down"
            With .ControlEvents()
                .EventName = "run_victory_lap"
                .Action = "restart"
            End With
        End With



        With .SegmentDisplayPlayer()
            With .EventName("run_victory_lap_show")
                With .Display("player1")
                    .Text = """ YOU """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """ SAVED """
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """US  """
                    .Flashing = "all"
                End With
                With .Display("player4")
                    .Text = """ALL """
                    .Flashing = "all"
                End With
            End With
            With .EventName("run_victory_lap")
                With .Display("player1")
                    .Action = "remove"
                End With
                With .Display("player2")
                    .Action = "remove"
                End With
                With .Display("player3")
                    .Action = "remove"
                End With
                With .Display("player4")
                    .Action = "remove"
                End With

                With .Display("pf")
                    .Text = "{devices.timers.victory_countdown.ticks:0>2}"
                End With
            End With

            With .EventName("timer_victory_countdown_complete")
                With .Display("pf")
                    .Text = """00"""
                    .Priority = 100
                End With
            End With
        End With

    
    End With
End Sub