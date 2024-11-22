'Shields Mode.

'All of the shield shot lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Shields" inserts turn on indicating that a ball will be saved if it goes down an outlane
'The shield shot and outlane inserts will stay lit until the shields are used
'When a ball goes down the outlane and hits the swtich then
'  a new ball will be put into the plunger lane and
'  all the shield lights will be reset to off

Const ShieldsColor = "0010cc"

Sub CreateShieldsMode


    With CreateGlfMode("shields", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = False

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_shields")
            With .States("unlit")
                .Show = glf_ShowOff
            End With
            With .States("on")
                .Show = glf_ShowOnColor
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With
        'Define a shot profile with two states (off/on)
        With .ShotProfiles("shields_ready")
            With .States("unlit")
                .Show = glf_ShowOff
            End With
            With .States("on")
                .Show = glf_ShowOnColor
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With

        'Define our shots
        With .Shots("shield_shot1")
            .Switch = "TargetShield1"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC1"
            End With
        End With
        With .Shots("shield_shot2")
            .Switch = "TargetShield2"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC2"
            End With
        End With
        With .Shots("shield_shot3")
            .Switch = "TargetShield3"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC3"
            End With
        End With
        With .Shots("shield_shot4")
            .Switch = "TargetShield4"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC4"
            End With
        End With
        
        'Shields Ready
        With .Shots("shield_left")
            .Profile = "shields_ready"
            With .Tokens()
                .Add "lights", "LSL"
            End With
            With .ControlEvents("shields_ready")
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
            With .ControlEvents("shields_ready")
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
            .Add "swLeftOutlane_active{current_player.player_shot_shield_left==1}", Array("shields_used","restart_qualify_shields")
            .Add "swRightOutlane_active{current_player.player_shot_shield_right==1}", Array("shields_used","restart_qualify_shields")
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

    End With

End Sub