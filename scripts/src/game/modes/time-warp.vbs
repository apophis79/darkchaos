

'Time Warp Mode.

'When a ball is successfully makes the timewarp ramp:
'  - The meteor wave countdown timer pauses for 10 seconds
'  - The next available timewarp inserts lights (blinking slowly at first, then speeding up at the end of 10 sec)
'Timewarp is only available if there is at least one unlit timewarp insert.
'If a timewarp is started while timewarp is already in process, the pause timer resets to 10 seconds
'Timewarp inserts are reset to unlit at end of a meteor wave.


Sub CreateTimewarpMode
    Dim x

    With CreateGlfMode("timewarp", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define our shots
        For x = 1 to 4
            With .Shots("timewarp"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LTW"&x
                    .Add "color", TimewarpColor
                End With
                With .ControlEvents()
                    .Events = Array("ready_timewarp"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("light_timewarp"&x)
                    .State = 2
                End With
                .RestartEvents = Array("restart_timewarp")
            End With
        Next

        With .EventPlayer()
            .Add "mode_timewarp_started{current_player.shot_timewarp1==0}", Array("restart_timewarp")
            .Add "restart_timewarp", Array("ready_timewarp1")
            .Add "s_TimewarpRamp_active", Array("left_ramp_hit")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==1}", Array("light_timewarp1","ready_timewarp2")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp1==2 && current_player.shot_timewarp2==1}", Array("light_timewarp2","ready_timewarp3")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp2==2 && current_player.shot_timewarp3==1}", Array("light_timewarp3","ready_timewarp4")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp3==2 && current_player.shot_timewarp4==1}", Array("light_timewarp4")
            .Add "s_TimewarpRamp_active{current_player.shot_timewarp4==2}", Array("disable_timewarp")
            .Add "ball_ended", Array("restart_timewarp")   'will also restart at end of meteor wave
        End With

        With .ShowPlayer()
            With .Events("light_timewarp4")
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "ShipSaveShot"
                    .Add "color", TimewarpColor
                End With
            End With
        End With
        
    End With
End Sub