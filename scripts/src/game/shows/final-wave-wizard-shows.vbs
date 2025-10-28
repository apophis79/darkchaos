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
      "LSwC2|(intensity)|stop", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LM4|(intensity)|stop", _
      "LM2|(intensity)|(color)" _
      )
  End With 
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|stop", _
      "gi18|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|stop", _
      "LS5|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|stop", _
      "LPC3|(intensity)|stop", _
      "LTW2|(intensity)|(color)", _
      "LM2|(intensity)|stop" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi18|(intensity)|stop", _
      "gi16|(intensity)|stop", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|stop", _
      "gi12|(intensity)|(color)", _
      "LS5|(intensity)|stop", _
      "LS3|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW2|(intensity)|stop", _
      "LMLR|(intensity)|stop", _
      "LF3|(intensity)|(color)", _
      "LTW2|(intensity)|stop", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|stop", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|stop", _
      "gi12|(intensity)|stop", _
      "gi11|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LS3|(intensity)|stop", _
      "LS6|(intensity)|e7e7e7", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|stop", _
      "LF3|(intensity)|stop", _
      "LCC3|(intensity)|stop", _
      "LCC2|(intensity)|stop", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|stop", _
      "gi14|(intensity)|(color)", _
      "gi11|(intensity)|stop", _
      "LS2|(intensity)|stop", _
      "LS6|(intensity)|stop", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|stop", _
      "LW5|(intensity)|stop", _
      "LSC1|(intensity)|(color)", _
      "LMet4|(intensity)|(color)", _
      "LMet3|(intensity)|stop", _
      "LMet2|(intensity)|stop", _
      "LMet1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|stop", _
      "gi10|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|stop", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|stop", _
      "LMet1|(intensity)|stop", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|stop", _
      "LW8|(intensity)|stop", _
      "LSC3|(intensity)|0f0f0f", _
      "LSC2|(intensity)|stop", _
      "LMet4|(intensity)|stop", _
      "LM1|(intensity)|stop" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|stop", _
      "gi09|(intensity)|stop", _
      "LS1|(intensity)|stop", _
      "LWiz|(intensity)|stop", _
      "LSC3|(intensity)|stop", _
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
      "LCWiz|(intensity)|stop", _
      "LLWiz|(intensity)|stop", _
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
      "LPR1|(intensity)|stop", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR1|(intensity)|stop", _
      "LCR1|(intensity)|stop", _
      "LRI|(intensity)|stop", _
      "LLI|(intensity)|stop", _
      "LSR|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|stop", _
      "gi07|(intensity)|stop", _
      "gi05|(intensity)|(color)", _
      "gi04|(intensity)|stop", _
      "gi03|(intensity)|stop", _
      "LSA|(intensity)|(color)", _
      "LPR3|(intensity)|stop", _
      "LPR2|(intensity)|stop", _
      "LPR6|(intensity)|stop", _
      "LPR5|(intensity)|stop", _
      "LPR4|(intensity)|stop", _
      "LMR2|(intensity)|stop", _
      "LCR2|(intensity)|stop", _
      "LRO|(intensity)|stop", _
      "LLO|(intensity)|stop" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|stop", _
      "gi05|(intensity)|1a1a1a", _
      "gi02|(intensity)|stop", _
      "gi01|(intensity)|stop", _
      "LC1|(intensity)|stop", _
      "LC2|(intensity)|stop", _
      "LC3|(intensity)|stop", _
      "LC4|(intensity)|stop", _
      "LC5|(intensity)|stop", _
      "LC6|(intensity)|stop", _
      "LC7|(intensity)|stop", _
      "LC8|(intensity)|stop", _
      "LH9|(intensity)|stop", _
      "LH8|(intensity)|stop", _
      "LH7|(intensity)|stop", _
      "LH6|(intensity)|stop", _
      "LH5|(intensity)|stop", _
      "LH4|(intensity)|stop", _
      "LH3|(intensity)|stop", _
      "LH2|(intensity)|stop", _
      "LH1|(intensity)|stop", _
      "LSR|(intensity)|stop", _
      "LSL|(intensity)|stop" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi05|(intensity)|stop", _
      "LSA|(intensity)|stop" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
  End With
  With .AddStep(0.53333, Null, Null)
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|stop" _
      )
  End With
End With


With CreateGlfShow("asteroid_hit")
  With .AddStep(0.0, Null, Null)
    With .Shows("asteroid_hit_single")
      .Key = "key_asteroid_hit_single1"
      .Speed = 1.5
      .Loops = 0
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
      .Loops = 0
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
      .Loops = 0
      .Priority = 1000
      With .Tokens()
          .Add "color", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With
End With



With CreateGlfShow("asteroid_explodes_show")

  With .AddStep(0.0, Null, Null)
    With .Shows("insert_swap3")
      .Key = "key_ass_xpld1"
      .Speed = 1.5
      .Loops = 2
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
      .Loops = 0
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
      .Loops = 0
      .Priority = 20000
    End With
  End With

  With .AddStep(1.7, Null, Null)
    With .Shows("insert_swap3")
      .Key = "key_ass_xpld4"
      .Speed = 1.5
      .Loops = 2
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
      .Loops = 0
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
      .Loops = 0
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
      .Loops = 3
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
      .Loops = 0
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
      .Loops = 0
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
      .Loops = 0
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
      .Loops = 0
      .Priority = 20000
      With .Tokens()
          .Add "color", MeteorHotColor
          .Add "intensity", 100
      End With
    End With
  End With


End With



End Sub


