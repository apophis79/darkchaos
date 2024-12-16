

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
        .StartEvents = Array("ball_started","timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks == 6}")
        .StopEvents = Array("ball_ended","timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 4}")
        ' .StartEvents = Array("ball_started","mode_meteor_wave_stopped")
        ' .StopEvents = Array("ball_ended","mode_meteor_wave_started")
        .Debug = True
     
        'Define our shots
        For x = 1 to 5
            With .Shots("mystery_shot"&x)
                .Switch = "s_TargetMystery"&x
                .Profile = "off_on_color"
                With .Tokens()
                    .Add "lights", "LM"&x
                    .Add "color", MysteryColor
                End With
            End With
        Next

        'Mystery Ready
        With .Shots("mystery_ready")
            .Profile = "qualified_shot"
            With .Tokens()
                .Add "lights", "LMR"
                .Add "color", MysteryColor
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
            .Add "mode_mystery_started", Array("restart_qualify_mystery")
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