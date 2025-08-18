

'Insert Shows

Sub CreateInsertShows()

With CreateGlfShow("insert_swap2")
    With .AddStep(Null, Null, 0.1)
        .Lights = Array( _
        "LPF|(intensity)|(color1)", _
        "LX|(intensity)|(color2)", _
        "LS5|(intensity)|(color1)", _
        "LS1|(intensity)|(color2)", _
        "LS2|(intensity)|(color1)", _
        "LS3|(intensity)|(color2)", _
        "LS4|(intensity)|(color1)", _
        "LS6|(intensity)|(color2)", _
        "LSwC3|(intensity)|(color1)", _
        "LSwC2|(intensity)|(color2)", _
        "LSwC1|(intensity)|(color1)", _
        "LCWiz|(intensity)|(color2)", _
        "LLWiz|(intensity)|(color1)", _
        "LC1|(intensity)|(color2)", _
        "LC2|(intensity)|(color1)", _
        "LC3|(intensity)|(color2)", _
        "LC4|(intensity)|(color1)", _
        "LC5|(intensity)|(color2)", _
        "LC6|(intensity)|(color1)", _
        "LC7|(intensity)|(color2)", _
        "LC8|(intensity)|(color1)", _
        "LWiz|(intensity)|(color2)", _
        "LW9|(intensity)|(color1)", _
        "LW8|(intensity)|(color2)", _
        "LW7|(intensity)|(color1)", _
        "LW6|(intensity)|(color2)", _
        "LW5|(intensity)|(color1)", _
        "LW4|(intensity)|(color2)", _
        "LW3|(intensity)|(color1)", _
        "LW2|(intensity)|(color2)", _
        "LW1|(intensity)|(color1)", _
        "LMLR|(intensity)|(color2)", _
        "LEBR|(intensity)|(color1)", _
        "LMR|(intensity)|(color2)", _
        "LPC5|(intensity)|(color1)", _
        "LPC4|(intensity)|(color2)", _
        "LSC3|(intensity)|(color2)", _
        "LSC2|(intensity)|(color1)", _
        "LSC1|(intensity)|(color2)", _
        "LF3|(intensity)|(color1)", _
        "LF2|(intensity)|(color2)", _
        "LF1|(intensity)|(color1)", _
        "LPC3|(intensity)|(color2)", _
        "LPC2|(intensity)|(color1)", _
        "LPC1|(intensity)|(color2)", _
        "LTW2|(intensity)|(color1)", _
        "LTW1|(intensity)|(color2)", _
        "LCC3|(intensity)|(color1)", _
        "LCC2|(intensity)|(color2)", _
        "LCC1|(intensity)|(color1)", _
        "LMet4|(intensity)|(color2)", _
        "LMet3|(intensity)|(color1)", _
        "LMet2|(intensity)|(color2)", _
        "LMet1|(intensity)|(color1)", _
        "LM5|(intensity)|(color2)", _
        "LM4|(intensity)|(color1)", _
        "LM3|(intensity)|(color2)", _
        "LM2|(intensity)|(color1)", _
        "LM1|(intensity)|(color2)", _
        "LSA|(intensity)|(color1)", _
        "LH9|(intensity)|(color2)", _
        "LH8|(intensity)|(color1)", _
        "LH7|(intensity)|(color2)", _
        "LH6|(intensity)|(color1)", _
        "LH5|(intensity)|(color2)", _
        "LH4|(intensity)|(color1)", _
        "LH3|(intensity)|(color2)", _
        "LH2|(intensity)|(color1)", _
        "LH1|(intensity)|(color2)", _
        "LPR1|(intensity)|(color1)", _
        "LPR3|(intensity)|(color2)", _
        "LPR2|(intensity)|(color1)", _
        "LPR6|(intensity)|(color2)", _
        "LPR5|(intensity)|(color1)", _
        "LPR4|(intensity)|(color2)", _
        "LMR2|(intensity)|(color1)", _
        "LMR1|(intensity)|(color2)", _
        "LCR2|(intensity)|(color1)", _
        "LCR1|(intensity)|(color2)", _
        "LRI|(intensity)|(color1)", _
        "LRO|(intensity)|(color2)", _
        "LLI|(intensity)|(color1)", _
        "LLO|(intensity)|(color2)", _
        "LSR|(intensity)|(color1)", _
        "LSL|(intensity)|(color2)" _
        )
    End With
    With .AddStep(Null, Null, 0.1)
        .Lights = Array( _
        "LPF|(intensity)|(color2)", _
        "LX|(intensity)|(color1)", _
        "LS5|(intensity)|(color2)", _
        "LS1|(intensity)|(color1)", _
        "LS2|(intensity)|(color2)", _
        "LS3|(intensity)|(color1)", _
        "LS4|(intensity)|(color2)", _
        "LS6|(intensity)|(color1)", _
        "LSwC3|(intensity)|(color2)", _
        "LSwC2|(intensity)|(color1)", _
        "LSwC1|(intensity)|(color2)", _
        "LCWiz|(intensity)|(color1)", _
        "LLWiz|(intensity)|(color2)", _
        "LC1|(intensity)|(color1)", _
        "LC2|(intensity)|(color2)", _
        "LC3|(intensity)|(color1)", _
        "LC4|(intensity)|(color2)", _
        "LC5|(intensity)|(color1)", _
        "LC6|(intensity)|(color2)", _
        "LC7|(intensity)|(color1)", _
        "LC8|(intensity)|(color2)", _
        "LWiz|(intensity)|(color1)", _
        "LW9|(intensity)|(color2)", _
        "LW8|(intensity)|(color1)", _
        "LW7|(intensity)|(color2)", _
        "LW6|(intensity)|(color1)", _
        "LW5|(intensity)|(color2)", _
        "LW4|(intensity)|(color1)", _
        "LW3|(intensity)|(color2)", _
        "LW2|(intensity)|(color1)", _
        "LW1|(intensity)|(color2)", _
        "LMLR|(intensity)|(color1)", _
        "LEBR|(intensity)|(color2)", _
        "LMR|(intensity)|(color1)", _
        "LPC5|(intensity)|(color2)", _
        "LPC4|(intensity)|(color1)", _
        "LSC3|(intensity)|(color1)", _
        "LSC2|(intensity)|(color2)", _
        "LSC1|(intensity)|(color1)", _
        "LF3|(intensity)|(color2)", _
        "LF2|(intensity)|(color1)", _
        "LF1|(intensity)|(color2)", _
        "LPC3|(intensity)|(color1)", _
        "LPC2|(intensity)|(color2)", _
        "LPC1|(intensity)|(color1)", _
        "LTW2|(intensity)|(color2)", _
        "LTW1|(intensity)|(color1)", _
        "LCC3|(intensity)|(color2)", _
        "LCC2|(intensity)|(color1)", _
        "LCC1|(intensity)|(color2)", _
        "LMet4|(intensity)|(color1)", _
        "LMet3|(intensity)|(color2)", _
        "LMet2|(intensity)|(color1)", _
        "LMet1|(intensity)|(color2)", _
        "LM5|(intensity)|(color1)", _
        "LM4|(intensity)|(color2)", _
        "LM3|(intensity)|(color1)", _
        "LM2|(intensity)|(color2)", _
        "LM1|(intensity)|(color1)", _
        "LSA|(intensity)|(color2)", _
        "LH9|(intensity)|(color1)", _
        "LH8|(intensity)|(color2)", _
        "LH7|(intensity)|(color1)", _
        "LH6|(intensity)|(color2)", _
        "LH5|(intensity)|(color1)", _
        "LH4|(intensity)|(color2)", _
        "LH3|(intensity)|(color1)", _
        "LH2|(intensity)|(color2)", _
        "LH1|(intensity)|(color1)", _
        "LPR1|(intensity)|(color2)", _
        "LPR3|(intensity)|(color1)", _
        "LPR2|(intensity)|(color2)", _
        "LPR6|(intensity)|(color1)", _
        "LPR5|(intensity)|(color2)", _
        "LPR4|(intensity)|(color1)", _
        "LMR2|(intensity)|(color2)", _
        "LMR1|(intensity)|(color1)", _
        "LCR2|(intensity)|(color2)", _
        "LCR1|(intensity)|(color1)", _
        "LRI|(intensity)|(color2)", _
        "LRO|(intensity)|(color1)", _
        "LLI|(intensity)|(color2)", _
        "LLO|(intensity)|(color1)", _
        "LSR|(intensity)|(color2)", _
        "LSL|(intensity)|(color1)" _
        )
    End With
