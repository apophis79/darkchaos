

Sub CreateComboCommandShows()


    With CreateGlfShow("combo_command_scoop")
    
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|0|(color)", _
                "LMR|(intensity2)|(color)", _
                "LX|(intensity1)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity1)|(color)", _
                "LMR|0|(color)", _
                "LX|(intensity2)|(color)")
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity2)|(color)", _
                "LMR|(intensity1)|(color)", _
                "LX|0|(color)")
        End With

    End With



End Sub