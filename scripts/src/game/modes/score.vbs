

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
            With .EventName("score_200") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "200 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_300") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "300 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_330") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "330 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_400") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "400 * current_player.scoring_multiplier"
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
            With .EventName("score_2000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "2000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_3000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "3000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_4000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "4000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_5000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "5000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_8000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "8000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_9000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "9000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_10000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "10000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_15000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "15000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_20000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "20000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_30000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "30000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_m50000")  'negative score
                With .Variable("score")
                    .Action = "add"
                    .Int = "-50000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_50000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "50000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_100000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "100000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_150000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "150000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_200000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "200000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_250000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "250000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_300000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "300000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_400000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "400000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_500000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "500000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_750000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "750000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1000000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1000000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_2000000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "2000000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_3000000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "3000000 * current_player.scoring_multiplier"
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