End With


With CreateGlfShow("insert_swap3")
    With .AddStep(Null, Null, 0.1)
        .Lights = Array( _
        "LPF|(intensity)|(color1)", _
        "LX|(intensity)|(color2)", _
        "LS5|(intensity)|(color3)", _
        "LS1|(intensity)|(color1)", _
        "LS2|(intensity)|(color1)", _
        "LS3|(intensity)|(color2)", _
        "LS4|(intensity)|(color3)", _
        "LS6|(intensity)|(color1)", _
        "LSwC3|(intensity)|(color2)", _
        "LSwC2|(intensity)|(color3)", _
        "LSwC1|(intensity)|(color1)", _
        "LCWiz|(intensity)|(color2)", _
        "LLWiz|(intensity)|(color3)", _
        "LC1|(intensity)|(color1)", _
        "LC2|(intensity)|(color2)", _
        "LC3|(intensity)|(color3)", _
        "LC4|(intensity)|(color1)", _
        "LC5|(intensity)|(color2)", _
        "LC6|(intensity)|(color3)", _
        "LC7|(intensity)|(color1)", _
        "LC8|(intensity)|(color2)", _
        "LWiz|(intensity)|(color3)", _
        "LW9|(intensity)|(color1)", _
        "LW8|(intensity)|(color2)", _
        "LW7|(intensity)|(color3)", _
        "LW6|(intensity)|(color1)", _
        "LW5|(intensity)|(color2)", _
        "LW4|(intensity)|(color3)", _
        "LW3|(intensity)|(color1)", _
        "LW2|(intensity)|(color2)", _
        "LW1|(intensity)|(color3)", _
        "LMLR|(intensity)|(color1)", _
        "LEBR|(intensity)|(color2)", _
        "LMR|(intensity)|(color3)", _
        "LPC5|(intensity)|(color1)", _
        "LPC4|(intensity)|(color2)", _
        "LSC3|(intensity)|(color1)", _
        "LSC2|(intensity)|(color2)", _
        "LSC1|(intensity)|(color3)", _
        "LF3|(intensity)|(color1)", _
        "LF2|(intensity)|(color2)", _
        "LF1|(intensity)|(color3)", _
        "LPC3|(intensity)|(color1)", _
        "LPC2|(intensity)|(color2)", _
        "LPC1|(intensity)|(color3)", _
        "LTW2|(intensity)|(color3)", _
        "LTW1|(intensity)|(color1)", _
        "LCC3|(intensity)|(color2)", _
        "LCC2|(intensity)|(color3)", _
        "LCC1|(intensity)|(color1)", _
        "LMet4|(intensity)|(color2)", _
        "LMet3|(intensity)|(color3)", _
        "LMet2|(intensity)|(color1)", _
        "LMet1|(intensity)|(color2)", _
        "LM5|(intensity)|(color3)", _
        "LM4|(intensity)|(color1)", _
        "LM3|(intensity)|(color2)", _
        "LM2|(intensity)|(color3)", _
        "LM1|(intensity)|(color1)", _
        "LSA|(intensity)|(color2)", _
        "LH9|(intensity)|(color3)", _
        "LH8|(intensity)|(color1)", _
        "LH7|(intensity)|(color2)", _
        "LH6|(intensity)|(color3)", _
        "LH5|(intensity)|(color1)", _
        "LH4|(intensity)|(color2)", _
        "LH3|(intensity)|(color3)", _
        "LH2|(intensity)|(color1)", _
        "LH1|(intensity)|(color2)", _
        "LPR1|(intensity)|(color3)", _
        "LPR3|(intensity)|(color1)", _
        "LPR2|(intensity)|(color2)", _
        "LPR6|(intensity)|(color3)", _
        "LPR5|(intensity)|(color1)", _
        "LPR4|(intensity)|(color2)", _
        "LMR2|(intensity)|(color3)", _
        "LMR1|(intensity)|(color1)", _
        "LCR2|(intensity)|(color2)", _
        "LCR1|(intensity)|(color3)", _
        "LRI|(intensity)|(color1)", _
        "LRO|(intensity)|(color2)", _
        "LLI|(intensity)|(color3)", _
        "LLO|(intensity)|(color1)", _
        "LSR|(intensity)|(color2)", _
        "LSL|(intensity)|(color3)" _
        )
    End With
    With .AddStep(Null, Null, 0.1)
        .Lights = Array( _
        "LPF|(intensity)|(color3)", _
        "LX|(intensity)|(color1)", _
        "LS5|(intensity)|(color2)", _
        "LS1|(intensity)|(color3)", _
        "LS2|(intensity)|(color3)", _
        "LS3|(intensity)|(color1)", _
        "LS4|(intensity)|(color2)", _
        "LS6|(intensity)|(color3)", _
        "LSwC3|(intensity)|(color1)", _
        "LSwC2|(intensity)|(color2)", _
        "LSwC1|(intensity)|(color3)", _
        "LCWiz|(intensity)|(color1)", _
        "LLWiz|(intensity)|(color2)", _
        "LC1|(intensity)|(color3)", _
        "LC2|(intensity)|(color1)", _
        "LC3|(intensity)|(color2)", _
        "LC4|(intensity)|(color3)", _
        "LC5|(intensity)|(color1)", _
        "LC6|(intensity)|(color2)", _
        "LC7|(intensity)|(color3)", _
        "LC8|(intensity)|(color1)", _
        "LWiz|(intensity)|(color2)", _
        "LW9|(intensity)|(color3)", _
        "LW8|(intensity)|(color1)", _
        "LW7|(intensity)|(color2)", _
        "LW6|(intensity)|(color3)", _
        "LW5|(intensity)|(color1)", _
        "LW4|(intensity)|(color2)", _
        "LW3|(intensity)|(color3)", _
        "LW2|(intensity)|(color1)", _
        "LW1|(intensity)|(color2)", _
        "LMLR|(intensity)|(color3)", _
        "LEBR|(intensity)|(color1)", _
        "LMR|(intensity)|(color2)", _
        "LPC5|(intensity)|(color3)", _
        "LPC4|(intensity)|(color1)", _
        "LSC3|(intensity)|(color3)", _
        "LSC2|(intensity)|(color1)", _
        "LSC1|(intensity)|(color2)", _
        "LF3|(intensity)|(color3)", _
        "LF2|(intensity)|(color1)", _
        "LF1|(intensity)|(color2)", _
        "LPC3|(intensity)|(color3)", _
        "LPC2|(intensity)|(color1)", _
        "LPC1|(intensity)|(color2)", _
        "LTW2|(intensity)|(color2)", _
        "LTW1|(intensity)|(color3)", _
        "LCC3|(intensity)|(color1)", _
        "LCC2|(intensity)|(color2)", _
        "LCC1|(intensity)|(color3)", _
        "LMet4|(intensity)|(color1)", _
        "LMet3|(intensity)|(color2)", _
        "LMet2|(intensity)|(color3)", _
        "LMet1|(intensity)|(color1)", _
        "LM5|(intensity)|(color2)", _
        "LM4|(intensity)|(color3)", _
        "LM3|(intensity)|(color1)", _
        "LM2|(intensity)|(color2)", _
        "LM1|(intensity)|(color3)", _
        "LSA|(intensity)|(color1)", _
        "LH9|(intensity)|(color2)", _
        "LH8|(intensity)|(color3)", _
        "LH7|(intensity)|(color1)", _
        "LH6|(intensity)|(color2)", _
        "LH5|(intensity)|(color3)", _
        "LH4|(intensity)|(color1)", _
        "LH3|(intensity)|(color2)", _
        "LH2|(intensity)|(color3)", _
        "LH1|(intensity)|(color1)", _
        "LPR1|(intensity)|(color2)", _
        "LPR3|(intensity)|(color3)", _
        "LPR2|(intensity)|(color1)", _
        "LPR6|(intensity)|(color2)", _
        "LPR5|(intensity)|(color3)", _
        "LPR4|(intensity)|(color1)", _
        "LMR2|(intensity)|(color2)", _
        "LMR1|(intensity)|(color3)", _
        "LCR2|(intensity)|(color1)", _
        "LCR1|(intensity)|(color2)", _
        "LRI|(intensity)|(color3)", _
        "LRO|(intensity)|(color1)", _
        "LLI|(intensity)|(color2)", _
        "LLO|(intensity)|(color3)", _
        "LSR|(intensity)|(color1)", _
        "LSL|(intensity)|(color2)" _
        )
    End With
    With .AddStep(Null, Null, 0.1)
        .Lights = Array( _
        "LPF|(intensity)|(color2)", _
        "LX|(intensity)|(color3)", _
        "LS5|(intensity)|(color1)", _
        "LS1|(intensity)|(color2)", _
        "LS2|(intensity)|(color2)", _
        "LS3|(intensity)|(color3)", _
        "LS4|(intensity)|(color1)", _
        "LS6|(intensity)|(color2)", _
        "LSwC3|(intensity)|(color3)", _
        "LSwC2|(intensity)|(color1)", _
        "LSwC1|(intensity)|(color2)", _
        "LCWiz|(intensity)|(color3)", _
        "LLWiz|(intensity)|(color1)", _
        "LC1|(intensity)|(color2)", _
        "LC2|(intensity)|(color3)", _
        "LC3|(intensity)|(color1)", _
        "LC4|(intensity)|(color2)", _
        "LC5|(intensity)|(color3)", _
        "LC6|(intensity)|(color1)", _
        "LC7|(intensity)|(color2)", _
        "LC8|(intensity)|(color3)", _
        "LWiz|(intensity)|(color1)", _
        "LW9|(intensity)|(color2)", _
        "LW8|(intensity)|(color3)", _
        "LW7|(intensity)|(color1)", _
        "LW6|(intensity)|(color2)", _
        "LW5|(intensity)|(color3)", _
        "LW4|(intensity)|(color1)", _
        "LW3|(intensity)|(color2)", _
        "LW2|(intensity)|(color3)", _
        "LW1|(intensity)|(color1)", _
        "LMLR|(intensity)|(color2)", _
        "LEBR|(intensity)|(color3)", _
        "LMR|(intensity)|(color1)", _
        "LPC5|(intensity)|(color2)", _
        "LPC4|(intensity)|(color3)", _
        "LSC3|(intensity)|(color2)", _
        "LSC2|(intensity)|(color3)", _
        "LSC1|(intensity)|(color1)", _
        "LF3|(intensity)|(color2)", _
        "LF2|(intensity)|(color3)", _
        "LF1|(intensity)|(color1)", _
        "LPC3|(intensity)|(color2)", _
        "LPC2|(intensity)|(color3)", _
        "LPC1|(intensity)|(color1)", _
        "LTW2|(intensity)|(color1)", _
        "LTW1|(intensity)|(color2)", _
        "LCC3|(intensity)|(color3)", _
        "LCC2|(intensity)|(color1)", _
        "LCC1|(intensity)|(color2)", _
        "LMet4|(intensity)|(color3)", _
        "LMet3|(intensity)|(color1)", _
        "LMet2|(intensity)|(color2)", _
        "LMet1|(intensity)|(color3)", _
        "LM5|(intensity)|(color1)", _
        "LM4|(intensity)|(color2)", _
        "LM3|(intensity)|(color3)", _
        "LM2|(intensity)|(color1)", _
        "LM1|(intensity)|(color2)", _
        "LSA|(intensity)|(color3)", _
        "LH9|(intensity)|(color1)", _
        "LH8|(intensity)|(color2)", _
        "LH7|(intensity)|(color3)", _
        "LH6|(intensity)|(color1)", _
        "LH5|(intensity)|(color2)", _
        "LH4|(intensity)|(color3)", _
        "LH3|(intensity)|(color1)", _
        "LH2|(intensity)|(color2)", _
        "LH1|(intensity)|(color3)", _
        "LPR1|(intensity)|(color1)", _
        "LPR3|(intensity)|(color2)", _
        "LPR2|(intensity)|(color3)", _
        "LPR6|(intensity)|(color1)", _
        "LPR5|(intensity)|(color2)", _
        "LPR4|(intensity)|(color3)", _
        "LMR2|(intensity)|(color1)", _
        "LMR1|(intensity)|(color2)", _
        "LCR2|(intensity)|(color3)", _
        "LCR1|(intensity)|(color1)", _
        "LRI|(intensity)|(color2)", _
        "LRO|(intensity)|(color3)", _
        "LLI|(intensity)|(color1)", _
        "LLO|(intensity)|(color2)", _
        "LSR|(intensity)|(color3)", _
        "LSL|(intensity)|(color1)" _
        )
    End With
