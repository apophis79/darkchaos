

'Victory Lap Mode !!!!


Sub CreateVictoryLapMode
    Dim x

    With CreateGlfMode("victory_lap", 9999)
        .StartEvents = Array("asteroid_destroyed")
        .StopEvents = Array(GLF_BALL_ENDED)

        ' With .EventPlayer()
        '     '.Add "mode_victory_lap_started", Array("")
        '     '.Add "some_event", Array("run_victory_lap")
        ' End With

        With .BallSaves("victory")
            .ActiveTime = 13000
            .EnableEvents = Array("mode_victory_lap_started")
            .AutoLaunch = False
        End With


        With .Shots("victory_shoot_again")
            .Profile = "shoot_again"
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
                    

        With .Multiballs("victory")
            .StartEvents = Array("run_victory_lap")
            .BallCount = 5
            .BallCountType = "total"
            .ShootAgain = 30000
            .HurryUp = 3000
            .GracePeriod = 0
        End With

    
    End With
End Sub