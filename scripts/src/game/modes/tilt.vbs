


' Tilt Mode.


Sub CreateTiltMode()

    With CreateGlfMode("tilt", 10000)
        .StartEvents = Array(GLF_BALL_STARTED)
        .StopEvents = Array("ball_will_end")


        With .Tilt()
            .MultipleHitWindow = 3000
            .SettleTime = 5000
            .WarningsToTilt = 3
            .ResetWarningEvents = Array("mode_tilt_started")
        End With

    End With

End Sub