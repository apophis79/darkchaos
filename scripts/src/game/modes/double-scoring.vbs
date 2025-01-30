

'Double Scoring Mode.


Sub CreateDoubleScoringMode

    With CreateGlfMode("double_scoring", 800)
        .StartEvents = Array("start_double_scoring","mystery_double_scoring")
        .StopEvents = Array("ball_ended","stop_double_scoring")
        

        With .EventPlayer()
            'stop double scoring after some timer period
            .Add "timer_double_scoring_complete", Array("stop_double_scoring")
        End With

        ' With .SoundPlayer()
        '     With .EventName("mode_double_scoring_started")
        '         .Sound = "sfx_LDS"
        '     End With
        ' End With

        With .Shots("double_scoring")
            .Profile = "flicker_on"
            With .Tokens()
                .Add "lights", "LDS"
                .Add "color", DoubleScoringColor
            End With
            With .ControlEvents()
                .Events = Array("mode_double_scoring_started")
                .State = 1
            End With
            .ResetEvents = Array("mode_double_scoring_stopping")
        End With

        With .Timers("double_scoring")
            .TickInterval = DoubleScoringTickInterval
            .StartValue = 0
            .EndValue = DoubleScoringMaxTicks
            With .ControlEvents()
                .EventName = "mode_double_scoring_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("mode_double_scoring_started") 
                With .Variable("scoring_multiplier")
                    .Action = "set"
                    .Int = 2
                End With
            End With
            With .EventName("mode_double_scoring_stopping") 
                With .Variable("scoring_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
		End With

        
        With .SegmentDisplayPlayer()
            With .EventName("mode_double_scoring_started")
                With .Display("player1")
                    .Text = """"""
                    .Expire = DoubleScoringShowLength
                End With
                With .Display("player2")
                    .Text = """ DOUBLE """
                    .Flashing = "all"
                    .Expire = DoubleScoringShowLength
                End With
                With .Display("player3")
                    .Text = """SCORING"""
                    .Flashing = "all"
                    .Expire = DoubleScoringShowLength
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = DoubleScoringShowLength
                End With
            End With
        End With


    End With

End Sub