End With


With CreateGlfShow("insert_gi_spin_center")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
       "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "LLWiz|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|(color)", _
      "LM1|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LRO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "gi08|(intensity)|000000", _
      "gi05|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|(color)", _
      "gi07|(intensity)|000000", _
      "gi06|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LS2|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LH9|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR6|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi21|(intensity)|(color)", _
      "gi18|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "gi12|(intensity)|000000", _
      "gi11|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LS3|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LM1|(intensity)|000000", _
      "LH6|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|000000", _
      "gi18|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LSwC1|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC8|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LTW1|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LM2|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH9|(intensity)|000000", _
      "LH4|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC7|(intensity)|000000", _
      "LEBR|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LM2|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LMR2|(intensity)|000000", _
      "LCR2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "giapron|(intensity)|000000", _
      "gi22|(intensity)|000000", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LSwC3|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH1|(intensity)|(color)", _
      "LPR6|(intensity)|000000", _
      "LCR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|000000", _
      "gi03|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LM5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LS6|(intensity)|000000", _
      "LLWiz|(intensity)|(color)", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "gi10|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "gi01|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi02|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LCR2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
    .Lights = Array( _
      "gi04|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LRO|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "LLWiz|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|(color)", _
      "LM1|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LRO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.63333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "gi08|(intensity)|000000", _
      "gi05|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.66667, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|(color)", _
      "gi07|(intensity)|000000", _
      "gi06|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LS2|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LH9|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR6|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.70000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi21|(intensity)|(color)", _
      "gi18|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "gi12|(intensity)|000000", _
      "gi11|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LS3|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LM1|(intensity)|000000", _
      "LH6|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.73333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|000000", _
      "gi18|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LSwC1|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC8|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LTW1|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LM2|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH9|(intensity)|000000", _
      "LH4|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.76667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC7|(intensity)|000000", _
      "LEBR|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LM2|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LMR2|(intensity)|000000", _
      "LCR2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.80000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "giapron|(intensity)|000000", _
      "gi22|(intensity)|000000", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LSwC3|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH1|(intensity)|(color)", _
      "LPR6|(intensity)|000000", _
      "LCR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.83333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|000000", _
      "gi03|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LM5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.86667, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LS6|(intensity)|000000", _
      "LLWiz|(intensity)|(color)", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.90000, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "gi10|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "gi01|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.93333, Null, Null)
    .Lights = Array( _
      "gi02|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.96667, Null, 0.03333)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LCR2|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_spin_right")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LMet3|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LM1|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|(color)", _
      "LS3|(intensity)|(color)", _
      "LS6|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LW3|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LMet3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|(color)", _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LW5|(intensity)|000000", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi18|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LM3|(intensity)|(color)", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "LPF|(intensity)|000000", _
      "LS4|(intensity)|000000", _
      "LSwC3|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LMR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "gi10|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS5|(intensity)|000000", _
      "LSwC2|(intensity)|000000", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi19|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LF1|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|000000", _
      "gi08|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LM5|(intensity)|000000", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "giapron|(intensity)|(color)", _
      "gi06|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LLWiz|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LSA|(intensity)|(color)", _
      "LH9|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi10|(intensity)|000000", _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LC8|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LSA|(intensity)|000000", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LH1|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi04|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LLWiz|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LSC3|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LSC2|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LMet3|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LM1|(intensity)|(color)", _
      "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW5|(intensity)|(color)", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
    .Lights = Array( _
      "LS2|(intensity)|(color)", _
      "LW7|(intensity)|000000", _
      "LW4|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LMet1|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|(color)", _
      "LS3|(intensity)|(color)", _
      "LS6|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LW3|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LMet3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|(color)", _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LW5|(intensity)|000000", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi18|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.63333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LM3|(intensity)|(color)", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.66667, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "LPF|(intensity)|000000", _
      "LS4|(intensity)|000000", _
      "LSwC3|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LMR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.70000, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "gi10|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS5|(intensity)|000000", _
      "LSwC2|(intensity)|000000", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.73333, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi19|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LF1|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.76667, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|000000", _
      "gi08|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LM5|(intensity)|000000", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.80000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "giapron|(intensity)|(color)", _
      "gi06|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LLWiz|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LSA|(intensity)|(color)", _
      "LH9|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.83333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi10|(intensity)|000000", _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LC8|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LSA|(intensity)|000000", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LH1|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.86667, Null, Null)
    .Lights = Array( _
      "gi04|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LLWiz|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LSC3|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.90000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LSC2|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.93333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LMet3|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LM1|(intensity)|(color)", _
      "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.96667, Null, 0.03333)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW5|(intensity)|(color)", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_diag")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi18|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LM4|(intensity)|(color)", _
      "LM3|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC5|(intensity)|000000", _
      "LPC4|(intensity)|000000", _
      "LF1|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LM3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi18|(intensity)|000000", _
      "gi12|(intensity)|(color)", _
      "LPF|(intensity)|000000", _
      "LX|(intensity)|(color)", _
      "LS4|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|000000", _
      "gi11|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS3|(intensity)|(color)", _
      "LS6|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LMLR|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LCC3|(intensity)|(color)", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|000000", _
      "LS5|(intensity)|000000", _
      "LS2|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LW4|(intensity)|(color)", _
      "LW1|(intensity)|000000", _
      "LF3|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LS3|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LW6|(intensity)|(color)", _
      "LW4|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LMet1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW5|(intensity)|000000", _
      "LSC2|(intensity)|(color)", _
      "LMet4|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|(color)", _
      "gi09|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LMet3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "LW7|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LMet1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW8|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LW9|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LPR1|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi03|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LCR2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|(color)", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LLI|(intensity)|000000", _
      "LSR|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "gi04|(intensity)|000000", _
      "gi02|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
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
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|000000", _
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
      "LSA|(intensity)|(color)", _
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
  With .AddStep(0.63333, Null, Null)
    .Lights = Array( _
      "gi05|(intensity)|000000" _
      )
  End With
  With .AddStep(0.66667, Null, 0.03333)
    .Lights = Array( _
      "LSA|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_up")

  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "LSA|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
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
  With .AddStep(0.16667, Null, Null)
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
  With .AddStep(0.20000, Null, Null)
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
      "LRO|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSR|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LPR1|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LRI|(intensity)|000000", _
      "LLI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW8|(intensity)|(color)", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LMet4|(intensity)|(color)", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LSC3|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LMet1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LW8|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW5|(intensity)|(color)", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LMet1|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|(color)", _
      "gi14|(intensity)|000000", _
      "gi11|(intensity)|(color)", _
      "LS3|(intensity)|(color)", _
      "LS6|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LMet3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LS2|(intensity)|000000", _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LS6|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW1|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LF3|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC3|(intensity)|000000", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LEBR|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi18|(intensity)|(color)", _
      "gi15|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "LPF|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS4|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM5|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LM3|(intensity)|(color)", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|(color)", _
      "gi18|(intensity)|000000", _
      "gi13|(intensity)|000000", _
      "LPF|(intensity)|000000", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LM4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|(color)", _
      "LPC5|(intensity)|000000", _
      "LPC4|(intensity)|000000", _
      "LM3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi22|(intensity)|000000", _
      "gi21|(intensity)|000000", _
      "gi16|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LSwC2|(intensity)|000000", _
      "LSwC1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.63333, Null, 0.03333)
  .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi16|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_right")
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|(color)", _
      "gi12|(intensity)|(color)", _
      "gi09|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|(color)", _
      "gi11|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LLI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi21|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|000000", _
      "gi16|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "gi11|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "gi03|(intensity)|(color)", _
      "LCWiz|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LLO|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LS3|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LMet2|(intensity)|(color)", _
      "LM2|(intensity)|(color)", _
      "LM1|(intensity)|000000", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LH1|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LLI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi20|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LPF|(intensity)|(color)", _
      "LS2|(intensity)|000000", _
      "LSwC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LTW1|(intensity)|000000", _
      "LM3|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LCWiz|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC1|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LH7|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LPR3|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "LX|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC8|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LM2|(intensity)|000000", _
      "LH9|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "gi07|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "LPF|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LSwC2|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LPC5|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LM3|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|(color)", _
      "gi08|(intensity)|(color)", _
      "gi06|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LC8|(intensity)|000000", _
      "LEBR|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi10|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LMet4|(intensity)|000000", _
      "LH9|(intensity)|000000", _
      "LRO|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|(color)", _
      "gi14|(intensity)|(color)", _
      "gi08|(intensity)|000000", _
      "gi07|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LM5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|000000", _
      "gi06|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LF3|(intensity)|000000", _
      "LRI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi14|(intensity)|000000", _
      "gi10|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.5, Null, 0.03333)
    .Lights = Array( _
      "gi15|(intensity)|000000", _
      "gi17|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_midright")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LS4|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LM3|(intensity)|(color)", _
      "LM2|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "LX|(intensity)|(color)", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC8|(intensity)|(color)", _
      "LPC4|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LM2|(intensity)|000000", _
      "LH8|(intensity)|(color)", _
      "LH3|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LEBR|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LPC3|(intensity)|000000", _
      "LH9|(intensity)|(color)", _
      "LH4|(intensity)|000000", _
      "LPR2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "LPF|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LSwC2|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LM3|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LMLR|(intensity)|(color)", _
      "LPC5|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR6|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LMet3|(intensity)|000000", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi13|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LC8|(intensity)|000000", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LH9|(intensity)|000000", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "LLWiz|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LMet4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|(color)", _
      "gi07|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LS5|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LF1|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi19|(intensity)|(color)", _
      "gi14|(intensity)|(color)", _
      "gi08|(intensity)|000000" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi15|(intensity)|(color)", _
      "gi06|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LM5|(intensity)|000000", _
      "LRI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|000000" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, 0.03333)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi19|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi14|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_midleft")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LS4|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LMet2|(intensity)|(color)", _
      "LM3|(intensity)|(color)", _
      "LM2|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "LC1|(intensity)|(color)", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LPC1|(intensity)|(color)", _
      "LH7|(intensity)|000000", _
      "LH2|(intensity)|(color)", _
      "LPR6|(intensity)|000000", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LH6|(intensity)|000000", _
      "LH1|(intensity)|(color)", _
      "LPR3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "LPF|(intensity)|000000", _
      "LSwC2|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LTW1|(intensity)|(color)", _
      "LM3|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi03|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
      "LS2|(intensity)|(color)", _
      "LC3|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LPR2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "LC2|(intensity)|000000", _
      "LPC4|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM1|(intensity)|(color)", _
      "LH3|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LSwC1|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LCC1|(intensity)|(color)", _
      "LM2|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LH1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|(color)", _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|(color)", _
      "gi09|(intensity)|(color)", _
      "gi03|(intensity)|000000", _
      "LTW1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LCC3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM1|(intensity)|000000", _
      "LLI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|000000", _
      "gi11|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, 0.03333)
    .Lights = Array( _
      "gi18|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "LLO|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_left")
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|(color)", _
      "gi10|(intensity)|(color)", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|(color)", _
      "gi06|(intensity)|(color)", _
      "LS6|(intensity)|(color)", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LF3|(intensity)|(color)", _
      "LM5|(intensity)|(color)", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi19|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi14|(intensity)|000000", _
      "gi08|(intensity)|(color)", _
      "gi07|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "LMLR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "gi10|(intensity)|000000", _
      "LS5|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LMR|(intensity)|(color)", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LF1|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LH9|(intensity)|(color)", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi13|(intensity)|000000", _
      "gi08|(intensity)|000000", _
      "gi06|(intensity)|000000", _
      "LX|(intensity)|(color)", _
      "LS6|(intensity)|000000", _
      "LSwC3|(intensity)|(color)", _
      "LC7|(intensity)|(color)", _
      "LC8|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC5|(intensity)|(color)", _
      "LSC3|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LM5|(intensity)|000000", _
      "LM4|(intensity)|(color)", _
      "LH8|(intensity)|(color)", _
      "LH7|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LRI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "gi07|(intensity)|000000", _
      "gi05|(intensity)|000000", _
      "LPF|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LS4|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LMLR|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LM3|(intensity)|(color)", _
      "LSA|(intensity)|(color)", _
      "LH6|(intensity)|(color)", _
      "LH5|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "LX|(intensity)|000000", _
      "LSwC3|(intensity)|000000", _
      "LSwC1|(intensity)|(color)", _
      "LLWiz|(intensity)|000000", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC8|(intensity)|000000", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LPC4|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LMet2|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM2|(intensity)|(color)", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LC1|(intensity)|(color)", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LPC5|(intensity)|000000", _
      "LPC1|(intensity)|(color)", _
      "LTW2|(intensity)|(color)", _
      "LMet1|(intensity)|(color)", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH2|(intensity)|(color)", _
      "LH1|(intensity)|(color)", _
      "LPR3|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "gi20|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "gi01|(intensity)|(color)", _
      "LPF|(intensity)|000000", _
      "LS2|(intensity)|(color)", _
      "LSwC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LW7|(intensity)|000000", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LW1|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LTW1|(intensity)|(color)", _
      "LM3|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LPR1|(intensity)|000000", _
      "LPR2|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi21|(intensity)|(color)", _
      "gi02|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LS3|(intensity)|000000", _
      "LSwC1|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LPC4|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LCC3|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LM2|(intensity)|000000", _
      "LM1|(intensity)|(color)", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LLI|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi18|(intensity)|(color)", _
      "gi16|(intensity)|(color)", _
      "gi12|(intensity)|(color)", _
      "gi11|(intensity)|(color)", _
      "gi09|(intensity)|(color)", _
      "gi03|(intensity)|000000", _
      "LCWiz|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi21|(intensity)|000000", _
      "gi04|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LCC1|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|000000", _
      "gi11|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LLI|(intensity)|000000" _
      )
  End With
  With .AddStep(0.5, Null, 0.03333)
    .Lights = Array( _
      "LLO|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "gi12|(intensity)|000000", _
      "gi18|(intensity)|000000" _
      )
  End With
End With


With CreateGlfShow("insert_gi_slide_down")
  With .AddStep(0.03333, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)", _
      "gi16|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.06667, Null, Null)
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "gi22|(intensity)|(color)", _
      "gi21|(intensity)|(color)", _
      "gi16|(intensity)|000000", _
      "LSwC3|(intensity)|(color)", _
      "LSwC2|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|000000", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LM3|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi20|(intensity)|(color)", _
      "gi21|(intensity)|000000", _
      "gi18|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LSwC1|(intensity)|000000", _
      "LMR|(intensity)|(color)", _
      "LPC1|(intensity)|(color)", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.20000, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi15|(intensity)|(color)", _
      "gi13|(intensity)|(color)", _
      "LPF|(intensity)|000000", _
      "LX|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LEBR|(intensity)|(color)", _
      "LPC5|(intensity)|000000", _
      "LPC4|(intensity)|000000", _
      "LF2|(intensity)|(color)", _
      "LF1|(intensity)|(color)", _
      "LPC3|(intensity)|(color)", _
      "LPC2|(intensity)|(color)", _
      "LM4|(intensity)|000000", _
      "LM3|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.23333, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|(color)", _
      "gi18|(intensity)|000000", _
      "gi15|(intensity)|000000", _
      "gi13|(intensity)|000000", _
      "gi12|(intensity)|(color)", _
      "LS5|(intensity)|(color)", _
      "LS4|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LMR|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LF1|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LTW2|(intensity)|(color)", _
      "LTW1|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LCC1|(intensity)|(color)", _
      "LM5|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.26667, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|000000", _
      "gi11|(intensity)|(color)", _
      "LX|(intensity)|000000", _
      "LS2|(intensity)|(color)", _
      "LS3|(intensity)|(color)", _
      "LS4|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LW4|(intensity)|(color)", _
      "LW3|(intensity)|(color)", _
      "LW1|(intensity)|000000", _
      "LMLR|(intensity)|000000", _
      "LF3|(intensity)|000000", _
      "LF2|(intensity)|000000", _
      "LPC3|(intensity)|000000", _
      "LCC3|(intensity)|(color)", _
      "LCC1|(intensity)|000000", _
      "LM5|(intensity)|000000", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi14|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LW5|(intensity)|(color)", _
      "LW3|(intensity)|000000", _
      "LW2|(intensity)|000000", _
      "LTW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC3|(intensity)|000000", _
      "LCC2|(intensity)|000000", _
      "LMet3|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|000000", _
      "LS2|(intensity)|000000", _
      "LS3|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|(color)", _
      "LW4|(intensity)|000000", _
      "LSC1|(intensity)|(color)", _
      "LMet4|(intensity)|(color)", _
      "LMet2|(intensity)|000000", _
      "LMet1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "gi10|(intensity)|(color)", _
      "gi09|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LSC3|(intensity)|(color)", _
      "LSC2|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LM1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "LS1|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LW7|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "gi09|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LLWiz|(intensity)|(color)", _
      "LW9|(intensity)|000000", _
      "LW8|(intensity)|000000", _
      "LSC3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|(color)", _
      "gi04|(intensity)|(color)", _
      "LCWiz|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LPR1|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LRI|(intensity)|(color)", _
      "LRO|(intensity)|(color)", _
      "LLI|(intensity)|(color)", _
      "LLO|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.50000, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LCR2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "gi06|(intensity)|(color)", _
      "gi05|(intensity)|(color)", _
      "gi04|(intensity)|000000", _
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
      "LPR2|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LCR2|(intensity)|000000", _
      "LCR1|(intensity)|000000", _
      "LRI|(intensity)|000000", _
      "LRO|(intensity)|000000", _
      "LLI|(intensity)|000000", _
      "LLO|(intensity)|000000", _
      "LSR|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|000000", _
      "gi06|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "gi02|(intensity)|000000", _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LC4|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LC8|(intensity)|000000", _
      "LSA|(intensity)|(color)", _
      "LPR3|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LPR5|(intensity)|000000", _
      "LPR4|(intensity)|000000", _
      "LSR|(intensity)|000000", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi05|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000" _
      )
  End With
  With .AddStep(0.63333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "LSA|(intensity)|000000" _
      )
  End With
  With .AddStep(0.66667, Null, 0.03333)
    .Lights = Array( _
      "giapron|(intensity)|000000" _
      )
  End With
End With


End Sub


