

'Super Pops Mode.


Sub CreateSuperPopsMode

    With CreateGlfMode("super_pops", 700)
        .StartEvents = Array("start_super_pops","mystery_super_pops")
        .StopEvents = Array("mode_base_stopping","stop_super_pops","init_training")
        

        With .EventPlayer()
            'stop after some timer period
            .Add "timer_super_pops_complete", Array("stop_super_pops")
        End With

        With .SoundPlayer()
            With .EventName("mode_super_pops_started")
                .Key = "key_voc_super_pops"
                .Sound = "voc_super_pop_bumpers"
            End With
        End With

        With .Shots("super_pops")
            .Profile = "super_pops"
            With .ControlEvents()
                .Events = Array("mode_super_pops_started")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("timer_super_pops_tick{devices.timers.super_pops.ticks == "&(SuperPopsMaxTicks-5)&"}")
                .State = 2
            End With
            .ResetEvents = Array("mode_super_pops_stopping")
        End With

        With .ShotProfiles("super_pops")
            With .States("unlit")
                .Show = "off"
                .Key = "key_off_suppop"
                .Priority = 500
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", "555555"
                End With
            End With
            With .States("flashing")
                .Show = "flash_color_with_fade"
                .Key = "key_flashing_suppop"
                .Speed = 2
                .Priority = 500
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "fade", 500
                    .Add "color", "555555"
                End With
            End With
            With .States("hurry")
                .Show = "flash_color"
                .Key = "key_hurry_suppop"
                .Speed = 7
                .Priority = 500
                With .Tokens()
                    .Add "lights", "tBumper"
                    .Add "color", "555555"
                End With
            End With
        End With

        With .Timers("super_pops")
            .TickInterval = SuperPopsTickInterval
            .StartValue = 0
            .EndValue = SuperPopsMaxTicks
            With .ControlEvents()
                .EventName = "mode_super_pops_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_super_pops_started") 
                With .Variable("pop_multiplier")
                    .Action = "set"
                    .Int = SuperPopsMultiplier
                End With
            End With
            With .EventName("mode_super_pops_stopping") 
                With .Variable("pop_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
		End With

        
        With .SegmentDisplayPlayer()
            With .EventName("mode_super_pops_started")
                With .Display("player1")
                    .Text = """"""
                    .Expire = SuperPopsShowLength
                End With
                With .Display("player2")
                    .Text = """ SUPER """
                    .Flashing = "all"
                    .Expire = SuperPopsShowLength
                End With
                With .Display("player3")
                    .Text = """  POPS  """
                    .Flashing = "all"
                    .Expire = SuperPopsShowLength
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = SuperPopsShowLength
                End With
            End With
        End With


    End With

End Sub