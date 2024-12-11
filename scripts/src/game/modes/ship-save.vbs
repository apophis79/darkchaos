

'Ship Save Mode.

's_RightOrb2 must be hit right after s_RightOrb1 (by hitting their swtiches).
'Once this occurs, a ship save light is lit in order (1, 2, 3)
'Once the third charge light is lit, a the ship save (ball save) will be extended at ths start of next meteor wave.


Sub CreateShipSaveMode
    Dim x

    With CreateGlfMode("ship_save", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
       
        'Define our shots
        For x = 1 to 3
            With .Shots("ship_save"&x)
                .Profile = "flicker_on"
                With .Tokens()
                    .Add "lights", "LF"&x
                    .Add "color", ShipSaveColor
                End With
                With .ControlEvents()
                    .Events = Array("light_ship_save"&x)
                    .State = 1
                End With
                .RestartEvents = Array("restart_ship_save")
            End With
        Next

        With .EventPlayer()
            .Add "right_orbit_hit{current_player.shot_ship_save1 == 0}", Array("light_ship_save1")
            .Add "right_orbit_hit{current_player.shot_ship_save1 == 1 && current_player.shot_ship_save2 == 0}", Array("light_ship_save2")
            .Add "right_orbit_hit{current_player.shot_ship_save2 == 1 && current_player.shot_ship_save3 == 0}", Array("light_ship_save3")
        End With

        With .ShowPlayer()
            With .Events("light_ship_save1")
                .Show = "ship_save_orbit"
                .Speed = 4
				.Loops = 1
			End With
        End With
    
    End With
End Sub