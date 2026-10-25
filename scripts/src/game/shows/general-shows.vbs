'Dark Chaos Shows

Sub CreateGeneralShows()

    With CreateGlfShow("led_stop")
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|0|stop")
        End With
    End With

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
        With .AddStep(0.0, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(0.02, Null, Null) 'FIXME
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF8"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG08"
        '         End With
        '     End With
        ' End With
        With .AddStep(0.4, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.41, Null, Null)
        End With
    End With

    With CreateGlfShow("bumper_bg_show2")
        With .AddStep(0.0, Null, Null)
            With .DOFEvent("9")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(0.02, Null, Null)  'FIXME
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF9"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG09"
        '         End With
        '     End With
        ' End With
        With .AddStep(0.4, Null, Null)
            With .DOFEvent("9")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.41, Null, Null)
        End With
    End With

    With CreateGlfShow("bumper_bg_show3")
        With .AddStep(0.0, Null, Null)
            With .DOFEvent("12")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(0.02, Null, Null)   'FIXME
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF12"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG12"
        '         End With
        '     End With
        ' End With
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


    
    With CreateGlfShow("exploit_show")
        With .AddStep(Null, Null, 0.1)
            .Lights = Array( _
            "FL5a|(intensity)|(color)", _
            "FL5b|(intensity)|(color)", _
            "FL5c|(intensity)|(color)", _
            "FL5d|(intensity)|(color)", _
            "FL5e|(intensity)|(color)", _
            "FL5f|(intensity)|(color)", _
            "FL5g|(intensity)|(color)", _
            "FL5h|(intensity)|(color)", _
            "FL6a|(intensity)|(color)", _
            "FL6b|(intensity)|(color)", _
            "FL6c|(intensity)|(color)", _
            "FL6d|(intensity)|(color)", _
            "FL6e|(intensity)|(color)", _
            "FL6f|(intensity)|(color)", _
            "FL6g|(intensity)|(color)", _
            "FL6h|(intensity)|(color)", _
            "LSA|(intensity)|(color)", _
            "gi01|(intensity)|(color)", _
            "gi02|(intensity)|(color)", _
            "gi03|(intensity)|(color)", _
            "gi04|(intensity)|(color)", _
            "gi05|(intensity)|(color)", _
            "gi06|(intensity)|(color)", _
            "gi07|(intensity)|(color)", _
            "gi08|(intensity)|(color)", _
            "LPR1|(intensity)|(color)", _
            "LPR2|(intensity)|(color)", _
            "LPR3|(intensity)|(color)", _
            "LPR4|(intensity)|(color)", _
            "LPR5|(intensity)|(color)", _
            "LPR6|(intensity)|(color)", _
            "LMR1|(intensity)|(color)", _
            "LMR2|(intensity)|(color)", _
            "LCR1|(intensity)|(color)", _
            "LCR2|(intensity)|(color)", _
            "LC1|(intensity)|(color)", _
            "LC2|(intensity)|(color)", _
            "LC3|(intensity)|(color)", _
            "LC4|(intensity)|(color)", _
            "LC5|(intensity)|(color)", _
            "LC6|(intensity)|(color)", _
            "LC7|(intensity)|(color)", _
            "LC8|(intensity)|(color)", _
            "LH9|(intensity)|(color)", _
            "LH8|(intensity)|(color)", _
            "LH7|(intensity)|(color)", _
            "LH6|(intensity)|(color)", _
            "LH5|(intensity)|(color)", _
            "LH4|(intensity)|(color)", _
            "LH3|(intensity)|(color)", _
            "LH2|(intensity)|(color)", _
            "LH1|(intensity)|(color)", _
            "LSR|(intensity)|(color)", _
            "LSL|(intensity)|(color)" _
            )
        End With
        With .AddStep(Null, Null, 1)
            .Lights = Array( _
            "FL5a|(intensity)|000000|(fade)", _
            "FL5b|(intensity)|000000|(fade)", _
            "FL5c|(intensity)|000000|(fade)", _
            "FL5d|(intensity)|000000|(fade)", _
            "FL5e|(intensity)|000000|(fade)", _
            "FL5f|(intensity)|000000|(fade)", _
            "FL5g|(intensity)|000000|(fade)", _
            "FL5h|(intensity)|000000|(fade)", _
            "FL6a|(intensity)|000000|(fade)", _
            "FL6b|(intensity)|000000|(fade)", _
            "FL6c|(intensity)|000000|(fade)", _
            "FL6d|(intensity)|000000|(fade)", _
            "FL6e|(intensity)|000000|(fade)", _
            "FL6f|(intensity)|000000|(fade)", _
            "FL6g|(intensity)|000000|(fade)", _
            "FL6h|(intensity)|000000|(fade)", _
            "LSA|(intensity)|000000|(fade)", _
            "gi01|(intensity)|000000|(fade)", _
            "gi02|(intensity)|000000|(fade)", _
            "gi03|(intensity)|000000|(fade)", _
            "gi04|(intensity)|000000|(fade)", _
            "gi05|(intensity)|000000|(fade)", _
            "gi06|(intensity)|000000|(fade)", _
            "gi07|(intensity)|000000|(fade)", _
            "gi08|(intensity)|000000|(fade)", _
            "LPR1|(intensity)|000000|(fade)", _
            "LPR2|(intensity)|000000|(fade)", _
            "LPR3|(intensity)|000000|(fade)", _
            "LPR4|(intensity)|000000|(fade)", _
            "LPR5|(intensity)|000000|(fade)", _
            "LPR6|(intensity)|000000|(fade)", _
            "LMR1|(intensity)|000000|(fade)", _
            "LMR2|(intensity)|000000|(fade)", _
            "LCR1|(intensity)|000000|(fade)", _
            "LCR2|(intensity)|000000|(fade)", _
            "LC1|(intensity)|000000|(fade)", _
            "LC2|(intensity)|000000|(fade)", _
            "LC3|(intensity)|000000|(fade)", _
            "LC4|(intensity)|000000|(fade)", _
            "LC5|(intensity)|000000|(fade)", _
            "LC6|(intensity)|000000|(fade)", _
            "LC7|(intensity)|000000|(fade)", _
            "LC8|(intensity)|000000|(fade)", _
            "LH9|(intensity)|000000|(fade)", _
            "LH8|(intensity)|000000|(fade)", _
            "LH7|(intensity)|000000|(fade)", _
            "LH6|(intensity)|000000|(fade)", _
            "LH5|(intensity)|000000|(fade)", _
            "LH4|(intensity)|000000|(fade)", _
            "LH3|(intensity)|000000|(fade)", _
            "LH2|(intensity)|000000|(fade)", _
            "LH1|(intensity)|000000|(fade)", _
            "LSR|(intensity)|000000|(fade)", _
            "LSL|(intensity)|000000|(fade)" _
            )
        End With
    End With
    

End Sub


