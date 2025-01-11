

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
        .StartEvents = Array("ball_started","stop_meteor_wave","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training_select")

        With .EventPlayer()
            'reset shields qualification
            .Add "mode_shields_started{current_player.training_shields_achieved==1}", Array("restart_qualify_shields") 'with training boost
            .Add "restart_qualify_shields{current_player.training_shields_achieved==1}", Array("boost_qualify_shields") 'with training boost
            'use shields
            .Add "s_LeftOutlane_active{current_player.shot_shield_left==1}", Array("shields_used","restart_qualify_shields")
            .Add "s_RightOutlane_active{current_player.shot_shield_right==1}", Array("shields_used","restart_qualify_shields")
            'Handle mystery award
            .Add "mystery_added_shields", Array("complete_qualify_shields")
        End With
        

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
        For x = 1 to 3
            With .Shots("shield_charge"&x)
                .Switch = "s_TargetShield"&x
                .Profile = "qualify_shields"
                With .Tokens()
                    .Add "lights", "LSC"&x
                End With
                With .ControlEvents()
                    .Events = Array("boost_qualify_shields","complete_qualify_shields")
                    .State = 1
                End With
            End With
        Next
        With .Shots("shield_charge4")
            .Switch = "s_TargetShield4"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC4"
            End With
            With .ControlEvents()
                .Events = Array("complete_qualify_shields")
                .State = 1
            End With
        End With
    
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
            .Shots = Array("shield_charge1", "shield_charge2", "shield_charge3", "shield_charge4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_qualify_shields")
            '.DisableEvents = Array("disable_qualify_shields")
            '.EnableEvents = Array("enable_qualify_shields")
        End With

        ' Ball Save
        With .BallSaves("shield")
            .ActiveTime = 5000
            .EnableEvents = Array("shields_used")
            .AutoLaunch = True
        End With
      

        With .ShowPlayer()
            With .EventName("qualify_shields_on_complete")
                .Key = "key_shields_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tShields"
                    .Add "color", ShieldsColor
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
            With .EventName("qualify_shields_on_complete")
                With .Display("player3")
                    .Text = """SHIELDS"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With

    End With

End Sub