


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
    "sfx_ball_locked", _
    "sfx_bumper1", _
    "sfx_bumper2", _
    "sfx_bumper3", _
    "sfx_bumper4", _
    "sfx_combo", _
    "sfx_LCC1", _
    "sfx_LCC2", _
    "sfx_LCC3", _
    "sfx_LCR1", _
    "sfx_LCR2", _
    "sfx_LCWiz", _
    "sfx_extra_ball_ready", _
    "sfx_extra_ball_acheived", _
    "sfx_LF1", _
    "sfx_LF2", _
    "sfx_LF3", _
    "sfx_ShipSaver", _
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
    "sfx_LDS", _
    "sfx_LS1", _
    "sfx_LS2", _
    "sfx_LS3", _
    "sfx_LS4", _
    "sfx_LS5", _
    "sfx_LS6", _
    "sfx_LSC1", _
    "sfx_LSC2", _
    "sfx_LSC3", _
    "sfx_LSC4", _
    "sfx_LSUp", _
    "sfx_LSL", _
    "sfx_LSR", _
    "sfx_LTW", _
    "sfx_Wiz", _
    "sfx_Training", _
    "sfx_Orb1", _
    "sfx_Orb2", _
    "sfx_Orb3", _
    "sfx_powerdown", _
    "sfx_button", _
    "sfx_entry", _
    "sfx_tally", _
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
    2.316, _
    1.927, _
    3.461, _
    3.461, _
    1.025, _
    6.000, _
    5.904, _
    5.904, _
    5.904, _
    5.972, _
    4.718, _
    2.422, _
    3.297, _
    2.847, _
    7.731, _
    8.231, _
    8.231, _
    2.233, _
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
    1.730, _
    0.945, _
    0.629, _
    0.548, _
    0.522, _
    0.586, _
    0.945, _
    2.363, _
    1.918, _
    2.502, _
    2.155, _
    2.803, _
    2.224, _
    2.224, _
    5.410, _
    2.111, _
    2.392, _
    1.543, _
    1.713, _
    1.571, _
    3.712, _
    0.451, _
    2.270, _
    0.223, _
    2.926, _
    2.926, _
    2.926, _
    2.926)


Dim MusicNames, MusicDurations

MusicNames = Array( _
    "mus_wave0", _
    "mus_wave1", _
    "mus_wave2", _
    "mus_post_game")

MusicDurations = Array( _
    92.212, _
    53.551, _
    58.018, _
    121.723)


Sub CreateSounds()
    Dim x, BusName

    ' SFX
    BusName = "sfx"
    For x = 0 to UBound(SFXNames)
        With CreateGlfSound(SFXNames(x))
            .File = SFXNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            .Volume = 0.6 'Override bus volume
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
            .Loops = -1 'default to all music looping
            .Duration = MusicDurations(x) * 1000
            .EventsWhenStopped = Array(MusicNames(x)&"_stopped")
        End With
    Next


End Sub