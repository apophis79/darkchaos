

Sub CreateNukeShows()


With CreateGlfShow("nuke_inserts_show")
    With .AddStep(0.0, Null, Null)
        .Lights = Array("(lights)|100|(color)|300")
    End With
    With .AddStep(0.3, Null, Null)
        .Lights = Array("(lights)|100|000000|300")
    End With
    With .AddStep(1, Null, Null)
        .Lights = Array("(lights)|100|stop")
    End With
    With .AddStep(3.5, Null, Null)
        .Lights = Array("(lights)|100|stop")
    End With
    With .AddStep(3.8, Null, Null)
        .Lights = Array("(lights)|100|(color)|300")
    End With
    With .AddStep(4.1, Null, Null)
        .Lights = Array("(lights)|100|000000|300")
    End With
    With .AddStep(9, Null, 0.1)
        .Lights = Array("(lights)|100|stop")
    End With
End With
    

With CreateGlfShow("nuke_explodes")

  With .AddStep(0.0, Null, Null)
    With .Shows("insert_swap3")
        .Key = "key_nuke_insert_swap3"
        .Speed = 1.5
        .Loops = 3
        .Priority = 15000
        With .Tokens()
            .Add "color1", NukeColor
            .Add "color2", MoonColor
            .Add "color3", GIColor3000k
            .Add "intensity", 100
        End With
    End With
  End With

  With .AddStep(0.1, Null, Null)
    With .Shows("nuke_inserts_show")
        .Key = "key_nuke_gi1"
        .Speed = 1
        .Loops = 0
        .Priority = 10000
        With .Tokens()
            .Add "lights", "GI" 
            .Add "color", NukeColor
        End With
    End With
  End With

  With .AddStep(0.12, Null, Null)
    With .Shows("nuke_inserts_show")
        .Key = "key_nuke_gi2"
        .Speed = 1
        .Loops = 0
        .Priority = 9000
        With .Tokens()
            .Add "lights", "tInserts" 
            .Add "color", NukeColor
        End With
    End With
  End With

  With .AddStep(0.13, Null, Null)
    With .Shows("nuke_inserts_show")
        .Key = "key_nuke_gi3"
        .Speed = 1
        .Loops = 0
        .Priority = 9000
        With .Tokens()
            .Add "lights", "tBumper" 
            .Add "color", NukeColor
        End With
    End With
  End With

  With .AddStep(0.2, Null, Null)
    With .Shows("flash_color")
        .Key = "key_nuke_fired1"
        .Speed = 20
        .Loops = 19
        .Priority = 10000
        With .Tokens()
            .Add "lights", "tBlast" 
            .Add "color", MeteorHotColor
        End With
    End With
  End With

  With .AddStep(0.21, Null, Null)
    With .Shows("flash_color")
        .Key = "key_nuke_fired2a"
        .Speed = 20
        .Loops = 10
        .Priority = 10000
        With .Tokens()
            .Add "lights", "tFlasherU"
            .Add "color", MeteorHotColor
            .Add "fade", 300
        End With
    End With
  End With

  With .AddStep(1, Null, Null)
    With .Shows("flash_color_fadeout")
        .Key = "key_nuke_fired2b"
        .Speed = 2
        .Loops = 0
        .Priority = 11000
        With .Tokens()
            .Add "lights", "tFlasherU"
            .Add "color", MeteorHotColor
        End With
    End With
  End With


  With .AddStep(3.9, Null, Null)
    With .Shows("flash_color")
      .Key = "key_nuke_fired3a"
      .Speed = 20
      .Loops = 4
      .Priority = 10000
       With .Tokens()
            .Add "lights", "tFlasher"
            .Add "color", "ffffff"
        End With
    End With
  End With

  With .AddStep(4.02, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_nuke_fired4"
      .Speed = 2
      .Loops = 0
      .Priority = 11000
       With .Tokens()
            .Add "lights", "GI"
            .Add "color", "ffffff"
        End With
    End With
  End With

  With .AddStep(4.3, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_nuke_fired3b"
      .Speed = 2
      .Loops = 0
      .Priority = 10000
       With .Tokens()
            .Add "lights", "tFlasher"
            .Add "color", "ffffff"
        End With
    End With
  End With

  With .AddStep(5, Null, Null)
    With .Shows("meteor2_explodes")
      .Key = "key_nuke_fired5"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", "ffffff"
      End With   
    End With
  End With

  With .AddStep(5.3, Null, Null)
    With .Shows("meteor4_explodes")
      .Key = "key_nuke_fired6"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", MeteorHotColor
      End With   
    End With
  End With

  With .AddStep(5.7, Null, Null)
    With .Shows("meteor1_explodes")
      .Key = "key_nuke_fired7"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", "ffffff"
      End With   
    End With
  End With

  With .AddStep(6.2, Null, Null)
    With .Shows("meteor3_explodes")
      .Key = "key_nuke_fired8"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", MeteorHotColor
      End With   
    End With
  End With

  With .AddStep(6.8, Null, Null)
    With .Shows("meteor2_explodes")
      .Key = "key_nuke_fired9"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", "ffffff"
      End With   
    End With
  End With

  With .AddStep(7.5, Null, Null)
    With .Shows("meteor4_explodes")
      .Key = "key_nuke_fired10"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", MeteorHotColor
      End With   
    End With
  End With

  With .AddStep(8, Null, Null)
    With .Shows("meteor1_explodes")
      .Key = "key_nuke_fired11"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", "ffffff"
      End With   
    End With
  End With

  With .AddStep(8.5, Null, Null)
    With .Shows("meteor2_explodes")
      .Key = "key_nuke_fired12"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", MeteorHotColor
      End With   
    End With
  End With

  With .AddStep(9, Null, Null)
    With .Shows("meteor3_explodes")
      .Key = "key_nuke_fired13"
      .Speed = 1
      .Loops = 0
      .Priority = 11000
      With .Tokens()
        .Add "color", "ffffff"
      End With   
    End With
  End With

End With



End Sub