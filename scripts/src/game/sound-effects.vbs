


'*******************************************
' Sounds Configuration
'*******************************************


'Creates all sounds in the game
'NOTE: make sure all game sounds are positioned to the Backglass in the Sound Manager

Sub CreateSounds()

    'Add sound effect tracks here. Provied track name and duration (seconds)
    AddSoundEffect "sfx_ball_drain", 4.075
    AddSoundEffect "sfx_bumper1", 1.927
    AddSoundEffect "sfx_bumper2", 3.461
    AddSoundEffect "sfx_bumper3", 3.461
    AddSoundEffect "sfx_bumper4", 1.025
    AddSoundEffect "sfx_button", 0.451
    AddSoundEffect "sfx_combo", 6.000
    AddSoundEffect "sfx_EarthHit1", 6.129
    AddSoundEffect "sfx_EarthHit2", 2.316
    AddSoundEffect "sfx_EarthHit3", 3.755
    AddSoundEffect "sfx_entry", 2.270
    AddSoundEffect "sfx_LCC1", 5.904
    AddSoundEffect "sfx_LCC2", 5.904
    AddSoundEffect "sfx_LCC3", 5.904
    AddSoundEffect "sfx_LDS", 1.730
    AddSoundEffect "sfx_left_ramp_time_warp", 4.049
    AddSoundEffect "sfx_left_sling", 2.068
    AddSoundEffect "sfx_LF1", 7.731
    AddSoundEffect "sfx_LF2", 8.231
    AddSoundEffect "sfx_LF3", 8.231
    AddSoundEffect "sfx_LH", 0.961
    AddSoundEffect "sfx_LLI", 1.925
    AddSoundEffect "sfx_LLO", 1.866
    AddSoundEffect "sfx_LM1", 1.476
    AddSoundEffect "sfx_LM2", 1.951
    AddSoundEffect "sfx_LM3", 2.105
    AddSoundEffect "sfx_LM4", 2.105
    AddSoundEffect "sfx_LM5", 1.951
    AddSoundEffect "sfx_LMet1", 4.231
    AddSoundEffect "sfx_LMet2", 1.995
    AddSoundEffect "sfx_LMet3", 1.737
    AddSoundEffect "sfx_LMet4", 4.092
    AddSoundEffect "sfx_LMet5", 0.908
    AddSoundEffect "sfx_LMet6", 1.474
    AddSoundEffect "sfx_LMet7", 1.643
    AddSoundEffect "sfx_LMet8", 4.461
    AddSoundEffect "sfx_LPC1", 1.901
    AddSoundEffect "sfx_LPC2", 2.107
    AddSoundEffect "sfx_LPC3", 1.793
    AddSoundEffect "sfx_LPC4", 2.000
    AddSoundEffect "sfx_LPC5", 1.876
    AddSoundEffect "sfx_LPF1", 2.633
    AddSoundEffect "sfx_LPF2", 2.953
    AddSoundEffect "sfx_LPF3", 2.953
    AddSoundEffect "sfx_LPF4", 2.953
    AddSoundEffect "sfx_LPF5", 2.633
    AddSoundEffect "sfx_LRI", 1.904
    AddSoundEffect "sfx_LRO", 4.075
    AddSoundEffect "sfx_LS1", 0.945
    AddSoundEffect "sfx_LS2", 0.629
    AddSoundEffect "sfx_LS3", 0.548
    AddSoundEffect "sfx_LS4", 0.522
    AddSoundEffect "sfx_LS5", 0.586
    AddSoundEffect "sfx_LS6", 0.945
    AddSoundEffect "sfx_LSC1", 2.363
    AddSoundEffect "sfx_LSC2", 1.918
    AddSoundEffect "sfx_LSC3", 2.502
    AddSoundEffect "sfx_LSC4", 2.155
    AddSoundEffect "sfx_LSL", 2.224
    AddSoundEffect "sfx_LSR", 2.224
    AddSoundEffect "sfx_LSUp", 2.803
    AddSoundEffect "sfx_LTW", 5.410
    AddSoundEffect "sfx_mag_cap", 2.972
    AddSoundEffect "sfx_Orb1", 1.543
    AddSoundEffect "sfx_Orb2", 1.713
    AddSoundEffect "sfx_Orb3", 1.571
    AddSoundEffect "sfx_powerdown", 3.712
    AddSoundEffect "sfx_right_ramp_moon_launch", 3.146
    AddSoundEffect "sfx_right_sling", 1.957
    AddSoundEffect "sfx_Spinner", 0.173
    AddSoundEffect "sfx_tally_alt", 2.000
    AddSoundEffect "sfx_cluster_fired", 4.593
    AddSoundEffect "sfx_launch", 7.552
    AddSoundEffect "sfx_ball_launch1", 4.736
    AddSoundEffect "sfx_ball_launch2", 4.736
    AddSoundEffect "sfx_ball_launch3", 4.736
    AddSoundEffect "sfx_scoop", 2.690
    AddSoundEffect "sfx_tilt_warning", 1.050
    AddSoundEffect "sfx_tilt", 4.714
    AddSoundEffect "sfx_boom1", 6.087
    AddSoundEffect "sfx_boom2", 6.034
    AddSoundEffect "sfx_boom3", 5.851
    AddSoundEffect "sfx_boom4", 5.329
    AddSoundEffect "sfx_boom5", 6.322
    AddSoundEffect "sfx_boom6", 6.322
    AddSoundEffect "sfx_final_explosion", 9.473
    AddSoundEffect "sfx_jackpot", 1.386
    AddSoundEffect "sfx_super_jackpot", 3.422
    AddSoundEffect "sfx_error_buzz", 0.506
    AddSoundEffect "sfx_alien_ship_crash", 4.467 
    AddSoundEffect "sfx_hs_initial", 0.139
    AddSoundEffect "sfx_final_wave_scoop", 10.316

    'Add callout tracks here. Provied track name and duration (seconds)
    AddCallout "voc_AlienAlert", 6.000
    AddCallout "voc_AlienHit", 3.046
    AddCallout "voc_ball_locked", 2.316
    AddCallout "voc_extra_ball_acheived", 2.847
    AddCallout "voc_extra_ball_ready", 3.297
    AddCallout "voc_LCR1", 5.972
    AddCallout "voc_LCR2", 4.718
    AddCallout "voc_LCWiz", 2.422
    AddCallout "voc_LLWiz", 3.252
    AddCallout "voc_LMLR", 2.587
    AddCallout "voc_LMR", 4.415
    AddCallout "voc_LMR1", 2.362
    AddCallout "voc_LMR2", 2.877
    AddCallout "voc_LPR1", 2.361
    AddCallout "voc_p1", 2.926
    AddCallout "voc_p2", 2.926
    AddCallout "voc_p3", 2.926
    AddCallout "voc_p4", 2.926
    AddCallout "voc_select_option", 1.784
    AddCallout "voc_ShipSaver", 2.233
    AddCallout "voc_ss", 2.331
    AddCallout "voc_sss", 2.540
    AddCallout "voc_Training", 2.392
    AddCallout "voc_wave_incoming", 4.974
    AddCallout "voc_Wiz", 2.111
    AddCallout "voc_attract1", 2.423
    AddCallout "voc_attract2", 2.000
    AddCallout "voc_attract3", 2.000
    AddCallout "voc_attract4", 2.362
    AddCallout "voc_attract5", 2.000
    AddCallout "voc_winners_poem1", 4.055
    AddCallout "voc_winners_poem2", 3.768
    AddCallout "voc_winners_poem3", 3.768
    AddCallout "voc_winners_poem4", 2.624
    AddCallout "voc_winners_poem5", 3.363
    AddCallout "voc_winners_poem6", 4.055 
    AddCallout "voc_wizard_game", 1.966
    AddCallout "voc_wave_completed", 3.579 
    AddCallout "voc_super_spinner", 2.059
    AddCallout "voc_super_pop_bumpers", 2.623
    AddCallout "voc_relaxed_combos", 1.768
    AddCallout "voc_imminent_shutdown", 2.072
    AddCallout "voc_full_protons", 1.962
    AddCallout "voc_full_health", 1.804
    AddCallout "voc_double_scoring", 1.846
    AddCallout "voc_double_bonus", 1.879
    AddCallout "voc_critically_low_health", 2.417
    AddCallout "voc_shields_acquired", 2.218
    AddCallout "voc_ssss", 3.723
    AddCallout "voc_sdsss", 4.302
    AddCallout "voc_training_canceled", 4.415
    AddCallout "voc_final_wave_ready", 3.657
    AddCallout "voc_nuke", 5.773
    AddCallout "voc_training_incomplete", 2.668

    'Add music tracks here. Provied track name and duration (seconds)
    '  looping
    AddMusic "mus_wave0", 92.212, -1
    AddMusic "mus_wave1", 53.551, -1
    AddMusic "mus_wave2", 58.018, -1
    AddMusic "mus_wave3", 60.274, -1
    AddMusic "mus_wave4", 60.656, -1
    AddMusic "mus_wave5", 63.447, -1
    AddMusic "mus_wave6", 61.422, -1
    AddMusic "mus_wave7", 56.844, -1
    AddMusic "mus_wave8", 52.863, -1
    AddMusic "mus_wave9", 57.763, -1
    AddMusic "mus_ambient_bg", 58.508, -1
    AddMusic "mus_wizard", 118.143, -1
    AddMusic "mus_wizard2", 79.967, -1
    '  not looping
    AddMusic "mus_training_1", 70.532, 0
    AddMusic "mus_training_2", 69.160, 0
    AddMusic "mus_training_3", 70.296, 0
    AddMusic "mus_training_4", 74.050, 0
    AddMusic "mus_training_5", 72.831, 0
    AddMusic "mus_post_game", 54.897, 0
    AddMusic "mus_post_game_heavier", 65.358, 0
    AddMusic "mus_victory", 65.463, 0
    
    

    'Nuke sfx with extra volume
    With CreateGlfSound("sfx_nuke")  'Nuke detonation
        .File = "sfx_nuke"
        .Bus = "sfx" 
        .Volume = 1 'Override bus volume
        .Duration = 11.860* 1000
        .EventsWhenStopped = Array("sfx_nuke_stopped")
    End With


End Sub



' Below are utility routines for adding sound tracks


'Routine for adding a music track
Sub AddMusic(Name, Duration, Loops)
    With CreateGlfSound(Name)
        'msgbox Name&" "&MUSDurations(x)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "mus" ' Sound bus to play on
        '.Volume = 0.8 'Override bus volume
        .Loops = Loops 'default to all music looping
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub


'Routine for adding a sound effect track
Sub AddSoundEffect(Name, Duration)
    With CreateGlfSound(Name)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "sfx" ' Sound bus to play on
        '.Volume = 0.6 'Override bus volume
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub


'Routine for adding a callout track
Sub AddCallout(Name, Duration)
    With CreateGlfSound(Name)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "voc" ' Sound bus to play on
        '.Volume = 0.6 'Override bus volume
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub

