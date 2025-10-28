

'Moon Shows

Sub CreateMoonShows()


    With CreateGlfShow("moon_launch")

         With .AddStep(0.0, Null, Null)
            With .Shows("insert_gi_spin_right")
                .Key = "key_moon_launch_spin"
                .Speed = 2
                .Loops = 1
                .Priority = 5005
                With .Tokens()
                    .Add "color", MoonColor
                    .Add "intensity", 100
                End With
            End With
        End With

        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash1"
                .Speed = 13
                .Loops = 7
                .Priority = 5015
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi15"
                End With
            End With
        End With

        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash2"
                .Speed = 13
                .Loops = 7
                .Priority = 5015
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi19"
                End With
            End With
        End With

        With .AddStep(0.03, Null, Null)
            With .Shows("flash_color")
                .Key = "key_moon_lanuch_flash3"
                .Speed = 13
                .Loops = 7
                .Priority = 5015
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "lights", "gi14"
                End With
            End With
        End With

    End With


    With CreateGlfShow("moon_missile_acquired")
        With .AddStep(0.03333, Null, Null)
            .Lights = Array( _
            "gi16|(intensity)|e4e4e4" _
            )
        End With
        With .AddStep(0.06667, Null, Null)
            .Lights = Array( _
            "gi17|(intensity)|fefefe", _
            "gi16|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.10000, Null, Null)
            .Lights = Array( _
            "gi17|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.13333, Null, Null)
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
            "LSwC2|(intensity)|0b0b0b" _
            )
        End With
        With .AddStep(0.33333, Null, Null)
            .Lights = Array( _
            "gi16|(intensity)|929292", _
            "LSwC2|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.36667, Null, Null)
            .Lights = Array( _
            "gi17|(intensity)|stop", _
            "gi21|(intensity)|(color)", _
            "gi16|(intensity)|stop" _
            )
        End With
        With .AddStep(0.40000, Null, Null)
            .Lights = Array( _
            "LSwC1|(intensity)|fdfdfd" _
            )
        End With
        With .AddStep(0.43333, Null, Null)
            .Lights = Array( _
            "gi22|(intensity)|0d0d0d", _
            "LSwC3|(intensity)|(color)", _
            "LSwC1|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.46667, Null, Null)
            .Lights = Array( _
            "gi22|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.50000, Null, Null)
        End With
        With .AddStep(0.53333, Null, Null)
            .Lights = Array( _
            "gi18|(intensity)|3f3f3f", _
            "LPC4|(intensity)|ededed" _
            )
        End With
        With .AddStep(0.56667, Null, Null)
            .Lights = Array( _
            "gi20|(intensity)|fbfbfb", _
            "gi18|(intensity)|(color)", _
            "LSwC2|(intensity)|a4a4a4", _
            "LPC5|(intensity)|(color)", _
            "LPC4|(intensity)|(color)", _
            "LM3|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.60000, Null, Null)
            .Lights = Array( _
            "gi20|(intensity)|(color)", _
            "gi21|(intensity)|fefefe", _
            "LSwC2|(intensity)|stop" _
            )
        End With
        With .AddStep(0.63333, Null, Null)
            .Lights = Array( _
            "gi21|(intensity)|stop", _
            "LPF|(intensity)|fcfcfc", _
            "LM4|(intensity)|5a5a5a" _
            )
        End With
        With .AddStep(0.66667, Null, Null)
            .Lights = Array( _
            "LPF|(intensity)|(color)", _
            "LSwC3|(intensity)|f3f3f3", _
            "LSwC1|(intensity)|stop", _
            "LM4|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.70000, Null, Null)
            .Lights = Array( _
            "gi22|(intensity)|stop", _
            "LSwC3|(intensity)|stop", _
            "LMR|(intensity)|(color)", _
            "LPC1|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.73333, Null, Null)
            .Lights = Array( _
            "gi15|(intensity)|(color)", _
            "gi13|(intensity)|(color)", _
            "LF1|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.76667, Null, Null)
            .Lights = Array( _
            "gi18|(intensity)|0c0c0c", _
            "gi12|(intensity)|(color)", _
            "LEBR|(intensity)|(color)", _
            "LPC5|(intensity)|fdfdfd", _
            "LPC4|(intensity)|stop", _
            "LPC2|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.80000, Null, Null)
            .Lights = Array( _
            "gi20|(intensity)|stop", _
            "gi18|(intensity)|stop", _
            "LPC5|(intensity)|stop", _
            "LF2|(intensity)|(color)", _
            "LM3|(intensity)|stop" _
            )
        End With
        With .AddStep(0.83333, Null, Null)
            .Lights = Array( _
            "LX|(intensity)|(color)", _
            "LPC3|(intensity)|(color)", _
            "LCC1|(intensity)|(color)", _
            "LM2|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.86667, Null, Null)
            .Lights = Array( _
            "LPF|(intensity)|stop", _
            "LF3|(intensity)|(color)", _
            "LM4|(intensity)|stop" _
            )
        End With
        With .AddStep(0.90000, Null, Null)
            .Lights = Array( _
            "LMLR|(intensity)|(color)", _
            "LMR|(intensity)|d8d8d8", _
            "LPC1|(intensity)|stop", _
            "LM5|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.93333, Null, Null)
            .Lights = Array( _
            "gi15|(intensity)|stop", _
            "gi13|(intensity)|stop", _
            "LS4|(intensity)|(color)", _
            "LW1|(intensity)|fdfdfd", _
            "LMR|(intensity)|stop", _
            "LF1|(intensity)|stop", _
            "LTW2|(intensity)|(color)", _
            "LTW1|(intensity)|(color)", _
            "LCC2|(intensity)|(color)" _
            )
        End With
        With .AddStep(0.96667, Null, Null)
            .Lights = Array( _
            "gi19|(intensity)|(color)", _
            "gi12|(intensity)|stop", _
            "gi11|(intensity)|(color)", _
            "LS5|(intensity)|(color)", _
            "LW1|(intensity)|(color)", _
            "LEBR|(intensity)|stop", _
            "LPC2|(intensity)|stop" _
            )
        End With
        With .AddStep(1.00000, Null, Null)
            .Lights = Array( _
            "LW2|(intensity)|dddddd", _
            "LF2|(intensity)|stop", _
            "LPC3|(intensity)|fbfbfb", _
            "LCC3|(intensity)|(color)", _
            "LM2|(intensity)|cdcdcd" _
            )
        End With
        With .AddStep(1.03333, Null, Null)
            .Lights = Array( _
            "LX|(intensity)|stop", _
            "LW2|(intensity)|(color)", _
            "LPC3|(intensity)|stop", _
            "LCC1|(intensity)|stop", _
            "LM2|(intensity)|stop" _
            )
        End With
        With .AddStep(1.06667, Null, Null)
            .Lights = Array( _
            "LW3|(intensity)|(color)", _
            "LMLR|(intensity)|stop", _
            "LF3|(intensity)|stop", _
            "LM5|(intensity)|f4f4f4" _
            )
        End With
        With .AddStep(1.10000, Null, Null)
            .Lights = Array( _
            "LS2|(intensity)|(color)", _
            "LS3|(intensity)|(color)", _
            "LS4|(intensity)|stop", _
            "LS6|(intensity)|(color)", _
            "LW1|(intensity)|aaaaaa", _
            "LTW2|(intensity)|stop", _
            "LTW1|(intensity)|stop", _
            "LCC2|(intensity)|stop", _
            "LM5|(intensity)|stop" _
            )
        End With
        With .AddStep(1.13333, Null, Null)
            .Lights = Array( _
            "gi19|(intensity)|stop", _
            "gi11|(intensity)|stop", _
            "LS5|(intensity)|stop", _
            "LW1|(intensity)|stop" _
            )
        End With
        With .AddStep(1.16667, Null, Null)
            .Lights = Array( _
            "gi14|(intensity)|(color)", _
            "LW4|(intensity)|(color)", _
            "LW2|(intensity)|stop", _
            "LCC3|(intensity)|stop" _
            )
        End With
        With .AddStep(1.20000, Null, Null)
        End With
        With .AddStep(1.23333, Null, Null)
            .Lights = Array( _
            "LS2|(intensity)|474747", _
            "LS3|(intensity)|stop", _
            "LS6|(intensity)|f3f3f3", _
            "LW3|(intensity)|stop", _
            "LMet2|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.26667, Null, Null)
            .Lights = Array( _
            "LS2|(intensity)|stop", _
            "LS6|(intensity)|stop", _
            "LW5|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.30000, Null, Null)
            .Lights = Array( _
            "gi14|(intensity)|stop", _
            "LW4|(intensity)|stop" _
            )
        End With
        With .AddStep(1.33333, Null, Null)
            .Lights = Array( _
            "giapron|(intensity)|(color)", _
            "gi09|(intensity)|(color)", _
            "LMet3|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.36667, Null, Null)
            .Lights = Array( _
            "LW6|(intensity)|(color)", _
            "LMet2|(intensity)|stop", _
            "LM1|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.40000, Null, Null)
            .Lights = Array( _
            "LW5|(intensity)|stop", _
            "LSC1|(intensity)|(color)", _
            "LMet1|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.43333, Null, Null)
            .Lights = Array( _
            "giapron|(intensity)|stop", _
            "gi09|(intensity)|stop", _
            "LS1|(intensity)|(color)", _
            "LMet3|(intensity)|stop", _
            "LSL|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.46667, Null, Null)
            .Lights = Array( _
            "gi10|(intensity)|(color)", _
            "LW7|(intensity)|(color)", _
            "LW6|(intensity)|stop", _
            "LSC2|(intensity)|(color)", _
            "LM1|(intensity)|stop", _
            "LLO|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.50000, Null, Null)
            .Lights = Array( _
            "LSC1|(intensity)|stop", _
            "LMet4|(intensity)|(color)", _
            "LMet1|(intensity)|stop" _
            )
        End With
        With .AddStep(1.53333, Null, Null)
            .Lights = Array( _
            "gi02|(intensity)|(color)", _
            "LS1|(intensity)|stop", _
            "LSC3|(intensity)|(color)", _
            "LSL|(intensity)|stop" _
            )
        End With
        With .AddStep(1.56667, Null, Null)
            .Lights = Array( _
            "gi10|(intensity)|stop", _
            "gi01|(intensity)|fdfdfd", _
            "LW8|(intensity)|(color)", _
            "LW7|(intensity)|stop", _
            "LSC2|(intensity)|stop", _
            "LLI|(intensity)|(color)", _
            "LLO|(intensity)|stop" _
            )
        End With
        With .AddStep(1.60000, Null, Null)
            .Lights = Array( _
            "gi02|(intensity)|stop", _
            "gi01|(intensity)|(color)", _
            "LMet4|(intensity)|stop" _
            )
        End With
        With .AddStep(1.63333, Null, Null)
            .Lights = Array( _
            "gi04|(intensity)|(color)", _
            "LW8|(intensity)|stop", _
            "LSC3|(intensity)|stop", _
            "LLI|(intensity)|stop" _
            )
        End With
        With .AddStep(1.66667, Null, Null)
            .Lights = Array( _
            "gi03|(intensity)|(color)", _
            "gi01|(intensity)|stop", _
            "LCWiz|(intensity)|(color)", _
            "LW9|(intensity)|(color)", _
            "LSA|(intensity)|(color)", _
            "LSR|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.70000, Null, Null)
            .Lights = Array( _
            "gi04|(intensity)|stop", _
            "LH1|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.73333, Null, Null)
            .Lights = Array( _
            "gi03|(intensity)|stop", _
            "LCWiz|(intensity)|stop", _
            "LC1|(intensity)|(color)", _
            "LW9|(intensity)|stop", _
            "LSA|(intensity)|stop", _
            "LH2|(intensity)|(color)", _
            "LRO|(intensity)|(color)", _
            "LSR|(intensity)|stop" _
            )
        End With
        With .AddStep(1.76667, Null, Null)
            .Lights = Array( _
            "gi06|(intensity)|(color)", _
            "gi05|(intensity)|(color)", _
            "LC2|(intensity)|(color)", _
            "LWiz|(intensity)|(color)", _
            "LH3|(intensity)|(color)", _
            "LH1|(intensity)|stop", _
            "LRO|(intensity)|stop" _
            )
        End With
        With .AddStep(1.80000, Null, Null)
            .Lights = Array( _
            "gi06|(intensity)|stop", _
            "LC1|(intensity)|stop", _
            "LWiz|(intensity)|stop", _
            "LH4|(intensity)|(color)", _
            "LH2|(intensity)|stop" _
            )
        End With
        With .AddStep(1.83333, Null, Null)
            .Lights = Array( _
            "gi08|(intensity)|(color)", _
            "gi07|(intensity)|(color)", _
            "gi05|(intensity)|stop", _
            "LLWiz|(intensity)|(color)", _
            "LC2|(intensity)|stop", _
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
            "LH4|(intensity)|stop", _
            "LH3|(intensity)|stop", _
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
            "LRI|(intensity)|(color)" _
            )
        End With
        With .AddStep(1.86667, Null, Null)
            .Lights = Array( _
            "LLWiz|(intensity)|stop", _
            "LC3|(intensity)|stop", _
            "LH6|(intensity)|stop", _
            "LH5|(intensity)|stop", _
            "LPR4|(intensity)|stop", _
            "LCR2|(intensity)|stop", _
            "LCR1|(intensity)|stop", _
            "LRI|(intensity)|stop" _
            )
        End With
        With .AddStep(1.90000, Null, Null)
            .Lights = Array( _
            "LC4|(intensity)|stop", _
            "LC5|(intensity)|stop", _
            "LH9|(intensity)|stop", _
            "LH8|(intensity)|stop", _
            "LH7|(intensity)|stop" _
            )
        End With
        With .AddStep(1.93333, Null, Null)
            .Lights = Array( _
            "gi08|(intensity)|stop", _
            "gi07|(intensity)|stop", _
            "LC6|(intensity)|stop", _
            "LC7|(intensity)|stop", _
            "LC8|(intensity)|stop", _
            "LPR2|(intensity)|stop", _
            "LPR5|(intensity)|stop" _
            )
        End With
        With .AddStep(1.96667, Null, Null)
            .Lights = Array( _
            "LPR6|(intensity)|stop" _
            )
        End With
    End With



End Sub


