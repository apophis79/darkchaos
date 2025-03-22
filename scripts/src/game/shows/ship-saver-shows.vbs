

Sub CreateShipSaverBombShows()

With CreateGlfShow("ship_saver_acquired")
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_saver_acquiredA"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", ShipSaveColor
                .Add "intensity", 100
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_saver_acquiredB"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", ShipSaveColor
                .Add "intensity", 30
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_saver_acquiredC"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", ShipSaveColor
                .Add "intensity", 5
            End With
        End With
    End With
End With



End Sub