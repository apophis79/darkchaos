

Sub CreateFullyLoadedShows()


    With CreateGlfShow("fully_loaded_scoop")
    
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|0|000000", _
                "LMR|(intensity2)|"&ProtonColor, _
                "LX|(intensity1)|"&ProtonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity1)|"&MoonColor, _
                "LMR|0|000000", _
                "LX|(intensity2)|"&ProtonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity2)|"&MoonColor, _
                "LMR|(intensity1)|"&MoonColor, _
                "LX|0|000000")
        End With

        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|0|000000", _
                "LMR|(intensity2)|"&MoonColor, _
                "LX|(intensity1)|"&MoonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity1)|"&ClusterBombColor, _
                "LMR|0|000000", _
                "LX|(intensity2)|"&MoonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity2)|"&ClusterBombColor, _
                "LMR|(intensity1)|"&ClusterBombColor, _
                "LX|0|000000")
        End With

        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|0|000000", _
                "LMR|(intensity2)|"&ClusterBombColor, _
                "LX|(intensity1)|"&ClusterBombColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity1)|"&ProtonColor, _
                "LMR|0|000000", _
                "LX|(intensity2)|"&ClusterBombColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array( _ 
                "LEBR|(intensity2)|"&ProtonColor, _
                "LMR|(intensity1)|"&ProtonColor, _
                "LX|0|000000")
        End With

    End With



End Sub