

'Meteor Multiball Mode.

'Meteor multiball occurs at regular intervals. Once it starts, the meteor targets begin to pop up.


Sub CreateMeteorMultiballMode
    Dim x

    With CreateGlfMode("meteor_multiball", 1000)
        .StartEvents = Array("start_meteor_multiball")
        .StopEvents = Array("mode_base_stopping","kill_flippers","stop_meteor_wave")

        With .EventPlayer()
            .Add "multiball_meteor_shoot_again_ended", Array("clear_ship_save")
        End With

        With .Shots("meteor_mb_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", ShipSaveColor
            End With
            With .ControlEvents()
                .Events = Array("mode_meteor_multiball_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_meteor_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("multiball_meteor_shoot_again_ended")
        End With
                    

        With .Multiballs("meteor")
            .StartEvents = Array("mode_meteor_multiball_started")
            .BallCount = 3
            .BallCountType = "total"
            .ShootAgain = "current_player.meteor_mb_shootagain_time"
            .HurryUp = 3000
            .GracePeriod = 2000
        End With

        With .VariablePlayer()
            With .EventName("clear_ship_save")
				With .Variable("meteor_mb_shootagain_time")
                    .Action = "set"
					.Int = MeteorMBShootAgainTime
				End With
			End With
		End With
    
    End With
End Sub