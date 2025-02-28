


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
        .StartEvents = Array(GLF_GAME_OVER,"test_post_game")
        .StopEvents = Array("stop_post_game_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_post_game_started", Array("select_message_num")
            .Add "mode_post_game_started{machine.won_game == 0}", Array("play_mus_post_game")
            .Add "mode_post_game_started{machine.won_game == 1}", Array("play_mus_post_game_heavier")
            
            'handle the show
            .Add "timer_post_game_show_started", Array("play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            .Add "timer_post_game_show_tick", Array("play_flasher4_flash_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 4}", Array("play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")

            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 8}", Array("check_loser_message","check_winner_message1","play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 16}", Array("display_last_scores","play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 18}", Array("play_slide_left")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 19}", Array("play_slide_up")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 20}", Array("play_slide_right")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 21}", Array("play_slide_down")
            
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 24}", Array("check_loser_message","check_winner_message2")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 32}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 40}", Array("check_loser_message","check_winner_message3")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 48}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 56}", Array("check_loser_message","check_winner_message4")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 64}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 72}", Array("check_loser_message","check_winner_message5")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 80}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 88}", Array("check_loser_message","check_winner_message6")

            '.Add "timer_post_game_show_complete{machine.won_game == 1}", Array("play_display_flicker_off")

            'handle post game messages
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
            .Add "check_winner_message1{machine.won_game == 1}", Array("display_winner_message1","play_voc_winners_poem1")
            .Add "check_winner_message2{machine.won_game == 1}", Array("display_winner_message2","play_voc_winners_poem2")
            .Add "check_winner_message3{machine.won_game == 1}", Array("display_winner_message3","play_voc_winners_poem3")
            .Add "check_winner_message4{machine.won_game == 1}", Array("display_winner_message4","play_voc_winners_poem4")
            .Add "check_winner_message5{machine.won_game == 1}", Array("display_winner_message5","play_voc_winners_poem5")
            .Add "check_winner_message6{machine.won_game == 1}", Array("display_winner_message6","play_voc_winners_poem6")
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


        With .Timers("post_game_show")
            .TickInterval = 541  'one beat of the song
            .StartValue = 0
            .EndValue = 93
            With .ControlEvents()
                .EventName = "mode_post_game_started"
                .Action = "restart"
            End With
        End With


        With .SoundPlayer() 
            With .EventName("play_mus_post_game")
                .Key = "key_mus_post_game"
                .Sound = "mus_post_game"
            End With
            With .EventName("play_mus_post_game_heavier")
                .Key = "key_mus_post_game_heavier"
                .Sound = "mus_post_game_heavier"
            End With

            With .EventName("play_voc_winners_poem1")
                .Key = "key_voc_winners_poem1"
                .Sound = "voc_winners_poem1"
            End With
            With .EventName("play_voc_winners_poem2")
                .Key = "key_voc_winners_poem2"
                .Sound = "voc_winners_poem2"
            End With
            With .EventName("play_voc_winners_poem3")
                .Key = "key_voc_winners_poem3"
                .Sound = "voc_winners_poem3"
            End With
            With .EventName("play_voc_winners_poem4")
                .Key = "key_voc_winners_poem4"
                .Sound = "voc_winners_poem4"
            End With
            With .EventName("play_voc_winners_poem5")
                .Key = "key_voc_winners_poem5"
                .Sound = "voc_winners_poem5"
            End With
            With .EventName("play_voc_winners_poem6")
                .Key = "key_voc_winners_poem6"
                .Sound = "voc_winners_poem6"
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
                        ' With .Transition()
                        '     .TransitionType = "cover"
                        '     .Direction = "right"
                        '     .Text = "*****"
                        ' End With
                    End With
                    With .Display("player2")
                        .Text = WinnerMessages(x-1)(1)
                        ' With .Transition()
                        '     .TransitionType = "cover"
                        '     .Direction = "right"
                        '     .Text = "*****"
                        ' End With
                    End With
                    With .Display("player3")
                        .Text = WinnerMessages(x-1)(2)
                        ' With .Transition()
                        '     .TransitionType = "cover"
                        '     .Direction = "right"
                        '     .Text = "---*****"
                        ' End With
                    End With
                    With .Display("player4")
                        .Text = WinnerMessages(x-1)(3)
                        ' With .Transition()
                        '     .TransitionType = "cover"
                        '     .Direction = "right"
                        '     .Text = "---*****"
                        ' End With
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


        With .ShowPlayer()

            With .EventName("play_slide_left")   
                .Key = "key_insert_gi_slide_left"
                .Show = "insert_gi_slide_left" 
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_slide_up")   
                .Key = "key_insert_gi_slide_up"
                .Show = "insert_gi_slide_up" 
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_slide_right")   
                .Key = "key_insert_gi_slide_right"
                .Show = "insert_gi_slide_right" 
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 100
                End With
            End With
            With .EventName("play_slide_down")   
                .Key = "key_insert_gi_slide_down"
                .Show = "insert_gi_slide_down" 
                .Speed = 1
                .Loops = 1
                With .Tokens()
                    .Add "color", "ffffff"
                    .Add "intensity", 100
                End With
            End With


            With .EventName("play_asteroid_hit")   
                .Key = "key_asteroid_hit"
                .Show = "asteroid_hit" 
                .Speed = 1
                .Loops = 1
            End With

            'Flasher 1 (right side)
            With .EventName("play_flasher1_flash_red")   
                .Key = "key_flasher1_flash_red"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "ff0500"
                End With
            End With
            With .EventName("play_flasher1_flash_hot")   
                .Key = "key_flasher1_flash_hot"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorHotColor
                End With
            End With
            With .EventName("play_flasher1_flash_3000k")   
                .Key = "key_flasher1_flash_3000k"
                .Show = "flash_color_fadeout" 
                .Speed = 4
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName("play_flasher1_flash_yellow")   
                .Key = "key_flasher1_flash_yellow"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_flasher1_flash_green")   
                .Key = "key_flasher1_flash_green"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "05ff05"
                End With
            End With
            With .EventName("play_flasher1_flash_cyan")   
                .Key = "key_flasher1_flash_cyan"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("play_flasher1_flash_blue")   
                .Key = "key_flasher1_flash_blue"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_flasher1_flash_pruple")   
                .Key = "key_flasher1_flash_pruple"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", ShipSaveColor
                End With
            End With

            'Flasher 2 (left side)
            With .EventName("play_flasher2_flash_red")   
                .Key = "key_flasher2_flash_red"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "ff0500"
                End With
            End With
            With .EventName("play_flasher2_flash_hot")   
                .Key = "key_flasher2_flash_hot"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorHotColor
                End With
            End With
            With .EventName("play_flasher2_flash_3000k")   
                .Key = "key_flasher2_flash_3000k"
                .Show = "flash_color_fadeout" 
                .Speed = 4
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName("play_flasher2_flash_yellow")   
                .Key = "key_flasher2_flash_yellow"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_flasher2_flash_green")   
                .Key = "key_flasher2_flash_green"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "05ff05"
                End With
            End With
            With .EventName("play_flasher2_flash_cyan")   
                .Key = "key_flasher2_flash_cyan"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("play_flasher2_flash_blue")   
                .Key = "key_flasher2_flash_blue"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_flasher2_flash_pruple")   
                .Key = "key_flasher2_flash_pruple"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", ShipSaveColor
                End With
            End With


            'Flasher 3 (center back)
            With .EventName("play_flasher3_flash_hot")   
                .Key = "key_flasher3_flash_hot"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", MeteorHotColor
                End With
            End With

            With .EventName("play_flasher3_flash_3000k")   
                .Key = "key_flasher3_flash_3000k"
                .Show = "flash_color_fadeout" 
                .Speed = 4
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", GIColor3000k
                End With
            End With

            With .EventName("play_flasher3_flash_yellow")   
                .Key = "key_flasher3_flash_yellow"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_flasher3_flash_green")   
                .Key = "key_flasher3_flash_green"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", "05ff05"
                End With
            End With
            With .EventName("play_flasher3_flash_cyan")   
                .Key = "key_flasher3_flash_cyan"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("play_flasher3_flash_blue")   
                .Key = "key_flasher3_flash_blue"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_flasher3_flash_pruple")   
                .Key = "key_flasher3_flash_pruple"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ShipSaveColor
                End With
            End With



            'Flasher 4 (center pf)
            With .EventName("play_flasher4_flash_hot")   
                .Key = "key_flasher4_flash_hot"
                .Show = "flash_color_fadeout" 
                .Speed = 13
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL4"
                    .Add "color", MeteorHotColor
                End With
            End With
            



        End With

    End With

End Sub