

'Mystery Mode.

'All of the mystery shot lights need to be lit (by hitting their swtiches). 
'Once they are all lit, the "Mystery Ready" inserts flashes
'The mystery shots will stay lit until the mystery is collected
'When a ball goes into the scoop then
'  a random mystery award is achieved
'  all the mystery lights will be reset to off



Sub CreateMysteryMode
    Dim x

    With CreateGlfMode("mystery", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        '.Debug = True

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_mystery")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "led_color"
                With .Tokens()
                    .Add "color", MysteryColor
                End With
            End With
        End With
        
        'Define a shot profile with two states (off/flashing)
        With .ShotProfiles("mystery_ready")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flash_color"
                With .Tokens()
                    .Add "color", MysteryColor
                End With
            End With
        End With

        'Define our shots
        For x = 1 to 5
            With .Shots("mystery_shot"&x)
                .Switch = "s_TargetMystery"&x
                .Profile = "qualify_mystery"
                With .Tokens()
                    .Add "lights", "LM"&x
                End With
            End With
        Next

        
        'Mystery Ready
        With .Shots("mystery_ready")
            .Profile = "mystery_ready"
            With .Tokens()
                .Add "lights", "LMR"
            End With
            With .ControlEvents()
                .Events = Array("qualify_mystery_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_mystery")
        End With
        ' Mystery qualifying shot group
        With .ShotGroups("qualify_mystery")
            .Shots = Array("mystery_shot1", "mystery_shot2", "mystery_shot3", "mystery_shot4","mystery_shot5")
            .RestartEvents = Array("restart_qualify_mystery")
            .DisableEvents = Array("disable_qualify_mystery")
        End With


        ' Players
        With .EventPlayer()
            .Add "mode_myster_started", Array("restart_qualify_mystery")
            .Add "qualify_mystery_on_complete", Array("disable_qualify_mystery")
            .Add "s_Scoop_active{current_player.shot_mystery_ready==1}", Array("restart_qualify_mystery") 
        End With

        With .LightPlayer()
            With .Events("disable_qualify_mystery")
				With .Lights("MysteryShots")
					.Color = MysteryColor
				End With
			End With
            With .Events("restart_qualify_mystery")
				With .Lights("MysteryShots")
					.Color = "000000"
				End With
			End With
        End With

    End With

End Sub