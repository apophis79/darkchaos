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

    With CreateGlfShow("flash_color_with_fade")
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|(color)|(fade)")
      End With
      With .AddStep(Null, Null, 1)
          .Lights = Array("(lights)|100|000000|(fade)")
      End With
    End With

    With CreateGlfShow("ship_save_orbit")
        With .AddStep(0.00000, Null, Null)
          .Lights = Array( _
            "gi17|100|212532", _
            "giapron|100|000000", _
            "gi22|100|000000", _
            "gi20|100|000000", _
            "gi21|100|000000", _
            "gi19|100|000000", _
            "gi18|100|000000", _
            "gi16|100|000000", _
            "gi15|100|5800c8", _
            "gi14|100|000000", _
            "gi13|100|000000", _
            "gi12|100|000000", _
            "gi11|100|000000", _
            "gi10|100|000000", _
            "gi09|100|000000", _
            "gi08|100|000000", _
            "gi07|100|000000", _
            "gi06|100|000000", _
            "gi05|100|000000", _
            "gi04|100|000000", _
            "gi03|100|000000", _
            "gi02|100|000000", _
            "gi01|100|000000" _
            )
        End With
        With .AddStep(0.03333, Null, Null)
          .Lights = Array( _
            "gi15|100|4500a0" _
            )
        End With
        With .AddStep(0.06667, Null, Null)
          .Lights = Array( _
            "gi15|100|320078" _
            )
        End With
        With .AddStep(0.10000, Null, Null)
          .Lights = Array( _
            "gi15|100|34007c" _
            )
        End With
        With .AddStep(0.13333, Null, Null)
          .Lights = Array( _
            "gi15|100|4900a7" _
            )
        End With
        With .AddStep(0.16667, Null, Null)
          .Lights = Array( _
            "gi15|100|5d00d2" _
            )
        End With
        With .AddStep(0.20000, Null, Null)
          .Lights = Array( _
            "gi15|100|7100fd" _
            )
        End With
        With .AddStep(0.23333, Null, Null)
          .Lights = Array( _
            "gi15|100|000000" _
            )
        End With
        With .AddStep(0.26667, Null, Null)
        End With
        With .AddStep(0.30000, Null, Null)
          .Lights = Array( _
            "gi13|100|6400e0" _
            )
        End With
        With .AddStep(0.33333, Null, Null)
          .Lights = Array( _
            "gi13|100|4e00b2" _
            )
        End With
        With .AddStep(0.36667, Null, Null)
          .Lights = Array( _
            "gi13|100|370083" _
            )
        End With
        With .AddStep(0.40000, Null, Null)
          .Lights = Array( _
            "gi13|100|320078" _
            )
        End With
        With .AddStep(0.43333, Null, Null)
          .Lights = Array( _
            "gi13|100|4a00a9" _
            )
        End With
        With .AddStep(0.46667, Null, Null)
          .Lights = Array( _
            "gi13|100|6100da" _
            )
        End With
        With .AddStep(0.50000, Null, Null)
          .Lights = Array( _
            "gi22|100|5500c1", _
            "gi13|100|000000" _
            )
        End With
        With .AddStep(0.53333, Null, Null)
          .Lights = Array( _
            "gi22|100|300073" _
            )
        End With
        With .AddStep(0.56667, Null, Null)
          .Lights = Array( _
            "gi22|100|6300dd" _
            )
        End With
        With .AddStep(0.60000, Null, Null)
          .Lights = Array( _
            "gi22|100|000000" _
            )
        End With
        With .AddStep(0.63333, Null, Null)
        End With
        With .AddStep(0.66667, Null, Null)
        End With
        With .AddStep(0.70000, Null, Null)
          .Lights = Array( _
            "gi16|100|2e006e" _
            )
        End With
        With .AddStep(0.73333, Null, Null)
          .Lights = Array( _
            "gi21|100|4a00a9", _
            "gi16|100|000000" _
            )
        End With
        With .AddStep(0.76667, Null, Null)
          .Lights = Array( _
            "gi21|100|5800c6" _
            )
        End With
        With .AddStep(0.80000, Null, Null)
          .Lights = Array( _
            "gi20|100|3a0088", _
            "gi21|100|000000" _
            )
        End With
        With .AddStep(0.83333, Null, Null)
          .Lights = Array( _
            "gi20|100|5d00d2", _
            "gi18|100|6b00ef" _
            )
        End With
        With .AddStep(0.86667, Null, Null)
          .Lights = Array( _
            "gi20|100|000000", _
            "gi18|100|360081" _
            )
        End With
        With .AddStep(0.90000, Null, Null)
          .Lights = Array( _
            "gi18|100|000000" _
            )
        End With
        With .AddStep(0.93333, Null, Null)
          .Lights = Array( _
            "gi12|100|5000b7" _
            )
        End With
        With .AddStep(0.96667, Null, Null)
          .Lights = Array( _
            "gi12|100|4c00ae" _
            )
        End With
        With .AddStep(1.00000, Null, Null)
          .Lights = Array( _
            "gi12|100|000000" _
            )
        End With
      End With
      

End Sub


