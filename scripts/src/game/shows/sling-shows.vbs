

Sub CreateSlingShows()


    With CreateGlfShow("sling_rotate_cw")
    
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5g|0|(color)", _
                "FL5h|(intensity1)|(color)", _
                "FL5a|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5h|0|(color)", _
                "FL5a|(intensity1)|(color)", _
                "FL5b|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5a|0|(color)", _
                "FL5b|(intensity1)|(color)", _
                "FL5c|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5b|0|(color)", _
                "FL5c|(intensity1)|(color)", _
                "FL5d|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5c|0|(color)", _
                "FL5d|(intensity1)|(color)", _
                "FL5e|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5d|0|(color)", _
                "FL5e|(intensity1)|(color)", _
                "FL5f|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5e|0|(color)", _
                "FL5f|(intensity1)|(color)", _
                "FL5g|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "FL5f|0|(color)", _
                "FL5g|(intensity1)|(color)", _
                "FL5h|(intensity2)|(color)")
        End With
    End With



End Sub