

'Ship Save Mode.

's_RightOrb2 must be hit right after s_RightOrb1 (by hitting their swtiches).
'Once this occurs, a ship save light is lit in order (1, 2, 3)
'Once the third charge light is lit, a the ship save (ball save) will be extended at ths start of next meteor wave.


Const ShipSaveColor = "0500ee"

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
            End With
        Next

        With .StateMachines("ship_save")
            .PersistState = True
            With .States("start")
                .Label = "Start State"
            End With
            With .States("step1")
                .Label = "Step 1"
                With .ShowWhenActive()
                    .Show = "ship_save_orbit"
                    .Loops = 1
                    .Speed = 4
                End With
                .EventsWhenStarted = Array("light_ship_save1")
            End With
            With .States("step2")
                .Label = "Step 2"
                .EventsWhenStarted = Array("light_ship_save2")
            End With
            With .States("step3")
                .Label = "Step 3"
                .EventsWhenStarted = Array("light_ship_save3")
            End With
            With .Transitions()
                .Source = Array("start")
                .Target = "step1"
                .Events = Array("right_orbit_hit")
            End With
            With .Transitions()
                .Source = Array("step1")
                .Target = "step2"
                .Events = Array("right_orbit_hit")
            End With
            With .Transitions()
                .Source = Array("step2")
                .Target = "step3"
                .Events = Array("right_orbit_hit")
            End With
        End With
    
    End With
End Sub