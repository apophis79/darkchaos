'Final wave wizard shows

Sub CreateFinalWaveWizardShows()


With CreateGlfShow("asteroid_hit_single")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|000000", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi18|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LTW2|(intensity)|(color)", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi18|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|000000", _
      "gi12|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LS3|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW2|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LTW4|(intensity)|(color)", _
      "LTW2|(intensity)|000000", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "gi11|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LS3|(intensity)|000000", _
      "LS6|(intensity)|e7e7e7", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|000000", _
      "LF3|(intensity)|000000", _
      "LTW4|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "gi11|(intensity)|000000", _
      "LSwL2|(intensity)|8a8a8a", _
      "LS2|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LMet4|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LMet2|(intensity)|000000", _
      "LMet1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "gi10|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LSwL1|(intensity)|(color)", _
      "LSwL2|(intensity)|000000", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "LSwL1|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LSC4|(intensity)|(color)", _
      "LSC3|(intensity)|0f0f0f", _
      "LSC2|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LSC4|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LMR1|(intensity)|d9d9d9", _
      "LCR1|(intensity)|ececec" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|fefefe", _
      "gi04|(intensity)|d5d5d5", _
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
      "LPR1|(intensity)|000000", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR1|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LRI|(intensity)|000000", _
      "LLI|(intensity)|000000", _
      "LSR|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "gi05|(intensity)|(color)", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LSA|(intensity)|(color)", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|000000", _
      "gi05|(intensity)|1a1a1a", _
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
      "LSR|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi05|(intensity)|000000", _
      "LSA|(intensity)|000000" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
  End With
  With .AddStep(0.53333, Null, Null)
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("asteroid_hit")
  With .AddStep(0.01, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_asteroid_hit_single1"
      .Speed = 1.5
      .Loops = 1
      .Priority = 1000
      With .Tokens()
          .Add "color", "ffffff"
          .Add "intensity", 100
      End With
    End With
  End With
  With .AddStep(0.1, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_asteroid_hit_single2"
      .Speed = 1.5
      .Loops = 1
      .Priority = 1000
      With .Tokens()
          .Add "color", MeteorWarmColor
          .Add "intensity", 100
      End With
    End With
  End With
  With .AddStep(0.2, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_asteroid_hit_single3"
      .Speed = 1.5
      .Loops = 1
      .Priority = 1000
      With .Tokens()
          .Add "color", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With
End With



With CreateGlfShow("asteroid_explodes_show")

  With .AddStep(0.01, Null, Null)
    With .Shows("insert_swap3")
      .Key = "key_ass_xpld1"
      .Speed = 1.5
      .Loops = 3
      .Priority = 20000
      With .Tokens()
          .Add "color1", "ffffff"
          .Add "color2", MeteorHotColor
          .Add "color3", MeteorWarmColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(0.02, Null, Null)
    With .Shows("flicker_color_off")
      .Key = "key_ass_xpld2"
      .Speed = 4
      .Loops = 1
      With .Tokens()
          .Add "lights", "tAsteroid"
          .Add "color", "ffffff"
      End With
    End With
  End With

  With .AddStep(0.2, Null, Null)
    With .Shows("asteroid_hit")
      .Key = "key_ass_xpld3"
      .Speed = 1
      .Loops = 1
      .Priority = 20000
    End With
  End With

  With .AddStep(1.7, Null, Null)
    With .Shows("insert_swap3")
      .Key = "key_ass_xpld4"
      .Speed = 1.5
      .Loops = 3
      .Priority = 20000
      With .Tokens()
          .Add "color1", "000000"
          .Add "color2", MeteorHotColor
          .Add "color3", MeteorWarmColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(1.71, Null, Null)
    With .Shows("flicker_color_off")
      .Key = "key_ass_xpld5"
      .Speed = 4
      .Loops = 1
      With .Tokens()
          .Add "lights", "tAsteroid"
          .Add "color", "aaaaaa"
      End With
    End With
  End With

  With .AddStep(1.9, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_ass_xpld6"
      .Speed = 1.5
      .Loops = 1
      .Priority = 20000
      With .Tokens()
          .Add "color", MeteorWarmColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(4.1, Null, Null)
    With .Shows("insert_swap2")
      .Key = "key_ass_xpld7"
      .Speed = 1.5
      .Loops = 4
      .Priority = 20000
      With .Tokens()
          .Add "color1", "000000"
          .Add "color2", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(4.11, Null, Null)
    With .Shows("flicker_color_off")
      .Key = "key_ass_xpld8"
      .Speed = 4
      .Loops = 1
      With .Tokens()
          .Add "lights", "tAsteroid"
          .Add "color", "555555"
      End With
    End With
  End With

  With .AddStep(4.36, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_ass_xpld9"
      .Speed = 1.5
      .Loops = 1
      .Priority = 20000
      With .Tokens()
          .Add "color", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(5.4, Null, Null)
    With .Shows("flicker_color_off")
      .Key = "key_ass_xpld8"
      .Speed = 4
      .Loops = 1
      With .Tokens()
          .Add "lights", "tAsteroid"
          .Add "color", "111111"
      End With
    End With
  End With

  With .AddStep(5.41, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_ass_xpld9"
      .Speed = 1.5
      .Loops = 1
      .Priority = 20000
      With .Tokens()
          .Add "color", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With


End With



End Sub


