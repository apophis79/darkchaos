
'Time Warp Mode.

'When a ball is successfully makes the timewarp ramp:
'  - The meteor wave countdown timer pauses for 10 seconds
'  - The next available timewarp inserts lights (blinking slowly at first, then speeding up at the end of 10 sec)
'Timewarp is only available if there is at least one unlit timewarp insert.
'If a timewarp is started while timewarp is already in process, the pause timer resets to 10 seconds
'Timewarp inserts are reset to unlit at end of a meteor wave.


Const TimewarpColor = "ccccdd"


Sub CreateTimewarpMode


    With CreateGlfMode("timewarp", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("timewarped")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", TimewarpColor
                End With
            End With
        End With


        'Define our shots
        With .Shots("timewarp1")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW1"
            End With
            With .ControlEvents()
                .Events = Array("light_timewarp1")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp2")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW2"
            End With
            With .ControlEvents()
                .Events = Array("light_timewarp2")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp3")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW3"
            End With
            With .ControlEvents()
                .Events = Array("light_timewarp3")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp4")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW4"
            End With
            With .ControlEvents()
                .Events = Array("light_timewarp4")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .ShotGroups("timewarps_completed")
            .Shots = Array("timewarp1", "timewarp2", "timewarp3", "timewarp4")
            .RestartEvents = Array("restart_timewarp")
            .DisableEvents = Array("disable_timewarp")
        End With

        With .EventPlayer()
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==0}", Array("light_timewarp1")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==1 && current_player.shot_timewarp2==0}", Array("light_timewarp2")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==1 && current_player.shot_timewarp2==1 && current_player.shot_timewarp3==0}", Array("light_timewarp3")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==1 && current_player.shot_timewarp2==1 && current_player.shot_timewarp3==1 && current_player.shot_timewarp4==0}", Array("light_timewarp4")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp4==1}", Array("disable_timewarp")
            .Add "ball_ended", Array("restart_timewarp")   'FIXME: needs to restart at end of meteor wave
        End With
        
        With .LightPlayer()
            With .Events("disable_timewarp")
				With .Lights("TimewarpShot")
					.Color = TimewarpColor
				End With
			End With
            With .Events("restart_timewarp")
				With .Lights("TimewarpShot")
					.Color = "000000"
				End With
			End With
        End With

    End With
End Sub