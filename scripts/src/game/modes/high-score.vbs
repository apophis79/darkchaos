


' High Score Mode.


Sub CreateHighScoreMode

    Dim AZLookup : AZLookup = Array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9")

    With CreateGlfMode("high_score", 120)
        .StartEvents = Array("game_will_end")
        .StopEvents = Array("game_ended")

        Dim i

        With .EventPlayer()
            'inputs
            .Add "s_right_magna_key_active{current_player.hs_input_ready == 1}", Array("text_inputted")
            .Add "s_plunger_key_active{current_player.hs_input_ready == 1}", Array("text_inputted")
            .Add "s_lockbar_key_active{current_player.hs_input_ready == 1}", Array("text_inputted")
            .Add "s_start_active{current_player.hs_input_ready == 1}", Array("text_inputted")
            'final initial inputted
            .Add "text_inputted.1{machine.high_score_initials_chars == 3}", Array("text_input_high_score_complete:{text: machine.high_score_initials}")
            'timer ran out
            .Add "timer_high_score_timeout_complete", Array("text_input_high_score_complete:{text: machine.high_score_initials}")
        End With

        With .Timers("hs_cooldown")
            .TickInterval = 200
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "text_inputted{machine.high_score_initials_chars < 3}"
                .Action = "restart"
            End With
        End With

        With .SoundPlayer
            With .EventName("mode_high_score_started")
                .Key = "key_mus_highscore"
                .Sound = "mus_victory"
            End With
            With .EventName("text_inputted.4")
                .Key = "key_sfx_hs_initial"
                .Sound = "sfx_hs_initial"
            End With
        End With

        With .ShowPlayer()
            With .EventName("mode_high_score_started")
                .Key = "key_hs_show"
                .Show = "rainbow"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "GI"
                End With
            End With
        End With

        With .VariablePlayer()

            With .EventName("s_left_flipper_active.2{current_player.hs_input_ready == 1}")
				With .Variable("high_score_initials_index")
                    .Action = "add_machine"
					.Int = -1
				End With
			End With
            With .EventName("s_right_flipper_active.2{current_player.hs_input_ready == 1}")
				With .Variable("high_score_initials_index")
                    .Action = "add_machine"
					.Int = 1
				End With
			End With  
            
            For i=0 to 35
                With .EventName("text_inputted.3{(((machine.high_score_initials_index Mod 36) + 36) Mod 36) == " & i & "}")
                    With .Variable("high_score_initials")
                        .Action = "set_machine"
                        .String = "machine.high_score_initials & """ & AZLookup(i) & """"
                    End With
                End With
            Next

            With .EventName("high_score_enter_initials") 'reset initials
                With .Variable("high_score_initials")
                    .Action = "set_machine"
                    .String = """"""   
                End With
                With .Variable("high_score_initials_chars")
                    .Action = "set_machine"
                    .Int = 0
                End With
                With .Variable("high_score_initials_index")
                    .Action = "set_machine"
                    .Int = 0
                End With
                With .Variable("hs_input_ready")
                    .Action = "set"
					.Int = 1
				End With
            End With

            With .EventName("text_inputted.2")
                With .Variable("high_score_initials_chars")
                    .Action = "add_machine"
                    .Int = 1
                End With
                With .Variable("high_score_initials_index")
                    .Action = "set_machine"
                    .Int = 0
                End With
                With .Variable("hs_input_ready")
                    .Action = "set"
                    .Int = 0
                End With
            End With

            With .EventName("timer_hs_cooldown_complete")
				With .Variable("hs_input_ready")
                    .Action = "set"
					.Int = 1
				End With
			End With

        End With

        With .Timers("high_score_timeout")
            .TickInterval = 1000
            .StartValue = 60
            .EndValue = 0
            .Direction = "down"
            .StartRunning = False
            With .ControlEvents()
                .EventName = "high_score_enter_initials"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "text_input_high_score_complete.1"
                .Action = "stop"
            End With
        End With

        With .SegmentDisplayPlayer()
            With .EventName("timer_high_score_timeout_tick")
                With .Display("player4")
                    .Text = "{devices.timers.high_score_timeout.ticks:0>2}"
                End With
            End With

            With .EventName("text_input_high_score_complete")
                With .Display("player1")
                    .Text = """"""
                End With
                With .Display("player2")
                    .Text = """"""
                End With
                With .Display("player3")
                    .Text = """"""
                End With
                With .Display("player4")
                    .Text = """"""
                End With
            End With

            With .EventName("high_score_enter_initials{kwargs.player_num==1}")
                With .Display("player1")
                    .Text = """P1 """
                    .Priority = 10000
                End With
            End With
            With .EventName("high_score_enter_initials{kwargs.player_num==2}")
                With .Display("player1")
                    .Text = """P2 """
                    .Priority = 10000
                End With
            End With
            With .EventName("high_score_enter_initials{kwargs.player_num==3}")
                With .Display("player1")
                    .Text = """P3 """
                    .Priority = 10000
                End With
            End With
            With .EventName("high_score_enter_initials{kwargs.player_num==4}")
                With .Display("player1")
                    .Text = """P4 """
                    .Priority = 10000
                End With
            End With

            With .EventName("high_score_enter_initials")
                With .Display("player2")
                    .Text = """INITIALS"""
                    .Priority = 10000
                End With
            End With

            With .EventName("high_score_enter_initials")
                With .Display("player3")
                    .Text = """A"""
                End With
            End With

            
            For i=0 to 35
                With .EventName("s_left_flipper_active.1{(((machine.high_score_initials_index Mod 36) + 36) Mod 36) == " & i & " && current_player.hs_input_ready == 1}")
                    With .Display("player3")
                        .Text = "machine.high_score_initials & """ & AZLookup(i) & """"
                    End With
                End With
                With .EventName("s_right_flipper_active.1{(((machine.high_score_initials_index Mod 36) + 36) Mod 36) == " & i & " && current_player.hs_input_ready == 1}")
                    With .Display("player3")
                        .Text = "machine.high_score_initials & """ & AZLookup(i) & """"
                    End With
                End With
            Next

            With .EventName("text_inputted.1{high_score_initials_chars<3}")
                With .Display("player3")
                    .Text = "machine.high_score_initials & ""A"""
                End With
            End With

                       

        End With



        With .Timers("high_score_award_timeout")
            .TickInterval = 1000
            .StartValue = 5
            .EndValue = 0
            .Direction = "down"
            .StartRunning = False
            With .ControlEvents()
                .EventName = "high_score_award_display.1"
                .Action = "restart"
            End With
        End With

        With .SegmentDisplayPlayer()

            ' With .EventName("timer_high_score_award_timeout_complete")
            '     With .Display("player1")
            '         .Text = """"""
            '     End With
            '     With .Display("player2")
            '         .Text = """"""
            '     End With
            '     With .Display("player3")
            '         .Text = """"""
            '     End With
            '     With .Display("player4")
            '         .Text = """"""
            '     End With
            ' End With

            With .EventName("high_score_award_display{kwargs.position == 1}")
                With .Display("player1")
                    .Text = """  GRAND """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """CHAMPION"""
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """     "" & machine.high_score_initials"
                End With
            End With

            With .EventName("high_score_award_display{kwargs.position == 2}")
                With .Display("player1")
                    .Text = """   HIGH """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """SCORE 1 """
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """     "" & machine.high_score_initials"
                End With
            End With

            With .EventName("high_score_award_display{kwargs.position == 3}")
                With .Display("player1")
                    .Text = """   HIGH """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """SCORE 2 """
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """     "" & machine.high_score_initials"
                End With
            End With

            With .EventName("high_score_award_display{kwargs.position == 4}")
                With .Display("player1")
                    .Text = """   HIGH """
                    .Flashing = "all"
                End With
                With .Display("player2")
                    .Text = """SCORE 3 """
                    .Flashing = "all"
                End With
                With .Display("player3")
                    .Text = """     "" & machine.high_score_initials"
                End With
            End With
        End With
       
       
    End With

End Sub