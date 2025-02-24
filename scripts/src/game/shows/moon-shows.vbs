

'Moon Shows

Sub CreateMoonShows()

    With CreateGlfShow("moon_launch_gi")
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi15|100|"&MoonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi19|100|"&MoonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi14|100|"&MoonColor)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi15|0|"&GIColor3000k)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi19|0|"&GIColor3000k)
        End With
        With .AddStep(Null, Null, .1)
            .Lights = Array("gi14|0|"&GIColor3000k)
        End With
    End With

End Sub


