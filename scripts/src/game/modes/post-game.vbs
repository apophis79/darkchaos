


' Post Game Mode.

Dim LoserMessage1,LoserMessage2,LoserMessage3,LoserMessage4,LoserMessage5,LoserMessage6,LoserMessage7,LoserMessage8,LoserMessage9,LoserMessage10
LoserMessage1 = Array("""YOU""","""FAILED""","""WE ALL""","""DIED""")
LoserMessage2 = Array("""PLAY""","""BETTER""","""NEXT""","""TIME""")
LoserMessage3 = Array("""EARTH""","""DIED""","""THANKS""","""TO YOU""")
LoserMessage4 = Array("""COME ON""","""HOW HARD""","""IS IT""","""REALLY""")
LoserMessage5 = Array("""HIT THE""","""METEORS""","""NEXTTIME""","""PLEASE""")
LoserMessage6 = Array("""OH WOW""","""YOU LOST""","""AGAIN""","""SURPRISE""")
LoserMessage7 = Array("""ITS EASY""","""YOU JUST""","""NEED TO""","""NOT SUCK""")
LoserMessage8 = Array("""PRACTICE""","""PRACTICE""","""PRACTICE""","""PRACTICE""")
LoserMessage9 = Array("""DAMN""","""LUCKILY""","""THIS IS""","""NOT REAL""")
LoserMessage10 = Array("""GAMEOVER""","""MAN""","""WE ALL""","""DEAD NOW""")
Dim LoserMessages
LoserMessages = Array(LoserMessage1,LoserMessage2,LoserMessage3,LoserMessage4,LoserMessage5,LoserMessage6,LoserMessage7,LoserMessage8,LoserMessage9,LoserMessage10)

Dim WinnerMessage1,WinnerMessage2,WinnerMessage3,WinnerMessage4,WinnerMessage5,WinnerMessage6
WinnerMessage1 = Array("""A VILE""","""DARK""","""CHAOS""","""LOOMED""")
WinnerMessage2 = Array("""COSMIC""","""IMPACTS""","""TORE AND""","""BOOMED""")
WinnerMessage3 = Array("""TURMOIL""","""AND FEAR""","""HUMANITY""","""DOOMED""")
WinnerMessage4 = Array("""A HERO""","""ASCENDED""","""INTO THE""","""NIGHT""")
WinnerMessage5 = Array("""A FIERY""","""BATTLE""","""WON THE""","""FIGHT""")
WinnerMessage6 = Array("""SPARKS""","""OF HOPE""","""FLICKER""","""OF LIGHT""")
Dim WinnerMessages
WinnerMessages = Array(WinnerMessage1,WinnerMessage2,WinnerMessage3,WinnerMessage4,WinnerMessage5,WinnerMessage6)


