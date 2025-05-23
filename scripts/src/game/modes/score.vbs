

'Score Mode.

Const MinimumScore = -1000000

Sub CreateScoreMode

    With CreateGlfMode("score", 2000)
        .StartEvents = Array(GLF_GAME_START)
        .StopEvents = Array("game_ended")


        With .EventPlayer
            .Add "score_m100000{current_player.score > "&MinimumScore&"}", Array("apply_score_m100000")  'limit the negative score
            .Add "apply_score_m100000.1{current_player.score < "&MinimumScore&"}", Array("set_minimum_score")  'limit the negative score
        End With


        With .VariablePlayer()

            With .EventName("score_wave_count") 
                With .Variable("score")
                    .Action = "add"
                    .Int = 1
                End With
            End With
            With .EventName("set_minimum_score") 
                With .Variable("score")
                    .Action = "set"
                    .Int = MinimumScore
                End With
            End With
            With .EventName("score_930")  'reserved for spinner
                With .Variable("score")
                    .Action = "add"
                    .Int = "930 * current_player.scoring_multiplier * current_player.spin_multiplier"
                End With
            End With
            With .EventName("score_1000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1300")  'reserved for pop bumpers
                With .Variable("score")
                    .Action = "add"
                    .Int = "1000 * current_player.scoring_multiplier * current_player.pop_multiplier"
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
            With .EventName("score_25000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "25000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_30000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "30000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_40000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "40000 * current_player.scoring_multiplier"
                End With
            End With
            ' With .EventName("apply_score_m50000.2")  'negative score
            '     With .Variable("score")
            '         .Action = "add"
            '         .Int = "-50000 * current_player.scoring_multiplier"
            '     End With
            ' End With
            With .EventName("score_50000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "50000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_60000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "60000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_70000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "70000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_80000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "80000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_90000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "90000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_100000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "100000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("apply_score_m100000.2")  'negative score 
                With .Variable("score")
                    .Action = "add"
                    .Int = "-100000 * current_player.scoring_multiplier"
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
            With .EventName("score_600000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "600000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_700000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "700000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_750000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "750000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_800000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "800000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_900000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "900000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1000000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1000000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1100000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1100000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1200000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1200000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1300000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1300000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1400000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1400000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1500000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1500000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1600000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1600000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1700000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1700000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1800000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1800000 * current_player.scoring_multiplier"
                End With
            End With
            With .EventName("score_1900000") 
                With .Variable("score")
                    .Action = "add"
                    .Int = "1900000 * current_player.scoring_multiplier"
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