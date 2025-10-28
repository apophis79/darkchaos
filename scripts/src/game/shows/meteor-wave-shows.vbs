

Sub CreateMeteorWaveShows()

  With CreateGlfShow("meteor1_explodes")
    With .AddStep(0.02, Null, Null)
        With .Shows("flash_color")
            .Key = "key_DOF13"
            .Speed = 20
            .Loops = 9
            With .Tokens()
                .Add "color", GIColor3000k
                .Add "lights", "LBG13"
            End With
        End With
    End With
    With .AddStep(0.03333, Null, Null)
      With .DOFEvent("13")
        .Action = "DOF_ON"
      End With
      .Lights = Array( _
        "LW8|100|(color)", _
        "LW6|100|(color)", _
        "LMet2|100|(color)" _
        )
    End With
    With .AddStep(0.06667, Null, Null)
      .Lights = Array( _
        "gi09|100|(color)", _
        "LS3|100|(color)", _
        "LCWiz|100|(color)", _
        "LW8|100|stop", _
        "LW6|100|stop", _
        "LW4|100|(color)", _
        "LMet3|100|(color)", _
        "LMet2|100|stop" _
        )
    End With
    With .AddStep(0.10000, Null, Null)
      .Lights = Array( _
        "gi09|100|stop", _
        "LS3|100|stop", _
        "LCWiz|100|stop", _
        "LW4|100|stop", _
        "LW2|100|(color)", _
        "LTW2|100|(color)", _
        "LTW1|100|(color)", _
        "LCC2|100|(color)", _
        "LMet4|100|(color)", _
        "LMet3|100|stop" _
        )
    End With
    With .AddStep(0.13333, Null, Null)
      .Lights = Array( _
        "gi12|100|(color)", _
        "gi04|100|585858", _
        "LS4|100|(color)", _
        "LLWiz|100|ececec", _
        "LW2|100|stop", _
        "LW1|100|838383", _
        "LSC3|100|(color)", _
        "LSC2|100|(color)", _
        "LSC1|100|(color)", _
        "LTW2|100|stop", _
        "LTW1|100|stop", _
        "LCC2|100|stop", _
        "LCC1|100|101010", _
        "LMet4|100|stop", _
        "LM2|100|(color)", _
        "LCR1|100|(color)", _
        "LLI|100|(color)" _
        )
    End With
    With .AddStep(0.16667, Null, Null)
      .Lights = Array( _
        "gi12|100|stop", _
        "gi10|100|(color)", _
        "gi04|100|stop", _
        "gi03|100|(color)", _
        "LX|100|(color)", _
        "LS5|100|(color)", _
        "LS4|100|stop", _
        "LS6|100|(color)", _
        "LLWiz|100|stop", _
        "LW1|100|stop", _
        "LMLR|100|(color)", _
        "LSC3|100|stop", _
        "LSC2|100|stop", _
        "LSC1|100|stop", _
        "LPC2|100|(color)", _
        "LPC1|100|(color)", _
        "LCC1|100|stop", _
        "LM2|100|stop", _
        "LPR1|100|919191", _
        "LPR3|100|(color)", _
        "LPR2|100|(color)", _
        "LMR2|100|(color)", _
        "LMR1|100|(color)", _
        "LCR2|100|(color)", _
        "LCR1|100|stop", _
        "LLI|100|stop", _
        "LLO|100|(color)" _
        )
    End With
    With .AddStep(0.20000, Null, Null)
      .Lights = Array( _
        "gi20|100|(color)", _
        "gi19|100|(color)", _
        "gi18|100|(color)", _
        "gi14|100|(color)", _
        "gi10|100|stop", _
        "gi08|100|(color)", _
        "gi07|100|(color)", _
        "gi03|100|stop", _
        "gi02|100|(color)", _
        "LPF|100|(color)", _
        "LX|100|stop", _
        "LS5|100|stop", _
        "LS6|100|stop", _
        "LC1|100|(color)", _
        "LC2|100|(color)", _
        "LC3|100|(color)", _
        "LC4|100|(color)", _
        "LC5|100|(color)", _
        "LC6|100|(color)", _
        "LC7|100|(color)", _
        "LMLR|100|stop", _
        "LEBR|100|(color)", _
        "LMR|100|(color)", _
        "LPC4|100|(color)", _
        "LF3|100|(color)", _
        "LPC2|100|stop", _
        "LPC1|100|stop", _
        "LM5|100|(color)", _
        "LM4|100|(color)", _
        "LH5|100|(color)", _
        "LH4|100|(color)", _
        "LH3|100|(color)", _
        "LH2|100|(color)", _
        "LH1|100|(color)", _
        "LPR1|100|stop", _
        "LPR3|100|stop", _
        "LPR2|100|stop", _
        "LPR6|100|(color)", _
        "LPR5|100|(color)", _
        "LPR4|100|(color)", _
        "LMR2|100|stop", _
        "LMR1|100|stop", _
        "LCR2|100|stop", _
        "LRI|100|(color)", _
        "LLO|100|stop", _
        "LSL|100|(color)" _
        )
    End With
    With .AddStep(0.23333, Null, Null)
      .Lights = Array( _
        "gi20|100|stop", _
        "gi21|100|(color)", _
        "gi18|100|stop", _
        "gi15|100|1a1a1a", _
        "gi14|100|stop", _
        "gi13|100|(color)", _
        "gi08|100|stop", _
        "gi07|100|eeeeee", _
        "gi06|100|fefefe", _
        "gi05|100|080808", _
        "gi02|100|stop", _
        "gi01|100|(color)", _
        "LPF|100|stop", _
        "LSwC1|100|(color)", _
        "LC1|100|stop", _
        "LC2|100|stop", _
        "LC3|100|stop", _
        "LC4|100|stop", _
        "LC5|100|stop", _
        "LC6|100|stop", _
        "LC8|100|(color)", _
        "LEBR|100|stop", _
        "LMR|100|stop", _
        "LPC5|100|(color)", _
        "LF3|100|stop", _
        "LF2|100|(color)", _
        "LF1|100|(color)", _
        "LM5|100|stop", _
        "LM4|100|stop", _
        "LM3|100|(color)", _
        "LH9|100|(color)", _
        "LH8|100|(color)", _
        "LH7|100|(color)", _
        "LH6|100|(color)", _
        "LH3|100|stop", _
        "LH2|100|stop", _
        "LH1|100|stop", _
        "LPR6|100|stop", _
        "LPR5|100|stop", _
        "LPR4|100|stop", _
        "LRI|100|stop", _
        "LRO|100|(color)", _
        "LSL|100|393939" _
        )
    End With
    With .AddStep(0.26667, Null, Null)
      .Lights = Array( _
        "gi22|100|(color)", _
        "gi19|100|stop", _
        "gi15|100|(color)", _
        "gi13|100|stop", _
        "gi07|100|stop", _
        "gi06|100|(color)", _
        "gi05|100|(color)", _
        "gi01|100|stop", _
        "LSwC3|100|(color)", _
        "LSwC2|100|(color)", _
        "LC7|100|stop", _
        "LC8|100|stop", _
        "LPC5|100|stop", _
        "LPC4|100|stop", _
        "LF2|100|stop", _
        "LF1|100|stop", _
        "LM3|100|stop", _
        "LSA|100|(color)", _
        "LH9|100|stop", _
        "LH8|100|stop", _
        "LH7|100|stop", _
        "LH6|100|stop", _
        "LH5|100|stop", _
        "LH4|100|stop", _
        "LRO|100|stop", _
        "LSR|100|(color)", _
        "LSL|100|stop")
        '"LB4|100|(color)" _
        ')
    End With
    With .AddStep(0.30000, Null, Null)
      .Lights = Array( _
        "gi22|100|stop", _
        "gi21|100|stop", _
        "gi15|100|stop", _
        "gi06|100|stop", _
        "gi05|100|stop", _
        "LSwC3|100|stop", _
        "LSwC1|100|stop", _
        "LSA|100|stop", _
        "LSR|100|stop", _
        "LB3|100|(color)")
        '"LB4|100|stop" _
        ')
    End With
    With .AddStep(0.33333, Null, Null)
      .Lights = Array( _
        "giapron|100|(color)", _
        "gi16|100|(color)", _
        "LSwC2|100|stop", _
        "LB2|100|(color)", _
        "LB3|100|stop" _
        )
    End With
    With .AddStep(0.36667, Null, Null)
      .Lights = Array( _
        "gi17|100|(color)", _
        "gi16|100|7d7d7d", _
        "LB2|100|stop" _
        )
    End With
    With .AddStep(0.40000, Null, Null)
      .Lights = Array( _
        "giapron|100|stop", _
        "gi16|100|stop" _
        )
    End With
    With .AddStep(0.43333, Null, Null)
      .Lights = Array( _
        "gi17|100|stop" _
        )
    End With
    With .AddStep(0.46667, Null, Null)
      With .DOFEvent("13")
        .Action = "DOF_OFF"
      End With
    End With
  End With



  With CreateGlfShow("meteor2_explodes")
    With .AddStep(0.02, Null, Null)
        With .Shows("flash_color")
            .Key = "key_DOF10"
            .Speed = 20
            .Loops = 9
            With .Tokens()
                .Add "color", GIColor3000k
                .Add "lights", "LBG10"
            End With
        End With
    End With
    With .AddStep(0.03333, Null, Null)
      With .DOFEvent("10")
        .Action = "DOF_ON"
      End With
      .Lights = Array( _
        "LS2|100|(color)", _
        "LW3|100|(color)" _
        )
    End With
    With .AddStep(0.06667, Null, Null)
      .Lights = Array( _
        "LS2|100|stop", _
        "LW3|100|stop", _
        "LW1|100|(color)", _
        "LTW2|100|(color)", _
        "LTW1|100|(color)", _
        "LB1|100|(color)" _
        )
    End With
    With .AddStep(0.10000, Null, Null)
      .Lights = Array( _
        "gi11|100|(color)", _
        "LW9|100|(color)", _
        "LW1|100|stop", _
        "LPC3|100|(color)", _
        "LTW2|100|stop", _
        "LTW1|100|stop", _
        "LCC1|100|(color)", _
        "LMet4|100|(color)", _
        "LM2|100|(color)", _
        "LM1|100|(color)", _
        "LB1|100|stop" _
        )
    End With
    With .AddStep(0.13333, Null, Null)
      .Lights = Array( _
        "gi12|100|(color)", _
        "gi11|100|stop", _
        "LX|100|(color)", _
        "LS1|100|(color)", _
        "LS6|100|(color)", _
        "LWiz|100|(color)", _
        "LW9|100|stop", _
        "LMLR|100|(color)", _
        "LSC1|100|(color)", _
        "LPC3|100|stop", _
        "LPC2|100|b2b2b2", _
        "LPC1|100|(color)", _
        "LCC1|100|stop", _
        "LMet4|100|stop", _
        "LM2|100|stop", _
        "LM1|100|stop" _
        )
    End With
    With .AddStep(0.16667, Null, Null)
      .Lights = Array( _
        "gi20|100|(color)", _
        "gi12|100|stop", _
        "LPF|100|(color)", _
        "LX|100|stop", _
        "LS1|100|stop", _
        "LS6|100|stop", _
        "LCWiz|100|(color)", _
        "LLWiz|100|(color)", _
        "LWiz|100|stop", _
        "LMLR|100|stop", _
        "LMR|100|(color)", _
        "LSC3|100|(color)", _
        "LSC2|100|(color)", _
        "LSC1|100|stop", _
        "LPC2|100|stop", _
        "LPC1|100|stop", _
        "LM5|100|(color)", _
        "LM4|100|(color)" _
        )
    End With
    With .AddStep(0.20000, Null, Null)
      .Lights = Array( _
        "gi20|100|stop", _
        "gi19|100|(color)", _
        "gi18|100|(color)", _
        "gi14|100|(color)", _
        "gi13|100|(color)", _
        "gi10|100|(color)", _
        "LPF|100|stop", _
        "LCWiz|100|stop", _
        "LLWiz|100|stop", _
        "LMR|100|stop", _
        "LPC5|100|(color)", _
        "LPC4|100|(color)", _
        "LSC3|100|stop", _
        "LSC2|100|stop", _
        "LF3|100|(color)", _
        "LF2|100|(color)", _
        "LM5|100|stop", _
        "LM4|100|stop", _
        "LM3|100|(color)" _
        )
    End With
    With .AddStep(0.23333, Null, Null)
      .Lights = Array( _
        "gi22|100|(color)", _
        "gi21|100|(color)", _
        "gi19|100|stop", _
        "gi18|100|stop", _
        "gi15|100|(color)", _
        "gi14|100|stop", _
        "gi13|100|stop", _
        "gi10|100|stop", _
        "gi04|100|(color)", _
        "LSwC3|100|(color)", _
        "LSwC1|100|(color)", _
        "LPC5|100|stop", _
        "LPC4|100|stop", _
        "LF3|100|stop", _
        "LF2|100|stop", _
        "LF1|100|(color)", _
        "LM3|100|stop", _
        "LPR1|100|(color)", _
        "LMR1|100|(color)", _
        "LCR2|100|(color)", _
        "LCR1|100|(color)", _
        "LLI|100|(color)", _
        "LLO|100|(color)")
        '"LB4|100|(color)" _
        ')
    End With
    With .AddStep(0.26667, Null, Null)
      .Lights = Array( _
        "gi22|100|stop", _
        "gi21|100|stop", _
        "gi15|100|030303", _
        "gi08|100|(color)", _
        "gi04|100|6d6d6d", _
        "gi03|100|(color)", _
        "LSwC3|100|stop", _
        "LSwC2|100|(color)", _
        "LSwC1|100|stop", _
        "LF1|100|stop", _
        "LPR1|100|stop", _
        "LPR3|100|(color)", _
        "LPR2|100|(color)", _
        "LPR6|100|dbdbdb", _
        "LPR5|100|(color)", _
        "LPR4|100|(color)", _
        "LMR2|100|(color)", _
        "LMR1|100|stop", _
        "LCR1|100|stop", _
        "LRI|100|(color)", _
        "LLI|100|stop", _
        "LB3|100|(color)" _
        )
    End With
    With .AddStep(0.30000, Null, Null)
      .Lights = Array( _
        "gi15|100|stop", _
        "gi08|100|stop", _
        "gi07|100|(color)", _
        "gi04|100|stop", _
        "gi03|100|stop", _
        "gi02|100|(color)", _
        "LSwC2|100|stop", _
        "LC1|100|(color)", _
        "LC2|100|(color)", _
        "LC3|100|(color)", _
        "LC4|100|(color)", _
        "LC5|100|(color)", _
        "LC6|100|(color)", _
        "LC7|100|(color)", _
        "LC8|100|(color)", _
        "LH8|100|(color)", _
        "LH7|100|(color)", _
        "LH6|100|(color)", _
        "LH5|100|(color)", _
        "LH4|100|(color)", _
        "LH3|100|(color)", _
        "LH2|100|(color)", _
        "LH1|100|(color)", _
        "LPR3|100|stop", _
        "LPR2|100|stop", _
        "LPR6|100|(color)", _
        "LMR2|100|stop", _
        "LCR2|100|stop", _
        "LRI|100|stop", _
        "LRO|100|(color)", _
        "LLO|100|stop", _
        "LSL|100|(color)", _
        "LB2|100|272727")
        '"LB4|100|stop" _
        ')
    End With
    With .AddStep(0.33333, Null, Null)
      .Lights = Array( _
        "gi16|100|(color)", _
        "gi07|100|stop", _
        "gi06|100|(color)", _
        "gi05|100|(color)", _
        "gi01|100|(color)", _
        "LC1|100|stop", _
        "LC2|100|stop", _
        "LC3|100|stop", _
        "LC4|100|stop", _
        "LC5|100|a0a0a0", _
        "LH9|100|(color)", _
        "LPR6|100|stop", _
        "LPR5|100|stop", _
        "LPR4|100|stop", _
        "LRO|100|stop", _
        "LSR|100|(color)", _
        "LB2|100|(color)", _
        "LB3|100|stop" _
        )
    End With
    With .AddStep(0.36667, Null, Null)
      .Lights = Array( _
        "gi17|100|(color)", _
        "gi02|100|stop", _
        "gi01|100|stop", _
        "LC5|100|stop", _
        "LC6|100|stop", _
        "LC7|100|stop", _
        "LC8|100|stop", _
        "LSA|100|(color)", _
        "LH9|100|stop", _
        "LH8|100|stop", _
        "LH7|100|stop", _
        "LH6|100|stop", _
        "LH5|100|stop", _
        "LH4|100|stop", _
        "LH3|100|stop", _
        "LH2|100|stop", _
        "LH1|100|stop", _
        "LSL|100|stop", _
        "LB2|100|stop" _
        )
    End With
    With .AddStep(0.40000, Null, Null)
      .Lights = Array( _
        "gi16|100|stop", _
        "gi06|100|stop", _
        "gi05|100|stop", _
        "LSR|100|stop" _
        )
    End With
    With .AddStep(0.43333, Null, Null)
      .Lights = Array( _
        "gi17|100|stop", _
        "LSA|100|stop" _
        )
    End With
    With .AddStep(0.46667, Null, Null)
      With .DOFEvent("10")
        .Action = "DOF_OFF"
      End With
      .Lights = Array( _
        "giapron|100|(color)" _
        )
    End With
  End With



  With CreateGlfShow("meteor3_explodes")
    With .AddStep(0.02, Null, Null)
        With .Shows("flash_color")
            .Key = "key_DOF15"
            .Speed = 20
            .Loops = 9
            With .Tokens()
                .Add "color", GIColor3000k
                .Add "lights", "LBG15"
            End With
        End With
    End With
    With .AddStep(0.03333, Null, Null)
      With .DOFEvent("15")
        .Action = "DOF_ON"
      End With
      .Lights = Array( _
        "LW7|100|(color)", _
        "LW4|100|(color)", _
        "LMet4|100|(color)" _
        )
    End With
    With .AddStep(0.06667, Null, Null)
      .Lights = Array( _
        "LW8|100|fcfcfc", _
        "LW7|100|stop", _
        "LW4|100|stop", _
        "LSC1|100|(color)", _
        "LMet4|100|stop" _
        )
    End With
    With .AddStep(0.10000, Null, Null)
      .Lights = Array( _
        "LS4|100|(color)", _
        "LW8|100|stop", _
        "LW1|100|(color)", _
        "LSC3|100|(color)", _
        "LSC1|100|stop" _
        )
    End With
    With .AddStep(0.13333, Null, Null)
      .Lights = Array( _
        "gi19|100|(color)", _
        "gi10|100|c5c5c5", _
        "LX|100|(color)", _
        "LS4|100|stop", _
        "LLWiz|100|(color)", _
        "LWiz|100|(color)", _
        "LW1|100|stop", _
        "LEBR|100|(color)", _
        "LSC3|100|stop", _
        "LF3|100|(color)", _
        "LPC3|100|(color)", _
        "LTW2|100|(color)", _
        "LTW1|100|(color)", _
        "LCC3|100|(color)", _
        "LM2|100|(color)", _
        "LM1|100|(color)", _
        "LB1|100|(color)" _
        )
    End With
    With .AddStep(0.16667, Null, Null)
      .Lights = Array( _
        "gi19|100|stop", _
        "gi13|100|(color)", _
        "gi11|100|(color)", _
        "gi10|100|stop", _
        "LX|100|stop", _
        "LS1|100|(color)", _
        "LCWiz|100|(color)", _
        "LLWiz|100|stop", _
        "LWiz|100|stop", _
        "LEBR|100|stop", _
        "LMR|100|(color)", _
        "LF3|100|stop", _
        "LF2|100|(color)", _
        "LF1|100|e5e5e5", _
        "LPC3|100|stop", _
        "LPC2|100|(color)", _
        "LPC1|100|(color)", _
        "LTW2|100|stop", _
        "LTW1|100|stop", _
        "LCC3|100|stop", _
        "LCC2|100|(color)", _
        "LCC1|100|(color)", _
        "LM2|100|stop", _
        "LM1|100|stop", _
        "LB1|100|stop" _
        )
    End With
    With .AddStep(0.20000, Null, Null)
      .Lights = Array( _
        "gi15|100|(color)", _
        "gi13|100|stop", _
        "gi12|100|(color)", _
        "gi11|100|stop", _
        "gi09|100|(color)", _
        "LPF|100|(color)", _
        "LS1|100|stop", _
        "LCWiz|100|stop", _
        "LMR|100|stop", _
        "LPC5|100|(color)", _
        "LF2|100|stop", _
        "LF1|100|f4f4f4", _
        "LPC2|100|stop", _
        "LPC1|100|stop", _
        "LCC2|100|stop", _
        "LCC1|100|stop", _
        "LM4|100|(color)", _
        "LM3|100|(color)", _
        "LPR1|100|(color)", _
        "LMR1|100|(color)", _
        "LCR1|100|656565", _
        "LRI|100|(color)" _
        )
    End With
    With .AddStep(0.23333, Null, Null)
      .Lights = Array( _
        "gi22|100|(color)", _
        "gi20|100|(color)", _
        "gi15|100|stop", _
        "gi12|100|stop", _
        "gi09|100|stop", _
        "gi08|100|(color)", _
        "gi07|100|(color)", _
        "gi04|100|(color)", _
        "LPF|100|stop", _
        "LSwC3|100|(color)", _
        "LPC4|100|(color)", _
        "LF1|100|stop", _
        "LM4|100|stop", _
        "LPR3|100|(color)", _
        "LPR2|100|(color)", _
        "LMR2|100|(color)", _
        "LMR1|100|stop", _
        "LCR2|100|(color)", _
        "LCR1|100|(color)", _
        "LRI|100|stop", _
        "LRO|100|(color)", _
        "LLI|100|(color)")
        '"LB4|100|(color)" _
        ')
    End With
    With .AddStep(0.26667, Null, Null)
      .Lights = Array( _
        "gi20|100|stop", _
        "gi18|100|(color)", _
        "gi08|100|stop", _
        "gi03|100|(color)", _
        "LSwC2|100|242424", _
        "LSwC1|100|(color)", _
        "LC2|100|(color)", _
        "LC3|100|(color)", _
        "LC4|100|(color)", _
        "LC5|100|(color)", _
        "LC6|100|(color)", _
        "LC7|100|(color)", _
        "LC8|100|(color)", _
        "LPC5|100|stop", _
        "LPC4|100|stop", _
        "LM3|100|stop", _
        "LPR1|100|stop", _
        "LPR3|100|stop", _
        "LPR2|100|stop", _
        "LPR6|100|(color)", _
        "LPR5|100|(color)", _
        "LPR4|100|(color)", _
        "LMR2|100|stop", _
        "LCR2|100|stop", _
        "LCR1|100|stop", _
        "LRO|100|stop", _
        "LLO|100|(color)")
        '"LB4|100|stop" _
        ')
    End With
    With .AddStep(0.30000, Null, Null)
      .Lights = Array( _
        "gi22|100|stop", _
        "gi21|100|(color)", _
        "gi18|100|stop", _
        "gi07|100|stop", _
        "gi06|100|(color)", _
        "gi05|100|(color)", _
        "gi04|100|stop", _
        "gi02|100|(color)", _
        "LSwC3|100|stop", _
        "LSwC2|100|(color)", _
        "LSwC1|100|stop", _
        "LC1|100|(color)", _
        "LH9|100|(color)", _
        "LH8|100|(color)", _
        "LH7|100|(color)", _
        "LH6|100|(color)", _
        "LH5|100|(color)", _
        "LH4|100|(color)", _
        "LH3|100|(color)", _
        "LH2|100|(color)", _
        "LH1|100|(color)", _
        "LPR6|100|stop", _
        "LPR5|100|stop", _
        "LPR4|100|stop", _
        "LLI|100|stop", _
        "LSR|100|(color)", _
        "LB2|100|(color)", _
        "LB3|100|(color)" _
        )
    End With
    With .AddStep(0.33333, Null, Null)
      .Lights = Array( _
        "gi21|100|stop", _
        "gi06|100|stop", _
        "gi03|100|stop", _
        "gi01|100|(color)", _
        "LSwC2|100|stop", _
        "LC1|100|stop", _
        "LC2|100|stop", _
        "LC3|100|stop", _
        "LC4|100|stop", _
        "LC5|100|stop", _
        "LC6|100|stop", _
        "LC7|100|stop", _
        "LC8|100|stop", _
        "LSA|100|(color)", _
        "LH9|100|stop", _
        "LH8|100|stop", _
        "LH7|100|stop", _
        "LH6|100|stop", _
        "LH5|100|stop", _
        "LH4|100|stop", _
        "LH3|100|stop", _
        "LH2|100|161616", _
        "LLO|100|stop", _
        "LSR|100|stop", _
        "LSL|100|(color)", _
        "LB3|100|stop" _
        )
    End With
    With .AddStep(0.36667, Null, Null)
      .Lights = Array( _
        "gi17|100|(color)", _
        "gi16|100|(color)", _
        "gi05|100|stop", _
        "gi02|100|stop", _
        "gi01|100|stop", _
        "LH2|100|stop", _
        "LH1|100|stop", _
        "LB2|100|stop" _
        )
    End With
    With .AddStep(0.40000, Null, Null)
      .Lights = Array( _
        "LSA|100|stop", _
        "LSL|100|stop" _
        )
    End With
    With .AddStep(0.43333, Null, Null)
      .Lights = Array( _
        "gi17|100|stop", _
        "giapron|100|(color)", _
        "gi16|100|stop" _
        )
    End With
    With .AddStep(0.46667, Null, Null)
      With .DOFEvent("15")
        .Action = "DOF_OFF"
      End With
    End With
  End With



  With CreateGlfShow("meteor4_explodes")
    With .AddStep(0.02, Null, Null)
        With .Shows("flash_color")
            .Key = "key_DOF11"
            .Speed = 20
            .Loops = 9
            With .Tokens()
                .Add "color", GIColor3000k
                .Add "lights", "LBG11"
            End With
        End With
    End With
    With .AddStep(0.03333, Null, Null)
      With .DOFEvent("11")
        .Action = "DOF_ON"
      End With
      .Lights = Array( _
        "LMet3|100|(color)" _
        )
    End With
    With .AddStep(0.06667, Null, Null)
      .Lights = Array( _
        "gi10|100|(color)", _
        "LLWiz|100|(color)", _
        "LW9|100|(color)", _
        "LW6|100|(color)", _
        "LMet3|100|stop" _
        )
    End With
    With .AddStep(0.10000, Null, Null)
      .Lights = Array( _
        "gi14|100|(color)", _
        "gi10|100|stop", _
        "LS6|100|(color)", _
        "LLWiz|100|stop", _
        "LW9|100|stop", _
        "LW6|100|stop", _
        "LW4|100|(color)", _
        "LMet2|100|(color)" _
        )
    End With
    With .AddStep(0.13333, Null, Null)
      .Lights = Array( _
        "gi14|100|stop", _
        "LS5|100|(color)", _
        "LS6|100|stop", _
        "LW4|100|stop", _
        "LW3|100|(color)", _
        "LW2|100|(color)", _
        "LMet2|100|stop", _
        "LRI|100|(color)" _
        )
    End With
    With .AddStep(0.16667, Null, Null)
      .Lights = Array( _
        "gi19|100|191919", _
        "gi08|100|(color)", _
        "LS5|100|stop", _
        "LS1|100|(color)", _
        "LS2|100|(color)", _
        "LS4|100|(color)", _
        "LW3|100|stop", _
        "LW2|100|stop", _
        "LW1|100|(color)", _
        "LMLR|100|(color)", _
        "LF3|100|(color)", _
        "LM5|100|(color)", _
        "LM1|100|(color)", _
        "LPR1|100|(color)", _
        "LMR2|100|(color)", _
        "LRI|100|stop", _
        "LRO|100|(color)", _
        "LB1|100|(color)" _
        )
    End With
    With .AddStep(0.20000, Null, Null)
      .Lights = Array( _
        "gi19|100|stop", _
        "gi15|100|1d1d1d", _
        "gi13|100|(color)", _
        "gi09|100|(color)", _
        "gi08|100|stop", _
        "gi07|100|(color)", _
        "LX|100|(color)", _
        "LS1|100|stop", _
        "LS2|100|stop", _
        "LS4|100|stop", _
        "LW1|100|stop", _
        "LMLR|100|stop", _
        "LEBR|100|(color)", _
        "LF3|100|stop", _
        "LF2|100|(color)", _
        "LF1|100|(color)", _
        "LPC3|100|(color)", _
        "LTW2|100|(color)", _
        "LTW1|100|(color)", _
        "LCC3|100|(color)", _
        "LCC2|100|(color)", _
        "LM5|100|stop", _
        "LM2|100|(color)", _
        "LM1|100|stop", _
        "LPR1|100|stop", _
        "LPR3|100|(color)", _
        "LPR2|100|(color)", _
        "LPR6|100|(color)", _
        "LPR5|100|e8e8e8", _
        "LMR2|100|stop", _
        "LCR2|100|(color)", _
        "LCR1|100|(color)", _
        "LRO|100|stop", _
        "LB1|100|stop" _
        )
    End With
    With .AddStep(0.23333, Null, Null)
      .Lights = Array( _
        "gi15|100|(color)", _
        "gi13|100|stop", _
        "gi11|100|(color)", _
        "gi07|100|stop", _
        "gi06|100|(color)", _
        "gi05|100|(color)", _
        "gi04|100|(color)", _
        "gi03|100|(color)", _
        "LPF|100|dadada", _
        "LX|100|stop", _
        "LC1|100|f4f4f4", _
        "LC2|100|(color)", _
        "LC3|100|(color)", _
        "LC4|100|(color)", _
        "LC5|100|(color)", _
        "LC6|100|(color)", _
        "LC7|100|(color)", _
        "LC8|100|(color)", _
        "LEBR|100|stop", _
        "LMR|100|(color)", _
        "LF2|100|stop", _
        "LPC3|100|stop", _
        "LPC2|100|(color)", _
        "LPC1|100|(color)", _
        "LTW2|100|stop", _
        "LTW1|100|stop", _
        "LCC3|100|stop", _
        "LCC1|100|(color)", _
        "LM4|100|(color)", _
        "LM2|100|stop", _
        "LH9|100|(color)", _
        "LH8|100|(color)", _
        "LH7|100|(color)", _
        "LH6|100|(color)", _
        "LH5|100|(color)", _
        "LH4|100|(color)", _
        "LPR3|100|stop", _
        "LPR2|100|stop", _
        "LPR6|100|stop", _
        "LPR5|100|(color)", _
        "LPR4|100|(color)", _
        "LCR2|100|stop", _
        "LCR1|100|stop", _
        "LLI|100|(color)", _
        "LSR|100|(color)" _
        )
    End With
    With .AddStep(0.26667, Null, Null)
      .Lights = Array( _
        "gi15|100|stop", _
        "gi12|100|(color)", _
        "gi11|100|stop", _
        "gi09|100|stop", _
        "gi06|100|stop", _
        "gi04|100|stop", _
        "LPF|100|(color)", _
        "LC1|100|(color)", _
        "LC3|100|stop", _
        "LC4|100|stop", _
        "LC5|100|stop", _
        "LC6|100|stop", _
        "LC7|100|stop", _
        "LC8|100|stop", _
        "LMR|100|stop", _
        "LPC5|100|(color)", _
        "LPC4|100|c7c7c7", _
        "LF1|100|stop", _
        "LPC2|100|stop", _
        "LCC2|100|stop", _
        "LCC1|100|stop", _
        "LM3|100|(color)", _
        "LH9|100|stop", _
        "LH8|100|stop", _
        "LH7|100|stop", _
        "LH6|100|7f7f7f", _
        "LH3|100|(color)", _
        "LH2|100|(color)", _
        "LH1|100|(color)", _
        "LPR5|100|stop", _
        "LPR4|100|stop", _
        "LLI|100|stop", _
        "LLO|100|(color)", _
        "LSR|100|stop")
        '"LB4|100|(color)" _
        ')
    End With
    With .AddStep(0.30000, Null, Null)
      .Lights = Array( _
        "gi22|100|(color)", _
        "gi20|100|(color)", _
        "gi18|100|fefefe", _
        "gi12|100|stop", _
        "gi05|100|stop", _
        "gi03|100|stop", _
        "gi02|100|(color)", _
        "gi01|100|(color)", _
        "LPF|100|stop", _
        "LSwC3|100|(color)", _
        "LC1|100|stop", _
        "LC2|100|stop", _
        "LPC4|100|(color)", _
        "LPC1|100|stop", _
        "LM4|100|stop", _
        "LSA|100|(color)", _
        "LH6|100|stop", _
        "LH5|100|stop", _
        "LH4|100|stop", _
        "LH3|100|stop", _
        "LH2|100|stop", _
        "LH1|100|stop", _
        "LLO|100|stop", _
        "LSL|100|(color)" _
        )
    End With
    With .AddStep(0.33333, Null, Null)
      .Lights = Array( _
        "gi22|100|b7b7b7", _
        "gi20|100|stop", _
        "gi21|100|aaaaaa", _
        "gi18|100|(color)", _
        "gi02|100|stop", _
        "gi01|100|stop", _
        "LSwC2|100|(color)", _
        "LSwC1|100|(color)", _
        "LPC5|100|stop", _
        "LPC4|100|stop", _
        "LM3|100|stop", _
        "LSA|100|stop", _
        "LB2|100|(color)", _
        "LB3|100|(color)")
        '"LB4|100|stop" _
        ')
    End With
    With .AddStep(0.36667, Null, Null)
      .Lights = Array( _
        "gi22|100|stop", _
        "gi21|100|(color)", _
        "gi18|100|stop", _
        "LSwC3|100|stop", _
        "LSwC1|100|stop", _
        "LSL|100|stop" _
        )
    End With
    With .AddStep(0.40000, Null, Null)
      .Lights = Array( _
        "gi17|100|(color)", _
        "giapron|100|(color)", _
        "gi21|100|stop", _
        "LSwC2|100|stop", _
        "LB2|100|stop", _
        "LB3|100|stop" _
        )
    End With
    With .AddStep(0.43333, Null, Null)
      .Lights = Array( _
        "gi16|100|(color)" _
        )
    End With
    With .AddStep(0.46667, Null, Null)
      With .DOFEvent("11")
        .Action = "DOF_OFF"
      End With
      .Lights = Array( _
        "gi17|100|stop", _
        "giapron|100|stop" _
        )
    End With
  End With


End Sub