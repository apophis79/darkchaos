


'*******************************************
' Sounds Configuration
'*******************************************

Dim SFXNames, SFXDurations
SFXNames = Array( _
    "sfx_ball_drain", _
    "sfx_bumper1", _
    "sfx_bumper2", _
    "sfx_bumper3", _
    "sfx_bumper4", _
    "sfx_button", _
    "sfx_combo", _
    "sfx_EarthHit1", _
    "sfx_EarthHit2", _
    "sfx_EarthHit3", _
    "sfx_entry", _
    "sfx_LCC1", _
    "sfx_LCC2", _
    "sfx_LCC3", _
    "sfx_LDS", _
    "sfx_left_ramp_time_warp", _
    "sfx_left_sling", _
    "sfx_LF1", _
    "sfx_LF2", _
    "sfx_LF3", _
    "sfx_LH", _
    "sfx_LLI", _
    "sfx_LLO", _
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
    "sfx_LRI", _
    "sfx_LRO", _
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
    "sfx_LSL", _
    "sfx_LSR", _
    "sfx_LSUp", _
    "sfx_LTW", _
    "sfx_mag_cap", _
    "sfx_Orb1", _
    "sfx_Orb2", _
    "sfx_Orb3", _
    "sfx_powerdown", _
    "sfx_right_ramp_moon_launch", _
    "sfx_right_sling", _
    "sfx_Spinner", _
    "sfx_tally_alt", _
    "sfx_cluster_fired", _
    "sfx_launch", _
    "sfx_ball_launch1", _
    "sfx_ball_launch2", _
    "sfx_ball_launch3", _
    "sfx_scoop", _
    "sfx_tilt_warning", _
    "sfx_tilt", _
    "sfx_boom1", _
    "sfx_boom2", _
    "sfx_boom3", _
    "sfx_boom4", _
    "sfx_boom5", _
    "sfx_boom6", _ 
    "sfx_final_explosion", _
    "sfx_jackpot", _
    "sfx_super_jackpot", _
    "sfx_error_buzz", _ 
    "sfx_alien_ship_crash")
SFXDurations = Array( _
    4.075, _
    1.927, _
    3.461, _
    3.461, _
    1.025, _
    0.451, _
    6.000, _
    6.129, _
    2.316, _
    3.755, _
    2.270, _
    5.904, _
    5.904, _
    5.904, _
    1.730, _
    4.049, _
    2.068, _
    7.731, _
    8.231, _
    8.231, _
    0.961, _
    1.925, _
    1.866, _
    1.476, _
    1.951, _
    2.105, _
    2.105, _
    1.951, _
    4.231, _
    1.995, _
    1.737, _
    4.092, _
    0.908, _
    1.474, _
    1.643, _
    4.461, _
    1.901, _
    2.107, _
    1.793, _
    2.000, _
    1.876, _
    2.633, _
    2.953, _
    2.953, _
    2.953, _
    2.633, _
    1.904, _
    4.075, _
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
    2.224, _
    2.224, _
    2.803, _
    5.410, _
    2.972, _
    1.543, _
    1.713, _
    1.571, _
    3.712, _
    3.146, _
    1.957, _
    0.173, _
    2.000, _
    4.593, _
    7.552, _
    4.736, _
    4.736, _
    4.736, _
    2.690, _
    1.050, _
    4.714, _
    6.087, _
    6.034, _
    5.851, _
    5.329, _
    6.322, _
    6.322, _ 
    9.473, _ 
    1.386, _ 
    3.422, _ 
    0.506, _ 
    4.467)


Dim VOCNames, VOCDurations
VOCNames = Array( _
    "voc_AlienAlert", _
    "voc_AlienHit", _
    "voc_ball_locked", _
    "voc_extra_ball_acheived", _
    "voc_extra_ball_ready", _
    "voc_LCR1", _
    "voc_LCR2", _
    "voc_LCWiz", _
    "voc_LLWiz", _
    "voc_LMLR", _
    "voc_LMR", _
    "voc_LMR1", _
    "voc_LMR2", _
    "voc_LPR1", _
    "voc_p1", _
    "voc_p2", _
    "voc_p3", _
    "voc_p4", _
    "voc_select_option", _
    "voc_ShipSaver", _
    "voc_ss", _
    "voc_sss", _
    "voc_Training", _
    "voc_wave_incoming", _
    "voc_Wiz", _
    "voc_attract1", _
    "voc_attract2", _
    "voc_attract3", _
    "voc_attract4", _
    "voc_attract5", _
    "voc_winners_poem1", _
    "voc_winners_poem2", _
    "voc_winners_poem3", _
    "voc_winners_poem4", _
    "voc_winners_poem5", _
    "voc_winners_poem6", _ 
    "voc_wizard_game", _
    "voc_wave_completed", _ 
    "voc_super_spinner", _ 
    "voc_super_pop_bumpers", _ 
    "voc_relaxed_combos", _ 
    "voc_imminent_shutdown", _ 
    "voc_full_protons", _ 
    "voc_full_health", _ 
    "voc_double_scoring", _
    "voc_double_bonus", _
    "voc_critically_low_health")
