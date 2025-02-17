

' Left slingshot flasher dome shows
Const RightSlingLightName = "FL6"
Const RightSlingShowFrame = 0.1


Sub CreateRightSlingShows()

    With CreateGlfShow("rsling_rotate1_cw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color)", _
                RightSlingLightName&"h|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color)", _
                RightSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color)", _
                RightSlingLightName&"b|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color)", _
                RightSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color)", _
                RightSlingLightName&"d|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color)", _
                RightSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color)", _
                RightSlingLightName&"f|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color)", _
                RightSlingLightName&"g|(intensity)|(color)")
        End With
    End With

    With CreateGlfShow("rsling_rotate1_ccw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color)", _
                RightSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color)", _
                RightSlingLightName&"h|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color)", _
                RightSlingLightName&"g|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color)", _
                RightSlingLightName&"f|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color)", _
                RightSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color)", _
                RightSlingLightName&"d|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color)", _
                RightSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color)", _
                RightSlingLightName&"b|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("rsling_rotate2_cw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"d|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"f|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"f|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"h|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"b|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"b|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"h|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"d|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("rsling_rotate2_ccw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"f|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"h|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"d|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"d|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"b|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"b|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"h|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"f|(intensity)|(color2)")
        End With
    End With


    With CreateGlfShow("rsling_rotate4_cw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"b|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)", _
                RightSlingLightName&"d|0|(color3)", _
                RightSlingLightName&"e|(intensity)|(color3)", _
                RightSlingLightName&"f|0|(color4)", _
                RightSlingLightName&"g|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"d|(intensity)|(color2)", _
                RightSlingLightName&"e|0|(color3)", _
                RightSlingLightName&"f|(intensity)|(color3)", _
                RightSlingLightName&"g|0|(color4)", _
                RightSlingLightName&"h|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"d|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)", _
                RightSlingLightName&"f|0|(color3)", _
                RightSlingLightName&"g|(intensity)|(color3)", _
                RightSlingLightName&"h|0|(color4)", _
                RightSlingLightName&"a|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"f|(intensity)|(color2)", _
                RightSlingLightName&"g|0|(color3)", _
                RightSlingLightName&"h|(intensity)|(color3)", _
                RightSlingLightName&"a|0|(color4)", _
                RightSlingLightName&"b|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"f|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)", _
                RightSlingLightName&"h|0|(color3)", _
                RightSlingLightName&"a|(intensity)|(color3)", _
                RightSlingLightName&"b|0|(color4)", _
                RightSlingLightName&"c|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"h|(intensity)|(color2)", _
                RightSlingLightName&"a|0|(color3)", _
                RightSlingLightName&"b|(intensity)|(color3)", _
                RightSlingLightName&"c|0|(color4)", _
                RightSlingLightName&"d|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"h|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)", _
                RightSlingLightName&"b|0|(color3)", _
                RightSlingLightName&"c|(intensity)|(color3)", _
                RightSlingLightName&"d|0|(color4)", _
                RightSlingLightName&"e|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"h|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"b|(intensity)|(color2)", _
                RightSlingLightName&"c|0|(color3)", _
                RightSlingLightName&"d|(intensity)|(color3)", _
                RightSlingLightName&"e|0|(color4)", _
                RightSlingLightName&"f|(intensity)|(color4)")
        End With
    End With

    With CreateGlfShow("rsling_rotate4_ccw")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"h|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"b|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)", _
                RightSlingLightName&"d|0|(color3)", _
                RightSlingLightName&"e|(intensity)|(color3)", _
                RightSlingLightName&"f|0|(color4)", _
                RightSlingLightName&"g|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"h|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"b|(intensity)|(color2)", _
                RightSlingLightName&"c|0|(color3)", _
                RightSlingLightName&"d|(intensity)|(color3)", _
                RightSlingLightName&"e|0|(color4)", _
                RightSlingLightName&"f|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"f|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"h|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)", _
                RightSlingLightName&"b|0|(color3)", _
                RightSlingLightName&"c|(intensity)|(color3)", _
                RightSlingLightName&"d|0|(color4)", _
                RightSlingLightName&"e|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"h|(intensity)|(color2)", _
                RightSlingLightName&"a|0|(color3)", _
                RightSlingLightName&"b|(intensity)|(color3)", _
                RightSlingLightName&"c|0|(color4)", _
                RightSlingLightName&"d|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"d|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"f|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)", _
                RightSlingLightName&"h|0|(color3)", _
                RightSlingLightName&"a|(intensity)|(color3)", _
                RightSlingLightName&"b|0|(color4)", _
                RightSlingLightName&"c|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"f|(intensity)|(color2)", _
                RightSlingLightName&"g|0|(color3)", _
                RightSlingLightName&"h|(intensity)|(color3)", _
                RightSlingLightName&"a|0|(color4)", _
                RightSlingLightName&"b|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"d|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)", _
                RightSlingLightName&"f|0|(color3)", _
                RightSlingLightName&"g|(intensity)|(color3)", _
                RightSlingLightName&"h|0|(color4)", _
                RightSlingLightName&"a|(intensity)|(color4)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"d|(intensity)|(color2)", _
                RightSlingLightName&"e|0|(color3)", _
                RightSlingLightName&"f|(intensity)|(color3)", _
                RightSlingLightName&"g|0|(color4)", _
                RightSlingLightName&"h|(intensity)|(color4)")
        End With
    End With


    With CreateGlfShow("rsling_rotate1_cw_skip1")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color)", _
                RightSlingLightName&"a|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color)", _
                RightSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color)", _
                RightSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color)", _
                RightSlingLightName&"g|(intensity)|(color)")
        End With
    End With

    With CreateGlfShow("rsling_rotate1_ccw_skip1")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color)", _
                RightSlingLightName&"g|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color)", _
                RightSlingLightName&"e|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color)", _
                RightSlingLightName&"c|(intensity)|(color)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color)", _
                RightSlingLightName&"a|(intensity)|(color)")
        End With
    End With


    With CreateGlfShow("rsling_rotate2_cw_skip1")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("rsling_rotate2_ccw_skip1")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"c|0|(color1)", _
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"g|0|(color2)", _
                RightSlingLightName&"e|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|0|(color1)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"e|0|(color2)", _
                RightSlingLightName&"c|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"g|0|(color1)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"c|0|(color2)", _
                RightSlingLightName&"a|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"e|0|(color1)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"a|0|(color2)", _
                RightSlingLightName&"g|(intensity)|(color2)")
        End With
    End With

    With CreateGlfShow("rsling_swap_2_2_a")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"c|(intensity)|(color2)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"g|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|(intensity)|(color2)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"e|(intensity)|(color2)", _
                RightSlingLightName&"g|(intensity)|(color1)")
        End With
    End With

    With CreateGlfShow("rsling_swap_2_2_b")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"d|(intensity)|(color2)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"b|(intensity)|(color2)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"f|(intensity)|(color2)", _
                RightSlingLightName&"h|(intensity)|(color1)")
        End With
    End With

    With CreateGlfShow("rsling_swap_4_4")
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|(intensity)|(color1)", _
                RightSlingLightName&"b|(intensity)|(color2)", _
                RightSlingLightName&"c|(intensity)|(color1)", _
                RightSlingLightName&"d|(intensity)|(color2)", _
                RightSlingLightName&"e|(intensity)|(color1)", _
                RightSlingLightName&"f|(intensity)|(color2)", _
                RightSlingLightName&"g|(intensity)|(color1)", _
                RightSlingLightName&"h|(intensity)|(color2)")
        End With
        With .AddStep(Null, Null, RightSlingShowFrame)
            .Lights = Array( _ 
                RightSlingLightName&"a|(intensity)|(color2)", _
                RightSlingLightName&"b|(intensity)|(color1)", _
                RightSlingLightName&"c|(intensity)|(color2)", _
                RightSlingLightName&"d|(intensity)|(color1)", _
                RightSlingLightName&"e|(intensity)|(color2)", _
                RightSlingLightName&"f|(intensity)|(color1)", _
                RightSlingLightName&"g|(intensity)|(color2)", _
                RightSlingLightName&"h|(intensity)|(color1)")
        End With
    End With



End Sub