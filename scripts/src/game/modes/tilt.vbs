


' Tilt Mode.


Sub CreateTiltMode()

    With CreateGlfMode("tilt", 10000)
        .StartEvents = Array(GLF_BALL_STARTED)
        .StopEvents = Array("ball_will_end")


        With .Tilt()
            .MultipleHitWindow = 1000
            .SettleTime = 5000
            .WarningsToTilt = 3
            .ResetWarningEvents = Array("mode_tilt_started")
        End With


        ' With .SlidePlayer()
        '     With .EventName("tilt") 
        '         .Slide = "tilt_dc"
        '         .Action = "play"
        '     End With
        ' End With

        With .WidgetPlayer()
            With .EventName("tilt")
                .Widget = "tilt"
                .Action = "play"
                .Expire = 5.5
            End With
        End With

    End With

End Sub