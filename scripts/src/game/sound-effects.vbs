


'*******************************************
' Sounds Configuration
'*******************************************

Dim SFXNames, SFXDurations
SFXNames = Array("sfx_left_sling","sfx_right_sling","sfx_left_ramp_time_warp","sfx_right_ramp_moon_launch","sfx_ball_drain","sfx_bumper1","sfx_bumper2","sfx_bumper3","sfx_bumper4")
SFXDurations = Array(4.754,4.767,4.049,3.146,4.075,1.927,3.461,3.461,1.025)

Dim MusicNames, MusicDurations
MusicNames = Array("mus_ambient_bg","mus_main","mus_secondary","mus_wave","mus_post_game")
MusicDurations = Array(323.996,191.039,162.508,110.759,121.723)


Sub CreateSounds()
    Dim x, BusName

    ' SFX
    BusName = "sfx"
    For x = 0 to UBound(SFXNames)
        With CreateGlfSound(SFXNames(x))
            .File = SFXNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            .Volume = 0.8 'Override bus volume
            .Duration = SFXDurations(x) * 1000
            .EventsWhenStopped = Array(SFXNames(x)&"_stopped")
        End With
    Next


    ' Music
    BusName = "mus"
    For x = 0 to UBound(MusicNames)
        With CreateGlfSound(MusicNames(x))
            .File = MusicNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            .Volume = 0.8 'Override bus volume
            .Duration = MusicDurations(x) * 1000
            .EventsWhenStopped = Array(MusicNames(x)&"_stopped")
        End With
    Next


End Sub