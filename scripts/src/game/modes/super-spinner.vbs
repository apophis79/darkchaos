

'Super Spinner Mode.


Sub CreateSuperSpinnerMode

    With CreateGlfMode("super_spinner", 700)
        .StartEvents = Array("start_super_spinner","mystery_super_spinner")
        .StopEvents = Array("mode_base_stopping","stop_super_spinner","init_training")
        

        With .EventPlayer()
            'stop after some timer period
            .Add "timer_super_spinner_complete", Array("stop_super_spinner")
        End With

        With .SoundPlayer()
            With .EventName("mode_super_spinner_started")
                .Key = "key_voc_super_spinner"
                .Sound = "voc_super_spinner"
            End With
        End With

        With .Shots("super_spinner")
            .Profile = "super_spinner"
            With .ControlEvents()
                .Events = Array("mode_super_spinner_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("timer_super_spinner_tick{devices.timers.super_spinner.ticks == "&(SuperSpinnerMaxTicks-5)&"}")
                .State = 2
            End With
            .ResetEvents = Array("mode_super_spinner_stopping")
        End With

        With .ShotProfiles("super_spinner")
            With .States("unlit")
                .Show = "off"
                .Key = "key_off_supspin"
                .Priority = 500
                With .Tokens()
                    .Add "lights", "gi21"
                    .Add "color", ProtonColor
                End With
            End With
            With .States("flashing")
                .Show = "flash_color_with_fade"
                .Key = "key_flashing_supspin"
                .Speed = 5
                .Priority = 500
                With .Tokens()
                    .Add "lights", "gi21"
                    .Add "fade", 500
                    .Add "color", ProtonColor
                End With
            End With
            With .States("hurry")
                .Show = "flash_color"
                .Key = "key_hurry_supspin"
                .Speed = 10
                .Priority = 500
                With .Tokens()
                    .Add "lights", "gi21"
                    .Add "color", ProtonColor
                End With
            End With
        End With

        With .Timers("super_spinner")
            .TickInterval = SuperSpinnerTickInterval
            .StartValue = 0
            .EndValue = SuperSpinnerMaxTicks
            With .ControlEvents()
                .EventName = "mode_super_spinner_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_super_spinner_started") 
                With .Variable("spin_multiplier")
                    .Action = "set"
                    .Int = SuperSpinnerMultiplier
                End With
            End With
            With .EventName("mode_super_spinner_stopping") 
                With .Variable("spin_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
		End With

        
        With .SegmentDisplayPlayer()
            With .EventName("mode_super_spinner_started")
                With .Display("player1")
                    .Text = ""
                    .Expire = SuperSpinnerShowLength
                End With
                With .Display("player2")
                    .Text = " SUPER "
                    .Flashing = "all"
                    .Expire = SuperSpinnerShowLength
                End With
                With .Display("player3")
                    .Text = "SPINNER"
                    .Flashing = "all"
                    .Expire = SuperSpinnerShowLength
                End With
                With .Display("player4")
                    .Text = ""
                    .Expire = SuperSpinnerShowLength
                End With
            End With
        End With


    End With

End Sub