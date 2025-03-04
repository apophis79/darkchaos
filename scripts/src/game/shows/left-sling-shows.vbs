

' Left slingshot flasher dome shows
Const LeftSlingLightName = "FL5"
Const LeftSlingShowFrame = 0.1


Sub CreateLeftSlingShows()

    With CreateGlfShow("lsling_rotate1_cw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color)", _
                LeftSlingLightName&"h|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color)", _
                LeftSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color)", _
                LeftSlingLightName&"b|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color)", _
                LeftSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color)", _
                LeftSlingLightName&"d|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color)", _
                LeftSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color)", _
                LeftSlingLightName&"f|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color)", _
                LeftSlingLightName&"g|(intensity)|(color)")
        End With
    End With

    With CreateGlfShow("lsling_rotate1_ccw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color)", _
                LeftSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color)", _
                LeftSlingLightName&"h|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color)", _
                LeftSlingLightName&"g|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color)", _
                LeftSlingLightName&"f|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color)", _
                LeftSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color)", _
                LeftSlingLightName&"d|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color)", _
                LeftSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color)", _
                LeftSlingLightName&"b|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("lsling_rotate2_cw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"d|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"f|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"h|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"b|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"b|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("lsling_rotate2_ccw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"f|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"d|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"b|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"b|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"h|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color2)")
        End With
    End With


    With CreateGlfShow("lsling_rotate4_cw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"b|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)", _
                LeftSlingLightName&"d|0|(color3)", _
                LeftSlingLightName&"e|(intensity)|(color3)", _
                LeftSlingLightName&"f|0|(color4)", _
                LeftSlingLightName&"g|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color2)", _
                LeftSlingLightName&"e|0|(color3)", _
                LeftSlingLightName&"f|(intensity)|(color3)", _
                LeftSlingLightName&"g|0|(color4)", _
                LeftSlingLightName&"h|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"d|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)", _
                LeftSlingLightName&"f|0|(color3)", _
                LeftSlingLightName&"g|(intensity)|(color3)", _
                LeftSlingLightName&"h|0|(color4)", _
                LeftSlingLightName&"a|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color2)", _
                LeftSlingLightName&"g|0|(color3)", _
                LeftSlingLightName&"h|(intensity)|(color3)", _
                LeftSlingLightName&"a|0|(color4)", _
                LeftSlingLightName&"b|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"f|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)", _
                LeftSlingLightName&"h|0|(color3)", _
                LeftSlingLightName&"a|(intensity)|(color3)", _
                LeftSlingLightName&"b|0|(color4)", _
                LeftSlingLightName&"c|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color2)", _
                LeftSlingLightName&"a|0|(color3)", _
                LeftSlingLightName&"b|(intensity)|(color3)", _
                LeftSlingLightName&"c|0|(color4)", _
                LeftSlingLightName&"d|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"h|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)", _
                LeftSlingLightName&"b|0|(color3)", _
                LeftSlingLightName&"c|(intensity)|(color3)", _
                LeftSlingLightName&"d|0|(color4)", _
                LeftSlingLightName&"e|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"b|(intensity)|(color2)", _
                LeftSlingLightName&"c|0|(color3)", _
                LeftSlingLightName&"d|(intensity)|(color3)", _
                LeftSlingLightName&"e|0|(color4)", _
                LeftSlingLightName&"f|(intensity)|(color4)")
        End With
    End With

    With CreateGlfShow("lsling_rotate4_ccw")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"h|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"b|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)", _
                LeftSlingLightName&"d|0|(color3)", _
                LeftSlingLightName&"e|(intensity)|(color3)", _
                LeftSlingLightName&"f|0|(color4)", _
                LeftSlingLightName&"g|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"b|(intensity)|(color2)", _
                LeftSlingLightName&"c|0|(color3)", _
                LeftSlingLightName&"d|(intensity)|(color3)", _
                LeftSlingLightName&"e|0|(color4)", _
                LeftSlingLightName&"f|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"f|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"h|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)", _
                LeftSlingLightName&"b|0|(color3)", _
                LeftSlingLightName&"c|(intensity)|(color3)", _
                LeftSlingLightName&"d|0|(color4)", _
                LeftSlingLightName&"e|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color2)", _
                LeftSlingLightName&"a|0|(color3)", _
                LeftSlingLightName&"b|(intensity)|(color3)", _
                LeftSlingLightName&"c|0|(color4)", _
                LeftSlingLightName&"d|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"d|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"f|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)", _
                LeftSlingLightName&"h|0|(color3)", _
                LeftSlingLightName&"a|(intensity)|(color3)", _
                LeftSlingLightName&"b|0|(color4)", _
                LeftSlingLightName&"c|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color2)", _
                LeftSlingLightName&"g|0|(color3)", _
                LeftSlingLightName&"h|(intensity)|(color3)", _
                LeftSlingLightName&"a|0|(color4)", _
                LeftSlingLightName&"b|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"d|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)", _
                LeftSlingLightName&"f|0|(color3)", _
                LeftSlingLightName&"g|(intensity)|(color3)", _
                LeftSlingLightName&"h|0|(color4)", _
                LeftSlingLightName&"a|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color2)", _
                LeftSlingLightName&"e|0|(color3)", _
                LeftSlingLightName&"f|(intensity)|(color3)", _
                LeftSlingLightName&"g|0|(color4)", _
                LeftSlingLightName&"h|(intensity)|(color4)")
        End With
    End With


    With CreateGlfShow("lsling_rotate1_cw_skip1")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color)", _
                LeftSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color)", _
                LeftSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color)", _
                LeftSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color)", _
                LeftSlingLightName&"g|(intensity)|(color)")
        End With
    End With

    With CreateGlfShow("lsling_rotate1_ccw_skip1")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color)", _
                LeftSlingLightName&"g|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color)", _
                LeftSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color)", _
                LeftSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color)", _
                LeftSlingLightName&"a|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("lsling_rotate2_cw_skip1")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("lsling_rotate2_ccw_skip1")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"c|0|(color1)", _
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"g|0|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|0|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"e|0|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"g|0|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"c|0|(color2)", _
                LeftSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"e|0|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"a|0|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("lsling_swap_2_2_a")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|(intensity)|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color1)")
        End With
    End With

    With CreateGlfShow("lsling_swap_2_2_b")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"b|(intensity)|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color1)")
        End With
    End With

    With CreateGlfShow("lsling_swap_4_4")
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|(intensity)|(color1)", _
                LeftSlingLightName&"b|(intensity)|(color2)", _
                LeftSlingLightName&"c|(intensity)|(color1)", _
                LeftSlingLightName&"d|(intensity)|(color2)", _
                LeftSlingLightName&"e|(intensity)|(color1)", _
                LeftSlingLightName&"f|(intensity)|(color2)", _
                LeftSlingLightName&"g|(intensity)|(color1)", _
                LeftSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, LeftSlingShowFrame)
            .Lights = Array( _ 
                LeftSlingLightName&"a|(intensity)|(color2)", _
                LeftSlingLightName&"b|(intensity)|(color1)", _
                LeftSlingLightName&"c|(intensity)|(color2)", _
                LeftSlingLightName&"d|(intensity)|(color1)", _
                LeftSlingLightName&"e|(intensity)|(color2)", _
                LeftSlingLightName&"f|(intensity)|(color1)", _
                LeftSlingLightName&"g|(intensity)|(color2)", _
                LeftSlingLightName&"h|(intensity)|(color1)")
        End With
    End With



    With CreateGlfShow("lsling_base_show")
        With .AddStep(0.01, Null, Null)
            With .Shows("lsling_rotate1_ccw")
                .Key = "key_lsling_base_show1"
                .Speed = 7
                .Loops = 1
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "key_lsling_base_show2"
                .Speed = 15
                .Loops = 3
                With .Tokens()
                    .Add "lights", "tLSling"
                    .Add "color", GIColor3000k
                End With
            End With
        End With
    End With


End Sub