'Dark Chaos Shows

Sub CreateShows()

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
    End With
    

    With CreateGlfShow("flash_color_with_fade")
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|(color)|(fade)")
      End With
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|000000|(fade)")
      End With
    End With

End Sub


