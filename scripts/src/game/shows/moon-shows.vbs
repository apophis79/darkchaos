

'Moon Shows

Sub CreateMoonShows()


    With CreateGlfShow("moon_launch")

         With .AddStep(0.0, Null, Null)
            With .Shows("insert_gi_spin_right")
                .Key = "key_moon_launch_spin"
                .Speed = 2
                .Loops = 2
                .Priority = 5
                With .Tokens()
                    .Add "color", MoonColor
                    .Add "intensity", 100
                End With
            End With
        End With

                With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash1"
                .Speed = 13
                .Loops = 8
                .Priority = 15
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi15"
                End With
            End With
        End With

        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash2"
                .Speed = 13
                .Loops = 8
                .Priority = 15
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi19"
                End With
            End With
        End With

        With .AddStep(0.03, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash3"
                .Speed = 13
                .Loops = 8
                .Priority = 15
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi14"
                End With
            End With
        End With

    End With


End Sub


