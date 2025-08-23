


' Post Game Mode.

Const NumLoserMessages = 20
Dim LoserMessage1,LoserMessage2,LoserMessage3,LoserMessage4,LoserMessage5,LoserMessage6,LoserMessage7,LoserMessage8,LoserMessage9,LoserMessage10
Dim LoserMessage11,LoserMessage12,LoserMessage13,LoserMessage14,LoserMessage15,LoserMessage16,LoserMessage17,LoserMessage18,LoserMessage19,LoserMessage20
LoserMessage1 = Array("""YOU""","""FAILED""","""WE ALL""","""DIED""")
LoserMessage2 = Array("""PLAY""","""BETTER""","""NEXT""","""TIME""")
LoserMessage3 = Array("""EARTH""","""DIED""","""THANKS""","""TO YOU""")
LoserMessage4 = Array("""COME ON ""","""HOW HARD""","""IS IT""","""REALLY""")
LoserMessage5 = Array("""HIT THE""","""METEORS""","""NEXTTIME""","""PLEASE""")
LoserMessage6 = Array("""OH WOW ""","""YOU LOST""","""AGAIN ""","""SURPRISE""")
LoserMessage7 = Array("""ITS EASY""","""YOU JUST""","""NEED TO ""","""NOT SUCK""")
LoserMessage8 = Array("""PRACTICE""","""PRACTICE""","""PRACTICE""","""PRACTICE""")
LoserMessage9 = Array("""DAMN""","""LUCKILY""","""THIS IS ""","""NOT REAL""")
LoserMessage10 = Array("""GAMEOVER""","""MAN""","""WE ALL ""","""DEAD NOW""")
LoserMessage11 = Array("""MORE""","""BEER""","""MIGHT""","""HELP""")
LoserMessage12 = Array("""UNLUCKY""","""SHOT""","""EARTH-""","""LING""")
LoserMessage13 = Array("""THE""","""DINOS""","""LASTED""","""LONGER""")
LoserMessage14 = Array("""ASTEROID""","""+ ONE""","""HUMANS""","""ZERO""")
LoserMessage15 = Array("""THE ODDS""","""WERE""","""3720""","""TO ONE""")
LoserMessage16 = Array("""ONE""","""GIANT""","""WEEP FOR""","""MANKIND""")
LoserMessage17 = Array("""THE DARK""","""CHAOS""","""GOD IS""","""HAPPY""")
LoserMessage18 = Array("""TRY JUST""","""ONE""","""MORE""","""TIME""")
LoserMessage19 = Array("""YOU ARE""","""LUCKY""","""ITS ON ""","""FREEPLAY""")
LoserMessage20 = Array("""KEEP""","""CALM""","""PLAY""","""PINBALL""")

Dim LoserMessages
LoserMessages = Array(LoserMessage1,LoserMessage2,LoserMessage3,LoserMessage4,LoserMessage5,LoserMessage6,LoserMessage7,LoserMessage8,LoserMessage9,LoserMessage10, _
                      LoserMessage11,LoserMessage12,LoserMessage13,LoserMessage14,LoserMessage15,LoserMessage16,LoserMessage17,LoserMessage18,LoserMessage19,LoserMessage20)

Dim WinnerMessage1,WinnerMessage2,WinnerMessage3,WinnerMessage4,WinnerMessage5,WinnerMessage6
WinnerMessage1 = Array("""A VILE""","""DARK""","""CHAOS""","""LOOMED""")
WinnerMessage2 = Array("""COSMIC""","""IMPACTS""","""TORE AND""","""BOOMED""")
WinnerMessage3 = Array("""TURMOIL ""","""AND FEAR""","""HUMANITY""","""DOOMED""")
WinnerMessage4 = Array("""A HERO ""","""ASCENDED""","""INTO THE""","""NIGHT""")
WinnerMessage5 = Array("""A FIERY""","""BATTLE""","""WON THE""","""FIGHT""")
WinnerMessage6 = Array("""SPARKS""","""OF HOPE""","""FLICKER ""","""OF LIGHT""")
Dim WinnerMessages
WinnerMessages = Array(WinnerMessage1,WinnerMessage2,WinnerMessage3,WinnerMessage4,WinnerMessage5,WinnerMessage6)


