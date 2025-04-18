'Dark Chaos Shows

Sub CreateGeneralShows()

    With CreateGlfShow("flicker_color")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
    End With


    With CreateGlfShow("flicker2_color")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|20|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|50|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|80|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|10|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|45|(color)")
        End With
    End With


    With CreateGlfShow("flicker_color_on")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|100|(color)")
        End With
    End With

    With CreateGlfShow("flicker_color_on_intensity")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("flicker2_color_on_intensity")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|15|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|80|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|20|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|5|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|90|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|35|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|80|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|15|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|65|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|15|(color)")
        End With
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("flicker_color_off")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|0|(color)")
        End With
    End With
    

    With CreateGlfShow("flash_color_with_fade")
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|(color)|(fade)")
      End With
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|000000|(fade)")
      End With
    End With


    With CreateGlfShow("flash_color_fadeout")
        With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|50|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|100|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|95|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|90|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|85|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|80|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|75|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|70|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|65|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|60|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|55|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|50|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|45|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|40|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|35|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|30|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|25|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|20|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|15|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|10|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|5|(color)")
      End With
      With .AddStep(Null, Null, 0.16)
          .Lights = Array("(lights)|0|(color)")
      End With
    End With

    With CreateGlfShow("bumper_bg_show1")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF8"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG08"
                End With
            End With
        End With
        With .AddStep(0.4, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.41, Null, Null)
        End With
    End With

    With CreateGlfShow("bumper_bg_show2")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("9")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF9"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG09"
                End With
            End With
        End With
        With .AddStep(0.4, Null, Null)
            With .DOFEvent("9")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.41, Null, Null)
        End With
    End With

    With CreateGlfShow("bumper_bg_show3")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("12")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF12"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG12"
                End With
            End With
        End With
        With .AddStep(0.4, Null, Null)
            With .DOFEvent("12")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.41, Null, Null)
        End With
    End With


    With CreateGlfShow("rainbow")
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|e81416|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|ffa500|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|faeb36|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|79c314|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|487de7|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|4b369d|1000")
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array("(lights)|100|70369d|1000")
        End With
    End With
    

End Sub


