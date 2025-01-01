

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
        .StartEvents = Array("ball_started","stop_meteor_wave","stop_training")
        .StopEvents = Array("ball_ended","start_meteor_wave","start_training")
        

        With .EventPlayer()
            '.Add "mode_mystery_started", Array("restart_qualify_mystery")
            '.Add "qualify_mystery_on_complete", Array("disable_qualify_mystery")
            .Add "s_Scoop_active{current_player.shot_mystery_ready==1}", Array("restart_qualify_mystery") 
        End With

     
        'Define our shots
        For x = 1 to 5
            With .Shots("mystery_shot"&x)
                .Switch = "s_TargetMystery"&x
                .Profile = "flicker_on"
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
            '.DisableEvents = Array("disable_qualify_mystery")
        End With


        With .ShowPlayer()
            With .EventName("qualify_mystery_on_complete")
                .Key = "key_mystery_qualified"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 7
                With .Tokens()
                    .Add "lights", "tMystery"
                    .Add "color", MysteryColor
                End With
            End With
        End With


        With .SegmentDisplayPlayer()
            With .Events("qualify_mystery_on_complete")
                With .Display("player2")
                    .Text = """CLAIM"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """MYSTERY"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With


    End With

End Sub