

Sub CreateExtraBallShows()

With CreateGlfShow("eb_show")
 
  With .AddStep(0.01, Null, Null)
    With .Shows("insert_gi_slide_midleft")
      .Key = "key_eb_show1"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", "ffffff"
          .Add "intensity", 100
      End With
    End With
  End With
  With .AddStep(0.02, Null, Null)
    With .Shows("insert_gi_slide_midright")
      .Key = "key_eb_show2"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", "ffffff"
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(0.21, Null, Null)
    With .Shows("insert_gi_slide_midleft")
      .Key = "key_eb_show3"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", HealthColor1
          .Add "intensity", 100
      End With
    End With
  End With
  With .AddStep(0.22, Null, Null)
    With .Shows("insert_gi_slide_midright")
      .Key = "key_eb_show4"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", HealthColor1
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(0.31, Null, Null)
    With .Shows("insert_gi_slide_midleft")
      .Key = "key_eb_show5"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", HealthColor1
          .Add "intensity", 5
      End With
    End With
  End With
  With .AddStep(0.32, Null, Null)
    With .Shows("insert_gi_slide_midright")
      .Key = "key_eb_show6"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "color", HealthColor1
          .Add "intensity", 5
      End With
    End With
  End With

  With .AddStep(2, Null, 0.1)
  End With

End With


End Sub