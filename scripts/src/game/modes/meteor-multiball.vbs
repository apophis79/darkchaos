

'Meteor Multiball Mode.

'Meteor multiball occurs at regular intervals. Once it starts, the meteor targets begin to pop up.

' TODO:
' - add extended ship shave time effect



Sub CreateMeteorMultiballMode
    Dim x

    With CreateGlfMode("meteor_multiball", 1000)
        .Debug = True
        '.StartEvents = Array("timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 1}")
        .StartEvents = Array("start_meteor_multiball")
        .StopEvents = Array("ball_ended","kill_flippers")

        With .EventPlayer()
            .Add "mode_meteor_multiball_started", Array("clear_ship_save")
        End With
                    

        With .ShowPlayer()
            With .EventName("mode_meteor_multiball_started")
                .Show = "flash_color_with_fade"
                .Speed = 2
				With .Tokens()
                    .Add "lights", "LSA"
                    .Add "color", ShipSaveColor
                    .Add "fade", 200
                End With
			End With
            With .EventName("multiball_meteor_hurry_up")
                .Show = "flash_color"
                .Speed = 5
				With .Tokens()
                    .Add "lights", "LSA"
                    .Add "color", ShipSaveColor
                End With
			End With
            With .EventName("multiball_meteor_shoot_again_ended")
                .Show = "off"
				With .Tokens()
                    .Add "lights", "LSA"
                End With
			End With
        End With

        With .Multiballs("meteor")
            .StartEvents = Array("mode_meteor_multiball_started")
            .BallCount = 3
            .BallCountType = "total"
            .ShootAgain = "current_player.meteor_mb_shootagain"
            .HurryUp = 3000
            .GracePeriod = 2000
            .Debug = True
        End With
    
    End With
End Sub