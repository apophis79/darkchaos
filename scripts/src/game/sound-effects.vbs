


'*******************************************
' Sounds Configuration
'*******************************************

Dim SFXNames, SFXDurations
SFXNames = Array( _
    "sfx_left_sling", _
    "sfx_right_sling", _
    "sfx_left_ramp_time_warp", _
    "sfx_right_ramp_moon_launch", _
    "sfx_ball_drain", _
    "sfx_bumper1", _
    "sfx_bumper2", _
    "sfx_bumper3", _
    "sfx_bumper4", _
    "sfx_LCC1", _
    "sfx_LCC2", _
    "sfx_LCC3", _
    "sfx_LF1", _
    "sfx_LF2", _
    "sfx_LF3", _
    "sfx_LLO", _
    "sfx_LMet1", _
    "sfx_LMet2", _
    "sfx_LMet3", _
    "sfx_LMet4", _
    "sfx_LMLR", _
    "sfx_LMR", _
    "sfx_LRO", _
    "sfx_p1", _
    "sfx_p2", _
    "sfx_p3", _
    "sfx_p4")

SFXDurations = Array( _
    4.754, _
    4.767, _
    4.049, _
    3.146, _
    4.075, _
    1.927, _
    3.461, _
    3.461, _
    1.025, _
    5.904, _
    5.904, _
    5.904, _
    7.731, _
    8.231, _
    8.231, _
    1.866, _
    4.363, _
    2.667, _
    1.749, _
    2.837, _
    4.415, _
    4.415, _
    4.075, _
    2.926, _
    2.926, _
    2.926, _
    2.926)


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