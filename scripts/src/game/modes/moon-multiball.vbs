

'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit


Sub CreateMoonMultiballMode
    Dim x

    With CreateGlfMode("moon_multiball", 600)
        .StartEvents = Array("new_ball_started","stop_training","mode_moon_multiball_qualify_started")
        .StopEvents = Array("mode_base_stopping","start_training_select","wizard_mode_ended")

        With .EventPlayer()
            'Launch
            .Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0}", Array("start_moon_multiball","delayed_release_moon_ball","play_sfx_launch")
        End With


        With .Multiballs("moon")
            '.Debug = True
            .StartEvents = Array("start_moon_multiball.2")
            .BallCount = "current_player.multiball_lock_moon_launch_balls_locked"
            .BallCountType = "add"
            .ShootAgain = 0
            .BallLock = "moon_lock"
        End With


        With .SoundPlayer()
            With .EventName("play_sfx_launch")
                .Key = "key_sfx_launch"
                .Sound = "sfx_launch"
            End With
        End With


        With .VariablePlayer()
            With .EventName("start_moon_multiball")
				With .Variable("leftover_balls_in_lock")
                    .Action = "set"
					.Int = 0
				End With
			End With   
		End With
        
    End With
End Sub