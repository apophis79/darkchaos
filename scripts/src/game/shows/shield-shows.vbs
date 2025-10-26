

Sub CreateShieldShows()


With CreateGlfShow("shields_up_interior")
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "LSA|(intensity)|(color)" _
      )
  End With
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
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
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "gi07|(intensity)|(color)", _
      "gi05|(intensity)|000000", _
      "gi03|(intensity)|(color)", _
      "LSA|(intensity)|000000", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LCR2|(intensity)|(color)" _
      )
  End With
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "gi06|(intensity)|000000", _
      "gi04|(intensity)|(color)", _
      "gi02|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LC8|(intensity)|000000", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR1|(intensity)|(color)", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR1|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LSR|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000" _
      )
  End With
  With .AddStep(Null, Null, 0.03333)
    .Lights = Array( _
      "LRI|(intensity)|000000", _
      "LLI|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("shields_down_interior")
  With .AddStep(Null, Null, 0.1)
    .Lights = Array( _
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

With CreateGlfShow("shields_up")
 
  With .AddStep(0.0, Null, Null)
    With .Shows("flash_color_with_fade")
      .Key = "key_shield_up1"
      .Speed = 10
      .Loops = 4
      With .Tokens()
          .Add "lights", "tWiz"
          .Add "color", "ffffff"
          .Add "fade", 800
      End With
    End With
  End With
  With .AddStep(0.02, Null, Null)
    With .Shows("flash_color_with_fade")
      .Key = "key_shield_up2"
      .Speed = 10
      .Loops = 4
      With .Tokens()
          .Add "lights", "LLO"
          .Add "color", "ffffff"
          .Add "fade", 800
      End With
    End With
  End With
  With .AddStep(0.03, Null, Null)
    With .Shows("flash_color_with_fade")
      .Key = "key_shield_up3"
      .Speed = 10
      .Loops = 4
      With .Tokens()
          .Add "lights", "LRO"
          .Add "color", "ffffff"
          .Add "fade", 800
      End With
    End With
  End With

  With .AddStep(0.05, Null, Null)
    With .Shows("shields_up_interior")
      .Key = "key_shield_up4"
      .Speed = 1
      .Loops = 1
      With .Tokens()
          .Add "intensity", 100
          .Add "color", ShieldsColor
      End With
    End With
  End With
  

End With

With CreateGlfShow("shields_down")
 
  With .AddStep(0.0, Null, Null)
    With .Shows("flash_color")
      .Key = "key_shield_down1"
      .Speed = 15
      .Loops = 8
      With .Tokens()
          .Add "lights", "tWiz"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.02, Null, Null)
    With .Shows("flash_color")
      .Key = "key_shield_down2"
      .Speed = 15
      .Loops = 8
      With .Tokens()
          .Add "lights", "LLO"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.03, Null, Null)
    With .Shows("flash_color")
      .Key = "key_shield_down3"
      .Speed = 15
      .Loops = 8
      With .Tokens()
          .Add "lights", "LRO"
          .Add "color", "ffffff"
      End With
    End With
  End With

  With .AddStep(0.03, Null, Null)
    With .Shows("shields_down_interior")
      .Key = "key_shield_down4"
      .Speed = 1
      .Loops = 0
      With .Tokens()
          .Add "intensity", 100
          .Add "color", ShieldsColor
          .Add "fade", 900
      End With
    End With
  End With
  

End With


End Sub