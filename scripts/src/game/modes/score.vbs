

'Score Mode.


Sub CreateScoreMode

    With CreateGlfMode("score", 2000)
        .StartEvents = Array(GLF_GAME_START)
        .StopEvents = Array(GLF_GAME_OVER)


        With .VariablePlayer()

            With .EventName("score_wave_count") 
                With .Variable("score")
                    .Action = "add"
                    .Int = 1
                End With
            End With
            With .EventName("score_10") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "10 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_50") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "50 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_100") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "100 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_500") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "500 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_5000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "5000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_10000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "10000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_50000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "50000 * current_player.scoring_multiplier"
                End With
            End With

            'manage bonus multiplier
            With .EventName(GLF_BALL_STARTED) 
                With .Variable("bonus_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
            With .EventName("mystery_double_bonus") 
                With .Variable("bonus_multiplier")
                    .Action = "set"
                    .Int = 2
                End With
            End With

		End With

        
    End With

End Sub