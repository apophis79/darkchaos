


'*******************************************
' Sounds Configuration
'*******************************************

Dim SFXNames, SFXDurations
SFXNames = Array( _
    "sfx_ss", _
    "sfx_sss", _
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
    "sfx_LCR1", _
    "sfx_LCR2", _
    "sfx_LCWiz", _
    "sfx_LF1", _
    "sfx_LF2", _
    "sfx_LF3", _
    "sfx_LH", _
    "sfx_LLI", _
    "sfx_LLO", _
    "sfx_LLWiz", _
    "sfx_mag_cap", _
    "sfx_LM1", _
    "sfx_LM2", _
    "sfx_LM3", _
    "sfx_LM4", _
    "sfx_LM5", _
    "sfx_LMet1", _
    "sfx_LMet2", _
    "sfx_LMet3", _
    "sfx_LMet4", _
    "sfx_LMet5", _
    "sfx_LMet6", _
    "sfx_LMet7", _
    "sfx_LMet8", _
    "sfx_EarthHit1", _
    "sfx_EarthHit2", _
    "sfx_EarthHit3", _
    "sfx_AlienAlert", _
    "sfx_AlienHit", _
    "sfx_LMLR", _
    "sfx_LMR", _
    "sfx_LMR1", _
    "sfx_LMR2", _
    "sfx_Spinner", _
    "sfx_LPC1", _
    "sfx_LPC2", _
    "sfx_LPC3", _
    "sfx_LPC4", _
    "sfx_LPC5", _
    "sfx_LPF1", _
    "sfx_LPF2", _
    "sfx_LPF3", _
    "sfx_LPF4", _
    "sfx_LPF5", _
    "sfx_LPR1", _
    "sfx_LRI", _
    "sfx_LRO", _
    "sfx_p1", _
    "sfx_p2", _
    "sfx_p3", _
    "sfx_p4")

SFXDurations = Array( _
    2.331, _
    2.540, _
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
    5.972, _
    4.718, _
    2.422, _
    7.731, _
    8.231, _
    8.231, _
    0.961, _
    1.925, _
    1.866, _
    3.252, _
    2.972, _
    1.476, _
    1.951, _
    2.105, _
    2.105, _
    1.951, _
    4.231, _
    2.000, _
    1.737, _
    4.092, _
    0.908, _
    1.474, _
    1.643, _
    4.461, _
    6.129, _
    2.316, _
    3.755, _
    6.000, _
    3.046, _
    4.415, _
    4.415, _
    2.362, _
    2.877, _
    0.173, _
    1.901, _
    2.107, _
    1.793, _
    2.000, _
    1.876, _
    1.061, _
    1.176, _
    0.874, _
    1.738, _
    1.046, _
    2.361, _
    1.904, _
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
            .Volume = 0.5 'Override bus volume
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