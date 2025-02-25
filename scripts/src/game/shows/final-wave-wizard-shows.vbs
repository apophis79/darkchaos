'Final wave wizard shows

Sub CreateFinalWaveWizardShows()


With CreateGlfShow("asteroid_explodes_show")
  With .AddStep(Null, Null, 1)
    .Lights = Array("tAsteroid|100|ffffff|600")
  End With
  With .AddStep(Null, Null, 1)
    .Lights = Array("tAsteroid|100|000000|600")
  End With
End With



With CreateGlfShow("asteroid_hit_single")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "LSwC2|100|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "LSwC2|100|000000", _
      "LM4|100|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi20|100|(color)", _
      "LX|100|(color)", _
      "LEBR|100|(color)", _
      "LPC3|100|(color)", _
      "LM4|100|000000", _
      "LM2|100|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi20|100|000000", _
      "gi18|100|(color)", _
      "gi16|100|(color)", _
      "gi13|100|(color)", _
      "LX|100|000000", _
      "LS5|100|(color)", _
      "LW2|100|(color)", _
      "LMLR|100|(color)", _
      "LEBR|100|000000", _
      "LPC3|100|000000", _
      "LTW2|100|(color)", _
      "LM2|100|000000" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi17|100|(color)", _
      "gi18|100|000000", _
      "gi16|100|000000", _
      "gi15|100|(color)", _
      "gi13|100|000000", _
      "gi12|100|(color)", _
      "LS5|100|000000", _
      "LS3|100|(color)", _
      "LW4|100|(color)", _
      "LW2|100|000000", _
      "LMLR|100|000000", _
      "LF3|100|(color)", _
      "LTW4|100|(color)", _
      "LTW2|100|000000", _
      "LCC3|100|(color)", _
      "LCC2|100|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi17|100|000000", _
      "gi19|100|(color)", _
      "gi15|100|000000", _
      "gi12|100|000000", _
      "gi11|100|(color)", _
      "LS2|100|(color)", _
      "LS3|100|000000", _
      "LS6|100|e7e7e7", _
      "LW6|100|(color)", _
      "LW5|100|(color)", _
      "LW4|100|000000", _
      "LF3|100|000000", _
      "LTW4|100|000000", _
      "LCC3|100|000000", _
      "LCC2|100|000000", _
      "LMet3|100|(color)", _
      "LMet2|100|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi19|100|000000", _
      "gi14|100|(color)", _
      "gi11|100|000000", _
      "LSwL2|100|8a8a8a", _
      "LS2|100|000000", _
      "LS6|100|000000", _
      "LW7|100|(color)", _
      "LW6|100|000000", _
      "LW5|100|000000", _
      "LSC1|100|(color)", _
      "LMet4|100|(color)", _
      "LMet3|100|000000", _
      "LMet2|100|000000", _
      "LMet1|100|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi14|100|000000", _
      "gi10|100|(color)", _
      "LS1|100|(color)", _
      "LSwL1|100|(color)", _
      "LSwL2|100|000000", _
      "LW9|100|(color)", _
      "LW8|100|(color)", _
      "LW7|100|000000", _
      "LSC3|100|(color)", _
      "LSC2|100|(color)", _
      "LSC1|100|000000", _
      "LMet1|100|000000", _
      "LM1|100|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi09|100|(color)", _
      "LSwL1|100|000000", _
      "LCWiz|100|(color)", _
      "LLWiz|100|(color)", _
      "LWiz|100|(color)", _
      "LW9|100|000000", _
      "LW8|100|000000", _
      "LSC4|100|(color)", _
      "LSC3|100|0f0f0f", _
      "LSC2|100|000000", _
      "LMet4|100|000000", _
      "LM1|100|000000" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi10|100|000000", _
      "gi09|100|000000", _
      "LS1|100|000000", _
      "LWiz|100|000000", _
      "LSC4|100|000000", _
      "LSC3|100|000000", _
      "LMR1|100|d9d9d9", _
      "LCR1|100|ececec" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi08|100|(color)", _
      "gi07|100|(color)", _
      "gi04|100|(color)", _
      "gi03|100|(color)", _
      "LCWiz|100|000000", _
      "LLWiz|100|000000", _
      "LPR1|100|(color)", _
      "LPR3|100|(color)", _
      "LPR2|100|(color)", _
      "LMR2|100|(color)", _
      "LMR1|100|(color)", _
      "LCR2|100|(color)", _
      "LCR1|100|(color)", _
      "LRI|100|(color)", _
      "LRO|100|(color)", _
      "LLI|100|(color)", _
      "LLO|100|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi06|100|(color)", _
      "gi05|100|fefefe", _
      "gi04|100|d5d5d5", _
      "gi02|100|(color)", _
      "gi01|100|(color)", _
      "LC1|100|(color)", _
      "LC2|100|(color)", _
      "LC3|100|(color)", _
      "LC4|100|(color)", _
      "LC5|100|(color)", _
      "LC6|100|(color)", _
      "LC7|100|(color)", _
      "LC8|100|(color)", _
      "LH9|100|(color)", _
      "LH8|100|(color)", _
      "LH7|100|(color)", _
      "LH6|100|(color)", _
      "LH5|100|(color)", _
      "LH4|100|(color)", _
      "LH3|100|(color)", _
      "LH2|100|(color)", _
      "LH1|100|(color)", _
      "LPR1|100|000000", _
      "LPR6|100|(color)", _
      "LPR5|100|(color)", _
      "LPR4|100|(color)", _
      "LMR1|100|000000", _
      "LCR1|100|000000", _
      "LRI|100|000000", _
      "LLI|100|000000", _
      "LSR|100|(color)", _
      "LSL|100|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi08|100|000000", _
      "gi07|100|000000", _
      "gi05|100|(color)", _
      "gi04|100|000000", _
      "gi03|100|000000", _
      "LSA|100|(color)", _
      "LPR3|100|000000", _
      "LPR2|100|000000", _
      "LPR6|100|000000", _
      "LPR5|100|000000", _
      "LPR4|100|000000", _
      "LMR2|100|000000", _
      "LCR2|100|000000", _
      "LRO|100|000000", _
      "LLO|100|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi06|100|000000", _
      "gi05|100|1a1a1a", _
      "gi02|100|000000", _
      "gi01|100|000000", _
      "LC1|100|000000", _
      "LC2|100|000000", _
      "LC3|100|000000", _
      "LC4|100|000000", _
      "LC5|100|000000", _
      "LC6|100|000000", _
      "LC7|100|000000", _
      "LC8|100|000000", _
      "LH9|100|000000", _
      "LH8|100|000000", _
      "LH7|100|000000", _
      "LH6|100|000000", _
      "LH5|100|000000", _
      "LH4|100|000000", _
      "LH3|100|000000", _
      "LH2|100|000000", _
      "LH1|100|000000", _
      "LSR|100|000000", _
      "LSL|100|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "giapron|100|(color)", _
      "gi05|100|000000", _
      "LSA|100|000000" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
  End With
  With .AddStep(0.53333, Null, Null)
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "giapron|100|000000" _
      )
  End With
End With


End Sub


