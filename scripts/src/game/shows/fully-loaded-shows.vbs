

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



    With CreateGlfShow("flwiz_proton_show")
    
        With .AddStep(0.0, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_p_show1"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_p_show2"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.21, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_p_show3"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.22, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_p_show4"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.31, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_p_show5"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 5
            End With
            End With
        End With
        With .AddStep(0.32, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_p_show6"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 5
            End With
            End With
        End With

    End With


    With CreateGlfShow("flwiz_cluster_show")
    
        With .AddStep(0.0, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_c_show1"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_c_show2"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.21, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_c_show3"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ClusterBombColor
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.22, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_c_show4"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ClusterBombColor
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.31, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_c_show5"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ClusterBombColor
                .Add "intensity", 5
            End With
            End With
        End With
        With .AddStep(0.32, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_c_show6"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", ClusterBombColor
                .Add "intensity", 5
            End With
            End With
        End With

    End With


    With CreateGlfShow("flwiz_moon_show")
    
        With .AddStep(0.0, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_m_show1"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_m_show2"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.21, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_m_show3"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", MoonColor
                .Add "intensity", 100
            End With
            End With
        End With
        With .AddStep(0.22, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_m_show4"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", MoonColor
                .Add "intensity", 100
            End With
            End With
        End With

        With .AddStep(0.31, Null, Null)
            With .Shows("insert_gi_slide_midleft")
            .Key = "key_flwiz_m_show5"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", MoonColor
                .Add "intensity", 5
            End With
            End With
        End With
        With .AddStep(0.32, Null, Null)
            With .Shows("insert_gi_slide_midright")
            .Key = "key_flwiz_m_show6"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", MoonColor
                .Add "intensity", 5
            End With
            End With
        End With

    End With



End Sub