Sub CreatePostGameMode()
    Dim x

    With CreateGlfMode("post_game", 180)
        .StartEvents = Array(GLF_GAME_OVER)
        .StopEvents = Array("stop_post_game_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_post_game_started", Array("play_post_game_show1","play_mus_post_game","select_message_num")
            'handle post game messages
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 5}", Array("check_loser_message","check_winner_message1")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 10}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 15}", Array("check_loser_message","check_winner_message2")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 20}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 25}", Array("check_loser_message","check_winner_message3")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 30}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 35}", Array("check_loser_message","check_winner_message4")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 40}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 45}", Array("check_loser_message","check_winner_message5")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 50}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 55}", Array("check_loser_message","check_winner_message6")

            .Add "check_loser_message{machine.message_num == 1 && machine.won_game == 0}", Array("display_loser_message1")
            .Add "check_loser_message{machine.message_num == 2 && machine.won_game == 0}", Array("display_loser_message2")
            .Add "check_loser_message{machine.message_num == 3 && machine.won_game == 0}", Array("display_loser_message3")
            .Add "check_loser_message{machine.message_num == 4 && machine.won_game == 0}", Array("display_loser_message4")
            .Add "check_loser_message{machine.message_num == 5 && machine.won_game == 0}", Array("display_loser_message5")
            .Add "check_loser_message{machine.message_num == 6 && machine.won_game == 0}", Array("display_loser_message6")
            .Add "check_loser_message{machine.message_num == 7 && machine.won_game == 0}", Array("display_loser_message7")
            .Add "check_loser_message{machine.message_num == 8 && machine.won_game == 0}", Array("display_loser_message8")
            .Add "check_loser_message{machine.message_num == 9 && machine.won_game == 0}", Array("display_loser_message9")
            .Add "check_loser_message{machine.message_num == 10 && machine.won_game == 0}", Array("display_loser_message10")
            .Add "check_winner_message1{machine.won_game == 1}", Array("display_winner_message1")
            .Add "check_winner_message2{machine.won_game == 1}", Array("display_winner_message2")
            .Add "check_winner_message3{machine.won_game == 1}", Array("display_winner_message3")
            .Add "check_winner_message4{machine.won_game == 1}", Array("display_winner_message4")
            .Add "check_winner_message5{machine.won_game == 1}", Array("display_winner_message5")
            .Add "check_winner_message6{machine.won_game == 1}", Array("display_winner_message6")
            'stop post game
            .Add "mus_post_game_stopped", Array("start_attract_mode")
            .Add "start_attract_mode", Array("stop_post_game_mode")
        End With


        With .RandomEventPlayer()
            With .EventName("select_message_num")
                .Add "select_message_1", 1
                .Add "select_message_2", 1
                .Add "select_message_3", 1
                .Add "select_message_4", 1
                .Add "select_message_5", 1
                .Add "select_message_6", 1
                .Add "select_message_7", 1
                .Add "select_message_8", 1
                .Add "select_message_9", 1
                .Add "select_message_10", 1
            End With
        End With


        With .SoundPlayer() 
            With .EventName("play_mus_post_game")
                .Key = "key_mus_post_game"
                .Sound = "mus_post_game"
            End With
        End With

        With .SegmentDisplayPlayer()
            For x = 1 to 10
                With .EventName("display_loser_message"&x)
                    With .Display("player1")
                        .Text = LoserMessages(x-1)(0)
                    End With
                    With .Display("player2")
                        .Text = LoserMessages(x-1)(1)
                    End With
                    With .Display("player3")
                        .Text = LoserMessages(x-1)(2)
                    End With
                    With .Display("player4")
                        .Text = LoserMessages(x-1)(3)
                    End With
                End With
            Next
            For x = 1 to 6
                With .EventName("display_winner_message"&x)
                    With .Display("player1")
                        .Text = WinnerMessages(x-1)(0)
                    End With
                    With .Display("player2")
                        .Text = WinnerMessages(x-1)(1)
                    End With
                    With .Display("player3")
                        .Text = WinnerMessages(x-1)(2)
                    End With
                    With .Display("player4")
                        .Text = WinnerMessages(x-1)(3)
                    End With
                End With
            Next
            With .EventName("display_last_scores")
                With .Display("player1")
                    .Text = "machine.player1_score"
                End With
                With .Display("player2")
                    .Text = "machine.player2_score"
                End With
                With .Display("player3")
                    .Text = "machine.player3_score"
                End With
                With .Display("player4")
                    .Text = "machine.player4_score"
                End With
            End With
        End With


        With .Timers("post_game_show")
            .TickInterval = 800
            .StartValue = 0
            .EndValue = 59
            With .ControlEvents()
                .EventName = "mode_post_game_started"
                .Action = "restart"
            End With
        End With


        With .VariablePlayer()
            With .EventName("select_message_1")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 1
                End With
            End With
            With .EventName("select_message_2")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 2
                End With
            End With
            With .EventName("select_message_3")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 3
                End With
            End With
            With .EventName("select_message_4")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 4
                End With
            End With
            With .EventName("select_message_5")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 5
                End With
            End With
            With .EventName("select_message_6")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 6
                End With
            End With
            With .EventName("select_message_7")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 7
                End With
            End With
            With .EventName("select_message_8")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 8
                End With
            End With
            With .EventName("select_message_9")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 9
                End With
            End With
            With .EventName("select_message_10")
                With .Variable("message_num")
                    .Action = "set_machine"
                    .Int = 10
                End With
            End With
        End With


        ' With .ShowPlayer()
        '     With .EventName("play_post_game_show1")   
        '         .Key = "key_post_game_show1"
        '         .Show = "post_game_show1" 
        '     End With
        ' End With

    End With

End Sub