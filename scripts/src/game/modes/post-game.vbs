


' Post Game Mode.


Sub CreatePostGameMode()
    Dim x

    With CreateGlfMode("post_game", 180)
        .StartEvents = Array(GLF_GAME_OVER)
        .StopEvents = Array("stop_post_game_mode",GLF_BALL_STARTED)

        With .EventPlayer()
            .Add "mode_post_game_started", Array("play_post_game_show1","play_mus_post_game")
            'stop post game
            .Add "mus_post_game_stopped", Array("start_attract_mode")
            .Add "start_attract_mode", Array("stop_post_game_mode")
        End With

     
        With .SoundPlayer() 
            With .EventName("play_mus_post_game")
                .Key = "key_mus_post_game"
                .Sound = "mus_post_game"
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