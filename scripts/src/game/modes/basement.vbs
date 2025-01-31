


' Basement Mode.
' This mode runs all the time

Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")
        .StopEvents = Array("when_the_universe_ends")

        ' With .EventPlayer()
        '     .Add "s_left_staged_flipper_key_active", Array("sling_rotate_cw_show")  'DEBUG
        ' End With
       
        With .SoundPlayer() 
            With .EventName("player_added{kwargs.num==1}")
                .Key = "key_sfx_p1"
                .Sound = "sfx_p1"
            End With
            With .EventName("player_added{kwargs.num==2}")
                .Key = "key_sfx_p2"
                .Sound = "sfx_p2"
            End With
            With .EventName("player_added{kwargs.num==3}")
                .Key = "key_sfx_p3"
                .Sound = "sfx_p3"
            End With
            With .EventName("player_added{kwargs.num==4}")
                .Key = "key_sfx_p4"
                .Sound = "sfx_p4"
            End With
        End With

    End With

End Sub