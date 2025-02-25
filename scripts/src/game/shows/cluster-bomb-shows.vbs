

Sub CreateClusterBombShows()

With CreateGlfShow("cluster_explodes")

' ----- TEST ------

        With .AddStep(Null, Null, 3)
            With .Shows("flash_color")
                .Key = "attract_show_1"
                .Priority = 1
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", "ff0000"
                End With
            End With
        End With
        With .AddStep(Null, Null, 3)
            With .Shows("flash_color")
                .Key = "attract_show_2"
                .Priority = 1
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", "00ff00"
                End With
            End With
        End With

  ' ----- END TEST ------

 
  ' With .AddStep(0.1, Null, Null)
  '   With .Shows("insert_swap2")
  '     .Key = "key_cb_xpl_inserts"
  '     .Speed = 3
  '     .Loops = 7
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "color1", "ffffff"
  '         .Add "color2", ClusterBombColor
  '         .Add "intensity", 100
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.11, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi1"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi04"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.15, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi2"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi07"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.2, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi3"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi10"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.22, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi4"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi09"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.25, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi5"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi11"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.53, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi6"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi20"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.54, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi7"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi13"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.93, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi8"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi03"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(0.96, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi9"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi08"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(1.39, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi10"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi19"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(1.4, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi11"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi02"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(2.5, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi12"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi12"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(2.55, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi13"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi05"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(3.5, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi14"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi22"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

  ' With .AddStep(3.55, Null, Null)
  '   With .Shows("flash_color_fadeout")
  '     .Key = "key_cb_xpl_gi15"
  '     .Speed = 1
  '     .Loops = 1
  '     .Priority = 10000
  '     With .Tokens()
  '         .Add "lights", "gi20"
  '         .Add "color", ClusterBombColor
  '     End With
  '   End With
  ' End With

End With


End Sub