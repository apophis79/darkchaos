

Sub CreatePostGameShows()


With CreateGlfShow("slide_down6")
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downA"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downB"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 50
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downC"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 20
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downD"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 10
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downE"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 5
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.1)
        With .Shows("insert_gi_slide_down")
            .Key = "insert_gi_slide_downF"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 3
            End With
        End With
    End With
End With


With CreateGlfShow("earth_hit_center2")
    With .AddStep(Null, Null, 0.3)
        With .Shows("earth_hit_center")
            .Key = "key_earth_hit_centerA"
            .Speed = 2
            .Loops = 1
        End With
    End With
    With .AddStep(Null, Null, 0.3)
        With .Shows("earth_hit_center")
            .Key = "key_earth_hit_centerB"
            .Speed = 2
            .Loops = 1
        End With
    End With
End With


With CreateGlfShow("meteors_sweep")
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep1"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet1"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep2"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet2"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep3"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet3"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep4"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet4"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep5"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet3"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_sweep6"
            .Speed = 14
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LMet2"
            End With
        End With
    End With
End With



With CreateGlfShow("meteor_wave_fall")
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall1"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW1"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall2"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW2"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall3"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW3"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall4"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW4"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall5"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW5"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall6"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW6"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall7"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW7"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall8"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW8"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall9"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LW9"
            End With
        End With
    End With
    With .AddStep(Null, Null, 0.2)
        With .Shows("flash_color_fadeout")
            .Key = "key_mw_fall10"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", MeteorWaveColor
                .Add "lights", "LWiz"
            End With
        End With
    End With
End With



With CreateGlfShow("proton_big_charge_fire")

    With .AddStep(Null, Null, 0.96667)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire1"
            .Speed = 1
            .Loops = 1
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 10
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.96667/1.5)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire2"
            .Speed = 1.5
            .Loops = 1
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 20
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.96667/2)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire3"
            .Speed = 2
            .Loops = 1
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 40
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.96667/3)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire4"
            .Speed = 3
            .Loops = 1
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 60
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.96667/4)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire5"
            .Speed = 4
            .Loops = 1
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 80
            End With
        End With
    End With

    With .AddStep(Null, Null, 2*0.96667/5)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire6"
            .Speed = 5
            .Loops = 2
            With .Tokens()
                .Add "color", ProtonColor
                .Add "intensity", 100
            End With
        End With
    End With

    With .AddStep(Null, Null, 3*0.96667/7)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire7"
            .Speed = 7
            .Loops = 3
            With .Tokens()
                .Add "color", "ffffff"
                .Add "intensity", 100
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.01)
        With .Shows("insert_gi_spin_center")
            .Key = "key_big_charge_fire8"
            .Speed = 8
            .Loops = 2
            With .Tokens()
                .Add "color", "ff0000"
                .Add "intensity", 100
            End With
        End With
    End With

    With .AddStep(Null, Null, 0.1)
        With .Shows("flash_color")
            .Key = "key_big_charge_fire9"
            .Show = "flash_color"
            .Speed = 20
            .Loops = 7
            '.Priority = 10
            With .Tokens()
                .Add "lights", "tBlast"
                .Add "color", "ffffff"
            End With
        End With
    End With
 
End With


End Sub