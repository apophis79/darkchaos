

Sub CreateClusterBombShows()

With CreateGlfShow("cluster_explodes")
 
  With .AddStep(0.1, Null, Null)
    With .Shows("insert_swap2")
      .Key = "key_cb_xpl_inserts"
      .Speed = 1.5
      .Loops = 3
      .Priority = 10000
      With .Tokens()
          .Add "color1", "ffffff"
          .Add "color2", ClusterBombColor
          .Add "intensity", 100
      End With
    End With
  End With

  With .AddStep(0.10, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi1a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi04"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.11, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi1"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi04"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.14, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi2a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi07"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.15, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi2"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi07"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.19, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi3a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi10"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.2, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi3"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi10"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.21, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi4a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi09"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.22, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi4"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi09"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.24, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi5a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi11"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.25, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi5"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi11"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.52, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi6a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi20"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.53, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi6"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi20"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.54, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi7a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi13"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.55, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi7"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi13"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.92, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi8a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi03"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.93, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi8"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi03"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(0.95, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi9a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi08"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(0.96, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi9"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi08"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(1.38, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi10a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi19"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(1.39, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi10"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi19"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(1.40, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi11a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi02"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(1.41, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi11"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi02"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(2.49, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi12a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi12"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(2.5, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi12"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi12"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(2.54, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi13a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi05"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(2.55, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi13"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi05"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(3.49, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi14a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi22"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(3.5, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi14"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi22"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

  With .AddStep(3.54, Null, Null)
    With .Shows("flash_color")
      .Key = "key_cb_xpl_gi15a"
      .Speed = 15
      .Loops = 2
      .Priority = 10010
      With .Tokens()
          .Add "lights", "gi20"
          .Add "color", "ffffff"
      End With
    End With
  End With
  With .AddStep(3.55, Null, Null)
    With .Shows("flash_color_fadeout")
      .Key = "key_cb_xpl_gi15"
      .Speed = 4
      .Loops = 0
      .Priority = 10000
      With .Tokens()
          .Add "lights", "gi20"
          .Add "color", ClusterBombColor
      End With
    End With
  End With

End With


With CreateGlfShow("cluster_bomb_acquired")
  With .AddStep(0.00000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.03333, Null, Null)
  End With
  With .AddStep(0.06667, Null, Null)
  End With
  With .AddStep(0.10000, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|dadada" _
      )
  End With
  With .AddStep(0.13333, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.16667, Null, Null)
  End With
  With .AddStep(0.20000, Null, Null)
  End With
  With .AddStep(0.23333, Null, Null)
  End With
  With .AddStep(0.26667, Null, Null)
  End With
  With .AddStep(0.30000, Null, Null)
    .Lights = Array( _
      "gi17|(intensity)|000000", _
      "LSwC2|(intensity)|060606" _
      )
  End With
  With .AddStep(0.33333, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.36667, Null, Null)
  End With
  With .AddStep(0.40000, Null, Null)
    .Lights = Array( _
      "gi16|(intensity)|000000", _
      "LSwC3|(intensity)|6b6b6b" _
      )
  End With
  With .AddStep(0.43333, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|(color)", _
      "gi21|(intensity)|(color)", _
      "LSwC3|(intensity)|(color)", _
      "LSwC1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.46667, Null, Null)
  End With
  With .AddStep(0.50000, Null, Null)
  End With
  With .AddStep(0.53333, Null, Null)
    .Lights = Array( _
      "LPC5|(intensity)|fefefe" _
      )
  End With
  With .AddStep(0.56667, Null, Null)
    .Lights = Array( _
      "LSwC2|(intensity)|aeaeae", _
      "LPC5|(intensity)|(color)", _
      "LPC4|(intensity)|(color)", _
      "LM3|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.60000, Null, Null)
    .Lights = Array( _
      "gi15|(intensity)|(color)", _
      "LSwC2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.63333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|(color)", _
      "gi18|(intensity)|(color)", _
      "LPF|(intensity)|fcfcfc", _
      "LF1|(intensity)|(color)", _
      "LM4|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.66667, Null, Null)
    .Lights = Array( _
      "gi22|(intensity)|000000", _
      "gi21|(intensity)|000000", _
      "gi13|(intensity)|(color)", _
      "LPF|(intensity)|(color)", _
      "LSwC3|(intensity)|000000", _
      "LSwC1|(intensity)|000000", _
      "LMR|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.70000, Null, Null)
    .Lights = Array( _
      "LF2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.73333, Null, Null)
    .Lights = Array( _
      "LEBR|(intensity)|(color)", _
      "LPC1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.76667, Null, Null)
    .Lights = Array( _
      "LPC5|(intensity)|000000", _
      "LF3|(intensity)|(color)", _
      "LPC2|(intensity)|2f2f2f" _
      )
  End With
  With .AddStep(0.80000, Null, Null)
    .Lights = Array( _
      "LX|(intensity)|fefefe", _
      "LPC4|(intensity)|000000", _
      "LPC2|(intensity)|(color)", _
      "LM3|(intensity)|000000" _
      )
  End With
  With .AddStep(0.83333, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|fefefe", _
      "gi19|(intensity)|(color)", _
      "gi15|(intensity)|000000", _
      "LX|(intensity)|(color)", _
      "LMLR|(intensity)|(color)", _
      "LF1|(intensity)|010101", _
      "LPC3|(intensity)|(color)", _
      "LM5|(intensity)|(color)", _
      "LM4|(intensity)|000000" _
      )
  End With
  With .AddStep(0.86667, Null, Null)
    .Lights = Array( _
      "gi20|(intensity)|000000", _
      "gi18|(intensity)|000000", _
      "gi13|(intensity)|000000", _
      "gi12|(intensity)|(color)", _
      "LPF|(intensity)|000000", _
      "LMR|(intensity)|fbfbfb", _
      "LF1|(intensity)|000000", _
      "LM2|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.90000, Null, Null)
    .Lights = Array( _
      "LS5|(intensity)|fefefe", _
      "LMR|(intensity)|000000", _
      "LF2|(intensity)|000000" _
      )
  End With
  With .AddStep(0.93333, Null, Null)
    .Lights = Array( _
      "LS5|(intensity)|(color)", _
      "LS4|(intensity)|(color)", _
      "LW1|(intensity)|(color)", _
      "LEBR|(intensity)|000000", _
      "LPC1|(intensity)|000000", _
      "LCC1|(intensity)|(color)" _
      )
  End With
  With .AddStep(0.96667, Null, Null)
    .Lights = Array( _
      "LF3|(intensity)|000000", _
      "LPC2|(intensity)|000000", _
      "LTW2|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.00000, Null, Null)
    .Lights = Array( _
      "gi19|(intensity)|000000", _
      "gi14|(intensity)|fcfcfc", _
      "LX|(intensity)|000000", _
      "LS6|(intensity)|(color)", _
      "LW2|(intensity)|c7c7c7", _
      "LMLR|(intensity)|000000", _
      "LTW1|(intensity)|(color)", _
      "LCC2|(intensity)|(color)", _
      "LM5|(intensity)|000000" _
      )
  End With
  With .AddStep(1.03333, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|(color)", _
      "LW2|(intensity)|(color)", _
      "LPC3|(intensity)|000000", _
      "LM2|(intensity)|000000" _
      )
  End With
  With .AddStep(1.06667, Null, Null)
    .Lights = Array( _
      "gi12|(intensity)|000000", _
      "LW3|(intensity)|f2f2f2" _
      )
  End With
  With .AddStep(1.10000, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|(color)", _
      "LS5|(intensity)|000000", _
      "LS4|(intensity)|000000", _
      "LW3|(intensity)|(color)", _
      "LW1|(intensity)|c8c8c8", _
      "LCC3|(intensity)|(color)", _
      "LCC1|(intensity)|000000" _
      )
  End With
  With .AddStep(1.13333, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|(color)", _
      "LW1|(intensity)|000000", _
      "LTW2|(intensity)|000000" _
      )
  End With
  With .AddStep(1.16667, Null, Null)
    .Lights = Array( _
      "gi14|(intensity)|000000", _
      "LS6|(intensity)|000000", _
      "LW4|(intensity)|(color)", _
      "LW2|(intensity)|000000", _
      "LTW1|(intensity)|000000", _
      "LCC2|(intensity)|000000" _
      )
  End With
  With .AddStep(1.20000, Null, Null)
    .Lights = Array( _
      "LS2|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.23333, Null, Null)
    .Lights = Array( _
      "gi11|(intensity)|000000", _
      "LW3|(intensity)|000000", _
      "LCC3|(intensity)|000000" _
      )
  End With
  With .AddStep(1.26667, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|(color)", _
      "LW5|(intensity)|(color)", _
      "LSC1|(intensity)|(color)", _
      "LMet2|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.30000, Null, Null)
    .Lights = Array( _
      "LS3|(intensity)|000000", _
      "LW4|(intensity)|000000", _
      "LSC2|(intensity)|3b3b3b", _
      "LMet3|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.33333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|(color)", _
      "LS2|(intensity)|000000", _
      "LSC2|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.36667, Null, Null)
    .Lights = Array( _
      "LW6|(intensity)|(color)", _
      "LSC3|(intensity)|(color)", _
      "LSC1|(intensity)|0d0d0d" _
      )
  End With
  With .AddStep(1.40000, Null, Null)
    .Lights = Array( _
      "gi10|(intensity)|000000", _
      "LW5|(intensity)|000000", _
      "LSC1|(intensity)|000000", _
      "LMet4|(intensity)|(color)", _
      "LMet3|(intensity)|000000", _
      "LMet2|(intensity)|000000" _
      )
  End With
  With .AddStep(1.43333, Null, Null)
    .Lights = Array( _
      "giapron|(intensity)|000000", _
      "LSC2|(intensity)|000000", _
      "LRO|(intensity)|fefefe", _
      "LSR|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.46667, Null, Null)
    .Lights = Array( _
      "LW7|(intensity)|(color)", _
      "LW6|(intensity)|000000", _
      "LSC3|(intensity)|000000", _
      "LMet1|(intensity)|(color)", _
      "LRO|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.50000, Null, Null)
    .Lights = Array( _
      "LMet4|(intensity)|000000" _
      )
  End With
  With .AddStep(1.53333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|(color)", _
      "gi06|(intensity)|(color)", _
      "LM1|(intensity)|(color)", _
      "LRO|(intensity)|000000", _
      "LSR|(intensity)|000000" _
      )
  End With
  With .AddStep(1.56667, Null, Null)
    .Lights = Array( _
      "gi05|(intensity)|(color)", _
      "LW8|(intensity)|(color)", _
      "LW7|(intensity)|000000", _
      "LMet1|(intensity)|000000", _
      "LRI|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.60000, Null, Null)
    .Lights = Array( _
      "gi06|(intensity)|000000", _
      "LM1|(intensity)|000000" _
      )
  End With
  With .AddStep(1.63333, Null, Null)
    .Lights = Array( _
      "gi09|(intensity)|000000", _
      "gi08|(intensity)|(color)", _
      "LS1|(intensity)|(color)", _
      "LW8|(intensity)|000000", _
      "LSA|(intensity)|313131", _
      "LRI|(intensity)|000000" _
      )
  End With
  With .AddStep(1.66667, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|(color)", _
      "gi05|(intensity)|000000", _
      "LLWiz|(intensity)|(color)", _
      "LW9|(intensity)|(color)", _
      "LSA|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.70000, Null, Null)
    .Lights = Array( _
      "gi08|(intensity)|000000", _
      "LS1|(intensity)|000000", _
      "LSA|(intensity)|fefefe", _
      "LH9|(intensity)|(color)", _
      "LSL|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.73333, Null, Null)
    .Lights = Array( _
      "gi07|(intensity)|000000", _
      "LLWiz|(intensity)|000000", _
      "LC8|(intensity)|(color)", _
      "LW9|(intensity)|000000", _
      "LSA|(intensity)|000000", _
      "LH8|(intensity)|(color)", _
      "LLO|(intensity)|(color)", _
      "LSL|(intensity)|f1f1f1" _
      )
  End With
  With .AddStep(1.76667, Null, Null)
    .Lights = Array( _
      "gi02|(intensity)|(color)", _
      "gi01|(intensity)|fefefe", _
      "LC7|(intensity)|(color)", _
      "LWiz|(intensity)|(color)", _
      "LH9|(intensity)|000000", _
      "LH8|(intensity)|ececec", _
      "LH7|(intensity)|(color)", _
      "LSL|(intensity)|000000" _
      )
  End With
  With .AddStep(1.80000, Null, Null)
    .Lights = Array( _
      "gi01|(intensity)|(color)", _
      "LC6|(intensity)|(color)", _
      "LC8|(intensity)|000000", _
      "LWiz|(intensity)|121212", _
      "LH8|(intensity)|000000", _
      "LH7|(intensity)|000000", _
      "LH6|(intensity)|(color)", _
      "LLO|(intensity)|000000" _
      )
  End With
  With .AddStep(1.83333, Null, Null)
    .Lights = Array( _
      "gi04|(intensity)|(color)", _
      "gi03|(intensity)|(color)", _
      "gi02|(intensity)|000000", _
      "gi01|(intensity)|000000", _
      "LCWiz|(intensity)|(color)", _
      "LC1|(intensity)|(color)", _
      "LC2|(intensity)|(color)", _
      "LC3|(intensity)|(color)", _
      "LC4|(intensity)|(color)", _
      "LC5|(intensity)|(color)", _
      "LC6|(intensity)|000000", _
      "LC7|(intensity)|000000", _
      "LWiz|(intensity)|000000", _
      "LH6|(intensity)|000000", _
      "LH5|(intensity)|(color)", _
      "LH4|(intensity)|(color)", _
      "LH3|(intensity)|(color)", _
      "LH2|(intensity)|(color)", _
      "LH1|(intensity)|(color)", _
      "LPR1|(intensity)|(color)", _
      "LPR3|(intensity)|(color)", _
      "LPR2|(intensity)|(color)", _
      "LPR6|(intensity)|(color)", _
      "LPR5|(intensity)|(color)", _
      "LPR4|(intensity)|(color)", _
      "LMR2|(intensity)|(color)", _
      "LMR1|(intensity)|(color)", _
      "LCR2|(intensity)|(color)", _
      "LCR1|(intensity)|(color)", _
      "LLI|(intensity)|(color)" _
      )
  End With
  With .AddStep(1.86667, Null, Null)
    .Lights = Array( _
      "LCWiz|(intensity)|000000", _
      "LC5|(intensity)|000000", _
      "LH5|(intensity)|000000", _
      "LH4|(intensity)|000000", _
      "LPR6|(intensity)|000000", _
      "LMR2|(intensity)|000000", _
      "LMR1|(intensity)|000000", _
      "LLI|(intensity)|000000" _
      )
  End With
  With .AddStep(1.90000, Null, Null)
    .Lights = Array( _
      "LC4|(intensity)|000000", _
      "LH3|(intensity)|000000", _
      "LH2|(intensity)|000000", _
      "LH1|(intensity)|000000" _
      )
  End With
  With .AddStep(1.93333, Null, Null)
    .Lights = Array( _
      "LC1|(intensity)|000000", _
      "LC2|(intensity)|000000", _
      "LC3|(intensity)|000000", _
      "LPR3|(intensity)|000000", _
      "LPR5|(intensity)|000000" _
      )
  End With
  With .AddStep(1.96667, Null, Null)
    .Lights = Array( _
      "gi04|(intensity)|000000", _
      "gi03|(intensity)|000000", _
      "LPR4|(intensity)|000000" _
      )
  End With
End With



End Sub