VOCDurations = Array( _
    6.000, _
    3.046, _
    2.316, _
    2.847, _
    3.297, _
    5.972, _
    4.718, _
    2.422, _
    3.252, _
    4.415, _
    4.415, _
    2.362, _
    2.877, _
    2.361, _
    2.926, _
    2.926, _
    2.926, _
    2.926, _
    1.784, _
    2.233, _
    2.331, _
    2.540, _
    2.392, _
    4.974, _
    2.111, _
    2.423, _
    2.000, _
    2.000, _
    2.362, _
    2.000, _
    4.055, _
    3.768, _
    3.768, _
    2.624, _
    3.363, _
    4.055, _
    1.966, _
    3.579, _
    2.059, _
    2.623, _
    1.768, _
    2.072, _
    1.962, _
    1.804, _
    1.846, _
    1.879, _
    2.417)



Dim MusicNames, MusicDurations
MusicNames = Array( _
    "mus_wave0", _
    "mus_wave1", _
    "mus_wave2", _
    "mus_wave3", _
    "mus_wave4", _
    "mus_wave5", _
    "mus_wave6", _
    "mus_wave7", _
    "mus_wave8", _
    "mus_wave9", _
    "mus_highscore", _
    "mus_ambient_bg", _
    "mus_wizard", _
    "mus_wizard2")
MusicDurations = Array( _
    92.212, _
    53.551, _
    58.018, _
    60.274, _
    60.656, _
    63.447, _
    61.422, _
    56.844, _
    52.863, _
    57.763, _
    52.062, _
    58.508, _
    118.143, _
    79.967)



Sub CreateSounds()
    Dim x, BusName

    ' SFX
    BusName = "sfx"
    For x = 0 to UBound(SFXNames)
        With CreateGlfSound(SFXNames(x))
            .File = SFXNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.6 'Override bus volume
            .Duration = SFXDurations(x) * 1000
            .EventsWhenStopped = Array(SFXNames(x)&"_stopped")
        End With
    Next

    ' Callouts
    BusName = "voc"
    For x = 0 to UBound(VOCNames)
        With CreateGlfSound(VOCNames(x))
            .File = VOCNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.6 'Override bus volume
            .Duration = VOCDurations(x) * 1000
            .EventsWhenStopped = Array(VOCNames(x)&"_stopped")
        End With
    Next

    ' Music
    BusName = "mus"
    For x = 0 to UBound(MusicNames)
        With CreateGlfSound(MusicNames(x))
            .File = MusicNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.8 'Override bus volume
            .Loops = -1 'default to all music looping
            .Duration = MusicDurations(x) * 1000
            .EventsWhenStopped = Array(MusicNames(x)&"_stopped")
        End With
    Next

    'Non looping music
    With CreateGlfSound("mus_training_alt")
        .File = "mus_training_alt" 
        .Bus = BusName ' Sound bus to play on
        .Duration = 70.532 * 1000
        .EventsWhenStopped = Array("mus_training_alt_stopped")
    End With
    With CreateGlfSound("mus_post_game")
        .File = "mus_post_game" 
        .Bus = BusName ' Sound bus to play on
        .Duration = 54.897 * 1000
        .EventsWhenStopped = Array("mus_post_game_stopped")
    End With
    With CreateGlfSound("mus_post_game_heavier")
        .File = "mus_post_game_heavier" 
        .Bus = BusName ' Sound bus to play on
        .Duration = 65.358 * 1000
        .EventsWhenStopped = Array("mus_post_game_stopped")
    End With
    With CreateGlfSound("mus_victory")
        .File = "mus_victory" 
        .Bus = BusName ' Sound bus to play on
        .Duration = 65.463 * 1000
        .EventsWhenStopped = Array("mus_victory_stopped")
    End With



End Sub