Sub CreatePostGameMode()
    Dim x

    With CreateGlfMode("post_game", 180)
        .StartEvents = Array("game_ended","test_post_game")
        .StopEvents = Array("stop_post_game_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_post_game_started", Array("select_message_num","meteor1_raise","meteor2_raise","meteor3_raise","meteor4_raise","backglass_dark_on","backglass_chaos_on")
            .Add "mode_post_game_started{machine.won_game == 0}", Array("play_mus_post_game")
            .Add "mode_post_game_started{machine.won_game == 1}", Array("play_mus_post_game_heavier")
            
            'play the show
            .Add "timer_post_game_show_started", Array("play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            .Add "timer_post_game_show_tick", Array("play_flasher4_flash_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 1}", Array("display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 2}", Array("play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 4}", Array("play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 5}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 6}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 7}", Array("")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 8}", Array("check_loser_message","check_winner_message1","play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 9}", Array("")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 10}", Array("play_spotlight_off")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 11}", Array("")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 12}", Array("play_earth_hit_center2")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 13}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 14}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 15}", Array("")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 16}", Array("display_last_scores","play_flasher1_flash_3000k","play_flasher2_flash_3000k","play_flasher3_flash_3000k","play_asteroid_hit")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 17}", Array("play_slide_left")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 18}", Array("play_slide_up","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 19}", Array("play_slide_right")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 20}", Array("play_slide_down6")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 21}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 22}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 23}", Array("")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 24}", Array("powerup_training","check_loser_message","check_winner_message2","play_meteor_wave_fall","play_flash_gi01","play_flash_gi09","play_flash_giapron","play_meteors_sweep")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 25}", Array("powerup_cluster","play_flash_gi06","play_flash_gi11","play_flash_gi21","play_flash_gi22","play_flash_gi12","play_flash_gi14")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 26}", Array("powerup_moon","play_flash_gi03","play_flash_gi10","play_flash_gi18","play_flash_gi16")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 27}", Array("powerup_proton","play_flash_gi08","play_flash_gi19","play_flash_gi20","play_spotlight_off")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 28}", Array("powerup_shields","play_flash_gi05","play_flash_gi09","play_flash_gi21","play_flash_gi13","play_flash_gi17")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 29}", Array("powerup_timewarp","play_flash_gi02","play_flash_gi22","play_flash_gi16","play_flash_gi14","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 30}", Array("powerup_saver","play_flash_gi07","play_flash_gi11","play_flash_gi15")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 31}", Array("powerup_health","play_flash_gi04","play_flash_gi10","play_flash_gi18","play_flash_gi17")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 32}", Array("powerup_combos","display_last_scores","play_flash_gi01","play_flash_gi19","play_flash_gi20","play_flash_giapron")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 33}", Array("powerup_training","play_flash_gi06","play_flash_gi21","play_flash_gi13","play_flash_gi12")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 34}", Array("powerup_cluster","play_flash_gi03","play_flash_gi09","play_flash_gi22","play_flash_gi16","play_flash_gi14")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 35}", Array("powerup_moon","play_flash_gi08","play_flash_gi11","play_flash_gi17","play_flash_gi15")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 36}", Array("powerup_proton","play_flash_gi05","play_flash_gi10","play_flash_gi18","play_flash_gi13")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 37}", Array("powerup_shields","play_flash_gi02","play_flash_gi20","play_flash_gi22","play_flash_gi14","play_spotlight_off")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 38}", Array("powerup_timewarp","play_flash_gi07","play_flash_gi21","play_flash_gi15")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 39}", Array("powerup_saver","play_flash_gi04","play_flash_gi09","play_flash_gi16","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 40}", Array("powerup_health","check_loser_message","check_winner_message3","play_flash_gi01","play_flash_gi11","play_flash_giapron")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 41}", Array("powerup_combos","play_flash_gi06","play_flash_gi19","play_flash_gi18","play_flash_gi17")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 42}", Array("powerup_training","play_flash_gi03","play_flash_gi20","play_flash_gi13")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 43}", Array("powerup_cluster","play_flash_gi09","play_flash_gi08","play_flash_gi21","play_flash_gi22","play_flash_gi12")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 44}", Array("powerup_moon","play_earth_hit_center","play_flash_gi05","play_flash_gi11","play_flash_gi16","play_flash_gi14")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 45}", Array("powerup_proton","play_flash_gi02","play_flash_gi10","play_flash_gi18","play_flash_gi15")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 46}", Array("powerup_shields","play_flash_gi07","play_flash_gi19","play_flash_gi20","play_flash_gi17")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 47}", Array("powerup_timewarp","play_flash_gi04""play_flash_gi09","play_flash_gi21","play_flash_gi13","play_spotlight_off")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 48}", Array("powerup_saver","display_last_scores","play_flash_gi01","play_flash_gi11","play_flash_gi22","play_flash_gi16","play_flash_gi14","play_flash_giapron")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 49}", Array("powerup_health","play_flash_gi06","play_flash_gi10","play_flash_gi18","play_flash_gi15","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 50}", Array("powerup_combos","play_flash_gi03","play_flash_gi19","play_flash_gi20","play_flash_gi17")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 51}", Array("powerup_training","play_flash_gi08","play_flash_gi13","play_flasher3_flash_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 52}", Array("powerup_cluster","play_slide_down6","play_flash_gi09","play_flash_gi05","play_flash_gi21","play_flash_gi22","play_flash_gi12","play_flasher1_flash_magenta")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 53}", Array("powerup_moon","play_flash_gi02","play_flash_gi10","play_flash_gi11","play_flash_gi16","play_flash_gi14","play_flasher2_flash_yellow")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 54}", Array("powerup_proton","play_flash_gi07","play_flash_gi18","play_flash_gi13","play_flasher3_flash_cyan")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 55}", Array("powerup_shields","play_flash_gi04","play_flash_gi19","play_flash_gi20","play_flash_gi17","play_flasher2_flash_blue")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 56}", Array("powerup_timewarp","check_loser_message","check_winner_message4","play_flash_gi01","play_flash_gi09","play_flash_gi21","play_flash_gi22","play_flash_giapron","play_flasher1_flash_white")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 57}", Array("powerup_saver","play_flash_gi06","play_flash_gi10","play_flash_gi11","play_flash_gi16","play_flasher2_flash_purple","play_spotlight_off")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 58}", Array("powerup_health","play_flash_gi03","play_flash_gi19","play_flash_gi18","play_flash_gi15","play_flasher3_flash_green","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 59}", Array("powerup_combos","play_flash_gi08","play_flash_gi20","play_flash_gi13","play_flash_gi17","play_flasher2_flash_white")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 60}", Array("powerup_training","play_flash_gi05","play_flash_gi21","play_flash_gi22","play_flash_gi14","play_flasher3_flash_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 61}", Array("powerup_cluster","play_flash_gi02","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi15","play_flasher1_flash_magenta","play_lsling_magenta")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 62}", Array("powerup_moon","play_flash_gi07","play_flash_gi20","play_flash_gi17","play_flasher2_flash_yellow","play_rsling_yellow")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 63}", Array("powerup_proton","play_flash_gi09","play_flash_gi19","play_flash_gi21","play_flash_gi12","play_flasher3_flash_cyan","play_lsling_cyan")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 64}", Array("powerup_shields","display_last_scores","play_flash_gi04","play_flash_gi11","play_flash_gi13","play_flash_gi22","play_flash_giapron","play_flasher2_flash_blue","play_rsling_blue")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 65}", Array("powerup_timewarp","play_flash_gi01","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi14","play_flasher1_flash_white","play_lsling_white")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 66}", Array("powerup_saver","play_flash_gi06","play_flash_gi20","play_flash_gi17","play_flash_gi15","play_flasher2_flash_purple","play_rsling_purple","play_spotlight_off")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 67}", Array("powerup_health","play_flash_gi03","play_flash_gi09","play_flasher3_flash_green","play_lsling_green")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 68}", Array("powerup_combos","play_flash_gi08","play_flash_gi11","play_flash_gi19","play_flash_gi21","play_flasher2_flash_white","play_rsling_white","play_spotlight_on")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 69}", Array("powerup_training","play_flash_gi05","play_flash_gi10","play_flash_gi13","play_flash_gi16","play_flasher3_flash_hot","play_lsling_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 70}", Array("powerup_cluster","play_flash_gi02","play_flash_gi18","play_flash_gi22","play_flash_gi14","play_flasher1_flash_magenta","play_rsling_magenta")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 71}", Array("powerup_moon","play_flash_gi07","play_flash_gi20","play_flash_gi17","play_flasher2_flash_yellow","play_lsling_yellow")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 72}", Array("powerup_proton","check_loser_message","check_winner_message5","play_flash_gi09","play_flash_gi19","play_flash_gi21","play_flash_gi12","play_flasher3_flash_cyan","play_rsling_cyan")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 73}", Array("powerup_shields","play_flash_gi04","play_flash_gi11","play_flash_gi13","play_flash_gi22","play_flash_giapron","play_flasher2_flash_blue","play_lsling_blue")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 74}", Array("powerup_timewarp","play_flash_gi01","play_flash_gi10","play_flash_gi18","play_flash_gi16","play_flash_gi14","play_flasher1_flash_white","play_rsling_white")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 75}", Array("powerup_saver","play_flash_gi06","play_flash_gi20","play_flash_gi17","play_flash_gi15","play_flasher2_flash_purple","play_lsling_purple")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 76}", Array("play_earth_hit_center","play_spotlight_off")
            '.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 77}", Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_white")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 78}", Array("meteor3_knockdown","meteor3_flash_show","meteor3_blink_show","meteor3_explodes_hot")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 79}", Array("meteor2_knockdown","meteor2_flash_show","meteor2_blink_show","meteor2_explodes_red")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 80}", Array("meteor4_knockdown","meteor4_flash_show","meteor4_blink_show","meteor4_explodes_white","meteor3_raise","display_last_scores")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 81}", Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_hot","meteor2_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 82}", Array("meteor3_knockdown","meteor3_flash_show","meteor3_blink_show","meteor3_explodes_red","meteor4_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 83}", Array("meteor2_knockdown","meteor2_flash_show","meteor2_blink_show","meteor2_explodes_white","meteor1_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 84}", Array("meteor4_knockdown","meteor4_flash_show","meteor4_blink_show","meteor4_explodes_hot","meteor3_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 85}", Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_red","meteor2_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 86}", Array("meteor4_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 87}", Array("play_proton_big_charge_fire","meteor1_raise")
            .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 88}", Array("check_loser_message","check_winner_message6","meteor3_raise")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 89}", Array("")
            ' .Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 90}", Array("")
            '.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 91}", Array("")
            '.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 92}", Array("")
            .Add "timer_post_game_show_complete", Array("final_flash1","final_flash2","final_flash3","final_flash4","final_flash5")


            'handle post game messages
            For x = 1 to NumLoserMessages
                .Add "check_loser_message{machine.message_num == "&x&" && machine.won_game == 0}", Array("display_loser_message"&x)
            Next
            .Add "check_winner_message1{machine.won_game == 1}", Array("display_winner_message1","play_voc_winners_poem1")
            .Add "check_winner_message2{machine.won_game == 1}", Array("display_winner_message2","play_voc_winners_poem2")
            .Add "check_winner_message3{machine.won_game == 1}", Array("display_winner_message3","play_voc_winners_poem3")
            .Add "check_winner_message4{machine.won_game == 1}", Array("display_winner_message4","play_voc_winners_poem4")
            .Add "check_winner_message5{machine.won_game == 1}", Array("display_winner_message5","play_voc_winners_poem5")
            .Add "check_winner_message6{machine.won_game == 1}", Array("display_winner_message6","play_voc_winners_poem6")
            'stop post game
            .Add "mus_post_game_stopped", Array("start_attract_mode")
            .Add "mus_post_game_heavier_stopped", Array("start_attract_mode")
            .Add "start_attract_mode", Array("stop_post_game_mode")

        End With


        With .RandomEventPlayer()
            With .EventName("select_message_num")
                For x = 1 to NumLoserMessages
                    .Add "select_message_"&x, 1
                Next
            End With
        End With


        With .DOFPlayer()
            With .EventName("play_flasher1_flash_3000k")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("play_flasher1_flash_white")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("play_flasher2_flash_3000k")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("play_flasher2_flash_white")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("play_flasher3_flash_3000k")
                .Action = "DOF_PULSE"
                .DOFEvent = 160
            End With
            With .EventName("play_flasher3_flash_hot")
                .Action = "DOF_PULSE"
                .DOFEvent = 161
            End With
            With .EventName("play_flasher2_flash_yellow")
                .Action = "DOF_PULSE"
                .DOFEvent = 163
            End With
            With .EventName("play_flasher3_flash_green")
                .Action = "DOF_PULSE"
                .DOFEvent = 164
            End With
            With .EventName("play_flasher3_flash_cyan")
                .Action = "DOF_PULSE"
                .DOFEvent = 165
            End With
            With .EventName("play_flasher2_flash_blue")
                .Action = "DOF_PULSE"
                .DOFEvent = 166
            End With
            With .EventName("play_flasher2_flash_purple")
                .Action = "DOF_PULSE"
                .DOFEvent = 167
            End With
            With .EventName("play_flasher1_flash_magenta")
                .Action = "DOF_PULSE"
                .DOFEvent = 168
            End With

            With .EventName("meteor1_flash_show")
                .Action = "DOF_PULSE"
                .DOFEvent = 141
            End With
            With .EventName("meteor2_flash_show")
                .Action = "DOF_PULSE"
                .DOFEvent = 141
            End With
            With .EventName("meteor3_flash_show")
                .Action = "DOF_PULSE"
                .DOFEvent = 141
            End With
            With .EventName("meteor4_flash_show")
                .Action = "DOF_PULSE"
                .DOFEvent = 141
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
            For x = 1 to NumLoserMessages
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


        With .VariablePlayer()
            For x = 1 to NumLoserMessages
                With .EventName("select_message_"&x)
                    With .Variable("message_num")
                        .Action = "set_machine"
                        .Int = x
                    End With
                End With
            Next
        End With






        ' ------------- SHOWS -----------------

        With .ShowPlayer()

            With .EventName("play_proton_big_charge_fire")   
                .Key = "key_proton_big_charge_fire"
                .Show = "proton_big_charge_fire" 
                .Speed = 1
                .Loops = 1
            End With

            With .EventName("play_earth_hit_center")   
                .Key = "key_earth_hit_center"
                .Show = "earth_hit_center"
                .Loops = 1
                .Speed = 1
            End With
            With .EventName("play_earth_hit_center2")   
                .Key = "key_earth_hit_center2"
                .Show = "earth_hit_center2"
                .Loops = 1
                .Speed = 1
            End With

            With .EventName("play_asteroid_hit")   
                .Key = "key_asteroid_hit"
                .Show = "asteroid_hit" 
                .Speed = 1
                .Loops = 1
            End With
            
            With .EventName("play_meteor_wave_fall")   
                .Key = "key_meteor_wave_fall"
                .Show = "meteor_wave_fall" 
                .Speed = 2
                .Loops = 20
            End With

            With .EventName("play_meteors_sweep")   
                .Key = "key_meteors_sweep"
                .Show = "meteors_sweep" 
                .Speed = 1
                .Loops = 20
            End With           

            
            With .EventName("powerup_training")
                .Key = "key_powerup_training"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tTrain"
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("powerup_cluster")
                .Key = "key_powerup_cluster"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tClusterAll"
                    .Add "color", ClusterBombColor
                End With
            End With
           With .EventName("powerup_moon")
                .Key = "key_powerup_moon"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tMoonAll"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("powerup_proton")
                .Key = "key_powerup_proton"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tProtonAll"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("powerup_shields")
                .Key = "key_powerup_shields"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tShields"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("powerup_saver")
                .Key = "key_powerup_saver"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tSaver"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("powerup_timewarp")
                .Key = "key_powerup_timewarp"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tTimewarp"
                    .Add "color", TimewarpColor
                End With
            End With
            With .EventName("powerup_health")
                .Key = "key_powerup_health"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tHealth"
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("powerup_combos")
                .Key = "key_powerup_health"
                .Show = "flash_color_fadeout"
                .Speed = 6
                .Loops = 1
                .Priority = 10
                With .Tokens()
                    .Add "lights", "tCombos"
                    .Add "color", CombosColor
                End With
            End With



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
            ' With .EventName("play_slide_down")   
            '     .Key = "key_insert_gi_slide_down"
            '     .Show = "insert_gi_slide_down" 
            '     .Speed = 1
            '     .Loops = 1
            '     With .Tokens()
            '         .Add "color", "ffffff"
            '         .Add "intensity", 100
            '     End With
            ' End With
            With .EventName("play_slide_down6")   
                .Key = "key_slide_down6"
                .Show = "slide_down6"
                .Loops = 1
                .Speed = 1
            End With


            With .EventName("final_flash1")   
                .Key = "key_final_flash1"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 9
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash2")   
                .Key = "key_final_flash2"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 9
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash3")   
                .Key = "key_final_flash3"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 9
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash4")   
                .Key = "key_final_flash4"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 9
                With .Tokens()
                    .Add "lights", "tFL5"
                    .Add "color", MeteorFlashColor
                End With
            End With
            With .EventName("final_flash5")   
                .Key = "key_final_flash5"
                .Show = "flash_color" 
                .Speed = 20
                .Loops = 9
                With .Tokens()
                    .Add "lights", "tFL6"
                    .Add "color", MeteorFlashColor
                End With
            End With


            
            'Flasher 1 (right side)
            With .EventName("play_flasher1_flash_magenta")   
                .Key = "key_flasher1_flash_magenta"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", ClusterBombColor
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
            With .EventName("play_flasher1_flash_white")   
                .Key = "key_flasher1_flash_white"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", TimewarpColor
                End With
            End With


            'Flasher 2 (left side)
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
            With .EventName("play_flasher2_flash_white")   
                .Key = "key_flasher2_flash_white"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", TimewarpColor
                End With
            End With
            With .EventName("play_flasher2_flash_yellow")   
                .Key = "key_flasher2_flash_yellow"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_flasher2_flash_blue")   
                .Key = "key_flasher2_flash_blue"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_flasher2_flash_purple")   
                .Key = "key_flasher2_flash_purple"
                .Show = "flash_color_fadeout" 
                .Speed = 8
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
                .Speed = 8
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
            With .EventName("play_flasher3_flash_green")   
                .Key = "key_flasher3_flash_green"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", "05ff05"
                End With
            End With
            With .EventName("play_flasher3_flash_cyan")   
                .Key = "key_flasher3_flash_cyan"
                .Show = "flash_color_fadeout" 
                .Speed = 8
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ProtonColor
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
            


            'GI flashes
            For x = 1 to 9
                With .EventName("play_flash_gi0"&x)   
                    .Key = "key_flash_gi0"&x
                    .Show = "flash_color_fadeout" 
                    .Speed = 3
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi0"&x
                        .Add "color", GIColor3000k
                    End With
                End With
            Next
            For x = 10 to 22
                With .EventName("play_flash_gi"&x)   
                    .Key = "key_flash_gi"&x
                    .Show = "flash_color_fadeout" 
                    .Speed = 3
                    .Loops = 1
                    With .Tokens()
                        .Add "lights", "gi"&x
                        .Add "color", GIColor3000k
                    End With
                End With
            Next
            With .EventName("play_flash_giapron")   
                .Key = "key_flash_giapron"
                .Show = "flash_color_fadeout" 
                .Speed = 3
                .Loops = 1
                With .Tokens()
                    .Add "lights", "giapron"
                    .Add "color", GIColor3000k
                End With
            End With


            'Meteors
            'Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_white")
            'Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_hot")
            'Array("meteor1_knockdown","meteor1_flash_show","meteor1_blink_show","meteor1_explodes_red")

            With .EventName("meteor1_flash_show")
                .Key = "key_meteor1_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor2_flash_show")
                .Key = "key_meteor2_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor3_flash_show")
                .Key = "key_meteor3_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor4_flash_show")
                .Key = "key_meteor4_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With

            For x = 1 to 4
                With .EventName("meteor"&x&"_blink_show")
                    .Key = "key_meteor"&x&"_blink"
                    .Show = "flash_color"
                    .Speed = 22
                    .Loops = 4
                    With .Tokens()
                        .Add "lights", "LMet"&x
                        .Add "color", "ffffff"
                    End With  
                End With

                With .EventName("meteor"&x&"_explodes_white")
                    .Key = "key_meteor"&x&"_explodes"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", "ffffff"
                    End With    
                End With
                With .EventName("meteor"&x&"_explodes_red")
                    .Key = "key_meteor"&x&"_explodes_red"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", "ff0000"
                    End With    
                End With
                With .EventName("meteor"&x&"_explodes_hot")
                    .Key = "key_meteor"&x&"_explodes_hot"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", MeteorHotColor
                    End With    
                End With
            Next



            'Sling shows
            With .EventName("play_lsling_magenta") 
                .Key = "key_lsling_magenta"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("play_rsling_yellow") 
                .Key = "key_rsling_yellow"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_lsling_cyan") 
                .Key = "key_lsling_cyan"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("play_rsling_blue") 
                .Key = "key_rsling_blue"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_lsling_white") 
                .Key = "key_lsling_white"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", TimewarpColor
                End With
            End With
            With .EventName("play_rsling_purple") 
                .Key = "key_rsling_purple"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShipSaveColor
                End With
            End With
            With .EventName("play_lsling_green") 
                .Key = "key_lsling_green"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", HealthColor1
                End With
            End With
            With .EventName("play_rsling_white") 
                .Key = "key_rsling_white"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", TimewarpColor
                End With
            End With
            With .EventName("play_lsling_hot") 
                .Key = "key_lsling_hot"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", TrainingColor
                End With
            End With
            With .EventName("play_rsling_magenta") 
                .Key = "key_rsling_magenta"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ClusterBombColor
                End With
            End With
            With .EventName("play_lsling_yellow") 
                .Key = "key_lsling_yellow"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", MoonColor
                End With
            End With
            With .EventName("play_rsling_cyan") 
                .Key = "key_rsling_cyan"
                .Show = "rsling_rotate1_ccw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("play_lsling_blue") 
                .Key = "key_lsling_blue"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShieldsColor
                End With
            End With
            With .EventName("play_lsling_purple") 
                .Key = "key_lsling_purple"
                .Show = "lsling_rotate1_cw"
                .Speed = 2
                .Loops = 2
                With .Tokens()
                    .Add "intensity", 100
                    .Add "color", ShipSaveColor
                End With
            End With

            'Spotlight
            With .EventName("play_spotlight_on") 
                .Key = "key_spotlight_on"
                .Show = "flicker_color_on"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LSpot1"
                    .Add "color", "ffffff"
                End With
            End With
            With .EventName("play_spotlight_off") 
                .Key = "key_spotlight_off"
                .Show = "flicker_color_off"
                .Speed = 5
                .Loops = 1
                With .Tokens()
                    .Add "lights", "LSpot1"
                    .Add "color", "ffffff"
                End With
            End With
            


        End With

    End With

End Sub