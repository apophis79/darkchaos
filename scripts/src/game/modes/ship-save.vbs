Const ShipSaveColor = "7300ff"

Sub CreateShipSaveMode

    With CreateGlfMode("ship_save", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
       
        'Define our shots
        With .Shots("ship_save1")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LF1"
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents("right_orbit")
                .Events = Array("light_ship_save1")
                .State = 1
            End With
        End With
        With .Shots("ship_save2")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LF2"
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents("right_orbit")
                .Events = Array("light_ship_save2")
                .State = 1
            End With
        End With
        With .Shots("ship_save3")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LF3"
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents("right_orbit")
                .Events = Array("light_ship_save3")
                .State = 1
            End With
        End With
        
        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("swRightOrb1", "swRightOrb2")
            .SequenceTimeout = 1000
        End With

        With .StateMachines("ship_save")
            .PersistState = True
            With .States("start")
                .Label = "Start State"
            End With
            With .States("step1")
                .Label = "Step 1"
                .EventsWhenStarted = Array("light_ship_save1", "play_ship_save_show")
            End With
            With .States("step2")
                .Label = "Step 2"
                .EventsWhenStarted = Array("light_ship_save2", "play_ship_save_show")
            End With
            With .States("step3")
                .Label = "Step 3"
                .EventsWhenStarted = Array("light_ship_save3", "play_ship_save_show")
            End With
            With .Transitions("advance_step1")
                .Source = Array("start")
                .Target = "step1"
                .Events = Array("right_orbit_hit")
            End With
            With .Transitions("advance_step2")
                .Source = Array("step1")
                .Target = "step2"
                .Events = Array("right_orbit_hit")
            End With
            With .Transitions("advance_step3")
                .Source = Array("step2")
                .Target = "step3"
                .Events = Array("right_orbit_hit")
            End With
        End With

        With .ShowPlayer()
            With .Events("play_ship_save_show")
                .Show = "ship_save_orbit"
                .Loops = 1
                .Speed = 4
            End With
        End With
    
    End With
End Sub