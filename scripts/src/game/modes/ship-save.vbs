

'Ship Save Mode.

's_RightOrb2 must be hit right after s_RightOrb1 (by hitting their swtiches).
'Once this occurs, a ship save light is lit in order (1, 2, 3)
'Once the third charge light is lit, a the ship save (ball save) will be extended at ths start of next meteor wave.


Sub CreateShipSaveMode
    Dim x

    With CreateGlfMode("ship_save", 510)
        .StartEvents = Array("ball_started","stop_meteor_wave","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training")

        With .EventPlayer()
            'Reset ship charge shots
            .Add "mode_ship_save_started{current_player.shot_ship_charge1==0}", Array("restart_ship_save")
            .Add "mode_ship_save_started{current_player.training_ship_save_achieved==1 && current_player.shot_ship_charge3!=2}", Array("restart_ship_save")
            .Add "mode_ship_save_started{current_player.shot_ship_charge3==2 && current_player.meteor_mb_shootagain_time =="&MeteorMBShootAgainTime&"}", Array("restart_ship_save")
            .Add "restart_ship_save{current_player.training_ship_save_achieved==0}", Array("ready_ship_charge1","clear_ship_save") 'no training boost
            .Add "restart_ship_save{current_player.training_ship_save_achieved==1}", Array("light_ship_charge1","light_ship_charge2","ready_ship_charge3","clear_ship_save") 'with training boost
            'Successful shot
            .Add "right_orbit_hit{current_player.shot_ship_charge1 == 1}", Array("light_ship_charge1","ready_ship_charge2")
            .Add "right_orbit_hit{current_player.shot_ship_charge1 == 2 && current_player.shot_ship_charge2 == 1}", Array("light_ship_charge2","ready_ship_charge3")
            .Add "right_orbit_hit{current_player.shot_ship_charge2 == 2 && current_player.shot_ship_charge3 == 1}", Array("light_ship_charge3")
        End With
        

        'Define our shots
        For x = 1 to 3
            With .Shots("ship_charge"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LF"&x
                    .Add "color", ShipSaveColor
                End With
                With .ControlEvents()
                    .Events = Array("ready_ship_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("light_ship_charge"&x)
                    .State = 2
                End With
                .RestartEvents = Array("restart_ship_save")
            End With
        Next

        With .ShowPlayer()
            With .EventName("light_ship_charge3")
                .Key = "key_ship_saves_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tSaver"
                    .Add "color", ShipSaveColor
                End With
            End With
        End With

        With .VariablePlayer()
            With .EventName("right_orbit_hit")
				With .Variable("score")
					.Int = 2750
				End With
			End With
            With .EventName("clear_ship_save")
				With .Variable("meteor_mb_shootagain_time")
                    .Action = "set"
					.Int = MeteorMBShootAgainTime
				End With
			End With
            With .EventName("light_ship_charge3")
				With .Variable("meteor_mb_shootagain_time")
                    .Action = "set"
					.Int = ShipSaveShootAgainTime
				End With
			End With
		End With

        With .SegmentDisplayPlayer()
            With .Events("light_ship_charge3")
                With .Display("player4")
                    .Text = """SAVER"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With
    
    End With
End Sub