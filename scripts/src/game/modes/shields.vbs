

'Shields Mode.

'All of the shield shot lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Shields" inserts turn on indicating that a ball will be saved if it goes down an outlane
'The shield shot and outlane inserts will stay lit until the shields are used
'When a ball goes down the outlane and hits the swtich then
'  a new ball will be put into the plunger lane and
'  all the shield lights will be reset to off



Sub CreateShieldsMode
    Dim x

    With CreateGlfMode("shields", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_shields")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With
        
        'Define a shot profile with two states (off/on)
        With .ShotProfiles("shields_ready")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "led_color"
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With

        'Define our shots
        For x = 1 to 4
            With .Shots("shield_shot"&x)
                .Switch = "s_TargetShield"&x
                .Profile = "qualify_shields"
                With .Tokens()
                    .Add "lights", "LSC"&x
                End With
            End With
        Next
        
        'Shields Ready
        With .Shots("shield_left")
            .Profile = "shields_ready"
            With .Tokens()
                .Add "lights", "LSL"
            End With
            With .ControlEvents()
                .Events = Array("qualify_shields_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shields")
        End With

        With .Shots("shield_right")
            .Profile = "shields_ready"
            With .Tokens()
                .Add "lights", "LSR"
            End With
            With .ControlEvents()
                .Events = Array("qualify_shields_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shields")
        End With

        ' Shield qualifying shot group
        With .ShotGroups("qualify_shields")
            .Shots = Array("shield_shot1", "shield_shot2", "shield_shot3", "shield_shot4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_qualify_shields")
            .DisableEvents = Array("disable_qualify_shields")
        End With

        ' Ball Save
        With .BallSaves("shield")
            .ActiveTime = 5000
            .EnableEvents = Array("shields_used")
            .AutoLaunch = True
        End With

        ' Players
        With .EventPlayer()
            .Add "mode_shields_started", Array("restart_qualify_shields")
            .Add "qualify_shields_on_complete", Array("disable_qualify_shields")
            .Add "s_LeftOutlane_active{current_player.shot_shield_left==1}", Array("shields_used","restart_qualify_shields")
            .Add "s_RightOutlane_active{current_player.shot_shield_right==1}", Array("shields_used","restart_qualify_shields")
        End With

        With .LightPlayer()
            With .Events("disable_qualify_shields")
				With .Lights("ShieldShots")
					.Color = ShieldsColor
				End With
			End With
            With .Events("restart_qualify_shields")
				With .Lights("ShieldShots")
					.Color = "000000"
				End With
			End With
        End With

        With .VariablePlayer()
            With .EventName("qualify_shields_hit")
				With .Variable("score")
					.Int = 750
				End With
			End With
		End With

        With .SegmentDisplayPlayer()
            With .Events("qualify_shields_hit")
                With .Display("player1")
                    .Text = """SHIELDS"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With

    End With

End Sub